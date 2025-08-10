SELECT 
	pizza_size, 
    SUM(total_price) AS Total_sales, SUM(total_price) * 100 / (SELECT SUM(total_price)
    FROM pizza_sales)
    AS Sales_percentage_by_category               -- PERCENTAGE OF SALES BASED ON THE SIZE OF THE PIZZA
    FROM pizza_sales 
    GROUP BY pizza_size
    ORDER BY pizza_size DESC;