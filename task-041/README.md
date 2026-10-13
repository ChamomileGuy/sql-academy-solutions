# Task #41: Start of the fourth lesson

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/41)

**Difficulty:** easy

## Description

Find out what time the fourth lesson starts according to the schedule.

## Expected fields

`start_pair`

## Solution

```sql
SELECT start_pair
FROM Timepair
WHERE id = 4;
```
