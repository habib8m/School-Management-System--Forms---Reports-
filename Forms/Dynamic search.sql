
IF :CONTROL_BLOCK.SEARCH_LIST1 = 0 THEN
	
	SET_BLOCK_PROPERTY('STUDENTS', ONETIME_WHERE,'');
	GO_BLOCK('STUDENTS');
	EXECUTE_QUERY(all_records);
	
ELSIF :CONTROL_BLOCK.SEARCH_LIST1 = 1 THEN
	
	SET_BLOCK_PROPERTY('STUDENTS', ONETIME_WHERE,
	'student_id = :CONTROL_BLOCK.SEARCH2');
	GO_BLOCK('STUDENTS');
	EXECUTE_QUERY(all_records);
	
ELSIF :CONTROL_BLOCK.SEARCH_LIST1 = 2 THEN
	
	SET_BLOCK_PROPERTY('STUDENTS', ONETIME_WHERE,
	'UPPER(FIRST_NAME) LIKE'||'''%'||UPPER(:CONTROL_BLOCK.SEARCH2)||'%''');
	GO_BLOCK('STUDENTS');
	EXECUTE_QUERY(all_records);
	end if;

--employees--

IF :CONTROL_BLOCK.SEARCH_LIST = 0 THEN
	
	SET_BLOCK_PROPERTY('EMPLOYEES', ONETIME_WHERE,'');
	GO_BLOCK('EMPLOYEES');
	EXECUTE_QUERY(all_records);
	
ELSIF :CONTROL_BLOCK.SEARCH_LIST = 1 THEN
	
	SET_BLOCK_PROPERTY('EMPLOYEES', ONETIME_WHERE,
	'EMPLOYEE_ID = :CONTROL_BLOCK.SEARCH');
	GO_BLOCK('EMPLOYEES');
	EXECUTE_QUERY(all_records);
	
ELSIF :CONTROL_BLOCK.SEARCH_LIST = 2 THEN
	
	SET_BLOCK_PROPERTY('EMPLOYEES', ONETIME_WHERE,
	'UPPER(FIRST_NAME) LIKE'||'''%'||UPPER(:CONTROL_BLOCK.SEARCH)||'%''');
	GO_BLOCK('EMPLOYEES');
	EXECUTE_QUERY(all_records);
	end if;


