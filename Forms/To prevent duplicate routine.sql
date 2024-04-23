
--to prevent duplicate class routine insert--

create or replace TRIGGER prevent_duplicate_insert
BEFORE INSERT ON ROUTINE_DETAIL
FOR EACH ROW
declare
 v_dummy number;
BEGIN
        SELECT 1 into v_dummy
        FROM ROUTINE_DETAIL
        WHERE to_char(START_TIME, 'hh:mi am') = to_char(:NEW.START_TIME, 'hh:mi am')
        AND to_char(END_TIME, 'hh:mi am') = to_char(:NEW.END_TIME, 'hh:mi am');

        if sql%found then
        RAISE_APPLICATION_ERROR(-20001, 'Duplicate entry for class, teacher, and time.');
        end if;
END;

----------------------------

CREATE OR REPLACE FUNCTION unique_routine
			(p_day_of_week IN VARCHAR2, 
			p_classroom_id IN NUMBER, 
			p_start_time IN DATE, 
			p_end_time IN DATE) 
			RETURN BOOLEAN IS
  	v_count NUMBER;
BEGIN
  	SELECT COUNT(*)
  	INTO v_count
  	FROM ROUTINE_DETAIL
  	WHERE DAY_OF_WEEK = p_day_of_week
  	AND CLASSROOM_ID = p_classroom_id
  	AND START_TIME = p_start_time
  	AND END_TIME = p_end_time;

  IF v_count = 0 THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END unique_routine;

----------------------------

DECLARE
  v_unique BOOLEAN;
BEGIN
  v_unique := unique_routine(:routine_detail.day_of_week, 
			     :routine_detail.classroom_id, 
			     :routine_detail.start_time, 
			     :routine_detail.end_time);

  
IF v_unique = FALSE THEN
    MESSAGE('Non-unique combination of day, classroom, and time.');
    RAISE FORM_TRIGGER_FAILURE;
ELSE
    INSERT INTO ROUTINE_DETAIL (ROUTINE_M_ID, 
				DAY_OF_WEEK, 
				START_TIME, 
				END_TIME, 
				SUBJECT_ID, 
				TEACHER_ID, 
				CLASSROOM_ID)
    VALUES(:routine_master.ROUTINE_M_ID, 
	  :routine_detail.day_of_week, 
	  :routine_detail.start_time, 
	  :routine_detail.end_time, 
	  :routine_detail.subject_id, 
	  :routine_detail.teacher_id, 
	  :routine_detail.classroom_id);
    COMMIT;
  END IF;
END;

----------------

CREATE OR REPLACE FUNCTION no_overlap
    (p_day_of_week VARCHAR2,
     P_classroom_id NUMBER,
     P_start_time DATE,
     P_end_time DATE)
     RETURN BOOLEAN IS
     
BEGIN
FOR rec IN
    (SELECT 1
    FROM ROUTINE_DETAIL
    WHERE DAY_OF_WEEK = p_day_of_week
    AND CLASSROOM_ID = P_classroom_id
    AND P_start_time < END_TIME
    AND P_end_time > START_TIME) LOOP
    RETURN FALSE;
    END LOOP;
    
RETURN FALSE;
END no_overlap;

ALTER TABLE ROUTINE_DETAIL
ADD CONSTRAINT check_class_schedule UNIQUE (DAY_OF_WEEK, CLASSROOM_ID, START_TIME, END_TIME)

---------------------------
--by sir block level pre insert trigger--

DECLARE
	V_DAY_OF_WEEK 	ROUTINE_DETAIL.DAY_OF_WEEK%TYPE;
	V_CLASSROOM_ID 	ROUTINE_DETAIL.CLASSROOM_ID%TYPE;
	V_START_TIME 		ROUTINE_DETAIL.START_TIME%TYPE;
	V_END_TIME			ROUTINE_DETAIL.END_TIME%TYPE;
	
BEGIN
	SELECT DAY_OF_WEEK, CLASSROOM_ID, START_TIME, END_TIME
	INTO V_DAY_OF_WEEK, V_CLASSROOM_ID, V_START_TIME, V_END_TIME
	FROM ROUTINE_DETAIL
	WHERE DAY_OF_WEEK = :ROUTINE_DETAIL.DAY_OF_WEEK
	and CLASSROOM_ID = :ROUTINE_DETAIL.CLASSROOM_ID
	and START_TIME = :ROUTINE_DETAIL.START_TIME
	and END_TIME = :ROUTINE_DETAIL.END_TIME
	and (START_TIME >= :ROUTINE_DETAIL.START_TIME or START_TIME <= :ROUTINE_DETAIL.END_TIME)
	and (END_TIME >= :ROUTINE_DETAIL.START_TIME or END_TIME <= :ROUTINE_DETAIL.END_TIME);
	
	IF SQL%FOUND THEN 
		MESSAGE('Routine already exits!');
		raise form_trigger_failure;
	END IF;
	
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
		NULL;
END;
	










