# Task #10: Departures at a specific time

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/10)

**Difficulty:** easy

## Description

Print trips made from 10 a.m. to 2 p.m. on January 1, 1900.

## Expected fields

`*`

## Solution

```sql
SELECT *
FROM Trip
WHERE time_out >= '1900-01-01 10:00:00'
 AND time_out <= '1900-01-01 14:00:00';
```
