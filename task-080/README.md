# Task #80: Create "Verified_Users" view

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/80)

**Difficulty:** medium

## Description

Create a "Verified_Users" view with id, name and email fields that will only show users who have a verified email address.

## Expected fields

`percent`

## Solution

```sql
CREATE VIEW Verified_Users AS 
 SELECT id, name, email
 FROM Users
 WHERE email_verified_at IS NOT NULL;
```
