# Task #179: Revenue per City

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/179)

**Difficulty:** medium

## Description

Thebookingstable stores reservations of the accommodations
fromproperties. Consider onlycompletedbookings
(status= 'completed').Write a query that returnscityandtotal_revenue(the total price of completed bookings in that city). Sort bytotal_revenuedescending.

## Expected fields

`city`, `total_revenue`

## Solution

```sql
SELECT pr.city,
 SUM(b.total_price) AS total_revenue
FROM properties pr
JOIN bookings b
 ON pr.property_id = b.property_id
WHERE status = 'completed'
GROUP BY pr.city
ORDER BY total_revenue DESC
```
