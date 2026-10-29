CREATE OR REPLACE PROCEDURE show_student_record (
    p_student_id IN students.student_id%TYPE
)
IS
    TYPE student_record_type IS RECORD (
        student_id students.student_id%TYPE,
        full_name students.full_name%TYPE,
        email students.email%TYPE,
        status students.status%TYPE
    );

    l_student student_record_type;
BEGIN
    SELECT student_id, full_name, email, status
    INTO l_student
    FROM students
    WHERE student_id = p_student_id;

    DBMS_OUTPUT.PUT_LINE('Student: ' || l_student.full_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || l_student.email);
    DBMS_OUTPUT.PUT_LINE('Status: ' || l_student.status);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found.');
END;
/
