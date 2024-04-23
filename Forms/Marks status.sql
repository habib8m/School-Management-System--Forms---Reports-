
DECLARE
    v_grade_point NUMBER;
BEGIN
    SELECT GRADE_POINT
    INTO v_grade_point
    FROM MARKSHEETS_D
    WHERE MARKSHEET_M_ID = :MARKSHEETS_M.MARKSHEET_M_ID
    AND MARKSHEET_D_ID = :MARKSHEETS_D.MARKSHEET_D_ID; 
    IF v_grade_point = 0 THEN
        :MARKSHEETS_M.STATUS := 'Fail';
    ELSE
        :MARKSHEETS_M.STATUS := 'Pass';
    END IF;
END;


