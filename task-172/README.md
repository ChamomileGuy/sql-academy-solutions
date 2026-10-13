# Task #172: Spending by Merchant Category

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/172)

**Difficulty:** medium

## Description

In thetransactionstable consider only the rows withtransaction_type= 'card_purchase' (they have a non-NULLmerchant_category).Write a query that for every category returnsmerchant_category,total_spent(sum of amounts,
rounded to two decimals) andnum_purchases— the number
of transactions in that category. Sort bytotal_spentdescending.

## Expected fields

`merchant_category`, `total_spent`, `num_purchases`

## Solution

```sql
SELECT 
 merchant_category,
 ROUND(SUM(amount), 2) AS total_spent,
 COUNT(*) AS num_purchases
FROM transactions
WHERE transaction_type = 'card_purchase'
GROUP BY merchant_category
ORDER BY total_spent DESC;
```
