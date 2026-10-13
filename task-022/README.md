# Task #22: Names of all mothers

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/22)

**Difficulty:** easy

## Description

Print the names of all mothers

## Expected fields

`member_name`

## Solution

```sql
SELECT member_name
FROM FamilyMembers
WHERE status = 'mother';
```
