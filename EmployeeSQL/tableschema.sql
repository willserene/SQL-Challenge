CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
    	PRIMARY KEY (title_id)
);

select * from titles

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
   	first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
		PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_title_id) references titles (title_id)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    	PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_no) references employees (emp_no)
);

CREATE TABLE departments (
    dept_no int   NOT NULL,
    dept_name varchar   NOT NULL,
    	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no int   NOT NULL,
    	PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (emp_no) references employees (emp_no),
		FOREIGN KEY (dept_no) references departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no int   NOT NULL,
    emp_no int   NOT NULL,
    	PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) references departments (dept_no),
		FOREIGN KEY (emp_no) references employees (emp_no)
);

