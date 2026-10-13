# Task #30: Flight load

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/30)

**Difficulty:** easy

## Description

Output the number of occupied seats for each trip from the Pass_in_trip table, sorting the result by the number of occupied seats in descending order.

## Expected fields

`trip`, `count`

## Solution

```sql
SELECT trip, COUNT(id) AS count
FROM Pass_in_trip
GROUP BY trip
ORDER BY count DESC;
```
