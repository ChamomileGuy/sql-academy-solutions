# Task #60: Teachers of 11th grades

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/60)

**Difficulty:** medium

## Description

Print the identifiers of the teachers who taught at least once for the entire time in each of the eleventh grades.

## Expected fields

`teacher`

## Solution

```sql
SELECT s.teacher
FROM Schedule s
JOIN Class c ON c.id = s.class
WHERE c.name LIKE '11%'
GROUP BY s.teacher
HAVING COUNT(DISTINCT s.class) = (
 SELECT COUNT(*)
 FROM Class
 WHERE name LIKE '11%'
);
```
