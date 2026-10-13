# Task #93: Average age of Smartwatch buyers

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/93)

**Difficulty:** medium

## Description

What is the average age of customers who bought a Smartwatch (use product.name) in 2024?

## Expected fields

`average_age`

## Solution

```sql
SELECT AVG(age) AS average_age
FROM (
 SELECT DISTINCT c.customer_key, c.age
 FROM Customer c
 JOIN Purchase pur ON pur.customer_key = c
        .customer_key
 JOIN Product pr ON pr.product_key = pur.product_key
 WHERE pr.name = 'Smartwatch'
  AND pur.date >= '2024-01-01'
  AND pur.date < '2025-01-01'
) AS unique_customers;
```
