SELECT 
	pizza_name, SUM(total_price)
    AS Total_revenue 
    FROM pizza_sales 
    GROUP BY pizza_name 
    ORDER BY SUM(total_price) DESC LIMIT 5;