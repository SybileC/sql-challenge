CREATE TABLE titles(
	title_id int,
	title VARCHAR(255),
	PRIMARY KEY(title_id)
);

CREATE TABLE employees(
	emp_no int,
	emp_title int NOT NULL,
	birth_date int NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date int NOT NULL, 
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
					  );
					  
CREATE TABLE departments(
	dept_no int,
	dept_name VARCHAR(255),
	PRIMARY KEY(dept_no)
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no int NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no int NOT NULL, 
	salaries int NOT NULL
);
