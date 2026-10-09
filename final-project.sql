------>Create the Database

CREATE DATABASE UniversityCourseManagement;
===============================================================================================

1. Create Students table

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);

DESCRIBE Students;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| StudentID      | int          | NO   | PRI | NULL    |       |
| FirstName      | varchar(50)  | YES  |     | NULL    |       |
| LastName       | varchar(50)  | YES  |     | NULL    |       |
| Email          | varchar(100) | YES  |     | NULL    |       |
| BirthDate      | date         | YES  |     | NULL    |       |
| EnrollmentDate | date         | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(101, 'Aarav', 'Shah', 'aarav.shah@example.com', '2004-05-12', '2021-07-15'),
(102, 'Diya', 'Patel', 'diya.patel@example.com', '2005-02-18', '2022-08-10'),
(103, 'Rohan', 'Mehta', 'rohan.mehta@example.com', '2004-11-23', '2023-07-12'),
(104, 'Anaya', 'Desai', 'anaya.desai@example.com', '2005-06-09', '2023-08-05'),
(105, 'Vivaan', 'Joshi', 'vivaan.joshi@example.com', '2004-09-14', '2021-07-20'),
(106, 'Isha', 'Trivedi', 'isha.trivedi@example.com', '2005-01-30', '2022-07-18'),
(107, 'Kabir', 'Parikh', 'kabir.parikh@example.com', '2004-03-25', '2021-08-01'),
(108, 'Meera', 'Rao', 'meera.rao@example.com', '2005-12-04', '2023-07-10'),
(109, 'Arjun', 'Nair', 'arjun.nair@example.com', '2004-08-16', '2022-08-12'),
(110, 'Sana', 'Khan', 'sana.khan@example.com', '2005-04-21', '2023-08-08'),
(111, 'Dev', 'Patel', 'dev.patel@example.com', '2004-10-11', '2021-07-22'),
(112, 'Riya', 'Shah', 'riya.shah@example.com', '2005-07-19', '2022-07-25');


SELECT * FROM Students;
+-----------+-----------+----------+--------------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                    | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+--------------------------+------------+----------------+
|       101 | Aarav     | Shah     | aarav.shah@example.com   | 2004-05-12 | 2021-07-15     |
|       102 | Diya      | Patel    | diya.patel@example.com   | 2005-02-18 | 2022-08-10     |
|       103 | Rohan     | Mehta    | rohan.mehta@example.com  | 2004-11-23 | 2023-07-12     |
|       104 | Anaya     | Desai    | anaya.desai@example.com  | 2005-06-09 | 2023-08-05     |
|       105 | Vivaan    | Joshi    | vivaan.joshi@example.com | 2004-09-14 | 2021-07-20     |
|       106 | Isha      | Trivedi  | isha.trivedi@example.com | 2005-01-30 | 2022-07-18     |
|       107 | Kabir     | Parikh   | kabir.parikh@example.com | 2004-03-25 | 2021-08-01     |
|       108 | Meera     | Rao      | meera.rao@example.com    | 2005-12-04 | 2023-07-10     |
|       109 | Arjun     | Nair     | arjun.nair@example.com   | 2004-08-16 | 2022-08-12     |
|       110 | Sana      | Khan     | sana.khan@example.com    | 2005-04-21 | 2023-08-08     |
|       111 | Dev       | Patel    | dev.patel@example.com    | 2004-10-11 | 2021-07-22     |
|       112 | Riya      | Shah     | riya.shah@example.com    | 2005-07-19 | 2022-07-25     |
+-----------+-----------+----------+--------------------------+------------+----------------+

==================================================================================================
2. Create Courses table


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT
);


DESCRIBE Courses;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| CourseID     | int          | NO   | PRI | NULL    |       |
| CourseName   | varchar(100) | YES  |     | NULL    |       |
| DepartmentID | int          | YES  |     | NULL    |       |
| Credits      | int          | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+



INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits)
VALUES
(201, 'Introduction to SQL', 1, 4),
(202, 'Data Structures', 1, 3),
(203, 'Mathematics', 2, 4),
(204, 'Database Management Systems', 1, 4),
(205, 'Computer Networks', 3, 3),
(206, 'Web Development', 3, 3);


