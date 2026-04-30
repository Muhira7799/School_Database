CREATE DATABASE SchoolDB;
GO
USE SchoolDB;
GO
CREATE TABLE Students ( student_id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
age INT CHECK(age>15)
);

CREATE TABLE Courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
credits INT DEFAULT 3
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES (1,
'yassin nabil' , 'yassin@gmail.com',20);

INSERT INTO Students VALUES (2,
'mariam hossam','mariam@gamil.com',19);

INSERT INTO Students VALUES (3,
'ziad tamer','ziad@gmail.com',22);

INSERT INTO Courses VALUES (101,
'database admins',3);

INSERT INTO Courses VALUES (102,
'web technology',3);

INSERT INTO Enrollments VALUES (1,1,
101,'A');

INSERT INTO Enrollments VALUES (2,2,
102,'B');

INSERT INTO Enrollments VALUES (3,3,
101,'A');

UPDATE Students SET age = 21 WHERE
student_id = 1;

DELETE FROM Enrollments WHERE 
course_id = 102;
 
SELECT * FROM Students;
 
SELECT * FROM Courses;
SELECT * FROM Enrollments;

select * from students where age>20;

SELECT s.name, c.course_name, e.grade FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

SELECT s.name, e.grade FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
WHERE e.grade= 'A';

SELECT c.course_name,
COUNT(e.student_id) AS student_count 
FROM Courses c
LEFT JOIN Enrollments e ON 
c.course_id = e.course_id
GROUP BY c.course_name;


SELECT s.name
FROM Students s
LEFT JOIN EnroLlments e ON
s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

EXEC sp_help 'Enrollments';
EXEC sp_help 'Enrollmens';
SELECT * FROM Students;