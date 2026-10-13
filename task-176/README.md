# Task #176: Top-10 Spenders by Total Purchase Amount

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/176)

**Difficulty:** medium

## Description

Thetransactionstable stores customer purchases through
Klarna.Write a query that returnscustomer_name(fromcustomers.name) andtotal_spent— the customer's
lifetime total purchase amount — for the top 10 customers.
Sort bytotal_spentdescending.

## Expected fields

`customer_name`, `total_spent`

## Solution

```sql
SELECT 
 c.name AS customer_name,
 SUM(t.amount) AS total_spent
FROM transactions t
JOIN customers c
 ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 10;
```
