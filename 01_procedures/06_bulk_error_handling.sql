CREATE OR REPLACE PROCEDURE bulk_update_scores
IS
    TYPE id_table IS TABLE OF enrollments.enrollment_id%TYPE;
    TYPE score_table IS TABLE OF enrollments.score%TYPE;

    l_ids id_table;
    l_scores score_table;
BEGIN
    SELECT enrollment_id, score
    BULK COLLECT INTO l_ids, l_scores
    FROM enrollments
    WHERE score IS NOT NULL;

    FORALL i IN 1 .. l_ids.COUNT SAVE EXCEPTIONS
        UPDATE enrollments
        SET grade = get_letter_grade(l_scores(i))
        WHERE enrollment_id = l_ids(i);

    DBMS_OUTPUT.PUT_LINE('Rows processed: ' || SQL%ROWCOUNT);

EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE = -24381 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Bulk operation completed with some errors.'
            );
        ELSE
            RAISE;
        END IF;
END;
/
