# Task #76: User status: owner/tenant

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/76)

**Difficulty:** medium

## Description

Display the names of all users of the booking service, as well as the status of whether the user is the owner of the housing and whether he has rented the housing at least once. If the user has the specified status, display 1 in the appropriate field, otherwise 0.

## Expected fields

`name`, `is_owner`, `is_tenant`

## Solution

```sql
SELECT
 u.name,
 CASE
  WHEN r.owner_id IS NULL THEN 0
  ELSE 1
 END AS is_owner,
 CASE 
  WHEN res.id IS NULL THEN 0
  ELSE 1
 END AS is_tenant
FROM Users u
LEFT JOIN Rooms r
 ON u.id = r.owner_id
LEFT JOIN Reservations res
 ON u.id = res.user_id
GROUP BY u.id, u.name, is_owner, is_tenant;
```
