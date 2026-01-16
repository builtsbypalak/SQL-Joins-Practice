CREATE DATABASE COLLEGE;
use college;
CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT,
    course_name VARCHAR(50)
);
INSERT INTO Students VALUES
(1, 'Amit', 101),
(2, 'Neha', 102),
(3, 'Ravi', 103),
(4, 'Priya', NULL);

INSERT INTO Courses VALUES
(101, 'Data Science'),
(102, 'Web Development'),
(104, 'Cyber Security');

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id;

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id

UNION

SELECT s.student_id, s.student_name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;



