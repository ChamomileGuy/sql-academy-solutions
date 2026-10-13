# Task #123: Number of tasks for an employee

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/123)

**Difficulty:** medium

## Description

You need to write an SQL query that will show all employees who have less than three tasks in progress.
The result should include: employee name, number of tasks in progress.

## Expected fields

`emp_name`, `task_count`

## Solution

```sql
SELECT 
 emp_name, 
 COUNT(*) AS task_count
FROM Employee e
JOIN Tasks t
 ON e.id = t.assignee_id
GROUP BY t.assignee_id, e.emp_name
HAVING COUNT(*) < 3;
```
