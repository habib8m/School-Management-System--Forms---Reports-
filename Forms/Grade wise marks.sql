
--Marks condition--

if :MARKSHEETS_D.GRADE = 'A+' then
	display_item ('MARKSHEETS_D.GRADE', 'GRADE_A_VISUAL');
	
	elsif :MARKSHEETS_D.GRADE = 'F' then
	display_item ('MARKSHEETS_D.GRADE', 'GRADE_F_VISUAL');
	end if;



if   :MARKSHEETS_D.GRADE = 'A+' then
     :MARKSHEETS_D.GRADE_POINT := 5;
   
elsif  :MARKSHEETS_D.GRADE = 'A' then
       :MARKSHEETS_D.GRADE_POINT := 4;
       
elsif  :MARKSHEETS_D.GRADE = 'A-' then
       :MARKSHEETS_D.GRADE_POINT := 3.5;
       
elsif  :MARKSHEETS_D.GRADE = 'B' then
       :MARKSHEETS_D.GRADE_POINT := 3;
       
elsif  :MARKSHEETS_D.GRADE = 'C' then
       :MARKSHEETS_D.GRADE_POINT := 2;
       
elsif  :MARKSHEETS_D.GRADE = 'D' then
       :MARKSHEETS_D.GRADE_POINT := 1;
       
elsif  :MARKSHEETS_D.GRADE = 'F' then
       :MARKSHEETS_D.GRADE_POINT := 0;

end if;