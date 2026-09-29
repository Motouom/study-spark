#!/usr/bin/env python3
"""
Generate an idempotent migration to seed rich French BEPC courses and fiches
into course_documents, and update papers with richer content.
"""

import hashlib
from pathlib import Path
from datetime import datetime

PROJECT_ROOT = Path("/home/victoire-ws/Documents/ChatGPT/productivity - goals/study-spark")
PAPERS = PROJECT_ROOT / "content/papers"
MIGRATIONS = PROJECT_ROOT / "supabase/migrations"

# dir -> (subject, topic_id, class_levels, series, exam)
SUBJECT_MAP = {
    "mathematiques": {
        "subject": "Mathématiques", "topic_id": "fr-bepc-math-equations",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "svt": {
        "subject": "Sciences de la Vie et de la Terre", "topic_id": "fr-bepc-svt-vivant-terre",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "histoire-geographie": {
        "subject": "Histoire-Géographie", "topic_id": "fr-bepc-hg-cameroun-afrique",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "physique-chimie": {
        "subject": "Physique-Chimie", "topic_id": "fr-bepc-pc-electricite-chimie",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "anglais-fr": {
        "subject": "Anglais", "topic_id": "fr-bepc-anglais-communication",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "francais": {
        "subject": "Français", "topic_id": "fr-bepc-francais-expression",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "ecm": {
        "subject": "Éducation à la Citoyenneté et à la Morale", "topic_id": "fr-bepc-ecm-citoyennete",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
    "informatique-fr": {
        "subject": "Informatique", "topic_id": "fr-bepc-info-bureautique",
        "class_levels": ["troisieme"], "series": ["tronc_commun"], "exam": "BEPC",
    },
}


def escape_sql(text):
    return text.replace("'", "''")


def make_uuid(seed):
    h = hashlib.md5(seed.encode()).hexdigest()
    return f"{h[:8]}-{h[8:12]}-{h[12:16]}-{h[16:20]}-{h[20:32]}"


def main():
    lines = [
        "-- Seed rich French BEPC courses and fiches, update papers with richer content",
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
        topic_id = cfg["topic_id"]
        class_levels = cfg["class_levels"]
        series = cfg["series"]
        exam = cfg["exam"]

        class_arr = "array[" + ",".join(f"'{c}'" for c in class_levels) + "]::text[]"
        series_arr = "array[" + ",".join(f"'{s}'" for s in series) + "]::text[]"

        # Courses (content_kind = course)
        for n in (1, 2, 3):
            f = d / f"course-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            # Extract title from first heading
            first_line = f.read_text().splitlines()[0].lstrip("# ").strip()
            title = first_line
            uuid = make_uuid(f"fr-{dirname}-course-{n}")
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
    'french', 'ordinary', {class_arr}, {series_arr}, 'published',
    '{content}', 'course', 'course', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} Cours',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
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

        # Fiches (content_kind = cheatsheet)
        for n in (1, 2, 3):
            f = d / f"fiche-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            first_line = f.read_text().splitlines()[0].lstrip("# ").strip()
            title = first_line
            uuid = make_uuid(f"fr-{dirname}-fiche-{n}")
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
    'french', 'ordinary', {class_arr}, {series_arr}, 'published',
    '{content}', 'cheatsheet', 'cheatsheet', 'francophone', '{escape_sql(exam)}',
    '2024', 'teacher_authored', '{escape_sql(exam)} {escape_sql(subject)} Fiche de révision',
    'approved', 'approved', '1.0.0', 'French BEPC content quality migration'
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

        # Update MCQ papers with richer content
        for n in (1, 2, 3):
            f = d / f"mcq-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            uuid = make_uuid(f"fr-{dirname}-mcq-{n}")
            lines.append(f"""
-- Update MCQ {n} for {subject}
UPDATE public.course_documents
SET markdown_content = '{content}', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '{uuid}';
""")
            count += 1

        # Update structural sets with richer content
        for n in (4, 5, 6, 7):
            f = d / f"set-{n}.md"
            if not f.exists():
                continue
            content = escape_sql(f.read_text())
            uuid = make_uuid(f"fr-{dirname}-set-{n}")
            lines.append(f"""
-- Update set {n} for {subject}
UPDATE public.course_documents
SET markdown_content = '{content}', content_version = '2.0.0',
    change_note = 'French BEPC content quality migration', updated_at = NOW()
WHERE id = '{uuid}';
""")
            count += 1

    lines.append("COMMIT;")
    lines.append("")
    lines.append("NOTIFY pgrst, 'reload schema';")

    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
    out = MIGRATIONS / f"{timestamp}_french_bepc_quality.sql"
    out.write_text("\n".join(lines))
    print(f"Migration written: {out}")
    print(f"Total statements: {count}")


if __name__ == "__main__":
    main()
