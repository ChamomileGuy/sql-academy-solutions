# Task #36: Students living on Pushkin street

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/36)

**Difficulty:** easy

## Description

Print information about students living on Pushkin street (ul. Pushkina)?

## Expected fields

`*`

## Solution

```sql
SELECT *
FROM Student
WHERE address ~* '^ul\. Pushkina';
```
