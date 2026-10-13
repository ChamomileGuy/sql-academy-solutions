# Task #50: Percentage of students born in 2000

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/50)

**Difficulty:** medium

## Description

What percentage of students were born in 2000? The result of rounding to the nearest whole in the smaller side.

## Expected fields

`percent`

## Solution

```sql
SELECT 
 FLOOR(
  100.0 * COUNT(*) FILTER (WHERE EXTRACT(YEAR FROM 
            birthday) = 2000) / COUNT(*)
 ) AS percent
FROM Student;
```
