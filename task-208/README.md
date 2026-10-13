# Task #208: The falling sales report picked up extra rows

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/208)

**Difficulty:** medium

## Description

The report looks for employees whose sales are falling: their latest deal is
smaller than their very first one.Each such employee should appear once, but some repeat several times with
different last deal amounts. The report also includes employees whose last
deal is larger than the first.Outputname(employee name),first_amount(amount of the first deal)
andlast_amount(amount of the last
deal).

## Expected fields

`name`, `first_amount`, `last_amount`

## Solution

```sql
WITH deals AS (
  SELECT o.employee_id,
    FIRST_VALUE(o.amount) OVER (
     PARTITION BY o.employee_id
     ORDER BY o.created_at
    ) AS first_amount,
    LAST_VALUE(o.amount) OVER (
     PARTITION BY o.employee_id
     ORDER BY o.created_at
     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED 
                       FOLLOWING
    ) AS last_amount
  FROM orders o
 )
SELECT DISTINCT e.name,
  d.first_amount,
  d.last_amount
FROM deals d
JOIN employees e
 ON e.id = d.employee_id
WHERE d.last_amount < d.first_amount;
```
