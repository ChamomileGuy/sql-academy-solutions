# Task #99: Income from female audience

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/99)

**Difficulty:** medium

## Description

Calculate the income from the female audience (income = sum price * items). Please note that in the table the female audience has the user_gender field “female” or “f”.

## Expected fields

`income_from_female`

## Solution

```sql
SELECT SUM(price * items) AS income_from_female
FROM Purchases
WHERE user_gender = 'f' OR user_gender = 'female';
```
