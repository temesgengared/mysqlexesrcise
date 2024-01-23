-- filtering Data - Exercise 1
-- Exercise 1: Consider a database schema with the following tables:
-- 1. employees Table: employee_id (Primary Key)
-- -- first_name, last_name, department_id, salary, hire_date
-- 2. departments Table: department_id (Primary Key), department_name


ALTER TABLE employees
ADD COLUMN hire_date date;
UPDATE employees
SET hire_date = '2023-01-10'
WHERE employee_id = 101;

UPDATE employees
SET hire_date = '2022-01-10'
WHERE employee_id = 102;

-- Write an SQL query to retrieve all employees who belong to the "Sales" department.

SELECT * FROM employees
INNER JOIN departements ON employees.department_id = departements.department_id
WHERE departements.departemnt_name = 'Sales';

-- Write an SQL query to retrieve employees who were hired in the year 2022.

SELECT * FROM employees WHERE extract(YEAR FROM (hire_date)) = 2022;

-- Write an SQL query to retrieve employees whose salary is greater than $50,000.

SELECT * FROM employees WHERE salary > 50000;

-- Write an SQL query to retrieve employees whose last name starts with the letter 'S'.

SELECT * FROM employees WHERE first_name LIKE 'S%';

-- Write an SQL query to retrieve employees who belong to the "Sales" department  and were hired in the year 2022.

SELECT * FROM employees 
INNER JOIN departements ON employees.department_id =departements.department_id
WHERE departements.departemnt_name = 'cs' AND extract (YEAR FROM (hire_date)= 2022);
