SELECT
	DAYNAME(order_date) 
    AS order_day,                                       -- GETTING THE TOTAL ORDERS BASED OM THE WEEKDAYS
    COUNT(DISTINCT order_id) 
    AS Total_orders 
    FROM pizza_sales 
    GROUP BY DAYNAME(order_date);