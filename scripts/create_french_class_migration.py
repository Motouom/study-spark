#!/usr/bin/env python3
"""
Generate an idempotent migration to seed French Seconde/Première content
into course_documents, mapped to existing francophone topics.
"""

import hashlib
from pathlib import Path
from datetime import datetime

PROJECT_ROOT = Path("/home/victoire-ws/Documents/ChatGPT/productivity - goals/study-spark")
PAPERS = PROJECT_ROOT / "content/papers"
MIGRATIONS = PROJECT_ROOT / "supabase/migrations"

# dir -> (subject, class_levels, series, exam, topic_id)
SUBJECT_MAP = {
    "mathematiques-seconde": {
        "subject": "Mathématiques", "class_levels": ["seconde"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-maths-analyse-algebre",
    },
    "mathematiques-premiere": {
        "subject": "Mathématiques", "class_levels": ["premiere"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-premiere-math-probatoire",
    },
    "francais-seconde": {
        "subject": "Français", "class_levels": ["seconde"],
        "series": ["a1", "a2", "a4", "abi", "c", "d"], "exam": "Probatoire",
        "topic_id": "fr-lycee-francais-methodes-bac",
    },
    "francais-premiere": {
        "subject": "Français", "class_levels": ["premiere"],
        "series": ["a1", "a2", "a4", "abi", "c", "d"], "exam": "Probatoire",
        "topic_id": "fr-premiere-a4-francais-dissertation",
    },
    "physique-seconde": {
        "subject": "Physique", "class_levels": ["seconde"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-physique-meca-elec",
    },
    "physique-premiere": {
        "subject": "Physique", "class_levels": ["premiere"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-physique-meca-elec",
    },
    "chimie-seconde": {
        "subject": "Chimie", "class_levels": ["seconde"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-chimie-solutions-organique",
    },
    "chimie-premiere": {
        "subject": "Chimie", "class_levels": ["premiere"],
        "series": ["c", "d", "e", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-chimie-solutions-organique",
    },
    "svt-seconde": {
        "subject": "Sciences de la Vie et de la Terre", "class_levels": ["seconde"],
        "series": ["c", "d", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-svt-genetique-immunologie",
    },
    "svt-premiere": {
        "subject": "Sciences de la Vie et de la Terre", "class_levels": ["premiere"],
        "series": ["c", "d", "ti"], "exam": "Probatoire",
        "topic_id": "fr-lycee-svt-genetique-immunologie",
    },
    "histoire-geographie-seconde": {
        "subject": "Histoire-Géographie", "class_levels": ["seconde"],
        "series": ["a1", "a2", "a4", "abi", "c", "d"], "exam": "Probatoire",
        "topic_id": "fr-premiere-a4-hg-cameroun",
    },
    "histoire-geographie-premiere": {
        "subject": "Histoire-Géographie", "class_levels": ["premiere"],
        "series": ["a1", "a2", "a4", "abi", "c", "d"], "exam": "Probatoire",
        "topic_id": "fr-premiere-a4-hg-cameroun",
    },
    "informatique-seconde": {
        "subject": "Informatique", "class_levels": ["seconde"],
        "series": ["ti", "c", "d", "e"], "exam": "Probatoire",
        "topic_id": "fr-lycee-info-algo-systemes",
    },
    "informatique-premiere": {
        "subject": "Informatique", "class_levels": ["premiere"],
        "series": ["ti", "c", "d", "e"], "exam": "Probatoire",
        "topic_id": "fr-lycee-info-algo-systemes",
    },
    "philosophie-seconde": {
        "subject": "Philosophie", "class_levels": ["seconde"],
        "series": ["a1", "a2", "a4", "abi"], "exam": "Probatoire",
        "topic_id": "fr-premiere-a4-philo-methodologie",
    },
    "philosophie-premiere": {
        "subject": "Philosophie", "class_levels": ["premiere"],
        "series": ["a1", "a2", "a4", "abi"], "exam": "Probatoire",
        "topic_id": "fr-premiere-a4-philo-methodologie",
    },
}


def escape_sql(text):
    return text.replace("'", "''")


def make_uuid(seed):
    h = hashlib.md5(seed.encode()).hexdigest()
    return f"{h[:8]}-{h[8:12]}-{h[12:16]}-{h[16:20]}-{h[20:32]}"


def main():
    lines = [
        "-- Seed French Seconde/Première content for francophone subjects",
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
        class_levels = cfg["class_levels"]
        series = cfg["series"]
        exam = cfg["exam"]
        topic_id = cfg["topic_id"]

        class_arr = "array[" + ",".join(f"'{c}'" for c in class_levels) + "]::text[]"
        series_arr = "array[" + ",".join(f"'{s}'" for s in series) + "]::text[]"

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
    'french', 'advanced', {class_arr}, {series_arr}, 'published',
    '{content}', 'paper', 'paper', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} QCM',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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
    'french', 'advanced', {class_arr}, {series_arr}, 'published',
    '{content}', 'paper', 'paper', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} Sujet structuré',
    'approved', 'approved', '1.0.0', 'French class-level parity migration'
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
    out = MIGRATIONS / f"{timestamp}_french_seconde_premiere.sql"
    out.write_text("\n".join(lines))
    print(f"Migration written: {out}")
    print(f"Total documents: {count}")


if __name__ == "__main__":
    main()
