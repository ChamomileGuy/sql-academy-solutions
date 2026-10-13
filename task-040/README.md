# Task #40: Subjects of Romashkin P.P.

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/40)

**Difficulty:** easy

## Description

Print the names of the subjects taught by Romashkin P.P. Note that there are multiple teachers with the same last name in the database.

## Expected fields

`subjects`

## Solution

```sql
SELECT s.name AS subjects
FROM Teacher t
JOIN Schedule sch
 ON t.id = sch.teacher
JOIN Subject s
 ON s.id = sch.subject
WHERE t.last_name = 'Romashkin'
 AND t.first_name LIKE 'P%'
 AND t.middle_name LIKE 'P%'
ORDER BY subjects;
```
