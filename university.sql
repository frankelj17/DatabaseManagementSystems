CREATE DATABASE jfrankel_university;
USE jfrankel_university;

CREATE TABLE STUDENT
(
    Name CHAR(10) NOT NULL,
    Student_number INT(3) NOT NULL,
    Class INT(1) NOT NULL,
    Major CHAR(2),
    PRIMARY KEY (Student_number)
);

CREATE TABLE COURSE
(
    Course_name CHAR(30) NOT NULL,
    Course_number VARCHAR(10) NOT NULL,
    Credit_hours INT(1) NOT NULL,
    Department CHAR(20) NOT NULL,
    PRIMARY KEY (Course_number)
);

CREATE TABLE PREREQUISITE
(
    Course_number VARCHAR(10) NOT NULL,
    Prerequisite_number VARCHAR(10) NOT NULL,
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number)
);

CREATE TABLE SECTION
(
    Section_identifier INT(3) NOT NULL,
    Course_number VARCHAR(10) NOT NULL,
    Semester CHAR(6) NOT NULL,
    Year INT(2) NOT NULL,
    Instructor CHAR(20) NOT NULL,
    PRIMARY KEY (Section_identifier),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number)
);

CREATE TABLE GRADE_REPORT
(
    Student_number INT(3) NOT NULL,
    Section_identifier INT(3) NOT NULL,
    Grade CHAR(2) NOT NULL,
    FOREIGN KEY (Student_number) REFERENCES STUDENT(Student_number),
    FOREIGN KEY (Section_identifier) REFERENCES SECTION(Section_identifier)
);

INSERT INTO STUDENT VALUES
    ('Smith', '17', '1', 'CS'),
    ('Brown', '8', '2', 'CS')

INSERT INTO COURSE VALUES
    ('Intro to Computer Science', 'CS1310', '4', 'CS'),
    ('Data Structures', 'CS3320', '4', 'CS'),
    ('Discrete Mathematics', 'MATH2410', '3', 'MATH'),
    ('Database', 'CS3380', '3', 'CS')

INSERT INTO GRADE_REPORT VALUES
    ('17', '112', 'B'),
    ('17', '119', 'C'),
    ('8', '85', 'A'),
    ('8', '92', 'A'),
    ('8', '102', 'B'),
    ('8', '135', 'A')

INSERT INTO SECTION VALUES
    ('85', 'MATH2410', 'Fall', '07', 'King'),
    ('92', 'CS1310', 'Fall', '07', 'Anderson'),
    ('102', 'CS3320', 'Spring', '08', 'Knuth'),
    ('112', 'MATH2410', 'Fall', '08', 'Chang'),
    ('119', 'CS1310', 'Fall', '08', 'Anderson'),
    ('135', 'CS3380', 'Fall', '08', 'Stone')

INSERT INTO PREREQUISITE VALUES
    ('CS3380', 'CS3320'),
    ('CS3380', 'MATH2410'),
    ('CS3320', 'CS1310')

SELECT Name
FROM STUDENT
WHERE Class=1 AND Major='CS';

SELECT DISTINCT Course_name
FROM COURSE, SECTION
WHERE SECTION.Course_number=COURSE.Course_number AND Instructor='Anderson';

SELECT Course_number, Semester, Year, Name
FROM STUDENT, SECTION, GRADE_REPORT
WHERE SECTION.Section_identifier=GRADE_REPORT.Section_identifier AND GRADE_REPORT.Student_number=STUDENT.Student_number AND Instructor='Anderson'
ORDER BY Year DESC, Course_number ASC;

SELECT Name, Course_name, COURSE.Course_number, Credit_hours, Semester, Year, Grade
FROM STUDENT, COURSE, SECTION, GRADE_REPORT
WHERE SECTION.Section_identifier=GRADE_REPORT.Section_identifier AND SECTION.Course_number=COURSE.Course_number AND GRADE_REPORT.Student_number=STUDENT.Student_number AND Class=2 AND Major='CS'