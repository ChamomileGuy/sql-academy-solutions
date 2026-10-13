# Task #155: License Utilization Overflow

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/155)

**Difficulty:** medium

## Description

SAP tracks actual subscription usage:Subscriptionsstores the number of
purchased seats (seats_purchased) and the number of active users
(seats_used) for every customer–product pair.Write a query that returns the customer name (Customers.name) and the
product name (Subscriptions.product) for every subscription where the
actual usage exceeds the purchased seat limit.
Sort the result by customer name in alphabetical order.

## Expected fields

`name`, `product`

## Solution

```sql
SELECT c.name, s.product
FROM Customers c
JOIN Subscriptions s
 ON c.customer_id = s.customer_id
WHERE s.seats_used > s.seats_purchased
ORDER BY c.name;
```
