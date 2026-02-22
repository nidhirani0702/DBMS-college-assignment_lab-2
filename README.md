College Database ER Model & SQL Implementation

**Introduction**

This project is a database design assignment for a college management system.
The goal is to model real-world college operations using an Entity Relationship (ER) Diagram and implement it using SQL tables.

The system manages departments, students, faculty members, courses, and enrollments.

---

**Problem Statement**

Design a database that:

- Stores department information
- Manages student records
- Keeps faculty details
- Tracks courses offered by departments
- Records which students enroll in which courses

---

**ER Model Description**

Main Entities

Department

Represents an academic department in the college.

Attributes:

- Department_ID (Primary Key)
- Department_Name
- Office_Location

Relationship:

- One department can have many students, faculty members, and courses.

---

**Student**

Represents students enrolled in the college.

Attributes:

- Student_ID (Primary Key)
- Name
- DOB
- Gender
- Contact_Number
- Department_ID (Foreign Key)

Relationship:

- Each student belongs to one department.
- Students can enroll in multiple courses.

---

**Faculty**

Represents teachers working in departments.

Attributes:

- Faculty_ID (Primary Key)
- Name
- Designation
- Email
- Department_ID (Foreign Key)

Relationship:

- One faculty member teaches multiple courses.

---

**Course**

Represents subjects offered in departments.

Attributes:

- Course_ID (Primary Key)
- Course_Name
- Credits
- Department_ID (Foreign Key)
- Faculty_ID (Foreign Key)

Relationship:

- Many students can enroll in the same course.

---

Enrollment

Acts as a bridge table between Student and Course.

Attributes:

- Student_ID (Primary Key, Foreign Key)
- Course_ID (Primary Key, Foreign Key)
- Semester
- Grade

Purpose:

- Resolves the many-to-many relationship between Student and Course.

---

**Cardinality**

Department → Student : 1 to Many
Department → Faculty : 1 to Many
Department → Course : 1 to Many
Faculty → Course : 1 to Many
Student → Course : Many to Many

---

**Database Schema**

The following tables are created in SQL:

- Department
- Student
- Faculty
- Course
- Enrollment

Keys used:

Primary Keys
Foreign Keys
Composite Key in Enrollment table

---

Files Included

ER_Diagram.png
SQL_Tables.sql
README.md

---

**Conclusion**

This project demonstrates how real-world systems can be converted into a structured database design using ER diagrams and SQL.
It ensures proper relationships, avoids redundancy, and maintains data integrity.

---


Database Lab Assignment
College Management Database
