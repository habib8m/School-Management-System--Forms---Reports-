

--insert into school table

INSERT INTO school (school_name, license_no, phone_no, email, founded_date, principal_name, school_type, address, website, status)
VALUES ('Ideal School and College', 'ABC56789', '01696325874', 'idealschool@gmail.com', '01-jan-1995', 'Prof. Abdul Mannan', 'Private', 'R.K Mission Dahaka-1203', 'sparkle.ac.bd', 'A');


--insert into jobs table

INSERT INTO jobs (job_id, job_title, min_sal, max_sal) VALUES ('PRIN', 'Principal', 25000, 70000);
INSERT INTO jobs (job_id, job_title, min_sal, max_sal) VALUES ('VP', 'Vice Principal', 25000, 70000);
INSERT INTO jobs (job_id, job_title, min_sal, max_sal) VALUES ('TCH', 'Teacher', 15000, 60000);
INSERT INTO jobs (job_id, job_title, min_sal, max_sal) VALUES ('REG', 'Registrar', 15000, 65000);
INSERT INTO jobs (job_id, job_title, min_sal, max_sal) VALUES ('AO', 'Account Officer', 14000, 50000);


--insert into employees table

INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Habib', 'Ullah', 'M', 'habib8m@gmail.com', '01630915481', '6001986258', 'Unmarried', 'B+', 'Islam', 'Full-Time', 50000, '01-jan-2019', 100, 'PRIN', 'A', 
'Teacher', 'Sparkle School', 'BBA', 2019, 3.52);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Mithun', 'Sarkar', 'M', 'mithun17@gmail.com', '01935478587', '5001986252', 'Married', 'B+', 'Islam', 'Full-Time', 50000, '01-JUN-2019', 
100, 'VP', 'A', 'Vice-Principle', 'Motijheel Ideal School', 'MA', 2006, 3.70);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Monjurul', 'Alam', 'M', 'monju16@gmail.com', '01725845673', '4001986299', 'Married', 'AB+', 'Islam', 'Full-Time', 40000, '01-MAR-2020', 
100, 'TCH', 'A', 'Teacher', 'Ramganj Govt. High School', 'BBA', 2015, 3.50);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Naiem', 'Hasan', 'M', 'naiem54@gmail.com', '01835478926', '3001986263', 'Single', 'AB-', 'Christian', 'Part-Time', 30000, '01-MAR-2022', 
100, 'TCH', 'A', 'Teacher', 'Lakshmipur Govt. High School', 'BS', 2019, 3.65);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Zulkar', 'Nayen', 'M', 'zulkar44@gmail.com', '01535478988', '2001986233', 'Single', 'O+', 'Muslim', 'Full-Time', 350000, '01-APR-2022', 
100, 'TCH', 'A', 'Teacher', 'Lakshmipur Govt. High School', 'BS', 2020, 3.40);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Mariam', 'Foraizy', 'F', 'maraim5@gmail.com', '01955478926', '1001986277', 'Single', 'O+', 'Muslim', 'Full-Time', 35000, '01-APR-2022', 
100, 'TCH', 'A', 'Teacher', 'Vikarun Nisa High School', 'BS', 2020, 3.50);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Momin', 'Ullah', 'M', 'momin98@gmail.com', '01568978948', '7001986202', 'Married', 'B+', 'Muslim', 'Full-Time', 32000, '01-JAN-2023', 
100, 'TCH', 'A', 'Teacher', 'Maniknagar High School','MBA', 2020, 3.90);


INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Mahmuda', 'Tajnin', 'F', 'tajnin22tec@gmail.com', '01569871524', '8001986206', 'Married', 'A+', 'Muslim', 'Full-Time', 35000, '01-JAN-2023', 
100, 'TCH', 'A', 'Teacher', 'Komolapur High School', 'BA', 2019, 3.30);

INSERT INTO employees (first_name, last_name, gender, email, phone_no, national_id, marital_status, blood_group, religion, 
employee_type, salary, hire_date, school_id, job_id, status, last_designation, last_institution, a_degree, graduation_year, cgpa)
VALUES ('Farzana', 'Haque', 'F', 'farzana378@gmail.com', '01528649187', '9001986205', 'Married', 'O-', 'Muslim', 'Full-Time', 36000, '01-FEB-2023', 
100, 'AO', 'A', 'account officer', 'Ideal School', 'BBA', 2018, 3.35);



--insert into employees attendance master table

