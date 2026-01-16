# SQL Joins Practice – Task 1

## Objective
To practice and understand different types of SQL joins
(INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN) using MySQL
by combining data from multiple related tables.

## Tools Used
- MySQL
- MySQL Workbench

## Files in This Repository
- task1_sql_joins.sql – Contains SQL queries for INNER, LEFT, RIGHT, and FULL joins
- full_join_output.png – Screenshot showing the output of FULL JOIN

## Joins Implemented

### 1. INNER JOIN
Used to retrieve only matching records from both tables.

### 2. LEFT JOIN
Used to retrieve all records from the left table and matching records from the right table.

### 3. RIGHT JOIN
Used to retrieve all records from the right table and matching records from the left table.

### 4. FULL JOIN (Using UNION in MySQL)
Since MySQL does not support FULL JOIN directly, it is implemented
using a combination of LEFT JOIN and RIGHT JOIN with UNION.

## FULL JOIN Query
sql
SELECT s.student_id, s.student_name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id

UNION

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;
