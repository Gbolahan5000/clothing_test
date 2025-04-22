SELECT 
    address AS location,
    Count(order_id) AS total_orders
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.customer_id
GROUP BY
    address
ORDER BY
    total_orders DESC;