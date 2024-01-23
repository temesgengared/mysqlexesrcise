-- Relational Databases and Tables - Exercise
-- Exercise 1:
-- 1. Create a table named authors with the following columns:
-- author_id (INT, Primary Key), first_name (VARCHAR), last_name (VARCHAR)
-- 2. Create a table named books with the following columns:
-- book_id (INT, Primary Key), title (VARCHAR), publication_year (INT), author_id (INT, Foreign Key referencing authors)

Create Table authors(
	author_id INT Primary KEY,
	first_name VARCHAR(50), 
	last_name VARCHAR(50) 
);
	
	CREATE TABLE BOOKS(
		book_id INT Primary Key,
		title VARCHAR(100), 
		authors VARCHAR(100),
		publication_year INT,
		author_id INT, 
		FOREIGN KEY (author_id) REFERENCES authors(author_id)		
	);