# Task #125: Works published more than 5 times

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/125)

**Difficulty:** medium

## Description

Given a library management database.
The Books table stores information about literary works,
the BookEditions table stores information about editions of these works
(one work can be published many times in different years).Find works that were published more than 5 times.
Output the work title (title).

## Expected fields

`title`

## Solution

```sql
SELECT b.title
FROM Books b
JOIN BookEditions be
 ON b.id = be.book_id
GROUP BY b.title
HAVING COUNT(*) > 5;
```
