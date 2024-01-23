-- Joins and Relationships - Exercise Page 71& 72 --> INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

-- Exercise 1: Consider two tables in a database schema:

-- Write an SQL query to retrieve a list of employees along with their department names using an INNER JOIN.

Select employees.employee_id, employees.first_name, employees.department_id, departements.departemnt_name
FROM employees
INNER JOIN departements ON employees.department_id = departements.department_id;


-- Write an SQL query to retrieve a list of all employees, including those who do not belong to any department,
-- using a LEFT JOIN.

Select employees.employee_id, employees.first_name, employees.department_id, departements.departemnt_name
FROM employees
LEFT JOIN departements ON employees.department_id = departements.department_id;


-- Write an SQL query to retrieve a list of all departments and the employees who belong to each department,
-- including departments with no employees, 
-- using a RIGHT JOIN.

Select departements.department_id, departements.departemnt_name, employees.first_name 
FROM departements
RIGHT JOIN employees ON departements.department_id = employees.department_id;

-- Write an SQL query to retrieve a list of all employees and their department names, 
-- including those with no department, using a FULL JOIN.

Select employees.first_name, departements.departemnt_name
FROM employees
FULL JOIN departements 
ON employees.department_id = departements.department_id;