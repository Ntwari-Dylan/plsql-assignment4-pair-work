# Student Registration and Grading System

**Course:** INSY 8311 — PL/SQL Assignment IV

## Group Members

| No. | Student Name | Student ID |
|---|---|---|
| 1 | Ishimwe Ntwari Dylan | 29764 |
| 2 | Loko Ezonsou Eldad | 28201 |

**Project Type:** Pair Work
**Database:** Oracle Database  
**Programming Language:** PL/SQL

## 1. Project Overview

The Student Registration and Grading System is a database project developed using Oracle SQL and PL/SQL. Its purpose is to manage student records, course information, student enrollments, assessment scores, and academic grades in an organized way.

The system demonstrates how a database can store related information, process student results, automate repetitive tasks, and handle errors. It provides a foundation for an institution or training centre that wants to manage student academic information more efficiently.

## 2. Project Objectives

The main objectives of this project are to:

- Store and manage student information.
- Maintain course details and credit values.
- Record student enrollments and assessment scores.
- Calculate letter grades based on student scores.
- Calculate a student's average score.
- Count the courses in which a student is enrolled.
- Retrieve student information using PL/SQL procedures.
- Process multiple records efficiently using bulk operations.
- Handle invalid student IDs and other errors appropriately.

## 3. Database Design

The database contains three main tables.

### STUDENTS

Stores student identification numbers, full names, email addresses, and account status. Student status can be either ACTIVE or SUSPENDED.

### COURSES

Stores course identification numbers, course titles, and credit values.

### ENROLLMENTS

Connects students to the courses in which they are enrolled. It stores enrollment IDs, student IDs, course IDs, scores, and letter grades.

Primary keys identify individual records, while foreign keys maintain relationships between students, courses, and enrollments. Constraints help prevent duplicate student-course enrollments and invalid score or credit values.

## 4. Work Completed

### Database creation and sample data

- Created the STUDENTS, COURSES, and ENROLLMENTS tables.
- Added primary keys, foreign keys, unique constraints, and validation checks.
- Inserted sample records for eight students, four courses, and seventeen enrollments.

### PL/SQL functions

**GET_LETTER_GRADE**

Converts a numeric score into a letter grade. It handles NULL scores and raises an application error when a score falls outside the allowed range of 0 to 100.

**CALC_STUDENT_GPA**

Calculates the average recorded score for a student and rounds the result to two decimal places. It also handles a student ID that does not exist.

**COUNT_STUDENT_ENROLLMENTS**

Counts the enrollment records associated with a student and raises an application error when the student ID does not exist.

### PL/SQL procedures

**GET_STUDENT_INFO**

Retrieves and displays a student's information using `%ROWTYPE`. It handles cases where the requested student cannot be found.

**LIST_STUDENTS_CURSOR**

Uses an explicit cursor to retrieve and display student information one record at a time.

**BULK_UPDATE_GRADES**

Uses collections, `BULK COLLECT`, and `FORALL` to retrieve and update multiple enrollment grades efficiently.

**UPDATE_STUDENT_STATUS**

Updates a student's status and uses the implicit cursor attribute `SQL%ROWCOUNT` to report whether a record was updated.

**SHOW_STUDENT_RECORD**

Demonstrates a user-defined PL/SQL record that stores selected student fields.

**BULK_UPDATE_SCORES**

Demonstrates bulk processing with `FORALL ... SAVE EXCEPTIONS` to support handling individual errors during bulk DML operations.

## 5. PL/SQL Concepts Demonstrated

This project demonstrates the following concepts:

- Stored procedures and stored functions.
- User-defined records using `RECORD`.
- Table-based record declarations using `%ROWTYPE`.
- Column-based data type declarations using `%TYPE`.
- Explicit cursors with `OPEN`, `FETCH`, `CLOSE`, and `%NOTFOUND`.
- Implicit cursor attributes, including `SQL%ROWCOUNT`.
- Collections and bulk processing with `BULK COLLECT` and `FORALL`.
- Bulk exception handling using `SAVE EXCEPTIONS`.
- Exception handling using `NO_DATA_FOUND` and `RAISE_APPLICATION_ERROR`.
- Conditional logic, loops, and SQL queries within PL/SQL blocks.

## 6. Testing and Results

The implemented functions and procedures were tested in SQL*Plus.

Tests performed included:

- Converting valid scores into letter grades.
- Handling NULL and out-of-range scores.
- Calculating a student's average score.
- Handling nonexistent student IDs.
- Retrieving and displaying student information.
- Listing students using an explicit cursor.
- Updating grades for enrollments with recorded scores.
- Confirming that fifteen enrollments with non-NULL scores were processed by the bulk update.
- Testing student status updates for existing and nonexistent IDs.
- Counting student enrollments.

Screenshots of selected successful executions are stored in the `screenshots/` directory.

## 7. Business Usefulness

This system could be useful to schools, colleges, universities, and professional training centres that need to maintain student academic records.

### Improved record management

Student, course, and enrollment information is stored in related tables rather than separate, disconnected records. This can make information easier to retrieve and maintain.

### Faster grading

The grade function applies the same grading rules consistently. Bulk processing can update grades for many enrollments without requiring each record to be updated manually.

### Better academic reporting

The average-score function and enrollment-count function can support reports about student performance and participation.

### Reduced data-entry errors

Primary keys, foreign keys, unique constraints, and validation checks help prevent duplicate enrollments, invalid scores, and references to nonexistent students or courses.

### More efficient administration

Procedures automate repetitive database tasks, while exception handling provides clearer responses when a requested student does not exist or an invalid score is supplied.

### Room for future growth

The project can be extended with student registration forms, lecturer accounts, attendance tracking, tuition-payment records, semester management, transcripts, and user access controls.

These benefits describe potential uses of the project. A complete production system would still require additional security, access control, testing, backup procedures, and a user interface.

## 8. Project Structure

```text
plsql-assignment4/
├── 00_schema/
│   ├── 01_create_tables.sql
│   └── 02_insert_sample_data.sql
├── 01_procedures/
│   ├── 01_get_student_info.sql
│   ├── 02_list_students_cursor.sql
│   ├── 03_bulk_update_grades.sql
│   ├── 04_implicit_cursor.sql
│   ├── 05_student_record.sql
│   └── 06_bulk_error_handling.sql
├── 02_functions/
│   ├── 01_get_letter_grade.sql
│   ├── 02_calc_student_gpa.sql
│   └── 03_count_enrollments.sql
├── 03_tests/
├── screenshots/
└── docs/
```

## 9. How to Run the Project

1. Connect to the Oracle assignment schema using SQL*Plus.
2. Run the table-creation script in a fresh schema.
3. Run the sample-data script only once in that schema.
4. Compile the function and procedure scripts.
5. Execute the test commands and review the output.
6. Review the screenshots and documentation.

## 10. Limitations and Future Improvements

The current project uses sample student and course data and is operated through SQL*Plus. It does not yet include a graphical user interface, authentication, role-based access control, semester-specific academic records, or automated transcript generation.

Future development could add a web-based interface, secure user accounts, more detailed academic reports, and additional validation and auditing features.
## 11. Conclusion
The Student Registration and Grading System demonstrates how Oracle SQL and PL/SQL can be used to manage student records, enrollments, and academic results. Through database constraints, functions, procedures, cursors, collections, bulk operations, and exception handling, the project provides a foundation for more efficient academic record management and demonstrates practical database programming skills.
