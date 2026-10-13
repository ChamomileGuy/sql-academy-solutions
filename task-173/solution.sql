SELECT 
 EXTRACT(MONTH FROM transaction_at) as mth,
 COUNT(DISTINCT customer_id) AS mau
FROM transactions
GROUP BY mth
ORDER BY mth;
