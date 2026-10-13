SELECT 
 used_filters, 
 COUNT(DISTINCT s.search_id) AS searches_count,
 ROUND(
  100.0 * COUNT(DISTINCT lv.search_id) / COUNT(DISTINCT s
            .search_id),
  2
 ) AS conversion_rate
FROM searches s
LEFT JOIN listing_views lv
 ON s.search_id = lv.search_id
GROUP BY s.used_filters
ORDER BY s.used_filters ASC;
