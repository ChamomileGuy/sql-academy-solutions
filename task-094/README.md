# Task #94: Buyers of Laptop and Monitor in March

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/94)

**Difficulty:** medium

## Description

Display the names of customers who each purchased a "Laptop" and "Monitor" (use product.name) in March 2024?

## Expected fields

`name`

## Solution

```sql
SELECT c.name
FROM Customer c
JOIN Purchase p ON p.customer_key = c.customer_key
JOIN Product pr ON pr.product_key = p.product_key
WHERE pr.name IN ('Laptop', 'Monitor')
 AND p.date >= '2024-03-01'
 AND p.date < '2024-04-01'
GROUP BY c.customer_key, c.name
HAVING COUNT(DISTINCT pr.name) = 2;
```
