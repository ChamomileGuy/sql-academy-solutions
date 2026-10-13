SELECT 
 product_id, 
 EXTRACT(MONTH FROM submit_date) AS mth, 
 ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY product_id, mth;
