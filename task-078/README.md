# Task #78: Users with hotmail.com email

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/78)

**Difficulty:** medium

## Description

Display all users with email in "hotmail.com"

## Expected fields

`*`

## Solution

```sql
SELECT *
FROM Users
WHERE email ~* '.*@hotmail\.com$';
```
