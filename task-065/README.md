# Task #65: Rating of rented rooms

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/65)

**Difficulty:** medium

## Description

It is necessary to display the rating for rooms that have been rented at least once, as the average of the rating of reviews, rounded down to the integer.

## Expected fields

`room_id`, `rating`

## Solution

```sql
SELECT 
 room_id,
 FLOOR(AVG(rating)) AS rating
FROM Reviews
JOIN Reservations 
 ON Reservations.id = Reviews.reservation_id
GROUP BY room_id
ORDER BY room_id;
```
