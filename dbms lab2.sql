-- Department Table
CREATE TABLE Department(
    DeptID INT NOT NULL,
    DeptName VARCHAR(80) NOT NULL,
    OfficeLocation VARCHAR(120),
    CONSTRAINT PK_Department PRIMARY KEY (DeptID)
);

-- Student Table
CREATE TABLE Student(
    StudentID INT NOT NULL,
    StudentName VARCHAR(80),
    DOB DATE,
    Gender VARCHAR(10),
    ContactNo VARCHAR(15),
    DeptID INT,
    CONSTRAINT PK_Student PRIMARY KEY (StudentID),
    CONSTRAINT FK_Student_Department 
        FOREIGN KEY (DeptID) 
        REFERENCES Department(DeptID)
);

-- Faculty Table
CREATE TABLE Faculty(
    FacultyID INT NOT NULL,
    FacultyName VARCHAR(80),
    Designation VARCHAR(50),
    Email VARCHAR(100),
    DeptID INT,
    CONSTRAINT PK_Faculty PRIMARY KEY (FacultyID),
    CONSTRAINT FK_Faculty_Department 
        FOREIGN KEY (DeptID)
        REFERENCES Department(DeptID)
);

-- Course Table
CREATE TABLE Course(
    CourseID INT NOT NULL,
    CourseTitle VARCHAR(100),
    Credits INT,
    DeptID INT,
    FacultyID INT,
    CONSTRAINT PK_Course PRIMARY KEY (CourseID),
    CONSTRAINT FK_Course_Department 
        FOREIGN KEY (DeptID) 
        REFERENCES Department(DeptID),
    CONSTRAINT FK_Course_Faculty 
        FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

-- Enrollment Table
CREATE TABLE Enrollment(
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(20),
    Grade VARCHAR(5),
    CONSTRAINT PK_Enrollment PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT FK_Enroll_Student 
        FOREIGN KEY (StudentID) 
        REFERENCES Student(StudentID),
    CONSTRAINT FK_Enroll_Course 
        FOREIGN KEY (CourseID) 
        REFERENCES Course(CourseID)
);