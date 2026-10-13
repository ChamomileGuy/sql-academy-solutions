# Task #160: Top-5 Customers in Last 30 Days

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/160)

**Difficulty:** medium

## Description

Assumetoday is March 31, 2024. Treat "the last 30 days" as the
range from March 2, 2024 to March 31, 2024 inclusive.Write a query that returnscustomer_nameandorder_countfor the five customers with the most orders in that period.
Sort the result byorder_countdescending. Test data excludes
ties inside the top-5.

## Expected fields

`customer_name`, `order_count`

## Solution

```sql
SELECT 
 c.name AS customer_name,
 COUNT(o.order_id) AS order_count 
FROM customers c
LEFT JOIN orders o
 ON c.customer_id = o.customer_id
 AND o.order_placed > '2024-03-02'
 AND o.order_placed <= '2024-03-31'
GROUP BY c.customer_id
ORDER BY order_count DESC
LIMIT 5;
```
