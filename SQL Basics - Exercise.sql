-- SQL Basics - Exercise
-- Exercise 1: SQL Basics
-- Schema:
-- Consider a simple database schema with two tables:
-- 1. employees table: Columns: employee_id (INT, Primary Key), first_name (VARCHAR), last_name (VARCHAR), department_id (INT), salary (DECIMAL).
-- 2. departments table: Columns: department_id (INT, Primary Key), department_name (VARCHAR).

CREATE TABLE employees (
employee_id INT Primary Key,
	first_name VARCHAR(100),
	last_name VARCHAR(100), 
	department_id INT,
	salary DECIMAL
	);
	
	CREATE TABLE departements (
	department_id INT Primary Key,
	departemnt_name VARCHAR(100)
	);
insert into employees(
employee_id , first_name, last_name, department_id, salary)
Values 	(1, 'Abeba', 'Hagos', 101, 20000),
		(2, 'selam', 'Tesfay', 101, 30000),
		(3, 'lidya', 'kiros', 102, 50000), 
		(4, 'lihem', 'solomon', 102, 60000);
--  Retrieve all columns from the employees table
Select * from employees ;

--  Retrieve the names (first name and last name) of all employees in the sales department.

insert into departements(
department_id, departemnt_name)

Values	 (101, 'sales'),
		 (102, 'hr'),
		 (103, 'cs');					

Select first_name, last_name from employees e inner join departements d on e.department_id=d.department_id
WHERE d.departemnt_name='Sales';


-- Calculate the average salary of all employees.

Select AVG(Salary)from employees;

-- List the departments along with the total number of employees in each department

-- Update the salary of employee with employee_id 101 to 10% more than the current salary.

Update employees 
Set salary = salary*0.1+salary
Where employee_id = 101;

--  Delete all employees who have a salary less than 30000.

Delete from employees
Where salary<20000;

--  Insert a new department with department_id 4 and department_name 'IT'.

insert into departements(
department_id, departemnt_name)
Values (104, 'IT');








		
		