SELECT * FROM Courses;
+----------+-----------------------------+--------------+---------+
| CourseID | CourseName                  | DepartmentID | Credits |
+----------+-----------------------------+--------------+---------+
|      201 | Introduction to SQL         |            1 |       4 |
|      202 | Data Structures             |            1 |       3 |
|      203 | Mathematics                 |            2 |       4 |
|      204 | Database Management Systems |            1 |       4 |
|      205 | Computer Networks           |            3 |       3 |
|      206 | Web Development             |            3 |       3 |
+----------+-----------------------------+--------------+---------+

=======================================================================================================

3. Create Instructors table


CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT
);


DESCRIBE Instructors;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| InstructorID | int          | NO   | PRI | NULL    |       |
| FirstName    | varchar(50)  | YES  |     | NULL    |       |
| LastName     | varchar(50)  | YES  |     | NULL    |       |
| Email        | varchar(100) | YES  |     | NULL    |       |
| DepartmentID | int          | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+


INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(301, 'Amit', 'Sharma', 'amit.sharma@example.com', 1),
(302, 'Neha', 'Patel', 'neha.patel@example.com', 2),
(303, 'Raj', 'Mehta', 'raj.mehta@example.com', 1),
(304, 'Priya', 'Desai', 'priya.desai@example.com', 3);


SELECT * FROM Instructors;
+--------------+-----------+----------+-------------------------+--------------+
| InstructorID | FirstName | LastName | Email                   | DepartmentID |
+--------------+-----------+----------+-------------------------+--------------+
|          301 | Amit      | Sharma   | amit.sharma@example.com |            1 |
|          302 | Neha      | Patel    | neha.patel@example.com  |            2 |
|          303 | Raj       | Mehta    | raj.mehta@example.com   |            1 |
|          304 | Priya     | Desai    | priya.desai@example.com |            3 |
+--------------+-----------+----------+-------------------------+--------------+

======================================================================================================

4. Create Enrollments table


CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE
);


DESCRIBE Enrollments;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| EnrollmentID   | int  | NO   | PRI | NULL    |       |
| StudentID      | int  | YES  |     | NULL    |       |
| CourseID       | int  | YES  |     | NULL    |       |
| EnrollmentDate | date | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+



INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1001, 101, 201, '2021-07-16'),
(1002, 102, 201, '2022-08-11'),
(1003, 103, 201, '2023-07-13'),
(1004, 104, 201, '2023-08-06'),
(1005, 105, 201, '2021-07-21'),
(1006, 106, 201, '2022-07-19'),
(1007, 107, 201, '2021-08-02'),
(1008, 108, 201, '2023-07-11'),
(1009, 109, 201, '2022-08-13'),
(1010, 110, 201, '2023-08-09'),
(1011, 101, 202, '2021-07-17'),
(1012, 102, 202, '2022-08-12'),
(1013, 103, 202, '2023-07-14'),
(1014, 104, 202, '2023-08-07'),
(1015, 105, 202, '2021-07-22'),
(1016, 106, 202, '2022-07-20'),
(1017, 101, 203, '2021-07-18'),
(1018, 103, 204, '2023-07-15'),
(1019, 105, 205, '2021-07-23'),
(1020, 107, 206, '2021-08-03');



SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|         1001 |       101 |      201 | 2021-07-16     |
|         1002 |       102 |      201 | 2022-08-11     |
|         1003 |       103 |      201 | 2023-07-13     |
|         1004 |       104 |      201 | 2023-08-06     |
|         1005 |       105 |      201 | 2021-07-21     |
|         1006 |       106 |      201 | 2022-07-19     |
|         1007 |       107 |      201 | 2021-08-02     |
|         1008 |       108 |      201 | 2023-07-11     |
|         1009 |       109 |      201 | 2022-08-13     |
|         1010 |       110 |      201 | 2023-08-09     |
|         1011 |       101 |      202 | 2021-07-17     |
|         1012 |       102 |      202 | 2022-08-12     |
|         1013 |       103 |      202 | 2023-07-14     |
|         1014 |       104 |      202 | 2023-08-07     |
|         1015 |       105 |      202 | 2021-07-22     |
|         1016 |       106 |      202 | 2022-07-20     |
|         1017 |       101 |      203 | 2021-07-18     |
|         1018 |       103 |      204 | 2023-07-15     |
|         1019 |       105 |      205 | 2021-07-23     |
|         1020 |       107 |      206 | 2021-08-03     |
+--------------+-----------+----------+----------------+


