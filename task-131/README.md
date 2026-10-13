# Task #131: Number of orders by each registered customer

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/131)

**Difficulty:** easy

## Description

Given a database with information about purchases and registered customers.
The purchases table stores purchase information,
the registered_customers table stores registered customer information.Write a query to identify the number of orders placed by each registered customer.
Display the customer ID and the total number of orders placed by each customer.

## Expected fields

`customer_id`, `total_orders`

## Solution

```sql
SELECT 
 rc.customer_id,
 COUNT(p.purchase_id) AS total_orders
FROM registered_customers rc
LEFT JOIN purchases p
 ON rc.customer_id = p.customer_id
GROUP BY rc.customer_id;
```
