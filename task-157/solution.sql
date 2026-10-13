SELECT ROUND(AVG(order_total), 2) AS avg_items_per_order
FROM (
 SELECT SUM(quantity) AS order_total
 FROM order_items
 GROUP BY order_id
);
