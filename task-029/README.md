# Task #29: Names of passengers flying to Moscow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/29)

**Difficulty:** easy

## Description

Print the names of passengers who flew to Moscow on TU-134. There should be no duplicates in the response.

## Expected fields

`name`

## Solution

```sql
SELECT DISTINCT p.name
FROM Passenger p
JOIN Pass_in_trip pit
 ON p.id = pit.passenger
JOIN Trip t
 ON t.id = pit.trip
WHERE t.town_to = 'Moscow'
 AND t.plane = 'TU-134'
ORDER BY p.name;
```
