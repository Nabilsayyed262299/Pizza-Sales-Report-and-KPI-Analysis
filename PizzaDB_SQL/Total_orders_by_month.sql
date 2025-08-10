SELECT 
	MONTHNAME(order_date)
    AS month_order, 
    COUNT(DISTINCT order_id)          -- GETTING THE TOTAL ORDERS BASED ON MONTH
    AS Total_orders 
    FROM pizza_sales 
    GROUP BY MONTHNAME(order_date);