SELECT nation, COUNT(*) AS battles_count
FROM player_battles
GROUP BY nation
HAVING COUNT(*) > 8;
