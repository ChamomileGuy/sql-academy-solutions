# Task #189: Nations with the Most Battles

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/189)

**Difficulty:** medium

## Description

Theplayer_battlestable stores World of Tanks battles:player_idis the player,nationis the vehicle nation used in
the battle,battle_dateis the battle date,expis the
experience earned.Analysts look for the most active nations. Output the nations that havemore than 8battles.Outputnationandbattles_count(number of battles for that
nation). Sort bynationascending.

## Expected fields

`nation`, `battles_count`

## Solution

```sql
SELECT nation, COUNT(*) AS battles_count
FROM player_battles
GROUP BY nation
HAVING COUNT(*) > 8;
```
