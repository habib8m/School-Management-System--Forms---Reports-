
--when new form instance trigger--

declare
	v_student_id NUMBER;
begin
	select max(nvl(student_id, 0)) + 1 
	into v_student_id
	from students;
	:students.student_id := v_student_id;
end;


declare
	v_guardian_id NUMBER;
begin
	select max(nvl(GUARDIAN_ID, 0)) + 1 
	into 	v_guardian_id
	from GUARDIANS;
	:GUARDIANS.GUARDIAN_ID := v_guardian_id;
end;


declare
	v_admission_id NUMBER;
begin
	select max(nvl(ADMISSION_ID, 0)) + 1 
	into 		v_admission_id
	from ADMISSION;
	:ADMISSION.ADMISSION_ID := 	v_admission_id;
end;