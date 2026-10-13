# Database schema: Finstar Financial Group

Finstar Financial Group

## `Employee` — List of employees

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `emp_name` | VARCHAR |  |  |
| `rating` | INT |  |  |

## `Tasks` — List of tasks

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `assignee_id` | INT |  |  |
| `rating` | INT |  |  |

## Relations

- `Employee.id` → `Tasks.assignee_id` (one-to-many)
