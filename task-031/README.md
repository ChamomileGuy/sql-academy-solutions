# Task #31: Quincey family members

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/31)

**Difficulty:** easy

## Description

Print all family members with the last name Quincey.

## Expected fields

`*`

## Solution

```sql
SELECT *
FROM FamilyMembers
WHERE member_name LIKE '% Quincey';
```
