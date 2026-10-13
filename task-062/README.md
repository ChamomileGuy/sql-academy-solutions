# Task #62: Popularity of 2nd level domains

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/62)

**Difficulty:** medium

## Description

List the 2nd-level domain names used by users for email in descending order of popularity. The resulting result must be additionally sorted in ascending order of domain names.

## Expected fields

`domain`, `count`

## Solution

```sql
SELECT 
 SUBSTRING(email FROM '@.*?([^.]+\.(?:[^.]+))$') AS 
        domain, 
 COUNT(*) AS count
FROM Users
GROUP BY domain
ORDER BY count DESC, domain ASC;
```
