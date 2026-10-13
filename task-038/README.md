# Task #38: Number of students named Anna

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/38)

**Difficulty:** easy

## Description

How many students with the name Anna study at school?

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Student
WHERE first_name = 'Anna';
```
