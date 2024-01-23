--  Exercise 2: Retrieving Data from Tables
-- Scenario:
-- Consider a scenario where you are working with a database that stores information about employees, departments, and projects. There are three tables: employees, departments, and projects.

Create table projects(
project_Name varchar(100),
project_StartDate date);

Insert Into projects(
project_Name, project_StartDate)
values  ('htmlProject', '2022-01-01'),
		('cssProject', '2023-02-02');
		
Insert Into departements(
department_id, departemnt_name)
values(105, 'Marketing');

Insert Into employees(
employee_id,first_name, last_name, salary, department_id )
values  (5, 'yonas', 'gebre', 30000, 101),
		(6, 'rahwa', 'belay', 40000, 102),
		(7, 'rodas', 'Mizan',  50000, 101),
		(8, 'ftsum','haile', 65000, 102),
		(9, 'yared', 'alem', 700000, 103),
		(10, 'abel', 'Nigus', 75000, 104),
		(11, 'saba', 'kiros', 80000, 105),
		(12, 'meri', 'hagos', 70000, 103),
        (13, 'tigst','abebe', 65000, 104),
		(14, 'henok', 'debebe', 50000, 105),
		(15, 'liya', 'grmay', 40000, 103),
		(11, 'raki', 'abebe', 65000, 104);
        
-- Retrieve the first and last names of all employees in the 'Marketing ' department.        
	select employees.first_name,last_name,department.departemnt_name
    from employees
    INNER JOIN department on employees.employee_id=department.department_id
    where department.department_name='marketing';
	
-- Retrieve the project names and start dates for projects that started after '2022-01-01'.Use WHERE Clause to filter

Select projects.project_name, projects.project_startdate 
From projects WHERE project_startdate > '2022-01-01';

-- List the department names along with the total number of employees in each department.

Select departements.departemnt_name, COUNT (employee_id)AS TotalEmployees
FROM departements
LEFT JOIN employees ON departements.department_id = employees.department_id
GROUP BY departements.departemnt_name;

-- Retrieve the first 5 employees from the employees table.

Select first_name, last_name, employee_id, department_id
FROM employees
Limit 5;

-- Retrieve 10 employees starting from the 11th employee in the employees table.

Select * FROM employees
ORDER BY first_name
LIMIT 10 OFFSET 10;

--  Retrieve the first 10 employees from the 'Sales' department in the employees table.

