# Task #46: Classes of teacher Krauze

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/46)

**Difficulty:** easy

## Description

Which classes does teacher Krauze teach?

## Expected fields

`name`

## Solution

```sql
SELECT DISTINCT c.name
FROM Teacher t
JOIN Schedule s
 ON t.id = s.teacher
JOIN Class c
 ON c.id = s.class
WHERE t.last_name = 'Krauze';
```
