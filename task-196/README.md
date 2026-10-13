# Task #196: The list of employees without subordinates came out empty

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/196)

**Difficulty:** medium

## Description

You inherited this report from an analyst who left: it should list employees
who have no subordinates.The result is empty even though the company does have such employees.Outputname(employee name).

## Expected fields

`name`

## Solution

```sql
SELECT e.name
FROM employees e
WHERE NOT EXISTS (
  SELECT 1
  FROM employees m
  WHERE m.manager_id = e.id
 );
```
