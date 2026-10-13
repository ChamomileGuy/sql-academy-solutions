# Task #4: Names ending in "man"

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/4)

**Difficulty:** easy

## Description

Print the names of people that end in "man"

## Expected fields

`name`

## Solution

```sql
SELECT name
FROM Passenger
WHERE name ~ 'man$';
```
