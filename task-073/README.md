# Task #73: Rooms rented an odd number of times

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/73)

**Difficulty:** medium

## Description

Print the id of those rooms that have been rented an odd number of times

## Expected fields

`room_id`, `count`

## Solution

```sql
SELECT 
 room_id,
 COUNT(*) AS count
FROM Reservations
GROUP BY room_id
HAVING COUNT(*) % 2 = 1;
```
