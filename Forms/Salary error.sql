
if error_type = 'FRM' and (error_code = 40207 or error_code = 40209) then
	message ('Please, enter employees salary between 8000 to 99000');
	message ('Please, enter employees salary between 8000 to 99000');
else
	message (sqlerrm);
end if;
