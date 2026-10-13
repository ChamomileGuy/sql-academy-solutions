# Database schema: Schedule

## `Class` — List of classes in the school

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `name` | VARCHAR |  | Class title |

## `Schedule` — Class schedule

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `date` | DATE |  | Date of the lesson |
| `class` | INT |  | Class ID |
| `number_pair` | INT |  | The sequence number of the lesson |
| `teacher` | INT |  | Teacher ID |
| `subject` | INT |  | Subject ID |
| `classroom` | INT |  | Classroom ID |

## `Student` — School students

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `first_name` | VARCHAR |  | Student's first name |
| `middle_name` | VARCHAR |  | Student's middle name |
| `last_name` | VARCHAR |  | Student's last name |
| `birthday` | DATE |  | Student's date of birth |
| `address` | VARCHAR |  | Student's place of residence |

## `Student_in_class` — Information about student's class

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `class` | INT |  | Class ID |
| `student` | INT |  | Student ID |

## `Subject` — List of school subjects

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `name` | VARCHAR |  | Subject name |

## `Teacher` — List of school teachers

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `first_name` | VARCHAR |  | Teacher's first name |
| `middle_name` | VARCHAR |  | Teacher's middle name |
| `last_name` | VARCHAR |  | Teacher's last name |

## `Timepair` — The schedule calls

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `start_pair` | TIME |  | Lesson start time |
| `end_pair` | TIME |  | Lesson end time |

## Relations

- `schedule.class` → `class.id` (many-to-one)
- `schedule.number_pair` → `timepair.id` (many-to-one)
- `schedule.teacher` → `teacher.id` (many-to-one)
- `schedule.subject` → `subject.id` (many-to-one)
- `student_in_class.class` → `class.id` (many-to-one)
- `student_in_class.student` → `student.id` (many-to-one)
