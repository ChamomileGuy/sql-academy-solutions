# Task #153: Most Active Reviewer

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/153)

**Difficulty:** medium

## Description

SAP collects customer feedback after consulting engagements.
Each row inEngagementRatingsis a customer's rating for a consultant.Write a query that returns the name of the customer
(Customers.name) who has submitted the most ratings.

## Expected fields

`name`

## Solution

```sql
-- Если несколько клиентов с наибольшим количеством, ранги
SELECT name
FROM (
 SELECT 
  c.name,
  RANK() OVER(ORDER BY COUNT(*) DESC) AS rnk
 FROM EngagementRatings er
 JOIN Customers c
  ON c.customer_id = er.customer_id
  GROUP BY c.customer_id, c.name
)
WHERE rnk = 1


/* Если несколько клиентов с наибольшим количеством, подзапрос
SELECT c.name
FROM EngagementRatings er
JOIN Customers c
    ON c.customer_id = er.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(*) = (
    SELECT MAX(cnt)
```
