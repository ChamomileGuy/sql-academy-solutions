# Task #34: Number of 10th grades

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/34)

**Difficulty:** easy

## Description

How many 10th grades are there in total

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Class
WHERE name ~ '^10';
```
