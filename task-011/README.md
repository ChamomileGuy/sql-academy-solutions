# Task #11: Passengers with the longest name

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/11)

**Difficulty:** easy

## Description

Print the passengers with the longest full name. Spaces, hyphens, and dots are considered part of the name.

## Expected fields

`name`

## Solution

```sql
SELECT name
FROM Passenger
WHERE LENGTH(name) = (
 SELECT MAX(LENGTH(name)) 
 FROM Passenger
);
```
