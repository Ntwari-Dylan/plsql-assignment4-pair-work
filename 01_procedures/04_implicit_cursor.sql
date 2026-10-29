CREATE OR REPLACE PROCEDURE update_student_status (
    p_student_id IN students.student_id%TYPE,
    p_new_status IN students.status%TYPE
)
IS
BEGIN
    UPDATE students
    SET status = p_new_status
    WHERE student_id = p_student_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No student found with that ID.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Rows updated: ' || SQL%ROWCOUNT);
    END IF;
END;
/
