# Employee SQL

## Description

This project involves managing employee data within a PostgreSQL (Version 16) database using SQL queries. It includes setting up table schemas, importing data from CSV files, and performing various data analysis queries to extract meaningful insights from the employee data.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Data Engineering](#data-engineering)
    - [Table Schema Creation](#table-schema-creation)
    - [Data Import](#data-import)
  - [Data Analysis](#data-analysis)
    - [SQL Queries](#sql-queries)
    - [Examples](#examples)
- [Acknowledgements](#acknowledgements)

## Installation
Step 1:
Download and install the latest version of PostgreSQL from [PostgreSQL Official Website](https://www.postgresql.org/download/).

Step 2:
To set up the Employee SQL database, follow these steps:

1. **Create Tables from CSV Files:**
   
   - Use the provided SQL schema to create tables for each CSV file.
   - Specify the data types, primary keys, foreign keys, and any other constraints as needed.

2. **Import Data:**
   
   - Import each CSV file into its corresponding SQL table using PostgresSQL.

## Usage

### Data Engineering:
#### Table Schema Creation Example 

1. **Employees Table Schema:**

   ```sql
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
   
2. **Data Import**
    - Import each CSV file into its corresponding SQL table using SQL LOAD DATA or equivalent commands based on your database system.

### Data Analysis:
#### SQL Queries

1. **List Employee Details:**

   ```sql
   SELECT emp_no, last_name, first_name, sex, salary
   FROM employees
   JOIN salaries ON employees.emp_no = salaries.emp_no;

## Data Modeling
### Entity Relationship Diagram (ERD)

- Below is the Entity Relationship Diagram for the Employee SQL database:

  ![ERD](https://github.com/omidk414/sql-challenge/blob/main/EmployeeSQL/ERD_QuickDBD_diagram/QuickDBD-export.png)

