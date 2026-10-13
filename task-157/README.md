# Task #157: Average Items Per Order

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/157)

**Difficulty:** medium

## Description

Theorderstable holds Zalando's orders;order_itemsstores the line items of each order (order_id,product_id,quantity).Write a query that returns a single number — the platform-wide average
number of items (sum ofquantity) per order. Round the answer
to two decimals and name the columnavg_items_per_order.

## Expected fields

`avg_items_per_order`

## Solution

```sql
SELECT ROUND(AVG(order_total), 2) AS avg_items_per_order
FROM (
 SELECT SUM(quantity) AS order_total
 FROM order_items
 GROUP BY order_id
);
```
