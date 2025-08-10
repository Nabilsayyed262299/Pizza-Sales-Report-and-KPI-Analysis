SELECT 
	COUNT(quantity) 
    AS Total_quantity,
    SUM(total_price)
    AS Total_revenue 
    FROM pizza_sales 
    GROUP BY quantity
    ORDER BY SUM(total_price) DESC LIMIT 5;