# Task #6: Companies that flew on Boeing

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/6)

**Difficulty:** easy

## Description

Which companies have flown on Boeing

## Expected fields

`name`

## Solution

```sql
SELECT DISTINCT Company.name AS name
FROM Company
JOIN Trip
 ON Company.id = Trip. Company
 WHERE plane = 'Boeing';
```
