Create Table departments (
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	Primary Key (dept_no),
	Unique(dept_name)
);


Create table employees(
	emp_no int not null,
	birth_date date not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	gender varchar(2) not null,
	hire_date date not null,
	primary key (emp_no)
);


create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);


CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);


CREATE TABLE dept_employee (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


create table titles(
	emp_no int not null,
	titles varchar(45) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no ) references employees (emp_no)
);