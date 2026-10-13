# Task #194: The report lost employees without orders

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/194)

**Difficulty:** medium

## Description

A colleague sent the annual sales report for review. Everyone who closed no
deals in 2024 is missing from the export: only the sellers remain.Every employee must appear, with 0 for those who sold nothing.Outputname(employee name) andtotal_amount(their order total for
2024).

## Expected fields

`name`, `total_amount`

## Solution

```sql
SELECT e.name,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM employees e
LEFT JOIN orders o
 ON o.employee_id = e.id
 AND o.created_at >= '2024-01-01'
 AND o.created_at < '2025-01-01'
GROUP BY e.id, e.name;
```
