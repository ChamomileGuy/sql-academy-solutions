SELECT pr.city,
 SUM(b.total_price) AS total_revenue
FROM properties pr
JOIN bookings b
 ON pr.property_id = b.property_id
WHERE status = 'completed'
GROUP BY pr.city
ORDER BY total_revenue DESC
