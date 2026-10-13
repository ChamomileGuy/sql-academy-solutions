# Task #207: Two departments split the whole company revenue

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/207)

**Difficulty:** medium

## Description

Management compares how much theSalesandProductdepartments
contribute to company revenue: they need each department's revenue and its
share of the whole company's revenue, in percent.The two shares add up to exactly 100%, although employees of other
departments close orders too.Outputname(department name),revenue(department revenue) andrevenue_share(share of the whole
company's revenue in percent, rounded to 1 decimal place).

## Expected fields

`name`, `revenue`, `revenue_share`

## Solution

```sql
SELECT *
FROM (
 SELECT d.name,
   SUM(o.amount) AS revenue,
   ROUND(SUM(o.amount) * 100 / SUM(SUM(o.amount)) OVER (), 
               1) AS revenue_share
 FROM departments d
 JOIN employees e
  ON e.department_id = d.id
 JOIN orders o
  ON o.employee_id = e.id
 GROUP BY d.id, d.name
)
WHERE name IN ('Sales', 'Product');
```
