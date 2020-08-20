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

-- Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name. --
SELECT emp_no, last_name, first_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.employee
JOIN departments ON dept_emp.department = departments.dept_no;

-- Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." --
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp_no, first_name, last_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.employee
JOIN departments ON dept_emp.department = departments.dept_no
WHERE dept_name = 'Sales';

-- Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. --
SELECT emp_no, first_name, last_name, departments.dept_name FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.employee
JOIN departments ON dept_emp.department = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name='Development';

-- Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. --
SELECT last_name, COUNT(*) FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;