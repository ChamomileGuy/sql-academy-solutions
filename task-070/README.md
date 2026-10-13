# Task #70: Categorization of housing by price

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/70)

**Difficulty:** medium

## Description

It is necessary to categorize rooms into economy, comfort, premium at a price = 200, respectively. As a result, display a table with the name of the category and the number of housing falling into this category

## Expected fields

`category`, `count`

## Solution

```sql
SELECT 
 CASE
  WHEN price <= 100 THEN 'economy'
  WHEN 100 < price AND price < 200 THEN 'comfort'
  ELSE 'premium'
 END AS category,
 COUNT(*)
FROM Rooms
GROUP BY category;
```
