
-- Student Registration and Grading System
-- Assignment IV: Records and Collections in Oracle PL/SQL

CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    status VARCHAR2(10) DEFAULT 'ACTIVE'
        CHECK (status IN ('ACTIVE', 'SUSPENDED'))
);

CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    credits NUMBER CHECK (credits > 0)
);

CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER NOT NULL REFERENCES students(student_id),
    course_id NUMBER NOT NULL REFERENCES courses(course_id),
    score NUMBER CHECK (score BETWEEN 0 AND 100),
    grade VARCHAR2(2),
    CONSTRAINT uq_enroll UNIQUE (student_id, course_id)
);
