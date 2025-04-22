SELECT 
    t.name AS tailor_name,
    COUNT(o.payment_recieved) AS total_sales
FROM 
    orders o
JOIN 
    tailors t ON o.tailor_id = t.tailor_id
GROUP BY 
    t.name
ORDER BY 
    total_sales DESC;
