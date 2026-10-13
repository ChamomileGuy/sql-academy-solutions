# Task #35: Classrooms used on September 2, 2019

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/35)

**Difficulty:** easy

## Description

How many different classrooms of the school were used on September 2, 2019 for classes?

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(DISTINCT classroom)
FROM Schedule
WHERE date = '2019-09-02';
```
