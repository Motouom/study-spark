#!/usr/bin/env python3
"""
Generate an idempotent migration to seed French MCQ (Paper 1) and additional
structural sets into course_documents, mapped to existing francophone topics.
"""

import hashlib
from pathlib import Path
from datetime import datetime

PROJECT_ROOT = Path("/home/victoire-ws/Documents/ChatGPT/productivity - goals/study-spark")
PAPERS = PROJECT_ROOT / "content/papers"
MIGRATIONS = PROJECT_ROOT / "supabase/migrations"

# dir -> (subject, level, class_levels, series, exam, topic_id)
SUBJECT_MAP = {
    # BEPC (ordinary) subjects
    "mathematiques": {
        "subject": "Mathématiques", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-math-equations",
    },
    "physique-chimie": {
        "subject": "Physique-Chimie", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-pc-electricite-chimie",
    },
    "svt": {
        "subject": "Sciences de la Vie et de la Terre", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-svt-vivant-terre",
    },
    "histoire-geographie": {
        "subject": "Histoire-Géographie", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-hg-cameroun-afrique",
    },
    "francais": {
        "subject": "Français", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-francais-expression",
    },
    "anglais-fr": {
        "subject": "Anglais", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-anglais-communication",
    },
    "ecm": {
        "subject": "Éducation à la Citoyenneté et à la Morale", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-ecm-citoyennete",
    },
    "informatique-fr": {
        "subject": "Informatique", "level": "ordinary",
        "class_levels": ["troisieme"], "series": ["tronc_commun"],
        "exam": "BEPC", "topic_id": "fr-bepc-info-bureautique",
    },
    # Advanced (Lycée) subjects
    "comptabilite": {
        "subject": "Comptabilité", "level": "advanced",
        "class_levels": ["premiere", "terminale"], "series": ["acc", "cg", "fig", "ses"],
        "exam": "Probatoire", "topic_id": "fr-stt-economie-comptabilite",
    },
    "economie-fr": {
        "subject": "Économie", "level": "advanced",
        "class_levels": ["premiere", "terminale"], "series": ["acc", "cg", "fig", "ses"],
        "exam": "Probatoire", "topic_id": "fr-stt-economie-comptabilite",
    },
    "philosophie": {
        "subject": "Philosophie", "level": "advanced",
        "class_levels": ["terminale"], "series": ["a1", "a2", "a4", "abi"],
        "exam": "Baccalauréat", "topic_id": "fr-philo-bac-liberte",
    },
    "ses": {
        "subject": "Sciences Économiques et Sociales", "level": "advanced",
        "class_levels": ["terminale"], "series": ["ses"],
        "exam": "Baccalauréat", "topic_id": "fr-bac-ses",
    },
    "mathematiques-appliquees": {
        "subject": "Mathématiques Appliquées", "level": "advanced",
        "class_levels": ["terminale"], "series": ["acc", "cg", "fig", "ses"],
        "exam": "Baccalauréat", "topic_id": "fr-bac-maths-appliquees",
    },
    # Advanced (Lycée) separate subjects for séries C/D
    "physique": {
        "subject": "Physique", "level": "advanced",
        "class_levels": ["terminale"], "series": ["c", "d", "e", "ti"],
        "exam": "Baccalauréat", "topic_id": "fr-math-bac-analyse",
    },
    "chimie": {
        "subject": "Chimie", "level": "advanced",
        "class_levels": ["terminale"], "series": ["c", "d", "e", "ti"],
        "exam": "Baccalauréat", "topic_id": "fr-math-bac-analyse",
    },
    "mathematiques-terminale": {
        "subject": "Mathématiques", "level": "advanced",
        "class_levels": ["terminale"], "series": ["c", "d", "e", "ti"],
        "exam": "Baccalauréat", "topic_id": "fr-math-bac-analyse",
    },
    "francais-terminale": {
        "subject": "Français", "level": "advanced",
        "class_levels": ["terminale"], "series": ["a1", "a2", "a4", "abi", "c", "d"],
        "exam": "Baccalauréat", "topic_id": "fr-lycee-francais-methodes-bac",
    },
    "informatique-terminale": {
        "subject": "Informatique", "level": "advanced",
        "class_levels": ["terminale"], "series": ["ti", "c", "d", "e"],
        "exam": "Baccalauréat", "topic_id": "fr-lycee-info-algo-systemes",
    },
    "svt-terminale": {
        "subject": "Sciences de la Vie et de la Terre", "level": "advanced",
        "class_levels": ["terminale"], "series": ["c", "d", "ti"],
        "exam": "Baccalauréat", "topic_id": "fr-svt-bac-genetique",
    },
}


