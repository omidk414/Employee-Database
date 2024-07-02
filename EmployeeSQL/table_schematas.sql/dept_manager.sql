DROP TABLE IF EXISTS dept_no;
DROP TABLE IF EXISTS emp_no;

CREATE TABLE dept_manager(
	dept_no VARCHAR (50) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM dept_manager;