WITH deals AS (
  SELECT o.employee_id,
    FIRST_VALUE(o.amount) OVER (
     PARTITION BY o.employee_id
     ORDER BY o.created_at
    ) AS first_amount,
    LAST_VALUE(o.amount) OVER (
     PARTITION BY o.employee_id
     ORDER BY o.created_at
     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED 
                       FOLLOWING
    ) AS last_amount
  FROM orders o
 )
SELECT DISTINCT e.name,
  d.first_amount,
  d.last_amount
FROM deals d
JOIN employees e
 ON e.id = d.employee_id
WHERE d.last_amount < d.first_amount;
