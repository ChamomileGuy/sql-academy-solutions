# Task #195: The dashboard overstates department headcount

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/195)

**Difficulty:** medium

## Description

For three days the dashboard has overstated department headcount. The report
has the right number of departments and the order totals are correct: only the
headcount is off, and the more orders a department has, the worse it gets.Outputname(department name),employees_count(number of employees) andtotal_amount(their order total).

## Expected fields

`name`, `employees_count`, `total_amount`

## Solution

```sql
SELECT d.name,
  COUNT(DISTINCT e.id) AS employees_count,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM departments d
JOIN employees e
 ON e.department_id = d.id
LEFT JOIN orders o
 ON o.employee_id = e.id
GROUP BY d.id, d.name;
```