=====================================================================================================

5. Create Departments table


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


DESCRIBE Departments;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| DepartmentID   | int          | NO   | PRI | NULL    |       |
| DepartmentName | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Information Technology');


SELECT * FROM Departments;
+--------------+------------------------+
| DepartmentID | DepartmentName         |
+--------------+------------------------+
|            1 | Computer Science       |
|            2 | Mathematics            |
|            3 | Information Technology |
+--------------+------------------------+
==============================================================================================

--------->Verify all 5 tables

SHOW TABLES;
+--------------------------------------+
| Tables_in_universitycoursemanagement |
+--------------------------------------+
| courses                              |
| departments                          |
| enrollments                          |
| instructors                          |
| students                             |
+--------------------------------------+


--------->records count verify


SELECT 'Students' AS TableName, COUNT(*) AS TotalRecords FROM Students
UNION ALL
SELECT 'Courses', COUNT(*) FROM Courses
UNION ALL
SELECT 'Instructors', COUNT(*) FROM Instructors
UNION ALL
SELECT 'Enrollments', COUNT(*) FROM Enrollments
UNION ALL
SELECT 'Departments', COUNT(*) FROM Departments;

+-------------+--------------+
| TableName   | TotalRecords |
+-------------+--------------+
| Students    |           12 |
| Courses     |            6 |
| Instructors |            4 |
| Enrollments |           20 |
| Departments |            3 |
+-------------+--------------+
============================================================================================

 -------------------------->Queries to perform


------>Question 1 — Perform CRUD Operations on all table Perform CRUD Operations on all tables.

====> Step 1 — CREATE operation


INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(113, 'Kavya', 'Joshi', 'kavya.joshi@example.com', '2005-09-15', '2024-07-15');


SELECT * FROM Students
WHERE StudentID = 113;

+-----------+-----------+----------+-------------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                   | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-------------------------+------------+----------------+
|       113 | Kavya     | Joshi    | kavya.joshi@example.com | 2005-09-15 | 2024-07-15     |
+-----------+-----------+----------+-------------------------+------------+----------------+

====> Step 2 — READ operation

SELECT * FROM Students;
+-----------+-----------+----------+--------------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                    | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+--------------------------+------------+----------------+
|       101 | Aarav     | Shah     | aarav.shah@example.com   | 2004-05-12 | 2021-07-15     |
|       102 | Diya      | Patel    | diya.patel@example.com   | 2005-02-18 | 2022-08-10     |
|       103 | Rohan     | Mehta    | rohan.mehta@example.com  | 2004-11-23 | 2023-07-12     |
|       104 | Anaya     | Desai    | anaya.desai@example.com  | 2005-06-09 | 2023-08-05     |
|       105 | Vivaan    | Joshi    | vivaan.joshi@example.com | 2004-09-14 | 2021-07-20     |
|       106 | Isha      | Trivedi  | isha.trivedi@example.com | 2005-01-30 | 2022-07-18     |
|       107 | Kabir     | Parikh   | kabir.parikh@example.com | 2004-03-25 | 2021-08-01     |
|       108 | Meera     | Rao      | meera.rao@example.com    | 2005-12-04 | 2023-07-10     |
|       109 | Arjun     | Nair     | arjun.nair@example.com   | 2004-08-16 | 2022-08-12     |
|       110 | Sana      | Khan     | sana.khan@example.com    | 2005-04-21 | 2023-08-08     |
|       111 | Dev       | Patel    | dev.patel@example.com    | 2004-10-11 | 2021-07-22     |
|       112 | Riya      | Shah     | riya.shah@example.com    | 2005-07-19 | 2022-07-25     |
|       113 | Kavya     | Joshi    | kavya.joshi@example.com  | 2005-09-15 | 2024-07-15     |
+-----------+-----------+----------+--------------------------+------------+----------------+

