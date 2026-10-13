# Task #43: Physical Culture teachers

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/43)

**Difficulty:** easy

## Description

Print the last names of the teachers who teach physical education (Physical Culture). Sort the teachers by last name in alphabetical order.

## Expected fields

`last_name`

## Solution

```sql
SELECT Teacher.last_name
FROM Teacher
JOIN Schedule
 ON Teacher.id = Schedule.teacher
JOIN Subject
 ON Subject.id = Schedule.subject
WHERE Subject.name = 'Physical Culture'
ORDER BY Teacher.last_name;
```
