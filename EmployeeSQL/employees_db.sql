drop table department_employees;
drop table department_manager;
drop table departments;
drop table employees;
drop table salaries;
drop table titles;

create table department_employees (
	emp_no INT not null,
	dept_no varchar(30) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign Key (dept_no) references departments(dept_no)
);

select * from department_employees;

create table department_manager (
	dept_no varchar(30) not null,
	emp_no int not null,
	primary key (emp_no)
);

select * from department_manager;

create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null,
	primary key (dept_no)
);

select * from departments;

create table employees (
	emp_no int not null,
	emp_title_id varchar(30) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no)
);

select * from employees;

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no)
);

select * from salaries;

create table titles (
	title_id varchar not null,
	title varchar(30) not null,
	primary key (title_id)
);

select * from titles;

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date from employees
where hire_date >= '1985-12-31'
and hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select department_manager.dept_no, departments.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
from department_manager
inner join departments ON
department_manager.dept_no = departments.dept_no
inner join employees ON
department_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join department_manager ON
employees.emp_no = department_manager.emp_no
inner join departments ON
department_manager.dept_no = departments.dept_no;