====> Step 3 — UPDATE operation


UPDATE Students
SET Email = 'kavya.joshi2024@example.com'
WHERE StudentID = 113;


SELECT * FROM Students
WHERE StudentID = 113;
+-----------+-----------+----------+-----------------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                       | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-----------------------------+------------+----------------+
|       113 | Kavya     | Joshi    | kavya.joshi2024@example.com | 2005-09-15 | 2024-07-15     |
+-----------+-----------+----------+-----------------------------+------------+----------------+


====> Step 4 — DELETE operation


DELETE FROM Students
WHERE StudentID = 113;


SELECT * FROM Students
WHERE StudentID = 113;

Empty set

====>Step 5 — CREATE operation on Courses


INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits)
VALUES (207, 'Python Programming', 1, 3);


SELECT * FROM Courses
WHERE CourseID = 207;
+----------+--------------------+--------------+---------+
| CourseID | CourseName         | DepartmentID | Credits |
+----------+--------------------+--------------+---------+
|      207 | Python Programming |            1 |       3 |
+----------+--------------------+--------------+---------+

====>Step 6 — READ operation on Courses


SELECT * FROM Courses;
+----------+-----------------------------+--------------+---------+
| CourseID | CourseName                  | DepartmentID | Credits |
+----------+-----------------------------+--------------+---------+
|      201 | Introduction to SQL         |            1 |       4 |
|      202 | Data Structures             |            1 |       3 |
|      203 | Mathematics                 |            2 |       4 |
|      204 | Database Management Systems |            1 |       4 |
|      205 | Computer Networks           |            3 |       3 |
|      206 | Web Development             |            3 |       3 |
|      207 | Python Programming          |            1 |       3 |
+----------+-----------------------------+--------------+---------+

====>Step 7 — UPDATE operation on Course

UPDATE Courses
SET CourseName = 'Advanced Python Programming'
WHERE CourseID = 207;


SELECT * FROM Courses
WHERE CourseID = 207;
+----------+-----------------------------+--------------+---------+
| CourseID | CourseName                  | DepartmentID | Credits |
+----------+-----------------------------+--------------+---------+
|      207 | Advanced Python Programming |            1 |       3 |
+----------+-----------------------------+--------------+---------+

====>Step 8 — DELETE operation on Courses


DELETE FROM Courses
WHERE CourseID = 207;


SELECT * FROM Courses
WHERE CourseID = 207;

Empty set

====>Step 9 — CREATE operation on Instructors


INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(305, 'Kiran', 'Shah', 'kiran.shah@example.com', 2);


SELECT * FROM Instructors
WHERE InstructorID = 305;
+--------------+-----------+----------+------------------------+--------------+
| InstructorID | FirstName | LastName | Email                  | DepartmentID |
+--------------+-----------+----------+------------------------+--------------+
|          305 | Kiran     | Shah     | kiran.shah@example.com |            2 |
+--------------+-----------+----------+------------------------+--------------+


====>Step 10 — READ operation on Instructors


SELECT * FROM Instructors;
+--------------+-----------+----------+-------------------------+--------------+
| InstructorID | FirstName | LastName | Email                   | DepartmentID |
+--------------+-----------+----------+-------------------------+--------------+
|          301 | Amit      | Sharma   | amit.sharma@example.com |            1 |
|          302 | Neha      | Patel    | neha.patel@example.com  |            2 |
|          303 | Raj       | Mehta    | raj.mehta@example.com   |            1 |
|          304 | Priya     | Desai    | priya.desai@example.com |            3 |
|          305 | Kiran     | Shah     | kiran.shah@example.com  |            2 |
+--------------+-----------+----------+-------------------------+--------------+

====>Step 11 — UPDATE operation on Instructors


UPDATE Instructors
SET Email = 'kiran.shah2026@example.com'
WHERE InstructorID = 305;


