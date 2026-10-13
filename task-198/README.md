# Task #198: The whole department headcount is counted instead of the needed part

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/198)

**Difficulty:** medium

## Description

The report should show how many employees in each department have a manager.
It returns as many departments as the company has, but the numbers are too
high: they also count employees who have no manager.For some employees themanager_idcolumn
holds nothing.Outputdepartment_idandemployees_with_manager(number of
employees in the department who have a manager).

## Expected fields

`department_id`, `employees_with_manager`

## Solution

```sql
SELECT e.department_id,
  COUNT(*) AS employees_with_manager
FROM employees e
WHERE manager_id IS NOT NULL 
GROUP BY e.department_id
```
