
CREATE OR REPLACE FUNCTION get_letter_grade (
    p_score IN NUMBER
)
RETURN VARCHAR2
IS
BEGIN
    IF p_score IS NULL THEN
        RETURN NULL;
    ELSIF p_score < 0 OR p_score > 100 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Score must be between 0 and 100.'
        );
    ELSIF p_score >= 80 THEN
        RETURN 'A';
    ELSIF p_score >= 70 THEN
        RETURN 'B';
    ELSIF p_score >= 60 THEN
        RETURN 'C';
    ELSIF p_score >= 50 THEN
        RETURN 'D';
    ELSE
        RETURN 'F';
    END IF;
END;
/
