-- Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary. --
SELECT emp_no, last_name, first_name, sex, salaries.salary FROM employees
JOIN salaries ON employees.emp_no=salaries.employee_number;

-- Question 2: List first name, last name, and hire date for employees who were hired in 1986. --
SELECT first_name, last_name, CAST(hire_date AS VARCHAR(30)) FROM employees
WHERE CAST(hire_date AS VARCHAR(30)) LIKE '1986%';

-- Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. --
SELECT department, departments.dept_name, employee_number, employees.last_name, employees.first_name FROM dept_manager
JOIN departments ON dept_manager.department = departments.dept_no
JOIN employees ON dept_manager.employee_number = employees.emp_no;

-- Question 4: 
