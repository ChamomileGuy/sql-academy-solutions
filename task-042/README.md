# Task #42: Time at school from 2nd to 4th subject

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/42)

**Difficulty:** easy

## Description

How long will the student be in school, studying from the 2nd to the 4th academic subject?

## Expected fields

`time`

## Solution

```sql
SELECT (
 (SELECT end_pair FROM Timepair WHERE id = 4) - 
 (SELECT start_pair FROM Timepair WHERE id = 2)
) AS time;
```
