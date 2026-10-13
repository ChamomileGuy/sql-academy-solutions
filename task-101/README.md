# Task #101: User's first order

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/101)

**Difficulty:** medium

## Description

Display for each user the first item that he ordered (the first in transaction time).

## Expected fields

`user_id`, `item`

## Solution

```sql
SELECT user_id, item
FROM (
 SELECT
  user_id,
  item,
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER 
            BY transaction_ts ASC) AS rn
 FROM Transactions
) AS t
WHERE rn = 1
ORDER BY user_id;


/*
SELECT 
    user_id, 
    item
FROM Transactions
WHERE (user_id, transaction_ts) IN (
    SELECT 
     user_id, 
     MIN(transaction_ts) AS first_order
```
