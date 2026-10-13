# Task #14: Cities Bruce Willis visited

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/14)

**Difficulty:** easy

## Description

Which cities did Bruce Willis visit

## Expected fields

`town_to`

## Solution

```sql
SELECT Trip.town_to
FROM Passenger
JOIN Pass_in_trip
 ON Passenger.id = Pass_in_trip.passenger
JOIN Trip
 ON Pass_in_trip.trip = Trip.id
WHERE Passenger.name = 'Bruce Willis';
```
