SELECT user_id, COUNT(*) AS transactions_count
FROM transactions
WHERE '2024-01-01' <= transaction_date and transaction_date < '2024
    -02-01'
GROUP BY user_id
HAVING COUNT(*) > 5
ORDER BY user_id;
