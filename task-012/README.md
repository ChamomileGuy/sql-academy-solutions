# Task #12: Number of passengers on flights

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/12)

**Difficulty:** easy

## Description

Print the IDs of all flights and the number of passengers on each flight. If there are no passengers on a flight, print the number "0" for that flight.

## Expected fields

`id`, `count`

## Solution

```sql
SELECT Trip.id AS id, COUNT(Pass_in_trip.passenger) AS 
    count
FROM Trip
LEFT JOIN Pass_in_trip
 ON Trip.id = Pass_in_trip.trip
GROUP BY Trip.id;
```
