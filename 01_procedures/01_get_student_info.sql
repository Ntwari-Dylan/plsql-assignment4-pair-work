CREATE OR REPLACE PROCEDURE get_student_info (
    p_student_id IN students.student_id%TYPE
)
IS
    l_student students%ROWTYPE;
BEGIN
    SELECT *
    INTO l_student
    FROM students
    WHERE student_id = p_student_id;

    DBMS_OUTPUT.PUT_LINE('Student ID: ' || l_student.student_id);
    DBMS_OUTPUT.PUT_LINE('Full Name: ' || l_student.full_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || l_student.email);
    DBMS_OUTPUT.PUT_LINE('Status: ' || l_student.status);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No student found with that ID.');
END;
/
