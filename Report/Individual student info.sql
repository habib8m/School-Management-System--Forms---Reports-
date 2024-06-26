
SELECT 
    STUDENTS.STUDENT_ID, 
    STUDENTS.FIRST_NAME || ' ' || STUDENTS.LAST_NAME AS "Student's Name", 
    STUDENTS.FATHER_NAME, 
    STUDENTS.MOTHER_NAME, 
    STUDENTS.GENDER, 
    STUDENTS.EMAIL, 
    STUDENTS.PHONE_NO, 
    STUDENTS.RELIGION, 
    STUDENTS.DATE_OF_BIRTH, 
    STUDENTS.BLOOD_GROUP, 
    STUDENTS.PRESENT_ADDRESS, 
    CLASS.CLASS_NAME, 
    NVL(SECTIONS.section_name, ADMISSION.subject_group) AS "Section or Group", 
    ADMISSION.ROLL_NO
FROM 
    STUDENTS, 
    CLASS, 
    ADMISSION, 
    ACADEMIC_YEARS,
    SECTIONS
WHERE 
    ADMISSION.STUDENT_ID = STUDENTS.STUDENT_ID
    AND ADMISSION.CLASS_ID = CLASS.CLASS_ID
    AND ADMISSION.ACADEMIC_YEAR_ID = ACADEMIC_YEARS.ACADEMIC_YEAR_ID
    AND ADMISSION.SECTION_ID = SECTIONS.SECTION_ID (+)
    AND STUDENTS.STUDENT_ID = :STUDENT_ID
    
    
