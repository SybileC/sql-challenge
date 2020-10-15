DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;


CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
);

SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL, 
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
					  );
					  
SELECT * FROM employees;

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(dept_no)
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT NOT NULL, 
	salaries MONEY NOT NULL
);

SELECT * FROM salaries;


CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
);

SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL, 
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
					  );
					  
SELECT * FROM employees;

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(dept_no)
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT NOT NULL, 
	salaries MONEY NOT NULL
);

SELECT * FROM salaries;