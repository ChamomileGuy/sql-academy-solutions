# Task #206: The raise list is missing people

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/206)

**Difficulty:** medium

## Description

In every department, employees on the two lowest pay levels get a raise. A pay
level is a salary amount: people who earn the same are on the same level.The support department (id4) complained: Roman Fedorov is entitled to
the raise but is not on the list.Outputname(employee name),department_id(department id) andsalary(their salary).

## Expected fields

`name`, `department_id`, `salary`

## Solution

```sql
SELECT r.name,
  r.department_id,
  r.salary
FROM (
  SELECT e.name,
    e.department_id,
    e.salary,
    DENSE_RANK() OVER (
     PARTITION BY e.department_id
     ORDER BY e.salary
    ) AS salary_level
  FROM employees e
 ) r
WHERE r.salary_level <= 2;
```
