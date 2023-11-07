
----- title table ----
CREATE TABLE titles(
title_id VARCHAR(30) NOT NULL PRIMARY KEY,
title VARCHAR(30));

SELECT *
FROM titles;

----- employees table----
CREATE TABLE employees(
emp_no int NOT NULL PRIMARY KEY,
emp_title_id VARCHAR(30) NOT NULL,
birth_date Date,
first_name VARCHAR(30),
last_name VARCHAR(30),
sex VARCHAR(10),
hire_date Date,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

SELECT *
FROM employees;

-------salaries table--------
CREATE TABLE salaries(
emp_no int NOT NULL PRIMARY KEY,
salary int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT *
FROM salaries;

---------- table depatments------
CREATE TABLE departments(
dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
dept_name  VARCHAR(50));

SELECT *
FROM departments;

----- table dept_emp-----
CREATE TABLE dept_emp(
emp_no int NOT NULL ,
dept_no varchar(30) NOT NULL,
PRIMARY KEY(emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

SELECT *
FROM dept_emp;

--------table dept_manager----
CREATE TABLE dept_manager(
dept_no VARCHAR(10) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY(dept_no, emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

SELECT *
FROM dept_manager;



---- Drop table queries with sequence ------

--drop table dept_manager;
--drop table dept_emp;
--drop table departments;
--drop table salaries;
--drop table employees;
--drop table titles;


