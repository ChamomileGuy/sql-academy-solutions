SELECT c.name, s.product
FROM Customers c
JOIN Subscriptions s
 ON c.customer_id = s.customer_id
WHERE s.seats_used > s.seats_purchased
ORDER BY c.name;
