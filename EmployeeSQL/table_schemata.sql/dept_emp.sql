DROP TABLE IF EXISTS emp_no;
DROP TABLE IF EXISTS dept_no;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (50) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

SELECT *
FROM dept_emp;