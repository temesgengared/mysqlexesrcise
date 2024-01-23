-- Subqueries and Nested Queries - Exercise Page 83 & 84

-- Exercise 1: 
-- Consider a database schema with the following tables:
-- employees Table:● employee_id (Primary Key), ● first_name, ● last_name, ● department_id, ● salary
-- departments Table:● department_id (Primary Key), ● department_name

-- 1. Write an SQL query to retrieve the names of all employees who belong to the "Sales"
-- department.

Select first_name
FROM employees 
WHERE department_id = (SELECT department_id FROM departements WHERE departemnt_name = 'Sales');


-- 2. Write an SQL query to retrieve the names of all employees who have a salary greater than
-- the average salary in the "Marketing" department.

SELECT first_name FROM employees
WHERE employees.Salary > (Select AVG (Salary)
FROM employees 
						WHERE department_id = 
						(SELECT department_id FROM departements WHERE departemnt_name = 'Marketing')
						  );
						 
-- 3. Write an SQL query to retrieve the names of all employees who have a salary greater than
-- the maximum salary in the "HR" department.

SELECT first_name FROM employees 
WHERE employees.Salary >(SELECT MAX(Salary) FROM employees
						 WHERE department_id = 
						 (SELECT department_id FROM departements WHERE departemnt_name = 'HR' )
						 );

-- 4. Write an SQL query to retrieve the names of all employees who belong to departments
-- with more than five employees.

SELECT first_name FROM employees 
WHERE department_id IN (SELECT department_id FROM employees
					    GROUP BY department_id 
					    HAVING COUNT (*) > 3);