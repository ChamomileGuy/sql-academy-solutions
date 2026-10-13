SELECT
 c.city_name,
 ROUND(AVG(
  EXTRACT(HOUR FROM (o.order_delivered - o.order_placed)) * 
            60
  + EXTRACT(MINUTE FROM (o.order_delivered - o.order_placed))
 ), 2) AS avg_minutes
FROM orders o
JOIN restaurants r ON r.restaurant_id = o.restaurant_id
JOIN cities c ON c.city_id = r.city_id
GROUP BY c.city_id, c.city_name
ORDER BY avg_minutes ASC;
