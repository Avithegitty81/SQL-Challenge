Create Table Employees(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	gender VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * FROM Employees;

CREATE TABLE Salaries(
 emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


Select * From Salaries;

CREATE TABLE Titles(
	emp_no INT NOT NULL,
	title VARCHAR (30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Titles;
 
 CREATE TABLE Departments(
	 dept_no VARCHAR (4) PRIMARY KEY NOT NULL,
	 dept_name VARCHAR(20) NOT NULL
	 
 );
 
 SELECT * FROM Departments;
 
 CREATE TABLE Department_Employees(
	 emp_no INT NOT NULL,
	 dept_no VARCHAR (4) NOT NULL,
	 from_date DATE NOT NULL,
	 to_date DATE NOT NULL,
	 FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	 FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
 );
 
SELECT * FROM Department_Employees;

CREATE TABLE Department_Managers(
	dept_no VARCHAR (4) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
 	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
SELECT * FROM Department_Managers;

