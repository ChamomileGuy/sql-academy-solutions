# Task #13: Full namesakes

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/13)

**Difficulty:** easy

## Description

Display the names of people who have a full namesake among passengers

## Expected fields

`name`

## Solution

```sql
SELECT name
FROM Passenger
GROUP BY name
HAVING COUNT (*) > 1;
```
