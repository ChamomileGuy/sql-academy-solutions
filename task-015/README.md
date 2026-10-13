# Task #15: Steve Martin's arrival in London

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/15)

**Difficulty:** easy

## Description

Print the passenger ID of Steve Martin and the date and time of his arrival in London

## Expected fields

`id`, `time_in`

## Solution

```sql
SELECT 
 p.id,
 t.time_in
FROM Passenger p
JOIN Pass_in_trip pit
 ON p.id = pit.passenger
JOIN Trip t
 ON t.id = pit.trip
WHERE p.name = 'Steve Martin'
 AND t.town_to = 'London';
```
