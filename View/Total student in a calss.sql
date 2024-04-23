
CREATE OR REPLACE VIEW class_wise_total_student AS
SELECT A.class_id Class_id, C.class_name class_name, A.SECTION_ID SECTION_ID, 
        A.SUBJECT_GROUP , COUNT(S.student_id) Total_Student
FROM students S, admission A, class C
WHERE S.student_id = A.student_id
AND A.class_id = C.class_id
AND A.class_id IN (6, 7, 8, 9, 10)
GROUP BY C.class_name, A.class_id, A.SECTION_ID, A.SUBJECT_GROUP
ORDER BY 1;
