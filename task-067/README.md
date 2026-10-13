# Task #67: Departure and arrival time

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/67)

**Difficulty:** medium

## Description

Output the departure time and arrival time for each flight in "HH:MM, DD.MM - HH:MM, DD.MM" format, where the hours and minutes are with a leading zero, and the day and month are without.

## Expected fields

`flight_time`

## Solution

```sql
SELECT
 TO_CHAR(time_out, 'HH24:MI, FMDD.FMMM') || ' - ' ||
 TO_CHAR(time_in,  'HH24:MI, FMDD.FMMM') AS 
        flight_time
FROM Trip
ORDER BY id;
```
