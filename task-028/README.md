# Task #28: Flights from Rostov to Moscow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/28)

**Difficulty:** easy

## Description

How many trips were made by airlines from Rostov to Moscow ?

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Trip
WHERE town_from = 'Rostov' AND town_to = 'Moscow';
```
