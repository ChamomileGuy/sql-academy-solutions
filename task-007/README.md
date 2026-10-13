# Task #7: Planes to Moscow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/7)

**Difficulty:** easy

## Description

Display all the names of aircraft that you can fly to Moscow

## Expected fields

`plane`

## Solution

```sql
SELECT DISTINCT plane
FROM Trip
WHERE town_to = 'Moscow';
```
