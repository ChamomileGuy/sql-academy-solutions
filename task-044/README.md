# Task #44: Maximum age in 10th grades

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/44)

**Difficulty:** easy

## Description

Find the maximum age among the students in the 10th classes today. To retrieve the current date and time, you can use the NOW() function.

## Expected fields

`max_year`

## Solution

```sql
SELECT 
 EXTRACT(
  YEAR FROM MAX(AGE(NOW(), Student.birthday))
 ) AS max_year
FROM Student
JOIN Student_in_class
 ON Student.id = Student_in_class.student
JOIN Class
 ON Class.id = Student_in_class.class
WHERE Class.name LIKE '10%';
```
