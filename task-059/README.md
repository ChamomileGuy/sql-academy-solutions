# Task #59: Users with a Belarusian number

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/59)

**Difficulty:** medium

## Description

Print users who have a Belarusian phone number? The telephone code of Belarus is +375.

## Expected fields

`*`

## Solution

```sql
SELECT *
FROM Users
WHERE phone_number ~ '^\+375\s?\d{3}\s?\d{3}\s?\d{4}';
```
