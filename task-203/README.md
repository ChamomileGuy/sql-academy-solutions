# Task #203: A user was credited with someone else's bookings

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/203)

**Difficulty:** medium

## Description

The report shows how much each user has spent on bookings.A user complained to support: the report credits them with more than they
actually spent. Their bookings were checked by id, and none of them is extra.Outputname(user name) andtotal_spent(sum oftotalover all their bookings).

## Expected fields

`name`, `total_spent`

## Solution

```sql
SELECT u.name,
  SUM(r.total) AS total_spent
FROM Users u
JOIN Reservations r
 ON r.user_id = u.id
GROUP BY u.id, u.name;
```
