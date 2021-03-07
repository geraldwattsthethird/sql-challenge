drop table department_employees;
drop table department_manager;
drop table departments;
drop table employees;
drop table salaries;
drop table titles;

create table department_employees (
	emp_no INT not null,
	dept_no varchar(30) not null
);

select * from department_employees;

create table department_manager (
	dept_no varchar(30) not null,
	emp_no varchar(30) not null
);

select * from department_manager;

create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null
);

select * from departments;

create table employees (
	emp_no int not null,
	emp_title_id varchar(30) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar not null,
	hire_date date not null
);

select * from employees;

create table salaries (
	emp_no int not null,
	salary int not null
);

select * from salaries;

create table titles (
	title_id varchar not null,
	title varchar(30) not null
);

select * from titles;