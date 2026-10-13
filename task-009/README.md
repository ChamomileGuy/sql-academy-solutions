# Task #9: Companies with flights from Vladivostok

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/9)

**Difficulty:** easy

## Description

What companies organize flights from Vladivostok?

## Expected fields

`name`

## Solution

```sql
SELECT c.name
FROM Company c
JOIN Trip t
 ON c.id = t.company
WHERE town_from = 'Vladivostok';
```
