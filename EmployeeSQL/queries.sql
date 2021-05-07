-- Question 1
-- List the following details of each employee: employee number, last name, first name, sex, and salary.

Select 
 e.emp_no,
 e.last_name,
 e.first_name,
 e.sex,
 salaries.salary
	FROM
	employees as e
	JOIN salaries on e.emp_no = salaries.emp_no

;

-- List first name, last name, and hire date for employees who were hired in 1986.

Select 
	last_name,
 	first_name,
	hire_date
	From
	employees
	Where hire_date Between '1985-12-31' And '1986-12-31'
;



-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- department number, department name, the manager's employee number, last name, first name

Select
	e.last_name,
 	e.first_name,
	e.emp_no,
	dm.dept_no,
	d.dept_name
	From
	employees as e
	Join dept_manager as dm on e.emp_no = dm.emp_no
	Join departments as d on dm.dept_no = d.dept_no
	;
	

-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
