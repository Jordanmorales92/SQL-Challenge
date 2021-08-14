CREATE TABLE departments (
    dept_no varchar(50)   NOT NULL,
    dept_name varchar(50)   NOT NULL,
	Primary KEY (dept_no)
     );

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(50)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(50)   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(50)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    sex varchar(20)   NOT NULL,
    hire_date date   NOT NULL,
	Primary KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id varchar(50)   NOT NULL,
    title varchar(50)   NOT NULL,
	PRIMARY KEY (title_id)
);
