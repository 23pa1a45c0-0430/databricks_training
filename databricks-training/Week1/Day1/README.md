1. Week1/Day1/README.md
# Week 1 - Day 1

## Topics Covered

- Introduction to Databricks
- Introduction to SQL
- Database Concepts
- DDL Commands
- DML Commands
- Creating Databases and Tables
- Inserting Data
- Basic SQL Queries

---

## Objective

The objective of Day 1 was to understand the fundamentals of SQL and database operations using Databricks.

---

## Files Included

### SQL Folder
Contains:
- Database creation scripts
- Table creation scripts
- Insert queries
- Basic SQL query practice

### Notes Folder
Contains:
- SQL concepts
- Command explanations
- Learning notes

### Outputs Folder
Contains:
- Query execution screenshots
- Output images

---

## Commands Practiced

### DDL Commands
- CREATE
- ALTER
- DROP
- TRUNCATE

### DML Commands
- INSERT
- UPDATE
- DELETE

### DQL Commands
- SELECT

---

## Learning Outcome

By the end of Day 1:
- Understood SQL basics
- Learned how databases work
- Created tables
- Inserted records
- Executed basic SQL queries
- Practiced filtering and sorting data

---

## Tools Used

- Databricks
- SQL
- GitHub

---

## Author

Mohith Daggupati
2. sql/create_database.sql
CREATE DATABASE training_db;

USE training_db;
3. sql/create_tables.sql
CREATE TABLE students (
    student_id INT,
    student_name STRING,
    department STRING,
    age INT,
    marks INT
);

CREATE TABLE employees (
    emp_id INT,
    emp_name STRING,
    department STRING,
    salary INT
);
4. sql/insert_data.sql
INSERT INTO students VALUES
(1, 'Rahul', 'CSE', 20, 85),
(2, 'Anjali', 'ECE', 21, 90),
(3, 'Kiran', 'EEE', 22, 78),
(4, 'Sneha', 'CSE', 20, 88),
(5, 'Vikram', 'MECH', 23, 72);

INSERT INTO employees VALUES
(101, 'Ramesh', 'HR', 45000),
(102, 'Suresh', 'IT', 60000),
(103, 'Kavya', 'Finance', 55000),
(104, 'Priya', 'IT', 70000),
(105, 'Arjun', 'Sales', 50000);
5. sql/basic_queries.sql
-- Display all students
SELECT * FROM students;

-- Display all employees
SELECT * FROM employees;

-- Students with marks greater than 80
SELECT * 
FROM students
WHERE marks > 80;

-- Employees with salary greater than 55000
SELECT * 
FROM employees
WHERE salary > 55000;

-- Sort students by marks
SELECT *
FROM students
ORDER BY marks DESC;

-- Sort employees by salary
SELECT *
FROM employees
ORDER BY salary DESC;

-- Display only names and departments
SELECT student_name, department
FROM students;

-- Count total students
SELECT COUNT(*) AS total_students
FROM students;

-- Average marks
SELECT AVG(marks) AS average_marks
FROM students;

-- Maximum salary
SELECT MAX(salary) AS highest_salary
FROM employees;