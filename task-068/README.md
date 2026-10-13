# Task #68: Last room tenant

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/68)

**Difficulty:** medium

## Description

For each room selected at least 1 time, find the name of the person who last rented it and used it when they checked out

## Expected fields

`room_id`, `name`, `end_date`

## Solution

```sql
SELECT DISTINCT ON (r.room_id)
 r.room_id,
 u.name,
 r.end_date
FROM Reservations r
JOIN Users u ON u.id = r.user_id
ORDER BY r.room_id, r.end_date DESC, r.id DESC;
```
