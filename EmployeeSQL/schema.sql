-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS salaries
(
    employee_number INTEGER NOT NULL,
    salary INTEGER,
    PRIMARY KEY(employee_number)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(20) NOT NULL,
    dept_name VARCHAR(50),
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    employee INTEGER NOT NULL,
    department VARCHAR(20) NOT NULL,
    PRIMARY KEY(employee, department)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    department VARCHAR(20) NOT NULL,
    employee_number INTEGER NOT NULL,
    PRIMARY KEY(department, employee_number)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY(title_id)
);


-- Create FKs
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (department)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE salaries
    ADD    FOREIGN KEY (employee_number)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (employee)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (department)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (employee_number)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;