
--Image Item Code--

--WHEN-NEW-FORM-INSTANCE trigger code--

:GLOBAL.IS_BEAN_REGISTER := 'false';

--WHEN-BUTTON-PRESSED trigger code--


IF :GLOBAL.IS_BEAN_REGISTER = 'false' THEN
	FBean.Register_Bean('EMP.IMG_PICKER', 1, 'oracle.forms.fd.GetImageFileName');

	:GLOBAL.IS_BEAN_REGISTER := 'true';
END IF;

:EMP.IMG_LINK := FBean.Invoke_char('EMP.IMG_PICKER', 1, 'GetFile', '"BROWSE", "C:\Users\ahsan\Downloads\"');

read_image_file(:EMP.IMG_LINK,'JPG','EMP.EMP_IMG');