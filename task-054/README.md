# Task #54: Delete Quincey family members

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/54)

**Difficulty:** medium

## Description

Remove all family members whose last name is "Quincey".

## Expected fields

`percent`

## Solution

```sql
DELETE FROM FamilyMembers
WHERE member_name ~ '.* Quincey$';
```
