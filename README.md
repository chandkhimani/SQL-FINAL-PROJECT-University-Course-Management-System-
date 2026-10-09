# 🎓 University Course Management System — SQL

### A Practical MySQL Project for Database Operations, Joins, Subqueries, Functions & Data Analysis

<p align="center">
  <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Language-SQL-336791?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Assignment-16%20Questions-6C63FF?style=for-the-badge" alt="16 SQL questions">
  <img src="https://img.shields.io/badge/Project-Academic-F39C12?style=for-the-badge" alt="Academic project">
</p>

<p align="center">
  <strong>📚 BCA Final Year</strong> •
  <strong>📊 Data Analysis Course</strong> •
  <strong>👨‍💻 Developed by Chand Khimani</strong>
</p>

<p align="center">
  <strong>🎓 Guided by Prof. Girish Gondaliya</strong>
</p>

---

## 📌 Table of Contents

- [🌟 Project Overview](#-project-overview)
- [🎯 Project Objectives](#-project-objectives)
- [🏗️ Database Architecture](#️-database-architecture)
- [🔗 Relationship Flow](#-relationship-flow)
- [🧩 Database Schema](#-database-schema)
- [🧠 SQL Concepts Demonstrated](#-sql-concepts-demonstrated)
- [📋 Assignment Query Coverage](#-assignment-query-coverage)
- [📊 Sample Data & Verified Results](#-sample-data--verified-results)
- [🛠️ Technologies Used](#️-technologies-used)
- [🚀 How to Run](#-how-to-run)
- [📁 Repository Structure](#-repository-structure)
- [🧠 Learning Outcomes](#-learning-outcomes)
- [✨ Key Highlights](#-key-highlights)
- [🎓 Academic Information](#-academic-information)
- [🙏 Acknowledgement](#-acknowledgement)

---

## 🌟 Project Overview

**University Course Management System** is a practical MySQL project designed to manage and analyze university-related information. It uses relational tables for students, courses, instructors, enrollments, and departments, and applies SQL queries to retrieve, combine, summarize, and classify the stored data.

### 🧱 Core Tables

| # | Table | Purpose |
|---|---|---|
| 01 | 👩‍🎓 `Students` | Stores student identity, contact information, birth date, and enrollment date |
| 02 | 📚 `Courses` | Stores course names, department references, and credit values |
| 03 | 👨‍🏫 `Instructors` | Stores instructor identity, contact information, department, and the salary field used for Question 8 |
| 04 | 📝 `Enrollments` | Connects students with courses and records enrollment dates |
| 05 | 🏢 `Departments` | Stores department identifiers and department names |

> 🎯 **Project Goal:** Complete the assigned SQL tasks in the required sequence while practicing CRUD operations, filtering, aggregation, joins, subqueries, date and string functions, window functions, and conditional logic.

---

## 🎯 Project Objectives

| Area | Concepts Covered |
|---|---|
| 🧱 Data Management | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| 🔎 Filtering | `WHERE`, date conditions, `LIMIT` |
| 🧮 Aggregation | `COUNT()`, `AVG()`, `MAX()`, `GROUP BY`, `HAVING` |
| 🔗 Table Relationships | `INNER JOIN`, `LEFT JOIN` |
| 🧩 Nested Queries | Subqueries using `IN` and grouped results |
| 📅 Date Functions | `YEAR()`, `CURDATE()` |
| 🔤 String Functions | `CONCAT()` |
| 📈 Window Functions | `SUM() OVER (ORDER BY ...)` |
| 🧠 Conditional Logic | `CASE` expressions for Senior/Junior classification |

---

## 🏗️ Database Architecture

```text
                 ┌───────────────────────────────────┐
                 │   UNIVERSITY COURSE MANAGEMENT    │
                 │             DATABASE              │
                 └─────────────────┬─────────────────┘
                                   │
              ┌────────────────────┼────────────────────┐
              │                    │                    │
              ▼                    ▼                    ▼
       ┌─────────────┐      ┌─────────────┐      ┌─────────────┐
       │  STUDENTS   │      │   COURSES   │      │ INSTRUCTORS │
       ├─────────────┤      ├─────────────┤      ├─────────────┤
       │ StudentID   │      │ CourseID    │      │ InstructorID│
       │ FirstName   │      │ CourseName  │      │ FirstName   │
       │ LastName    │      │ DepartmentID│      │ LastName    │
       │ Email       │      │ Credits     │      │ Email       │
       │ BirthDate   │      └──────┬──────┘      │ DepartmentID│
       │ EnrollmentDate│            │             │ Salary*     │
       └──────┬──────┘              │             └──────┬──────┘
              │                     │                    │
              ▼                     ▼                    ▼
       ┌────────────────┐     ┌─────────────────────────────┐
       │  ENROLLMENTS   │     │         DEPARTMENTS         │
       ├────────────────┤     ├─────────────────────────────┤
       │ EnrollmentID   │     │ DepartmentID                │
       │ StudentID      │     │ DepartmentName              │
       │ CourseID       │     └─────────────────────────────┘
       │ EnrollmentDate │
       └────────────────┘
```

<sub>*The `Salary` column was added during the project workflow because Question 8 explicitly asks for maximum instructor salary. Salary values used in the current exercise are sample values, not verified real salaries.</sub>

### 🔑 Relationship Logic

```text
Students.StudentID ───────< Enrollments.StudentID
Courses.CourseID ─────────< Enrollments.CourseID
Departments.DepartmentID ──< Courses.DepartmentID
Departments.DepartmentID ──< Instructors.DepartmentID
```

- `Students.StudentID` uniquely identifies a student.
- `Courses.CourseID` uniquely identifies a course.
- `Instructors.InstructorID` uniquely identifies an instructor.
- `Departments.DepartmentID` identifies a department.
- `Enrollments` links students to the courses in which they are enrolled.
- The joins in this project use the matching ID fields to connect related records.

---

## 🧩 Database Schema

Database name: `UniversityCourseManagement`

### 1️⃣ `Students`

| Field | Data Type | Key / Purpose |
|---|---|---|
| `StudentID` | `INT` | 🔑 Primary Key |
| `FirstName` | `VARCHAR(50)` | Student's first name |
| `LastName` | `VARCHAR(50)` | Student's last name |
| `Email` | `VARCHAR(100)` | Student email address |
| `BirthDate` | `DATE` | Student's date of birth |
| `EnrollmentDate` | `DATE` | Date the student enrolled |

### 2️⃣ `Courses`

| Field | Data Type | Key / Purpose |
|---|---|---|
| `CourseID` | `INT` | 🔑 Primary Key |
| `CourseName` | `VARCHAR(100)` | Name of the course |
| `DepartmentID` | `INT` | Department associated with the course |
| `Credits` | `INT` | Course credit value |

### 3️⃣ `Instructors`

| Field | Data Type | Key / Purpose |
|---|---|---|
| `InstructorID` | `INT` | 🔑 Primary Key |
| `FirstName` | `VARCHAR(50)` | Instructor's first name |
| `LastName` | `VARCHAR(50)` | Instructor's last name |
| `Email` | `VARCHAR(100)` | Instructor email address |
| `DepartmentID` | `INT` | Instructor's department |
| `Salary` | `DECIMAL(10,2)` | Added for Question 8; sample values are used |

> ⚠️ **Schema note:** The initial table definition used in the project did not include `Salary`. It was added later to make Question 8 executable. Confirm the final field list against the instructor's original specification before submission.

### 4️⃣ `Enrollments`

| Field | Data Type | Key / Purpose |
|---|---|---|
| `EnrollmentID` | `INT` | 🔑 Primary Key |
| `StudentID` | `INT` | Student reference |
| `CourseID` | `INT` | Course reference |
| `EnrollmentDate` | `DATE` | Date of course enrollment |

### 5️⃣ `Departments`

| Field | Data Type | Key / Purpose |
|---|---|---|
| `DepartmentID` | `INT` | 🔑 Primary Key |
| `DepartmentName` | `VARCHAR(100)` | Department name |

---

## 🧠 SQL Concepts Demonstrated

### 🧱 CRUD Operations

- **Create:** `INSERT INTO` adds a record.
- **Read:** `SELECT` retrieves records.
- **Update:** `UPDATE` modifies an existing record.
- **Delete:** `DELETE` removes a record.

The project performed CRUD practice on each of the five tables using temporary practice records, which were deleted after testing.

### 🔗 JOIN Operations

- **`INNER JOIN`:** Returns matching students and course enrollment records.
- **`LEFT JOIN`:** Preserves every student and displays matching course details where available.
- **Department joins:** Connect courses or instructors to their department using `DepartmentID`.

### 🧮 Aggregate Functions

- `COUNT()` counts records or unique students.
- `AVG()` calculates the average course credits.
- `MAX()` finds the highest instructor salary.
- `GROUP BY` groups rows for aggregate calculations.
- `HAVING` filters grouped results.

### 🧩 Subqueries

A subquery is used to identify courses whose enrollment count is greater than ten. The outer query then retrieves the corresponding course details.

### 📅 Date Functions

- `YEAR()` extracts the year from a date.
- `CURDATE()` returns the current date.
- A year difference is used for the Senior/Junior classification required by the assignment.

### 🔤 String Functions

- `CONCAT()` combines an instructor's first and last names.

### 📈 Window Functions

- `SUM() OVER (ORDER BY ...)` calculates a running total of student enrollments across courses.

### 🧠 Conditional Logic

- `CASE` assigns a student-level label based on the four-year enrollment-year rule.

---

## 📋 Assignment Query Coverage

The table below follows the 16-question sequence used during the project workflow. Descriptions are summarized for navigation; use the exact wording on the original assignment sheet for the final submitted question statements.

| # | Assigned Task | SQL Concept |
|---:|---|---|
| 01 | Perform CRUD operations on all tables | `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| 02 | Retrieve students enrolled after 2022 | `WHERE`, date comparison |
| 03 | Retrieve Mathematics department courses, limited to five courses | `JOIN`, `WHERE`, `LIMIT` |
| 04 | Count students enrolled in each course; filter courses with more than five students | `COUNT()`, `GROUP BY`, `HAVING` |
| 05 | Find students enrolled in both Introduction to SQL and Data Structures | `JOIN`, `GROUP BY`, `HAVING`, `COUNT(DISTINCT ...)` |
| 06 | Find students enrolled in either Introduction to SQL or Data Structures | `JOIN`, `IN`, `DISTINCT` |
| 07 | Calculate the average number of credits for all courses | `AVG()` |
| 08 | Find the maximum instructor salary in the Computer Science department | `MAX()`, `JOIN`, `WHERE` |
| 09 | Count students enrolled in each department | Multiple `JOIN`s, `COUNT(DISTINCT ...)` |
| 10 | Retrieve students and their corresponding courses | `INNER JOIN` |
| 11 | Retrieve all students and their corresponding courses, if any | `LEFT JOIN` |
| 12 | Find courses that have more than ten students | Subquery, `GROUP BY`, `HAVING` |
| 13 | Extract the year from students' `EnrollmentDate` | `YEAR()` |
| 14 | Concatenate instructors' first and last names | `CONCAT()` |
| 15 | Calculate the running total of students enrolled in courses | `SUM() OVER()` |
| 16 | Label students Senior or Junior based on enrollment year, using the four-year rule | `CASE`, `YEAR()`, `CURDATE()` |

> 📌 **Assignment scope:** The listed topics follow the project workflow. No unrelated SQL topics are intentionally added.

---

## 📊 Sample Data & Verified Results

The database was populated with sample records to test the assigned queries. Counts below reflect the state reached during the guided workflow, including two additional enrollment rows inserted to make Question 12 return a matching course.

### 📦 Table Record Counts

| Table | Records verified |
|---|---:|
| `Students` | 12 |
| `Courses` | 6 |
| `Instructors` | 4 |
| `Enrollments` | 22 |
| `Departments` | 3 |
| **Total records across tables** | **47** |

### 🔎 Verified Result — Question 12

The subquery for courses with more than ten distinct students returned:

| CourseName | TotalStudents |
|---|---:|
| Introduction to SQL | 12 |

The result was obtained after adding enrollment records for Student IDs `111` and `112` into Course ID `201` (`Introduction to SQL`).

### 🧮 Question 8 — Sample Salary Result

The following sample salaries were assigned during the exercise:

| InstructorID | Instructor | DepartmentID | Sample Salary |
|---:|---|---:|---:|
| 301 | Amit Sharma | 1 | 75,000.00 |
| 302 | Neha Patel | 2 | 65,000.00 |
| 303 | Raj Mehta | 1 | 85,000.00 |
| 304 | Priya Desai | 3 | 60,000.00 |

With `Computer Science` mapped to `DepartmentID = 1`, the maximum sample salary returned is **85,000.00**.

> ⚠️ These salaries were added as sample values to demonstrate Question 8. They were not supplied as verified real-world salary data. Keep this note in the documentation unless your instructor supplies official salary values.

### ℹ️ Result Notes

- Query results depend on the data currently stored in the database.
- `Empty set` means the query returned no rows; it does not automatically mean the SQL syntax is invalid.
- The counts and results above reflect the database state described in this README. If records are later inserted, updated, or deleted, rerun the verification queries and update this section.

---

## 🛠️ Technologies Used

| Technology / Concept | Purpose |
|---|---|
| 🐬 **MySQL** | Relational database management |
| 💻 **SQL** | Creating, retrieving, updating, deleting, and analyzing data |
| 🔑 **Primary Keys** | Uniquely identifying records |
| 🔗 **JOINs** | Combining related records from multiple tables |
| 🧩 **Subqueries** | Filtering using grouped query results |
| 🧮 **Aggregate Functions** | Counting and calculating averages and maximum values |
| 📅 **Date Functions** | Extracting year values and applying enrollment-year rules |
| 📈 **Window Functions** | Calculating running totals |
| 🧠 **CASE Expressions** | Conditional student classification |

---

## 🚀 How to Run

### 1. 🐬 Open MySQL

Use the MySQL Command Line Client or another compatible MySQL SQL editor.

### 2. 🗄️ Create and Select the Database

```sql
CREATE DATABASE UniversityCourseManagement;
USE UniversityCourseManagement;
```

If the database and tables already exist, select the database with `USE` rather than recreating tables.

### 3. 🧱 Create the Tables

Create the five tables in the required schema: `Students`, `Courses`, `Instructors`, `Enrollments`, and `Departments`.

### 4. 📥 Insert the Sample Data

Run the table-specific `INSERT INTO` statements in the correct order so the referenced student, course, and department records already exist before enrollment records are added.

### 5. ▶️ Execute the Assignment Queries

Run the 16 assigned questions in the same order as the assignment. For Question 8, ensure the `Instructors` table has the `Salary` field and sample/approved salary values before executing the maximum-salary query.

### 6. 🔍 Verify the Active Database

```sql
SELECT DATABASE();
SHOW TABLES;
```

Expected database:

```text
UniversityCourseManagement
```

Expected tables:

```text
Courses
Departments
Enrollments
Instructors
Students
```

### 7. 📊 Verify Table Counts

```sql
SELECT COUNT(*) AS TotalStudents FROM Students;
SELECT COUNT(*) AS TotalCourses FROM Courses;
SELECT COUNT(*) AS TotalInstructors FROM Instructors;
SELECT COUNT(*) AS TotalEnrollments FROM Enrollments;
SELECT COUNT(*) AS TotalDepartments FROM Departments;
```

### 8. ⚙️ MySQL Compatibility

The running-total query uses a window function. Use **MySQL 8.0 or later** for compatibility with the `SUM() OVER (...)` syntax.

---

## 📁 Repository Structure

```text
📦 University-Course-Management-System
│
├── 📄 README.md
└── 🗄️ UniversityCourseManagement.sql
```

- `README.md` — project overview, database design, assignment coverage, results, and execution guide.
- `UniversityCourseManagement.sql` — recommended location for the database setup, table definitions, sample data, and all assignment queries.

> If your actual SQL script has a different filename, use that filename in the repository structure above.

---

## 🧠 Learning Outcomes

By completing **University Course Management System**, the following practical skills are demonstrated:

- ✅ Performing CRUD operations on relational tables
- ✅ Filtering records with date conditions
- ✅ Limiting query results
- ✅ Using aggregate functions with `GROUP BY` and `HAVING`
- ✅ Finding records associated with multiple courses
- ✅ Combining data through `INNER JOIN` and `LEFT JOIN`
- ✅ Writing subqueries to filter grouped results
- ✅ Extracting year values from dates
- ✅ Concatenating text fields
- ✅ Calculating running totals with window functions
- ✅ Applying conditional logic with `CASE`
- ✅ Checking table counts and interpreting result sets

---

## ✨ Key Highlights

```text
┌────────────────────────────────────────────────────────────┐
│            UNIVERSITY COURSE MANAGEMENT SYSTEM             │
├────────────────────────────────────────────────────────────┤
│ 🧱  5 relational tables                                    │
│ 📋  16 assigned SQL questions                              │
│ 🔄  CRUD operations across all tables                      │
│ 🔗  JOINs for student, course, and department information   │
│ 🧩  Subquery for courses with more than ten students       │
│ 🧮  COUNT, AVG, and MAX aggregate functions                │
│ 📅  Date extraction and year-based classification          │
│ 🔤  Instructor full-name concatenation                     │
│ 📈  Running total using a window function                  │
│ 📝  GitHub-ready project documentation                     │
└────────────────────────────────────────────────────────────┘
```

---

## 🎓 Academic Information

| Detail | Information |
|---|---|
| 👨‍💻 Student | **Chand Khimani** |
| 🎓 Program | **BCA — Final Year** |
| 📊 Course | **Data Analysis** |
| 👨‍🏫 Guide | **Prof. Girish Gondaliya** |
| 🗂️ Project | **University Course Management System** |
| 🐬 Database | **MySQL** |
| 📋 Assignment Questions | **16** |

---

## 🌱 What This Project Represents

> **University Course Management System turns relational records into useful answers through structured SQL queries.**

The project follows a practical workflow:

**Create → Insert → Retrieve → Join → Aggregate → Transform → Analyze**

These foundations are useful for:

- 📊 Data Analysis
- 🗄️ Database Management
- 💻 Backend Development
- 📈 Reporting and Business Intelligence

---

## 🙏 Acknowledgement

I sincerely thank **Prof. Girish Gondaliya** for the guidance and support provided throughout this practical assignment.

This project strengthened my practical understanding of:

**SQL • MySQL • Relational Tables • CRUD Operations • Joins • Subqueries • Data Analysis**

---

## 💬 Project Philosophy

> **Every query answers a question.**  
> **Every relationship connects information.**  
> **Every result builds understanding.**

<p align="center">
  <strong>💻 Built with SQL & Curiosity</strong><br>
  <strong>📊 Driven by Data</strong><br>
  <strong>🚀 Created by Chand Khimani</strong>
</p>

<p align="center">
  ⭐ <strong>Thank you for visiting University Course Management System!</strong> ⭐
</p>

<p align="center">
  🌱 <em>Learn • Practice • Query • Analyze • Grow</em> 🌱
</p>
