DROP TABLE IF EXISTS emp_no;
DROP TABLE IF EXISTS salary;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no, salary)
	
);

SELECT *
FROM salaries;