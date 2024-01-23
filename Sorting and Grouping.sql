-- Sorting and Grouping - Exercise Page 64 & 65
-- Exercise 1: Consider a database schema with the following table:
-- orders Table: order_id (Primary Key), customer_id, order_date (Date), total_amount

--  Write an SQL query to retrieve all orders, sorted by the order_date in descending order.
Select * from orders order by order_date desc;


-- Write an SQL query to retrieve the total amount of sales for each customer.
Select customer_id, sum (total_amount)AS total from orders group by customer_id;


-- Write an SQL query to retrieve the number of orders placed by each customer, only including customers with more than two orders.

Select customer_id, COUNT (order_id) AS order_count 
From orders Group By customer_id 
Having COUNT (order_id) >= 2;


-- Write an SQL query to retrieve the average total amount of sales for each customer, only including customers with an average total amount greater than $500.
Select customer_id, AVG (total_amount) AS average_total_amount
FROM orders Group By customer_id
HAVING AVG (total_amount) > 500;

-- Write an SQL query to retrieve the top 5 customers with the highest total amount of sales, sorted in descending order.

 Select customer_id, SUM (total_amount) AS total_Sales
 FROM orders Group By customer_id HAVING SUM (total_amount) IN(
 Select SUM (total_amount) AS total_Sales
 FROM orders Group By customer_id 
 ORDER BY total_Sales desc
 Limit 5
 );
	 
 