SELECT * FROM Instructors
WHERE InstructorID = 305;
+--------------+-----------+----------+----------------------------+--------------+
| InstructorID | FirstName | LastName | Email                      | DepartmentID |
+--------------+-----------+----------+----------------------------+--------------+
|          305 | Kiran     | Shah     | kiran.shah2026@example.com |            2 |
+--------------+-----------+----------+----------------------------+--------------+

====>Step 12 — DELETE operation on Instructors

DELETE FROM Instructors
WHERE InstructorID = 305;

Empty set

====>Step 13 — CREATE operation on Enrollments


INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1021, 108, 204, '2024-07-15');


SELECT * FROM Enrollments
WHERE EnrollmentID = 1021;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|         1021 |       108 |      204 | 2024-07-15     |
+--------------+-----------+----------+----------------+

====>Step 14 — READ operation on Enrollments


SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|         1001 |       101 |      201 | 2021-07-16     |
|         1002 |       102 |      201 | 2022-08-11     |
|         1003 |       103 |      201 | 2023-07-13     |
|         1004 |       104 |      201 | 2023-08-06     |
|         1005 |       105 |      201 | 2021-07-21     |
|         1006 |       106 |      201 | 2022-07-19     |
|         1007 |       107 |      201 | 2021-08-02     |
|         1008 |       108 |      201 | 2023-07-11     |
|         1009 |       109 |      201 | 2022-08-13     |
|         1010 |       110 |      201 | 2023-08-09     |
|         1011 |       101 |      202 | 2021-07-17     |
|         1012 |       102 |      202 | 2022-08-12     |
|         1013 |       103 |      202 | 2023-07-14     |
|         1014 |       104 |      202 | 2023-08-07     |
|         1015 |       105 |      202 | 2021-07-22     |
|         1016 |       106 |      202 | 2022-07-20     |
|         1017 |       101 |      203 | 2021-07-18     |
|         1018 |       103 |      204 | 2023-07-15     |
|         1019 |       105 |      205 | 2021-07-23     |
|         1020 |       107 |      206 | 2021-08-03     |
|         1021 |       108 |      204 | 2024-07-15     |
+--------------+-----------+----------+----------------

====>Step 15 — UPDATE operation on Enrollments


UPDATE Enrollments
SET EnrollmentDate = '2024-08-01'
WHERE EnrollmentID = 1021;


SELECT * FROM Enrollments
WHERE EnrollmentID = 1021;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|         1021 |       108 |      204 | 2024-08-01     |
+--------------+-----------+----------+----------------+

====>Step 16 — DELETE operation on Enrollments


DELETE FROM Enrollments
WHERE EnrollmentID = 1021;


SELECT * FROM Enrollments
WHERE EnrollmentID = 1021;

Empty SET

====>Step 17 — CREATE operation on Departments


INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (4, 'Physics');


SELECT * FROM Departments
WHERE DepartmentID = 4;
+--------------+----------------+
| DepartmentID | DepartmentName |
+--------------+----------------+
|            4 | Physics        |
+--------------+----------------+

====>Step 18 — READ operation on Departments


SELECT * FROM Departments;
+--------------+------------------------+
| DepartmentID | DepartmentName         |
+--------------+------------------------+
|            1 | Computer Science       |
|            2 | Mathematics            |
|            3 | Information Technology |
|            4 | Physics                |
+--------------+------------------------+

====>Step 19 — UPDATE operation on Departments


UPDATE Departments
SET DepartmentName = 'Physics and Science'
WHERE DepartmentID = 4;


SELECT * FROM Departments
WHERE DepartmentID = 4;
+--------------+----------------+
| DepartmentID | DepartmentName |
+--------------+----------------+
|            4 | Physics        |
+--------------+----------------+

====>Step 20 — DELETE operation on Departments


DELETE FROM Departments
WHERE DepartmentID = 4;


SELECT * FROM Departments
WHERE DepartmentID = 4;

Empty set 

------->Question 2: Retrieve students enrolled after 2022.

