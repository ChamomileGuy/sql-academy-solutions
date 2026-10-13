# Task #167: Active Annual Subscriptions

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/167)

**Difficulty:** medium

## Description

Thesubscriptionstable stores customer subscriptions:subscription_typeis 'annual' or 'monthly',start_date/end_datemark the validity window.Write a query that returnscustomer_name(fromcustomers.name) andproduct_namefor every customer
with anactiveannualsubscription as of today
(CURRENT_DATE). A subscription is active whenCURRENT_DATEfalls within[start_date, end_date]. Sort the result bycustomer_name.

## Expected fields

`customer_name`, `product_name`

## Solution

```sql
SELECT 
 c.name AS customer_name,
 s.product_name
FROM customers c
JOIN subscriptions s
 ON c.customer_id = s.customer_id
WHERE s.start_date <= CURRENT_DATE
 AND s.end_date >= CURRENT_DATE
 AND s.subscription_type = 'annual'
ORDER BY c.name ASC;
```
