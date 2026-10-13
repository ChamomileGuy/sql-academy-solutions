# Task #56: Delete flights from Moscow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/56)

**Difficulty:** medium

## Description

Delete all flights made from Moscow (Moscow).

## Expected fields

`percent`

## Solution

```sql
DELETE FROM TRIP 
WHERE town_from = 'Moscow';
```
