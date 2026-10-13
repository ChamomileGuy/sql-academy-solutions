SELECT betting_type, ROUND(AVG(bet_amount), 2) AS avg_amount
FROM bets
GROUP BY betting_type
ORDER BY avg_amount ASC
