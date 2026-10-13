# Task #39: Number of students in 10 B grade

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/39)

**Difficulty:** easy

## Description

How many students are in grade 10 B ?

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Student_in_class sic
JOIN Class c
 ON c.id = sic.class
WHERE name ~ '^10 B';
```
