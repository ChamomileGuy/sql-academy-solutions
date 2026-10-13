# Task #77: Create "People" view

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/77)

**Difficulty:** medium

## Description

Create a view called "People" that will contain a list of first names and last names of all students and teachers

## Expected fields

`percent`

## Solution

```sql
CREATE OR REPLACE VIEW People AS 

SELECT 
 first_name,
 last_name
FROM Student

UNION 

SELECT
 first_name,
 last_name
FROM Teacher;
```
