# Task #16: Passengers by number of flights

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/16)

**Difficulty:** easy

## Description

Display each passenger's ID, name, and number of flights. Include only passengers who have made at least 1 flight. Sort the result by the number of flights in descending order and by name in ascending order.

## Expected fields

`id`, `name`, `count`

## Solution

```sql
SELECT 
 p.id, 
 p.name, 
 COUNT(pt.passenger) AS count
FROM Passenger p
LEFT JOIN Pass_in_trip pt
 ON p.id = pt.passenger
GROUP BY p.id
HAVING COUNT(pt.passenger) > 0
ORDER BY COUNT(pt.passenger) DESC, p.name ASC;
```
