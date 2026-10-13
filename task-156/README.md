# Task #156: Monthly Average Product Rating

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/156)

**Difficulty:** medium

## Description

Zalando collects customer product reviews: each row inreviewsis astarsrating (1 to 5) left byuser_idforproduct_idonsubmit_date.Write a query that for every (product, month) pair returnsproduct_id,
the month numbermth, and the average ratingavg_starsrounded to two decimals. Only consider products that have at least one review.

## Expected fields

`product_id`, `mth`, `avg_stars`

## Solution

```sql
SELECT 
 product_id, 
 EXTRACT(MONTH FROM submit_date) AS mth, 
 ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY product_id, mth;
```
