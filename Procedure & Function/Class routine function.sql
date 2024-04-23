
function CF_1Formula return char is
v_c_name varchar2(80);
begin
  	select CLASS_NAME into v_c_name from class where class_id = :class_id;
  return v_c_name;
end;
