
IF error_code = 41051 THEN
	MESSAGE ('You can''t insert here. Please click ADD STUDENT button');
	
ELSIF  error_code = 40200 THEN
	MESSAGE ('You can''t update here. Please click EDIT button');
	
ELSIF  error_code = 41049 THEN
	MESSAGE ('You can''t delete the record, You can change only status.');
	
ELSE
	NULL;
END IF;