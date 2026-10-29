# Testing Documentation

## 1. Purpose
This document records the tests performed on the Student Registration and Grading System.

## 2. Function Tests
- GET_LETTER_GRADE(85) should return A.
- GET_LETTER_GRADE(74) should return B.
- GET_LETTER_GRADE(45) should return F.
- GET_LETTER_GRADE(NULL) should return NULL.
- CALC_STUDENT_GPA(1) should return 85.
- COUNT_STUDENT_ENROLLMENTS(1) should return 3.

## 3. Database Record Counts
- Students: 8.
- Courses: 4.
- Enrollments: 17.

## 4. Exception Tests
- Invalid student IDs were tested for the student information, average score, and enrollment count routines.
- An invalid score of 120 was tested with GET_LETTER_GRADE and raised an application error.

## 5. Result
The functions and procedures were executed in Oracle SQL*Plus. The expected results should be verified against the actual SQL*Plus output.
