DROP TABLE IF EXISTS emp_no;
DROP TABLE IF EXISTS emp_title_id;
DROP TABLE IF EXISTS birth_date;
DROP TABLE IF EXISTS first_name;
DROP TABLE IF EXISTS last_name;
DROP TABLE IF EXISTS sex;
DROP TABLE IF EXISTS hire_date;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT *
FROM employees;