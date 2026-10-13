# Task #66: Rooms with all amenities

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/66)

**Difficulty:** medium

## Description

Display a list of rooms with all amenities (TV, Internet, kitchen, and air conditioning), as well as the total number of days and the amount for all days of renting each of these rooms.

## Expected fields

`home_type`, `address`, `days`, `total_fee`

## Solution

```sql
SELECT 
 home_type, 
 address, 
 COALESCE(SUM(res.total/res.price), 0) AS days, 
 COALESCE(SUM(res.total), 0) AS total_fee
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
WHERE
 has_tv IS TRUE 
 AND has_internet IS TRUE 
 AND has_kitchen IS TRUE 
 AND has_air_con IS TRUE 
GROUP BY home_type, address;
```
