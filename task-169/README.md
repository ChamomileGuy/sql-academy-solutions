# Task #169: Top-10 PC Gamers by Total Bet Spend

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/169)

**Difficulty:** medium

## Description

Consider only the bets frombetsplaced on games with the
categoryPC(games.game_category).Write a query that returns the top-10 players by total amount of
such bets. For every player outputcustomer_name(fromcustomers.name),pc_games_played(number ofdistinctPC games they bet on) andtotal_spend(total amount bet on PC games). Sort the result bytotal_spenddescending.

## Expected fields

`customer_name`, `pc_games_played`, `total_spend`

## Solution

```sql
SELECT DISTINCT
 c.name AS customer_name, 
 COUNT(DISTINCT b.game_id) AS pc_games_played,
 SUM(b.bet_amount) AS total_spend
FROM bets b
JOIN games g
 ON g.game_id = b.game_id
JOIN customers c
 ON c.customer_id = b.customer_id
WHERE g.game_category = 'PC'
GROUP by c.customer_id
ORDER BY total_spend DESC
```