SELECT *
FROM Students
WHERE EnrollmentDate >= '2023-01-01';
+-----------+-----------+----------+-------------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                   | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+-------------------------+------------+----------------+
|       103 | Rohan     | Mehta    | rohan.mehta@example.com | 2004-11-23 | 2023-07-12     |
|       104 | Anaya     | Desai    | anaya.desai@example.com | 2005-06-09 | 2023-08-05     |
|       108 | Meera     | Rao      | meera.rao@example.com   | 2005-12-04 | 2023-07-10     |
|       110 | Sana      | Khan     | sana.khan@example.com   | 2005-04-21 | 2023-08-08     |
+-----------+-----------+----------+-------------------------+------------+----------------+

-------->Question 3: Retrieve Mathematics department courses, limited to five courses.

SELECT c.*
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;
+----------+-------------+--------------+---------+
| CourseID | CourseName  | DepartmentID | Credits |
+----------+-------------+--------------+---------+
|      203 | Mathematics |            2 |       4 |
+----------+-------------+--------------+---------+

------>Question 4: Count students enrolled in each course; filter courses with more than five students.

SELECT c.CourseName, COUNT(e.StudentID) AS TotalStudents
FROM Courses c
JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
HAVING COUNT(e.StudentID) > 5;

+---------------------+---------------+
| CourseName          | TotalStudents |
+---------------------+---------------+
| Introduction to SQL |            10 |
| Data Structures     |             6 |
+---------------------+---------------+


------>Question 5: Find students enrolled in both Introduction to SQL and Data Structures.

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;
+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|       101 | Aarav     | Shah     |
|       102 | Diya      | Patel    |
|       103 | Rohan     | Mehta    |
|       104 | Anaya     | Desai    |
|       105 | Vivaan    | Joshi    |
|       106 | Isha      | Trivedi  |
+-----------+-----------+----------+

------->Question 6: Find students enrolled in either Introduction to SQL or Data Structures.

SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');
+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|       101 | Aarav     | Shah     |
|       102 | Diya      | Patel    |
|       103 | Rohan     | Mehta    |
|       104 | Anaya     | Desai    |
|       105 | Vivaan    | Joshi    |
|       106 | Isha      | Trivedi  |
|       107 | Kabir     | Parikh   |
|       108 | Meera     | Rao      |
|       109 | Arjun     | Nair     |
|       110 | Sana      | Khan     |
+-----------+-----------+----------+

-------->Question 7: Calculate the average number of credits for all courses.

SELECT AVG(Credits) AS AverageCredits
FROM Courses;
+----------------+
| AverageCredits |
+----------------+
|         3.5000 |
+----------------+

-------->Question 8: Find the maximum instructor salary in the Computer Science department.

DESCRIBE Instructors;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| InstructorID | int          | NO   | PRI | NULL    |       |
| FirstName    | varchar(50)  | YES  |     | NULL    |       |
| LastName     | varchar(50)  | YES  |     | NULL    |       |
| Email        | varchar(100) | YES  |     | NULL    |       |
| DepartmentID | int          | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+


ALTER TABLE Instructors
ADD COLUMN Salary DECIMAL(10,2);
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| InstructorID | int           | NO   | PRI | NULL    |       |
| FirstName    | varchar(50)   | YES  |     | NULL    |       |
| LastName     | varchar(50)   | YES  |     | NULL    |       |
| Email        | varchar(100)  | YES  |     | NULL    |       |
| DepartmentID | int           | YES  |     | NULL    |       |
| Salary       | decimal(10,2) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+


UPDATE Instructors
SET Salary = CASE
    WHEN InstructorID = 301 THEN 75000
    WHEN InstructorID = 302 THEN 65000
    WHEN InstructorID = 303 THEN 85000
    WHEN InstructorID = 304 THEN 60000
END;
+--------------+-----------+----------+-------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                   | DepartmentID | Salary   |
+--------------+-----------+----------+-------------------------+--------------+----------+
|          301 | Amit      | Sharma   | amit.sharma@example.com |            1 | 75000.00 |
|          302 | Neha      | Patel    | neha.patel@example.com  |            2 | 65000.00 |
|          303 | Raj       | Mehta    | raj.mehta@example.com   |            1 | 85000.00 |
|          304 | Priya     | Desai    | priya.desai@example.com |            3 | 60000.00 |
+--------------+-----------+----------+-------------------------+--------------+----------+

SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
JOIN Departments d
    ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

