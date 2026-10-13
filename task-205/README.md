# Task #205: Department shares add up to 94%

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/205)

**Difficulty:** medium

## Description

A presentation needs each department's share of the company headcount, as a
percentage with one decimal place.In the report every share came out as a whole number, and together they add
up to only 94%, although each department's headcount is correct.Outputname(department name) andheadcount_share(the department's share
of all company employees, in percent, rounded to 1 decimal place).

## Expected fields

`name`, `headcount_share`

## Solution

```sql
SELECT d.name,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employees), 1) 
           AS headcount_share
FROM departments d
JOIN employees e
 ON e.department_id = d.id
GROUP BY d.id, d.name;
```
