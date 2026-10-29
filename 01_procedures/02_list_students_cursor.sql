CREATE OR REPLACE PROCEDURE list_students_cursor
IS
    CURSOR student_cursor IS
        SELECT student_id, full_name, status
        FROM students
        ORDER BY student_id;

    l_student_id students.student_id%TYPE;
    l_full_name students.full_name%TYPE;
    l_status students.status%TYPE;
BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO l_student_id, l_full_name, l_status;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            l_student_id || ' - ' ||
            l_full_name || ' - ' ||
            l_status
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
