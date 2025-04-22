SELECT 
    ot.name AS order_type,
    COUNT(o.order_id) AS total_orders
FROM 
    orders o
JOIN
    order_types ot ON o.order_type_id = ot.order_type_id
GROUP BY 
    ot.name
ORDER BY
    total_orders DESC
LIMIT 5;