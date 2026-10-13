# Task #72: Average booking price

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/72)

**Difficulty:** medium

## Description

Print the average booking price per day for each of the rooms that have been booked at least once. The average cost must be rounded up to an integer value.

## Expected fields

`room_id`, `avg_price`

## Solution

```sql
SELECT 
 room_id,
 CEIL(AVG(price)) AS avg_price
FROM Reservations
GROUP BY room_id;
```
