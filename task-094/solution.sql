SELECT c.name
FROM Customer c
JOIN Purchase p ON p.customer_key = c.customer_key
JOIN Product pr ON pr.product_key = p.product_key
WHERE pr.name IN ('Laptop', 'Monitor')
 AND p.date >= '2024-03-01'
 AND p.date < '2024-04-01'
GROUP BY c.customer_key, c.name
HAVING COUNT(DISTINCT pr.name) = 2;
