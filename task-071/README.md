# Task #71: Percentage of active users

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/71)

**Difficulty:** medium

## Description

Find what percentage of users registered on the booking service have rented or rented out a property at least once. Round the result to the nearest hundredth.

## Expected fields

`percent`

## Solution

```sql
SELECT 
 ROUND(
  100.0 * (SELECT COUNT(*) FROM (
   SELECT user_id FROM Reservations 
   UNION 
   SELECT r.owner_id 
   FROM Rooms r
   JOIN Reservations res ON r.id = res.room_id
  ) AS active_users) / (SELECT COUNT(*) FROM Users
            ), 
  2
 ) AS percent;
```
