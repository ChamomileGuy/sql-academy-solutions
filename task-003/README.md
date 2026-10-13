# Task #3: Trips from Moscow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/3)

**Difficulty:** easy

## Description

Print all trips made from Moscow

## Expected fields

`*`

## Solution

```sql
SELECT * 
FROM Trip
WHERE town_from = 'Moscow';
```
