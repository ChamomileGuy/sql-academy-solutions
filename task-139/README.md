# Task #139: Big Countries

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/139)

**Difficulty:** easy

## Description

A country is big if:it has an area of at least three million (3000000 km²), orit has a population of at least twenty-five million (25000000).Write a query to find the name, population, and area of the big countries.

## Expected fields

`name`, `population`, `area`

## Solution

```sql
SELECT 
 name, 
 population, 
 area
FROM World
WHERE area >= 3000000
 OR population >= 25000000;
```
