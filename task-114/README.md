# Task #114: Salary higher than the manager's

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/114)

**Difficulty:** medium

## Description

Display a list of names of employees receiving a salary greater than that of their immediate chief

## Expected fields

`name`

## Solution

```sql
SELECT e.name
FROM Employee e
JOIN Employee chief
 ON chief.id = e.chief_id
WHERE e.salary > chief.salary;
```
