# Task #200: Customers with no purchases disappeared from the report

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/200)

**Difficulty:** medium

## Description

The report must show every customer and their order total, including those who
have not bought anything yet: those should show 0.Customers with no orders never made it into the report.Outputname(customer name) andtotal_amount(their order total).

## Expected fields

`name`, `total_amount`

## Solution

```sql
SELECT c.name,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM customers c
LEFT JOIN orders o
 ON o.customer_id = c.id
GROUP BY c.id, c.name
```
