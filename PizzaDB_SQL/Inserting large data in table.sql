USE pizzaDB;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@pizza_id, @order_id, @pizza_name_id, @quantity, @order_date, @order_time, 
@unit_price, @total_price, @pizza_size, @pizza_category, @pizza_ingredients, @pizza_name)
SET
pizza_id = @pizza_id,
order_id = @order_id,
pizza_name_id = @pizza_name_id,
quantity = @quantity,
order_date = STR_TO_DATE(@order_date, '%d-%m-%Y'),
order_time = @order_time,
unit_price = @unit_price,
total_price = @total_price,
pizza_size = @pizza_size,
pizza_category = @pizza_category,
pizza_ingredients = @pizza_ingredients,
pizza_name = @pizza_name;