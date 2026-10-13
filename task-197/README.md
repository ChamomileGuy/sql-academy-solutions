# Task #197: The salary review list picked up extra people

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/197)

**Difficulty:** medium

## Description

The report collects candidates for a salary review: employees of departments4and1who earn more than140000.The list picked up extra people: employees of department4earning
below the threshold. For department1the threshold works correctly.Outputname(employee name) andsalary(their salary).

## Expected fields

`name`, `salary`

## Solution

```sql
SELECT e.name,
  e.salary
FROM employees e
WHERE e.department_id = 4
 OR e.department_id = 1
 AND e.salary > 140000;
```
