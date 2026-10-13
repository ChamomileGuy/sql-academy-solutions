SELECT 
 merchant_category,
 ROUND(SUM(amount), 2) AS total_spent,
 COUNT(*) AS num_purchases
FROM transactions
WHERE transaction_type = 'card_purchase'
GROUP BY merchant_category
ORDER BY total_spent DESC;
