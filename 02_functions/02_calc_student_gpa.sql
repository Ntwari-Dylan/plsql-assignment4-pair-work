
CREATE OR REPLACE FUNCTION calc_student_gpa (
    p_student_id IN NUMBER
)
RETURN NUMBER
IS
    l_average NUMBER;
    l_student_id students.student_id%TYPE;
BEGIN
    -- Confirm that the student exists.
    SELECT student_id
    INTO l_student_id
    FROM students
    WHERE student_id = p_student_id;

    -- Calculate the average of scores that are not NULL.
    SELECT AVG(score)
    INTO l_average
    FROM enrollments
    WHERE student_id = p_student_id;

    RETURN ROUND(l_average, 2);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Student ID does not exist.'
        );
END;
/
