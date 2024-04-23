
--phone number unique value block level pre_insert trigger--
--pre insert trigger--

DECLARE
   v_value_to_check VARCHAR2(255);
BEGIN
   v_value_to_check := :employees.phone_no;

   SELECT COUNT(*)
   INTO :SYSTEM.MESSAGE_LEVEL
   FROM employees
   WHERE phone_no = v_value_to_check;

   IF :SYSTEM.MESSAGE_LEVEL > 0 THEN
      MESSAGE('Phone number already exists. Please enter a unique phone number.');
      MESSAGE('Phone number already exists. Please enter a unique phone number.');
      RAISE FORM_TRIGGER_FAILURE;
      
   else
 	 message (sqlerrm);
   END IF;

  EXCEPTION
   WHEN NO_DATA_FOUND THEN
   NULL;

END;
