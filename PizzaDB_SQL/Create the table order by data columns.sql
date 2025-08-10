USE pizzaDB;
DROP TABLE pizza_sales;
CREATE TABLE pizza_sales(
pizza_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
pizza_name_id VARCHAR(50),
quantity INT,	
order_date VARCHAR(100),
order_time TIME,
unit_price DECIMAL (10, 2),
total_price	DECIMAL (10, 2),
pizza_size VARCHAR(50),
pizza_category VARCHAR(100),
pizza_ingredients VARCHAR(100),
pizza_name VARCHAR(10000)
);