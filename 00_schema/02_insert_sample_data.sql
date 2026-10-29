
-- Sample data for the Student Registration and Grading System

INSERT ALL
    INTO students VALUES (1, 'Alice Uwimana', 'alice@example.com', 'ACTIVE')
    INTO students VALUES (2, 'Brian Niyonzima', 'brian@example.com', 'ACTIVE')
    INTO students VALUES (3, 'Chantal Mukamana', 'chantal@example.com', 'ACTIVE')
    INTO students VALUES (4, 'David Habimana', 'david@example.com', 'SUSPENDED')
    INTO students VALUES (5, 'Eric Mugisha', 'eric@example.com', 'ACTIVE')
    INTO students VALUES (6, 'Faith Ingabire', 'faith@example.com', 'ACTIVE')
    INTO students VALUES (7, 'Grace Uwase', 'grace@example.com', 'ACTIVE')
    INTO students VALUES (8, 'Henry Mutesi', 'henry@example.com', 'ACTIVE')
SELECT 1 FROM dual;

INSERT ALL
    INTO courses VALUES (101, 'Database Systems', 4)
    INTO courses VALUES (102, 'Software Engineering', 3)
    INTO courses VALUES (103, 'Computer Networks', 3)
    INTO courses VALUES (104, 'Programming in C', 4)
SELECT 1 FROM dual;

INSERT ALL
    INTO enrollments VALUES (1001, 1, 101, 85, NULL)
    INTO enrollments VALUES (1002, 1, 102, 78, NULL)
    INTO enrollments VALUES (1003, 1, 103, 92, NULL)
    INTO enrollments VALUES (1004, 2, 101, 67, NULL)
    INTO enrollments VALUES (1005, 2, 102, 88, NULL)
    INTO enrollments VALUES (1006, 2, 104, 74, NULL)
    INTO enrollments VALUES (1007, 3, 101, 95, NULL)
    INTO enrollments VALUES (1008, 3, 103, 81, NULL)
    INTO enrollments VALUES (1009, 4, 101, 60, NULL)
    INTO enrollments VALUES (1010, 5, 102, 90, NULL)
    INTO enrollments VALUES (1011, 5, 104, 83, NULL)
    INTO enrollments VALUES (1012, 6, 101, 76, NULL)
    INTO enrollments VALUES (1013, 6, 102, NULL, NULL)
    INTO enrollments VALUES (1014, 7, 103, 69, NULL)
    INTO enrollments VALUES (1015, 7, 104, NULL, NULL)
    INTO enrollments VALUES (1016, 8, 101, 87, NULL)
    INTO enrollments VALUES (1017, 8, 102, 73, NULL)
SELECT 1 FROM dual;

COMMIT;
