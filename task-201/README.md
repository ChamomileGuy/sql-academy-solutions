# Task #201: The wrong employees ended up among department leaders

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/201)

**Difficulty:** medium

## Description

The report must show employees whose closed deals total is above the averagefor their own department.The query runs and the numbers look plausible, but the selection is skewed: it
picks up employees from departments with large deals, while the leaders of
departments with more modest totals fall out of the report.Outputname(employee name) andtotal_amount(value of the deals they
closed).

## Expected fields

`name`, `total_amount`

## Solution

```sql
  s.total_amount
FROM employees e
JOIN (
  SELECT o.employee_id,
    SUM(o.amount) AS total_amount
  FROM orders o
  GROUP BY o.employee_id
 ) s
 ON s.employee_id = e.id
WHERE s.total_amount > (
  SELECT AVG(s2.total_amount)
  FROM (
    SELECT o2.employee_id,
      SUM(o2.amount) AS total_amount
    FROM orders o2
    GROUP BY o2.employee_id
   ) s2
  JOIN employees e2
   ON e2.id = s2.employee_id
  WHERE e2.department_id = e.department_id
 )
```
