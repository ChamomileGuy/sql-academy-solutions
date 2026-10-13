# Task #53: Change name to "Andie Anthony"

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/53)

**Difficulty:** medium

## Description

Change the name "Andie Quincey" to the new "Andie Anthony".

## Expected fields

`percent`

## Solution

```sql
UPDATE FamilyMembers
 SET member_name = 'Andie Anthony'
 WHERE member_name = 'Andie Quincey';
```
