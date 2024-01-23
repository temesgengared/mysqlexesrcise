-- FILTERING Exercise 2: Consider a database schema with the following table:
-- orders Table:
-- order_id (Primary Key)
-- customer_id
-- order_date (Date)
-- total_amount

Create table orders(
order_id int Primary Key,
customer_id int,
order_date Date, 
total_amount decimal
);

INSERT INTO orders(
order_id, customer_id, order_date, total_amount)
Values  (1, 101, '2021-06-09', 600),
		(2, 102, '2020-03-08', 700),
		(3, 103, '2022-01-04', 800),
		(4, 104, '2023-02-10', 900),
		(5, 105, '2021-07-09', 1000), 
		(6, 106, '2020-03-08', 1100),
		(7, 107, '2022-01-09', 1200), 
		(8, 108, '2023-02-10', 1300), 
		(9, 109, '2021-07-09', 1400), 
		(10, 101, '2020-03-08', 800), 
		(11, 105, '2022-01-04', 1500), 
		(12, 102, '2023-02-10', 700), 
		(13, 103, '2021-07-09', 600); 
			


-- Write an SQL query to retrieve orders placed by customers with customer_id 101, 102, and 103.

SELECT * FROM orders
WHERE customer_id IN (101, 102,103);

-- Write an SQL query to retrieve orders placed on or after January 1, 2022, and on or before
-- December 31, 2022.

SELECT * FROM orders
WHERE order_date BETWEEN '2022-01-01' AND '2000-12-31';

-- Write an SQL query to retrieve orders with a total_amount between $500 and $1,000

SELECT * FROM orders
WHERE total_amount BETWEEN 500 AND 1000;

-- Write an SQL query to retrieve orders placed by customers with customer_id 104, 105,
-- and 106, and with a total_amount greater than $1,500.

SELECT * FROM orders
WHERE customer_id IN (104, 105, 106) AND total_amount > 1500;

-- Write an SQL query to retrieve orders placed on or after January 1, 2023, by customers
-- with customer_id 107 or 108.

SELECT * FROM orders
WHERE order_date >= '2023-01-01' AND customer_id IN (107, 108);