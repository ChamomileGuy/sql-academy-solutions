# Task #45: Most used classrooms

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/45)

**Difficulty:** easy

## Description

Which classrooms were most often used for classes? Output the ones that have been used the maximum number of times.

## Expected fields

`classroom`

## Solution

```sql
SELECT classroom
FROM(
 SELECT 
  classroom, 
  COUNT(*) AS cnt,
  DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS 
            rnk
 FROM Schedule
 GROUP BY classroom 
)
WHERE rnk = 1;
```