INSERT INTO emp_at_m (at_m_id, at_date) VALUES(1, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(2, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(3, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(4, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(5, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(6, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(7, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(8, '09-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(9, '09-FEB-23');

INSERT INTO emp_at_m (at_m_id, at_date) VALUES(10, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(11, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(12, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(13, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(14, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(15, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(16, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(17, '10-FEB-23');
INSERT INTO emp_at_m (at_m_id, at_date) VALUES(18, '10-FEB-23');

--insert into employees attendance master table

INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 120, 1);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'A', 120, 2);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'L', 120, 3);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'A', 120, 4);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 125, 5);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 120, 6);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'A', 120, 7);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'L', 125, 8);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 120, 9);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 125, 1);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 120, 2);
INSERT INTO emp_at_d (at_d_id, status, employee_id, at_m_id)  VALUES (emp_at_d_id_pk_seq.NEXTVAL, 'P', 120, 3);



--insert into expense master table

INSERT INTO exp_master (exp_id, total_amount, exp_date, employee_id) VALUES (1, 240000,   '31-DEC-20',  140);
INSERT INTO exp_master (exp_id, total_amount, exp_date, employee_id) VALUES (2, 250500,   '31-DEC-21',   140);
INSERT INTO exp_master (exp_id, total_amount, exp_date, employee_id) VALUES (3, 249000,   '31-DEC-22',   140);
INSERT INTO exp_master (exp_id, total_amount, exp_date, employee_id) VALUES (4, 238500,   '31-DEC-23',   140);


--insert into expense catagory table

INSERT INTO exp_catagory (catagory_id, catagory_name) VALUES (500,  'Employees Salary');
INSERT INTO exp_catagory (catagory_id, catagory_name) VALUES (505,  'Training and Development');
INSERT INTO exp_catagory (catagory_id, catagory_name) VALUES (510,  'Building Rent');
INSERT INTO exp_catagory (catagory_id, catagory_name) VALUES (515,  'Electricity Bill');
INSERT INTO exp_catagory (catagory_id, catagory_name) VALUES (520,  'Marketing');


--insert into expense detail table

INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 180000, 1,  500);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 20000,  1,  505);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 25000,  1,  510);

INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 5000,   1,  515);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 10000,  1,  520);

INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 190000, 2,  500);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 22000,  2,  505);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 25000,  2,  510);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 5500,   2,  515);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 8000,   2,  520);

INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 195000, 3,  500);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 22000,  3,  505);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 25000,  3,  510);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 7000,   3,  515);

INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 190000, 4,  500);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 12000,  4,  505);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 25000,  4,  510);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 4500,   4,  515);
INSERT INTO exp_detail (exp_detail_id, amount, exp_id, catagory_id) VALUES (exp_detail_exp_detail_id_seq.NEXTVAL, 7000,   4,  520);


--insert into academic year table

INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2018', '31-DEC-2018', '2018', 'Complite');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2019', '31-DEC-2019', '2019', 'Complite');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2020', '31-DEC-2020', '2020', 'Complite');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2021', '31-DEC-2021', '2021', 'Complite');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2022', '31-DEC-2022', '2022', 'Complite');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2023', '31-DEC-2023', '2023', 'Active');
INSERT INTO academic_years (start_date, end_date, year_name, status) VALUES ('01-JAN-2024', '31-DEC-2024', '2024', 'Upcoming');


--insert into classroom table

