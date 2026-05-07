# SQL Practice Queries (1–20)

## Overview

This document contains solutions for the first 20 SQL practice queries based on the Employee, Department, and Project tables.

The queries cover:
- Basic SQL Queries
- String Matching Queries
- Date Queries
- Aggregate Functions

---

# Schema Used

## Employee Table

| Column Name   | Data Type |
|---------------|-----------|
| emp_id        | INT |
| name          | STRING |
| age           | INT |
| salary        | INT |
| department_id | INT |
| hire_date     | DATE |

---

## Department Table

| Column Name   | Data Type |
|---------------|-----------|
| department_id | INT |
| name          | STRING |

---

## Project Table

| Column Name   | Data Type |
|---------------|-----------|
| project_id    | INT |
| name          | STRING |
| department_id | INT |

---

# Topics Covered

## 1. Basic Queries
Practiced:
- SELECT *
- Selecting specific columns
- Filtering records using WHERE clause

---

## 2. String Matching Queries
Practiced:
- LIKE operator
- Wildcards (% and _)
- Pattern matching

Examples:
- Names starting with specific letters
- Names ending with specific letters
- Character position matching

---

## 3. Date Queries
Practiced:
- YEAR()
- MONTH()
- Date filtering
- Comparing dates

Examples:
- Employees hired in specific years
- Employees hired before or after a date

---

## 4. Aggregate Queries
Practiced:
- SUM()
- AVG()
- MIN()
- COUNT()

Examples:
- Total salary
- Average salary
- Employee count by department

---

# Files Included

## SQL File

Contains:
- Solutions for queries 1–20

File:
```txt
solutions_1_to_20.sql
```

---

## Output File

Contains:
- Query outputs
- Expected results

File:
```txt
solutions_output.md
```

---

# SQL Concepts Practiced

| Concept | Description |
|----------|-------------|
| SELECT | Retrieve data |
| WHERE | Filter rows |
| LIKE | Pattern matching |
| ORDER BY | Sorting |
| GROUP BY | Grouping data |
| Aggregate Functions | Calculations on rows |

---

# Learning Outcomes

By completing these queries, I learned:

- Writing basic SQL queries
- Filtering data using conditions
- Using pattern matching
- Working with date functions
- Performing aggregate calculations
- Grouping records using GROUP BY

---

# Tools Used

- Databricks SQL
- MySQL / SQL Environment
- GitHub

---



---

# Author

varshini