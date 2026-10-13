# Task #37: Age of the youngest student

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/37)

**Difficulty:** easy

## Description

How old is the youngest student ?

## Expected fields

`year`

## Solution

```sql
SELECT MIN(EXTRACT(YEAR FROM AGE(birthday))) AS year
FROM Student;
```