INSERT INTO classrooms (room_number, capacity, location) VALUES (101, 50, 'Science Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (102, 60, 'Science Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (103, 50, 'Science Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (104, 50, 'Science Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (101, 50, 'Arts Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (102, 50, 'Arts Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (103, 50, 'Arts Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (103, 50, 'Commerce Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (103, 50, 'Commerce Building, Floor-01');
INSERT INTO classrooms (room_number, capacity, location) VALUES (103, 50, 'Commerce Building, Floor-01');


--insert into class table

INSERT INTO class (class_name, status, classroom_id) VALUES('Class Six', 'Y', 1);
INSERT INTO class (class_name, status, classroom_id) VALUES('Class Seven', 'Y', 2);
INSERT INTO class (class_name, status, classroom_id) VALUES('Class Eight', 'Y', 3);
INSERT INTO class (class_name, status, classroom_id) VALUES('Class Nine', 'Y', 4);
INSERT INTO class (class_name, status, classroom_id) VALUES('Class Ten', 'Y', 5);



--insert into students table

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5000, 'Towhidul', 'Islam', 'Shariful Islam', 'Saira Khatun', 'M', 'towhidul1@gmail.com', '01630915487', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Barishal', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5001, 'Rana', 'Hasan', 'Abul', 'Hasan', 'M', 'rana2@gmail.com', '01250915458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5002, 'Rakib', 'Hasan', 'Abul', 'Hasan', 'M', 'rakib3@gmail.com', '01360915458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5003, 'Saiful', 'Hasan', 'Abul', 'Hasan', 'M', 'saiful4@gmail.com', '01010915458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5004, 'Naim', 'Hasan', 'Abul', 'Hasan', 'M', 'naim5@gmail.com', '01880915458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5005, 'Ahad', 'Hasan', 'Abul', 'Hasan', 'M', 'ahad6@gmail.com', '01990915458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');


INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5006, 'Rafiq', 'Hasan', 'Abul', 'Hasan', 'M', 'rafiq7@gmail.com', '01557215458', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5007, 'Taslima', 'Hasan', 'Abul', 'Hasan', 'F', 'taslima8@gmail.com', '01450915425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5008, 'Sohana', 'Akhter', 'Abul', 'Hasan', 'F', 'taslima9@gmail.com', '01450906425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5009, 'Taslima', 'Hasan', 'Abul', 'Hasan', 'M', 'taslima10@gmail.com', '01450585425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5010, 'Ratul', 'Sarkar', 'Abul', 'Hasan', 'M', 'ratul11@gmail.com', '01450585645', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5011, 'Taslima', 'Hasan', 'Abul', 'Hasan', 'M', 'taslima12@gmail.com', '01450585425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5012, 'Jakir', 'kazi', 'Abul', 'Hasan', 'M', 'jakir13@gmail.com', '01450855425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');

INSERT INTO students (student_id, first_name, last_name, father_name, mother_name, gender, email, phone_no, religion, date_of_birth, 
blood_group, present_address, permanent_address, status) 
VALUES(5013, 'Firoz', 'Bhuyan', 'Abul', 'Hasan', 'M', 'firoz14@gmail.com', '01550255425', 'Islam', '01-FEB-2018',
'B+', 'Dhaka', 'Nokhali', 'A');



--insert into guardians table 

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Abdul Motin', 'Teacher', 'Father', '01569369845', 'matin1@gmail.com', 'Ramganj Lakshmipur', 'Ramganj Lakshmipur', 'A', 5000);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Anarul Haque', 'Banker', 'Brother', '01825669457', 'haque2@gmail.com', 'Motijheel Dahka', 'Khulna', 'A', 5001);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Zulfiqur Hasan', 'Software Engineer', 'Father', '01632125869', 'zulfiqur3@gmail.com', 'Maniknagar Dahka', 'Lakshmipur', 'A', 5002);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Aysa Begum', 'Lawyer', 'Mother', '01714525733', 'aisa4@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5003);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Mamun ur-Rashid', 'IT Specialist', 'Father', '01364525733', 'mamun5@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5004);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Saidul Haque', 'Enginier', 'Father', '01979369879', 'saidul66@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5005);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Abusyed Mia', 'System Analist', 'Father', '01889369879', 'mia7@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5006);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Najrul Hasan', 'Lawyer', 'Father', '01669369800', 'najrul8@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5007);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Mohammad Ullah', 'Lawyer', 'Father', '01639369892', 'mohammad9@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5008);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Zulakha Khatun', 'Lawyer', 'Mother', '01979369789', 'zulakha10@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5009);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Tanvir Mahmud', 'Lawyer', 'Father', '01899369369', 'tanvir11@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5010);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Fatima Begum', 'Housewife', 'Mother', '01811169891', 'fatima12@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5011);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Tanjin Lintha', 'Lawyer', 'Sister', '01539369837', 'lintha13@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5012);

INSERT INTO guardians (guardian_id, guardian_name, occupation, relationship, phone_no, email, present_address, permanent_address, status, student_id) 
VALUES(guardians_guardian_id_seq.NEXTVAL, 'Sraboni Akhter', 'Lawyer', 'Mother', '01759369845', 'sarboni14@gmail.com', 'Dhanmondi Dahka', 'Dhanmondi Dahka', 'A', 5013);


--insert into section talbe

INSERT INTO sections (section_name, status) VALUES ('A', 'A');
INSERT INTO sections (section_name, status) VALUES ('B', 'A');
INSERT INTO sections (section_name, status) VALUES ('C', 'A');
INSERT INTO sections (section_name, status) VALUES ('D', 'I');


--insert into subjects table
 
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(101, 'Bangla', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(109, 'Math', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(107, 'English', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(205, 'Finance', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(215, 'Accountion', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(203, 'Physics', 'A', 'Mandatory');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(262, 'Higher Math', 'A', 'Optional');
INSERT INTO subjects (subject_code, subject_name, status, mandatory) VALUES(270, 'Biology', 'A', 'Mandatory');


--insert into grades table

INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('A+', 80, 100);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('A', 70, 79);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('A-', 60, 69);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('B', 50, 59);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('C', 40, 49);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('D', 33, 39);
INSERT INTO grades (grade_name, min_marks, max_marks) VALUES('F', 0, 32);


--insert into admission table

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5000, 6, 1, 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5001, 6, 2, 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5002, 7, 1, 2, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5003, 7, 2, 2, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5004, 8, 1, 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5005, 8, 2, 1, 3);


INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5006, 9, 1, 'Science', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5007, 9, 2, 'Arts', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5008, 9, 3, 'Commerce', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5009, 9, 4, 'Science', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5010, 10, 1, 'Science', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5011, 10, 2, 'Arts', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5012, 10, 3, 'Commerce', 1, 3);

INSERT INTO admission (admission_id, status, admission_fees, student_id, class_id, roll_no, subject_group, section_id, academic_year_id) 
VALUES (admission_admission_id_seq.NEXTVAL, 'New', 1000, 5013, 10, 4, 'Science', 1, 3);


--insert into exams table

INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(1, 'First Term', 6, 1, 100, 110);
INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(2, 'First Term', 7, 2, 101, 115);
INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(3, 'First Term', 8, 1, 102, 120);
INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(4, 'Second Term', 8, 1, 103, 125);
INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(5, 'Second Term', 9, 1, 104, 130);
INSERT INTO exams (EXAM_ID, EXAM_NAME, CLASS_ID, SECTION_ID, SUBJECT_ID, EXAMINER_ID) VALUES(6, 'Second Term', 10, 1, 105, 135);


--insert into marksheets master table

INSERT INTO MARKSHEETS_M (MARKSHEET_M_ID, EXAM_ID, CLASS_ID, STUDENT_ID) VALUES(1, 1, 6, 5000);
INSERT INTO MARKSHEETS_M (MARKSHEET_M_ID, EXAM_ID, CLASS_ID, STUDENT_ID) VALUES(2, 2, 7, 5000);
INSERT INTO MARKSHEETS_M (MARKSHEET_M_ID, EXAM_ID, CLASS_ID, STUDENT_ID) VALUES(3, 3, 8, 5000);
INSERT INTO MARKSHEETS_M (MARKSHEET_M_ID, EXAM_ID, CLASS_ID, STUDENT_ID) VALUES(4, 4, 9, 5000);
INSERT INTO MARKSHEETS_M (MARKSHEET_M_ID, EXAM_ID, CLASS_ID, STUDENT_ID) VALUES(5, 5, 10, 5000);


--insert into marksheets detail table

INSERT INTO MARKSHEETS_D (MARKSHEET_D_ID, MARKSHEET_M_ID, SUBJECT_ID, MARKS, GRADE_ID) VALUES (marksheets_d_marksheet_d_id_seq.NEXTVAL, 1, 100, 91, 1);
INSERT INTO MARKSHEETS_D (MARKSHEET_D_ID, MARKSHEET_M_ID, SUBJECT_ID, MARKS, GRADE_ID) VALUES (marksheets_d_marksheet_d_id_seq.NEXTVAL, 2, 101, 85, 2);
INSERT INTO MARKSHEETS_D (MARKSHEET_D_ID, MARKSHEET_M_ID, SUBJECT_ID, MARKS, GRADE_ID) VALUES (marksheets_d_marksheet_d_id_seq.NEXTVAL, 3, 102, 75, 3);
INSERT INTO MARKSHEETS_D (MARKSHEET_D_ID, MARKSHEET_M_ID, SUBJECT_ID, MARKS, GRADE_ID) VALUES (marksheets_d_marksheet_d_id_seq.NEXTVAL, 4, 103, 66, 4);
INSERT INTO MARKSHEETS_D (MARKSHEET_D_ID, MARKSHEET_M_ID, SUBJECT_ID, MARKS, GRADE_ID) VALUES (marksheets_d_marksheet_d_id_seq.NEXTVAL, 5, 104, 57, 5);


--insert into class and subjects table

INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (6, 101, 115);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (6, 102, 120);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (6, 103, 125);

INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (7, 101, 115);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (7, 102, 120);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (7, 103, 125);

INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (8, 101, 115);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (8, 102, 120);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (8, 103, 125);

INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (9, 101, 115);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (9, 102, 120);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (9, 103, 125);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (9, 104, 130);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (9, 105, 135);

INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (10, 101, 115);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (10, 102, 120);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (10, 103, 125);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (10, 104, 130);
INSERT INTO class_subjects (class_id, subject_id, teacher_id) VALUES (10, 105, 135);


--insert into student attendance master table

INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (1, 6, 115);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (2, 6, 115);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (3, 7, 115);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (4, 7, 115);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (5, 8, 120);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (6, 8, 120);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (7, 9, 120);
INSERT INTO stu_at_master (master_at_id, class_id, teacher_id) VALUES (8, 9, 120);


--insert into student attendance detail table

INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 1, 5000);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 2, 5001);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 3, 5002);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 4, 5003);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 5, 5004);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 6, 5005);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 7, 5006);
INSERT INTO stu_at_detail (detail_at_id, status, master_at_id, student_id) VALUES (stu_at_detail_at_id_seq.NEXTVAL, 'P', 8, 5007);