+---------------+
| MaximumSalary |
+---------------+
|      85000.00 |
+---------------+


------>Question 9: Count students enrolled in each department.

SELECT
    d.DepartmentName,
    COUNT(DISTINCT e.StudentID) AS TotalStudents
FROM Departments d
JOIN Courses c
    ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;
+------------------------+---------------+
| DepartmentName         | TotalStudents |
+------------------------+---------------+
| Computer Science       |            10 |
| Mathematics            |             1 |
| Information Technology |             2 |
+------------------------+---------------+

--------->Question 10: INNER JOIN: retrieve students and their corresponding courses.

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID;

    +-----------+-----------+----------+-----------------------------+
| StudentID | FirstName | LastName | CourseName                  |
+-----------+-----------+----------+-----------------------------+
|       101 | Aarav     | Shah     | Introduction to SQL         |
|       102 | Diya      | Patel    | Introduction to SQL         |
|       103 | Rohan     | Mehta    | Introduction to SQL         |
|       104 | Anaya     | Desai    | Introduction to SQL         |
|       105 | Vivaan    | Joshi    | Introduction to SQL         |
|       106 | Isha      | Trivedi  | Introduction to SQL         |
|       107 | Kabir     | Parikh   | Introduction to SQL         |
|       108 | Meera     | Rao      | Introduction to SQL         |
|       109 | Arjun     | Nair     | Introduction to SQL         |
|       110 | Sana      | Khan     | Introduction to SQL         |
|       101 | Aarav     | Shah     | Data Structures             |
|       102 | Diya      | Patel    | Data Structures             |
|       103 | Rohan     | Mehta    | Data Structures             |
|       104 | Anaya     | Desai    | Data Structures             |
|       105 | Vivaan    | Joshi    | Data Structures             |
|       106 | Isha      | Trivedi  | Data Structures             |
|       101 | Aarav     | Shah     | Mathematics                 |
|       103 | Rohan     | Mehta    | Database Management Systems |
|       105 | Vivaan    | Joshi    | Computer Networks           |
|       107 | Kabir     | Parikh   | Web Development             |
+-----------+-----------+----------+-----------------------------+

------>Question 11: LEFT JOIN: retrieve all students and their corresponding courses, if any.

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName
FROM Students s
LEFT JOIN Enrollments e
    ON s.StudentID = e.StudentID
LEFT JOIN Courses c
    ON e.CourseID = c.CourseID;
+-----------+-----------+----------+-----------------------------+
| StudentID | FirstName | LastName | CourseName                  |
+-----------+-----------+----------+-----------------------------+
|       101 | Aarav     | Shah     | Mathematics                 |
|       101 | Aarav     | Shah     | Data Structures             |
|       101 | Aarav     | Shah     | Introduction to SQL         |
|       102 | Diya      | Patel    | Data Structures             |
|       102 | Diya      | Patel    | Introduction to SQL         |
|       103 | Rohan     | Mehta    | Database Management Systems |
|       103 | Rohan     | Mehta    | Data Structures             |
|       103 | Rohan     | Mehta    | Introduction to SQL         |
|       104 | Anaya     | Desai    | Data Structures             |
|       104 | Anaya     | Desai    | Introduction to SQL         |
|       105 | Vivaan    | Joshi    | Computer Networks           |
|       105 | Vivaan    | Joshi    | Data Structures             |
|       105 | Vivaan    | Joshi    | Introduction to SQL         |
|       106 | Isha      | Trivedi  | Data Structures             |
|       106 | Isha      | Trivedi  | Introduction to SQL         |
|       107 | Kabir     | Parikh   | Web Development             |
|       107 | Kabir     | Parikh   | Introduction to SQL         |
|       108 | Meera     | Rao      | Introduction to SQL         |
|       109 | Arjun     | Nair     | Introduction to SQL         |
|       110 | Sana      | Khan     | Introduction to SQL         |
|       111 | Dev       | Patel    | NULL                        |
|       112 | Riya      | Shah     | NULL                        |
+-----------+-----------+----------+-----------------------------+

------>Question 12: Subquery: find courses that have more than ten students.

SELECT *
FROM Courses
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(DISTINCT StudentID) > 10
);

