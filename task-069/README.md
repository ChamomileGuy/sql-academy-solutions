# Task #69: Earnings of room owners

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/69)

**Difficulty:** medium

## Description

Display the identifiers of all the owners of the rooms that are placed on our service for choosing accommodation and the value they have earned.

## Expected fields

`owner_id`, `total_earn`

## Solution

```sql
SELECT 
 r.owner_id, 
 COALESCE(SUM(res.total), 0) AS total_earn
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
GROUP BY r.owner_id;
```
