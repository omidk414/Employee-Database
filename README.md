# Employee SQL

## Description

This README provides instructions and SQL queries for managing employee data in a SQL database. It includes table schema creation from CSV files, data import procedures, and various data analysis queries.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [Data Engineering](#data-engineering)
    - [Table Schema Creation](#table-schema-creation)
    - [Data Import](#data-import)
  - [Data Analysis](#data-analysis)
    - [SQL Queries](#sql-queries)
    - [Example Usage](#example-usage)

## Installation

To set up the Employee SQL database, follow these steps:

1. **Create Tables from CSV Files:**
   
   - Use the provided SQL schema to create tables for each CSV file.
   - Ensure to specify data types, primary keys, foreign keys, and any other constraints as needed.

2. **Import Data:**
   
   - Import each CSV file into its corresponding SQL table using appropriate SQL commands (`LOAD DATA` or equivalent).

## Usage

### Data Engineering:
#### Table Schema Creation

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