Empty set


------->Question 13: Extract the year from students' EnrollmentDate.

SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

+-----------+-----------+----------+----------------+----------------+
| StudentID | FirstName | LastName | EnrollmentDate | EnrollmentYear |
+-----------+-----------+----------+----------------+----------------+
|       101 | Aarav     | Shah     | 2021-07-15     |           2021 |
|       102 | Diya      | Patel    | 2022-08-10     |           2022 |
|       103 | Rohan     | Mehta    | 2023-07-12     |           2023 |
|       104 | Anaya     | Desai    | 2023-08-05     |           2023 |
|       105 | Vivaan    | Joshi    | 2021-07-20     |           2021 |
|       106 | Isha      | Trivedi  | 2022-07-18     |           2022 |
|       107 | Kabir     | Parikh   | 2021-08-01     |           2021 |
|       108 | Meera     | Rao      | 2023-07-10     |           2023 |
|       109 | Arjun     | Nair     | 2022-08-12     |           2022 |
|       110 | Sana      | Khan     | 2023-08-08     |           2023 |
|       111 | Dev       | Patel    | 2021-07-22     |           2021 |
|       112 | Riya      | Shah     | 2022-07-25     |           2022 |
+-----------+-----------+----------+----------------+----------------+

----->Question 14: Concatenate instructors' first and last names.

SELECT
    InstructorID,
    CONCAT(FirstName, ' ', LastName) AS InstructorName
FROM Instructors;
+--------------+----------------+
| InstructorID | InstructorName |
+--------------+----------------+
|          301 | Amit Sharma    |
|          302 | Neha Patel     |
|          303 | Raj Mehta      |
|          304 | Priya Desai    |
+--------------+----------------+

----->Question 15: Calculate the running total of students enrolled in courses.

SELECT
    c.CourseID,
    c.CourseName,
    COUNT(e.StudentID) AS StudentsInCourse,
    SUM(COUNT(e.StudentID)) OVER (
        ORDER BY c.CourseID
    ) AS RunningTotal
FROM Courses c
LEFT JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName;

+----------+-----------------------------+------------------+--------------+
| CourseID | CourseName                  | StudentsInCourse | RunningTotal |
+----------+-----------------------------+------------------+--------------+
|      201 | Introduction to SQL         |               10 |           10 |
|      202 | Data Structures             |                6 |           16 |
|      203 | Mathematics                 |                1 |           17 |
|      204 | Database Management Systems |                1 |           18 |
|      205 | Computer Networks           |                1 |           19 |
|      206 | Web Development             |                1 |           20 |
+----------+-----------------------------+------------------+--------------+

----->Question 16: Label students Senior or Junior based on enrollment year, using the four-year rule.

SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    CASE
        WHEN YEAR(CURDATE()) - YEAR(EnrollmentDate) >= 4
            THEN 'Senior'
        ELSE 'Junior'
    END AS StudentLevel
FROM Students;

+-----------+-----------+----------+----------------+--------------+
| StudentID | FirstName | LastName | EnrollmentDate | StudentLevel |
+-----------+-----------+----------+----------------+--------------+
|       101 | Aarav     | Shah     | 2021-07-15     | Senior       |
|       102 | Diya      | Patel    | 2022-08-10     | Senior       |
|       103 | Rohan     | Mehta    | 2023-07-12     | Junior       |
|       104 | Anaya     | Desai    | 2023-08-05     | Junior       |
|       105 | Vivaan    | Joshi    | 2021-07-20     | Senior       |
|       106 | Isha      | Trivedi  | 2022-07-18     | Senior       |
|       107 | Kabir     | Parikh   | 2021-08-01     | Senior       |
|       108 | Meera     | Rao      | 2023-07-10     | Junior       |
|       109 | Arjun     | Nair     | 2022-08-12     | Senior       |
|       110 | Sana      | Khan     | 2023-08-08     | Junior       |
|       111 | Dev       | Patel    | 2021-07-22     | Senior       |
|       112 | Riya      | Shah     | 2022-07-25     | Senior       |
+-----------+-----------+----------+----------------+--------------+

===============THANK YOU===============














