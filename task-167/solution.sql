SELECT 
 c.name AS customer_name,
 s.product_name
FROM customers c
JOIN subscriptions s
 ON c.customer_id = s.customer_id
WHERE s.start_date <= CURRENT_DATE
 AND s.end_date >= CURRENT_DATE
 AND s.subscription_type = 'annual'
ORDER BY c.name ASC;
