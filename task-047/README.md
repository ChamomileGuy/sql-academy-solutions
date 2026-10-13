# Task #47: Krauze's classes on August 30, 2019

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/47)

**Difficulty:** easy

## Description

How many classes did Krauze hold on August 30, 2019?

## Expected fields

`count`

## Solution

```sql
SELECT COUNT(*) AS count
FROM Teacher t
JOIN Schedule s
 ON t.id = s.teacher
WHERE t.last_name = 'Krauze'
 AND date = '2019-08-30';
```
