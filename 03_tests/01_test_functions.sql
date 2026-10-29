SET SERVEROUTPUT ON;

PROMPT === TEST 1: GET_LETTER_GRADE ===
SELECT get_letter_grade(85) AS grade_A FROM dual;
SELECT get_letter_grade(74) AS grade_B FROM dual;
SELECT get_letter_grade(45) AS grade_F FROM dual;
SELECT get_letter_grade(NULL) AS null_grade FROM dual;

PROMPT === TEST 2: CALC_STUDENT_GPA ===
SELECT calc_student_gpa(1) AS student_average FROM dual;

PROMPT === TEST 3: COUNT_STUDENT_ENROLLMENTS ===
SELECT count_student_enrollments(1) AS enrollment_count FROM dual;

PROMPT === TEST 4: STUDENT AND ENROLLMENT COUNTS ===
SELECT COUNT(*) AS total_students FROM students;
SELECT COUNT(*) AS total_courses FROM courses;
SELECT COUNT(*) AS total_enrollments FROM enrollments;

PROMPT === TEST 5: CHECK ENROLLMENT GRADES ===
SELECT enrollment_id, student_id, course_id, score, grade
FROM enrollments
ORDER BY enrollment_id;

PROMPT === ALL BASIC TESTS COMPLETED ===
