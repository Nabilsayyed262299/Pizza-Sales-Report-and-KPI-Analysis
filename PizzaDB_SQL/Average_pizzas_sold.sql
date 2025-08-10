-- SELECT * FROM pizza_sales;
SELECT 
	SUM(quantity) / COUNT(DISTINCT order_id)
    AS Average_pizzas_sold
    FROM pizza_sales;      -- AVERAGE OF ALL THE PIZZAS SOLD
