# Task #61: Rooms reserved on the 12th week of 2020

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/61)

**Difficulty:** medium

## Description

Output a list of rooms that have been reserved for at least one day in the 12th week of 2020.
In this task, take a period of seven days as one week, the first of which begins on January 1, 2020. For example, the first week of the year is January 1-7, and the third is January 15-21.

## Expected fields

`Rooms.*`

## Solution

```sql
SELECT r.*
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
WHERE EXTRACT(WEEK FROM res.start_date) = 12
 AND EXTRACT(YEAR FROM res.start_date) = 2020
GROUP BY r.id;
```