--insert into income catagory table

INSERT INTO income_catagory (catagory_name) VALUES('Tution Fee');
INSERT INTO income_catagory (catagory_name) VALUES('Exam Fee');
INSERT INTO income_catagory (catagory_name) VALUES('Development Fee');


--insert into income master table

INSERT INTO income_m (income_m_id, employee_id, total_amount) VALUES (1, 140, 50000);
INSERT INTO income_m (income_m_id, employee_id, total_amount) VALUES (2, 140, 60000);
INSERT INTO income_m (income_m_id, employee_id, total_amount) VALUES (3, 140, 55000);
INSERT INTO income_m (income_m_id, employee_id, total_amount) VALUES (4, 140, 40000);
INSERT INTO income_m (income_m_id, employee_id, total_amount) VALUES (5, 140, 35000);




--insert into income detail table

INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 1, 5000, 1, 1000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 1, 5001, 1, 500);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 2, 5002, 2, 1500);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 2, 5003, 2, 1000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 3, 5004, 3, 2000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 3, 5005, 3, 1000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 1, 5006, 4, 500);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 1, 5007, 4, 1000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 1, 5008, 5, 2000);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 2, 5009, 5, 800);
INSERT INTO income_d(income_d_id, catagory_id, student_id, income_m_id, amount) VALUES (income_d_id_seq.NEXTVAL, 2, 5010, 5, 700);



