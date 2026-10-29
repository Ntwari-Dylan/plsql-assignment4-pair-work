CREATE OR REPLACE PROCEDURE bulk_update_grades
IS
    TYPE enrollment_id_table IS TABLE OF enrollments.enrollment_id%TYPE;
    TYPE score_table IS TABLE OF enrollments.score%TYPE;

    l_ids enrollment_id_table;
    l_scores score_table;
BEGIN
    SELECT enrollment_id, score
    BULK COLLECT INTO l_ids, l_scores
    FROM enrollments
    WHERE score IS NOT NULL;

    FORALL i IN 1 .. l_ids.COUNT
        UPDATE enrollments
        SET grade = get_letter_grade(l_scores(i))
        WHERE enrollment_id = l_ids(i);

    DBMS_OUTPUT.PUT_LINE(
        'Grades updated: ' || SQL%ROWCOUNT
    );

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        RAISE;
END;
/
