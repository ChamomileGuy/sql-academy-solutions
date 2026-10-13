# Database schema: Schedule

A simple database for CREATE TABLE tasks

## `Lessons` — Lessons list

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INTEGER | 🔑 PK | Lesson ID |
| `subject` | VARCHAR |  | Subject name |
| `teacher_name` | VARCHAR |  | Teacher name |
| `lesson_date` | DATE |  | Lesson date |
| `classroom` | VARCHAR |  | Classroom number |

## `Timepair` — Time slots

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INTEGER | 🔑 PK | Time slot ID |
| `start_time` | TIME |  | Start time |
| `end_time` | TIME |  | End time |
