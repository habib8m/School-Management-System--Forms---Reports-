
--when_new_form_instance trigger--

set_item_property('EXPENCE', enabled, property_false);

begin
	IF :global.V_USER_ROLE_ID  = 1010 THEN
	set_item_property('CTRL_BLOCK.UPD_BTN', visible, property_false);
	set_item_property('CTRL_BLOCK.ADD_SCHOOL', visible, property_false);
END IF;
END;

if :admission.class_id in (6, 7, 8) then
   set_item_property(':admission.SUBJECT_GROUP', enabled, property_false);
end if;
