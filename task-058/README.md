# Task #58: Add a review from George Clooney

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/58)

**Difficulty:** medium

## Description

Add a 5-star comment on housing located at 11218 Friel Place, New York on behalf of George Clooney

## Expected fields

`percent`

## Solution

```sql
INSERT INTO Reviews (id, reservation_id, rating)
SELECT 
 COUNT(*) + 1, 
 (
  SELECT res.id
  FROM Reservations res
  JOIN Users u 
   ON u.id = res.user_id
  JOIN Rooms r
   ON r.id = res.room_id
  WHERE u.name = 'George Clooney' 
   AND r.address = '11218, Friel Place, New 
                York'
 ),
 5
FROM Reviews;
```
