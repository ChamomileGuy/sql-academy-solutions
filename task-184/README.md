# Task #184: VIP Users by Transaction Count

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/184)

**Difficulty:** medium

## Description

Thetransactionstable stores Kaspi user transactions:user_idis the user,transaction_dateis the date,amountis the sum.Analysts defineVIP usersas those who mademore than 5transactions inJanuary 2024.Outputuser_idandtransactions_count(number of transactions
in January 2024) for such users. Sort byuser_idascending.

## Expected fields

`user_id`, `transactions_count`

## Solution

```sql
SELECT user_id, COUNT(*) AS transactions_count
FROM transactions
WHERE '2024-01-01' <= transaction_date and transaction_date < '2024
    -02-01'
GROUP BY user_id
HAVING COUNT(*) > 5
ORDER BY user_id;
```
