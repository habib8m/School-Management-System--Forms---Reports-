
PROCEDURE marksheet IS
  CURSOR marksheet_cur IS
  SELECT SUBJECT_NAME
  FROM SUBJECTS
  WHERE SUBJECT_ID IN (SELECT SUBJECT_ID FROM CLASS_SUBJECTS
                    WHERE CLASS_ID = :MARKSHEETS_M.CLASS_ID);

BEGIN
	go_block ('MARKSHEETS_D');
	clear_block (no_validate);
	FOR marksheet_rec IN marksheet_cur LOOP
	   :MARKSHEETS_D.SUBJECT_NAME := marksheet_rec.SUBJECT_NAME;
	   NEXT_RECORD;
	END LOOP;
 FIRST_RECORD;
END;