
PROCEDURE check_security IS
    V_USER_NAME       USERS.USER_NAME%TYPE;
    V_PASSWORD        USERS.PASSWORD%TYPE;
    V_USER_ROLE_ID    USERS.USER_ROLE_ID%TYPE;
    V_STATUS          USERS.STATUS%TYPE;

BEGIN

    SELECT USER_NAME, STATUS, PASSWORD, USER_ROLE_ID 
    INTO :global.V_USER_NAME, V_STATUS, V_PASSWORD, :global.V_USER_ROLE_ID 
    FROM USERS
    WHERE UPPER(USER_NAME) = UPPER(:LOGIN.USER_NAME);

       
       IF V_PASSWORD = :login.password AND :global.V_USER_ROLE_ID  IN (1000, 1010, 1020) AND V_STATUS = 'A' THEN
       	 call_form('D:\SMS_projects\Forms\HOME.fmx');
       	 
       	 ELSIF V_PASSWORD = :login.password AND :global.V_USER_ROLE_ID = 1030 AND V_STATUS = 'A' THEN
       	 call_form('D:\SMS_projects\Forms\HOME_STUDENT.fmx');
       	 
       	 
       :LOGIN.USER_NAME := NULL;
       :LOGIN.PASSWORD := NULL;
       :LOGIN.ERR_MSG := NULL;

    ELSIF :global.V_USER_ROLE_ID  IS NULL OR :global.V_USER_ROLE_ID  NOT IN (1000, 1010, 1020, 1030) THEN

       :LOGIN.ERR_MSG := 'Invalid User Type. Please enter correct user or contact With System Administrator';

    ELSIF V_STATUS != 'A' THEN

       :LOGIN.ERR_MSG := 'User not Active. Please enter correct user or contact With System Administrator';

    ELSIF V_PASSWORD != :LOGIN.PASSWORD THEN

       :LOGIN.ERR_MSG := 'Invalid Password. Please enter correct password or contact System Administrator.';

    ELSE

       NULL;

    END IF;

EXCEPTION

    WHEN no_data_found THEN
      :LOGIN.ERR_MSG := 'Please enter user name and password or contact System Administrator.';
      go_item('LOGIN.USER_NAME');
      NULL;

    WHEN OTHERS THEN
      message(sqlerrm);
      message(sqlerrm);
END;