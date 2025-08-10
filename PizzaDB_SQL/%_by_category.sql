SELECT 
	pizza_category, SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales
    AS Sales_percentage_by_category
    FROM pizza_sales
    GROUP BY pizza_category
    -- PERCENTAGE OF EACH CATEGORY OF PIZZA BY SALES