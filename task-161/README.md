# Task #161: Average Delivery Time per City

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/161)

**Difficulty:** medium

## Description

Delivery time of an order is the difference betweenorder_deliveredandorder_placedin minutes. The city
of an order is the city of the restaurant the order was placed at.Write a query that returnscity_nameandavg_minutes— the average delivery time per city, rounded to two decimals.
Sort the result byavg_minutesascending.

## Expected fields

`city_name`, `avg_minutes`

## Solution

```sql
SELECT
 c.city_name,
 ROUND(AVG(
  EXTRACT(HOUR FROM (o.order_delivered - o.order_placed)) * 
            60
  + EXTRACT(MINUTE FROM (o.order_delivered - o.order_placed))
 ), 2) AS avg_minutes
FROM orders o
JOIN restaurants r ON r.restaurant_id = o.restaurant_id
JOIN cities c ON c.city_id = r.city_id
GROUP BY c.city_id, c.city_name
ORDER BY avg_minutes ASC;
```
