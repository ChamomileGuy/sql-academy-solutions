# Task #199: Two people on the boundary dropped out of the bonus list

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/199)

**Difficulty:** medium

## Description

The report collects employees earning160000 or more, the ones eligible
for a bonus.Employees earning exactly160000did not make it into the export,
although the boundary belongs to the range.Outputname(employee name) andsalary(their salary).

## Expected fields

`name`, `salary`

## Solution

```sql
SELECT e.name,
  e.salary
FROM employees e
WHERE e.salary >= 160000;
```
