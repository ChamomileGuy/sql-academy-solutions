SELECT user_id, item
FROM (
 SELECT
  user_id,
  item,
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER 
            BY transaction_ts ASC) AS rn
 FROM Transactions
) AS t
WHERE rn = 1
ORDER BY user_id;


/*
SELECT 
    user_id, 
    item
FROM Transactions
WHERE (user_id, transaction_ts) IN (
    SELECT 
     user_id, 
     MIN(transaction_ts) AS first_order
