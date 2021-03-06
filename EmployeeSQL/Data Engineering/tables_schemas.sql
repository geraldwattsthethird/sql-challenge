create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null,
	primary key (dept_no)
);

select * from departments;

create table department_employees (
	emp_no varchar(30) not null,
	dept_no varchar(30) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

select * from department_employees;

create table department_manager (
	dept_no varchar(30) not null,
	emp_no varchar(30) not null,
	primary key (emp_no)
);

select * from department_manager;

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
	title varchar(30) not null
	primary key (title_id)
);

select * from titles;