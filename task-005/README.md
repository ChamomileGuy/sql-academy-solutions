# Task #5: Number of trips on TU-134

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/5)

**Difficulty:** easy

## Description

Print the number of trips completed on TU-134

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Trip
WHERE plane = 'TU-134';
```
