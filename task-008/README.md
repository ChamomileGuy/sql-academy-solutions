# Task #8: Flights from Paris

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/8)

**Difficulty:** easy

## Description

What cities can I fly to from Paris and how long will it take?

## Expected fields

`town_to`, `flight_time`

## Solution

```sql
SELECT 
 town_to,
 time_in - time_out AS flight_time
FROM Trip
WHERE town_from = 'Paris';
```
