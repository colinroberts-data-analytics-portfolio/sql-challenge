CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(20),  
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,  
    hire_date DATE NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(20) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT, 
    dept_no VARCHAR(20),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),  
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no INT,  
    dept_no VARCHAR(20),
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),  
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY, 
    salary INT NOT NULL  
);

CREATE TABLE titles (
    emp_title_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

-- Update employees table to reference titles
ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id);

ALTER TABLE employees
ADD FOREIGN KEY (emp_no) REFERENCES salaries(emp_no);