--insert into user roles table

INSERT INTO user_roles (user_role_name, status) VALUES('Admin', 'A');
INSERT INTO user_roles (user_role_name, status) VALUES('Office staff', 'A');
INSERT INTO user_roles (user_role_name, status) VALUES('Teacher', 'A');
INSERT INTO user_roles (user_role_name, status) VALUES('Student', 'A');


--insert into users table

INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Shawon Sheikh',  '111',  'A',  100,  1000);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Rafiqul Islam',  '222',  'A',  105,  1010);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Asadul Haque',   '333',  'A',  110,  1010);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Naiem Hasan',    '444',  'A',  115,  1020);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Zulkar Nayen',   '555',  'A',  125,  1020);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Mariam Foraizy', '666',  'A',  130,  1020);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Momin Ullah',    '777',  'A',  135,  1020);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Mahmuda Tajnin', '888',  'A',  140,  1020);
INSERT INTO users (user_name, password, status, employee_id, user_role_id) VALUES('Farzana Haque',  '999',  'A',  120,  1010);

INSERT INTO users (user_name, password, status, student_id, user_role_id) VALUES('Atik Ajmee',    '122',  'A',  5000,  1030);
INSERT INTO users (user_name, password, status, student_id, user_role_id) VALUES('Hasib Ahmed',   '133',  'A',  5001,  1030);
INSERT INTO users (user_name, password, status, student_id, user_role_id) VALUES('Imran Molla',   '144',  'A',  5002,  1030);
INSERT INTO users (user_name, password, status, student_id, user_role_id) VALUES('Iqbal Mahmud',  '155',  'A',  5003,  1030);
INSERT INTO users (user_name, password, status, student_id, user_role_id) VALUES('Saira Jahan',   '166',  'A',  5004,  1030);


commit;


