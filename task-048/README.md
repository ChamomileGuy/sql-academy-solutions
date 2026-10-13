# Task #48: Class occupancy

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/48)

**Difficulty:** easy

## Description

Display the class occupancy in descending order. Do not display classes that do not have any students.

## Expected fields

`name`, `count`

## Solution

```sql
SELECT 
 c.name, 
 COUNT(sic.student) AS count
FROM Student_in_class sic
JOIN Class c
 ON c.id = sic.class
GROUP BY c.name
ORDER BY count DESC;
```
