CREATE OR REPLACE FUNCTION count_student_enrollments (
    p_student_id IN students.student_id%TYPE
)
RETURN NUMBER
IS
    l_count NUMBER;
    l_student_id students.student_id%TYPE;
BEGIN
    SELECT student_id
    INTO l_student_id
    FROM students
    WHERE student_id = p_student_id;

    SELECT COUNT(*)
    INTO l_count
    FROM enrollments
    WHERE student_id = p_student_id;

    RETURN l_count;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Student ID does not exist.'
        );
END;
/
