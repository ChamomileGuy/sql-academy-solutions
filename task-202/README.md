# Task #202: Departments repeat in the list

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/202)

**Difficulty:** medium

## Description

A list of departments that have at least one employee earning more than170000is needed. Each department must appear once.Departments repeat in the list: each appears as many times as it has such
employees.Outputname(department name).

## Expected fields

`name`

## Solution

```sql
SELECT DISTINCT d.name
FROM departments d
JOIN employees e
 ON e.department_id = d.id
WHERE e.salary > 170000;
```
