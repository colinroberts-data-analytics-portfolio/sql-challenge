
CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex CHAR(1) NOT NULL,  
    hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no, emp_title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT,
    emp_title_id VARCHAR, 
    dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),  
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no INT,
    emp_title_id VARCHAR,  
    dept_no VARCHAR,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),  
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT,
    emp_title_id VARCHAR,  
    salary INT NOT NULL,
    PRIMARY KEY (emp_no, emp_title_id), 
    FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id)  
);

CREATE TABLE titles (
    emp_no INT,
    emp_title_id VARCHAR,
    title VARCHAR NOT NULL,
    PRIMARY KEY (emp_title_id, emp_no),
    FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id)
);
