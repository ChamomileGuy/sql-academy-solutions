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
