# Task #168: Average Bet per Betting Type

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/168)

**Difficulty:** medium

## Description

In thebetstable, thebetting_typefield takes the
valuessports,casino,poker,esports.Write a query that returnsbetting_typeandavg_amount— the average bet size, rounded to two decimals. Sort byavg_amountascending.

## Expected fields

`betting_type`, `avg_amount`

## Solution

```sql
SELECT betting_type, ROUND(AVG(bet_amount), 2) AS avg_amount
FROM bets
GROUP BY betting_type
ORDER BY avg_amount ASC
```