def escape_sql(text):
    return text.replace("'", "''")


def make_uuid(seed):
    h = hashlib.md5(seed.encode()).hexdigest()
    return f"{h[:8]}-{h[8:12]}-{h[12:16]}-{h[16:20]}-{h[20:32]}"


def main():
    lines = [
        "-- Seed French MCQ (Paper 1) and structural sets for francophone subjects",
        f"-- Generated: {datetime.now().isoformat()}",
        "BEGIN;",
        "",
    ]

    count = 0
    for dirname, cfg in SUBJECT_MAP.items():
        d = PAPERS / dirname
        if not d.is_dir():
            continue
        subject = cfg["subject"]
        level = cfg["level"]
        class_levels = cfg["class_levels"]
        series = cfg["series"]
        exam = cfg["exam"]
        topic_id = cfg["topic_id"]

        class_arr = "array[" + ",".join(f"'{c}'" for c in class_levels) + "]::text[]"
        series_arr = "array[" + ",".join(f"'{s}'" for s in series) + "]::text[]"

        # MCQ files
        for n in (1, 2, 3):
            f = d / f"mcq-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            title = f"{exam} {subject} — QCM (Épreuve 1) — Série {n}"
            uuid = make_uuid(f"fr-{dirname}-mcq-{n}")
            lines.append(f"""
-- {title}
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '{uuid}', '{topic_id}', '{escape_sql(subject)}', '{escape_sql(title)}',
    'french', '{level}', {class_arr}, {series_arr}, 'published',
    '{content}', 'paper', 'paper', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} QCM',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();
""")
            count += 1

        # Structural sets 4-7
        for n in (4, 5, 6, 7):
            f = d / f"set-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            title = f"{exam} {subject} — Sujet structuré — Série {n}"
            uuid = make_uuid(f"fr-{dirname}-set-{n}")
            lines.append(f"""
-- {title}
INSERT INTO public.course_documents (
    id, topic_id, subject, title, language, level, class_levels, series, status,
    markdown_content, content_kind, doc_type, curriculum_path, exam,
    content_year, source_type, source_reference, permission_status, review_status,
    content_version, change_note
)
VALUES (
    '{uuid}', '{topic_id}', '{escape_sql(subject)}', '{escape_sql(title)}',
    'french', '{level}', {class_arr}, {series_arr}, 'published',
    '{content}', 'paper', 'paper', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} Sujet structuré',
    'approved', 'approved', '1.0.0', 'French paper parity migration'
)
ON CONFLICT (id) DO UPDATE SET
    topic_id = EXCLUDED.topic_id, subject = EXCLUDED.subject, title = EXCLUDED.title,
    language = EXCLUDED.language, level = EXCLUDED.level, class_levels = EXCLUDED.class_levels,
    series = EXCLUDED.series, status = EXCLUDED.status, markdown_content = EXCLUDED.markdown_content,
    content_kind = EXCLUDED.content_kind, doc_type = EXCLUDED.doc_type,
    curriculum_path = EXCLUDED.curriculum_path, exam = EXCLUDED.exam,
    content_year = EXCLUDED.content_year, source_type = EXCLUDED.source_type,
    source_reference = EXCLUDED.source_reference, permission_status = EXCLUDED.permission_status,
    review_status = EXCLUDED.review_status, content_version = EXCLUDED.content_version,
    change_note = EXCLUDED.change_note, updated_at = NOW();
""")
            count += 1

    lines.append("COMMIT;")
    lines.append("")
    lines.append("NOTIFY pgrst, 'reload schema';")

    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
    out = MIGRATIONS / f"{timestamp}_french_paper_parity.sql"
    out.write_text("\n".join(lines))
    print(f"Migration written: {out}")
    print(f"Total documents: {count}")


if __name__ == "__main__":
    main()
