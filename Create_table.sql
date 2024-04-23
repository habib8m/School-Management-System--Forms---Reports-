conn sys/oracle123@orclpdb as sysdba;
drop user sms cascade;
GRANT DBA TO SMS IDENTIFIED BY sms;
conn sms/sms@orclpdb;


-- execute the following statements to create tables

--school table

CREATE TABLE school
	(school_id	NUMBER   (8)	  	     GENERATED BY DEFAULT AS IDENTITY START WITH 100 INCREMENT BY 100 CONSTRAINT school_school_id_pk    PRIMARY KEY,
	school_name	VARCHAR2 (200)	  NOT NULL,
	license_no	VARCHAR2 (30)		     CONSTRAINT  school_license_no_uk   UNIQUE,
	phone_no	VARCHAR2 (20)	  NOT NULL   CONSTRAINT	 school_phone_no_uk     UNIQUE,
	email		VARCHAR2 (50)	 	     CONSTRAINT	 school_email_uk	 UNIQUE,
	founded_date	DATE,
	principal_name	VARCHAR2 (50),
	school_type	VARCHAR2 (20),
	address		VARCHAR2 (500),
	website		VARCHAR2 (50),
	status		CHAR);



--jobs table

CREATE TABLE jobs
	(job_id		VARCHAR2 (20)	   	  CONSTRAINT 	jobs_job_id_pk	 PRIMARY KEY,
	job_title	VARCHAR2 (50)	 NOT NULL,
	min_sal		NUMBER   (8, 2)	   	  CONSTRAINT 	jobs_min_sal_ck	 CHECK (min_sal > 8000),
	max_sal		NUMBER   (8, 2)	   	  CONSTRAINT 	jobs_max_sal_ck	 CHECK (max_sal < 99000));


--employees table

CREATE TABLE employees 
	(employee_id   		NUMBER	(8)     GENERATED BY DEFAULT AS IDENTITY START WITH 100 INCREMENT BY 5 CONSTRAINT employees_employee_id_pk PRIMARY KEY,
	first_name		VARCHAR2 (30)	NOT NULL,
	last_name		VARCHAR2 (30),
	gender			CHAR,
	email			VARCHAR2 (50)		  CONSTRAINT    employees_email_uk        UNIQUE,
	phone_no		VARCHAR2 (20)	NOT NULL  CONSTRAINT    employees_phone_no_uk     UNIQUE,
	national_id		VARCHAR2 (50)		  CONSTRAINT    employees_national_id_uk  UNIQUE,
	marital_status  	VARCHAR2 (20),
	blood_group     	VARCHAR2 (10),
	religion		VARCHAR2 (30),
	employee_type		VARCHAR2 (40),
	salary			NUMBER   (8, 2), 	  CONSTRAINT    employees_salary_ck	  CHECK (salary > 8000),
	hire_date		DATE 			  DEFAULT SYSDATE,	
	school_id		NUMBER			  CONSTRAINT    employees_school_id_fk    REFERENCES school (school_id)  ON DELETE CASCADE,
	job_id			VARCHAR2 (20)		  CONSTRAINT    employees_job_id_fk       REFERENCES jobs (job_id),
	status			VARCHAR2 (20),
	last_designation	VARCHAR2 (50),
	last_institution	VARCHAR2 (100),
	description		VARCHAR2 (200),
	a_degree		VARCHAR2 (50),
	graduation_year 	NUMBER (20),
	cgpa			NUMBER (5,2));


--employees attendance table

CREATE TABLE emp_at_m
	(at_m_id	  	NUMBER          CONSTRAINT emp_at_m_id_pk PRIMARY KEY,
	at_date  		DATE	DEFAULT SYSDATE,
	description     	VARCHAR2 (500));

CREATE TABLE emp_at_d
	(at_d_id	  	NUMBER          CONSTRAINT emp_at_d_id_pk PRIMARY KEY,
	status		CHAR,
	description     VARCHAR2 (500),
	employee_id	NUMBER   (8)   		CONSTRAINT   emp_at_employee_id_fk   REFERENCES employees (employee_id)  ON DELETE CASCADE,
	at_m_id		NUMBER   (8)   		CONSTRAINT   emp_at_m_id_fk   	     REFERENCES emp_at_m (at_m_id)  ON DELETE CASCADE);


--create sequecnt for employees attendenct detail id

CREATE SEQUENCE emp_at_d_id_pk_seq START WITH 1 INCREMENT BY 1 ;


--expense master table

CREATE TABLE exp_master
	(exp_id		NUMBER  		   CONSTRAINT exp_master_exp_id_pk PRIMARY KEY,
	total_amount	NUMBER (10, 2)	NOT NULL,
	exp_date	DATE		NOT NULL,
	employee_id	NUMBER   (8)   		   CONSTRAINT   exp_master_employee_id_fk  REFERENCES employees (employee_id)  ON DELETE CASCADE);


--expense catagory table

CREATE TABLE exp_catagory
	(catagory_id	NUMBER             GENERATED BY DEFAULT AS IDENTITY START WITH 500 INCREMENT BY 5 CONSTRAINT exp_catagory_catagory_id_pk PRIMARY KEY,
	catagory_name	VARCHAR2 (50));


--expense detail table

CREATE TABLE exp_detail
	(exp_detail_id	 NUMBER     	   CONSTRAINT exp_detail_exp_detail_id_pk PRIMARY KEY,
	amount 		 NUMBER (10, 2),
	description	 VARCHAR2 (500),
	exp_id		 NUMBER    	   CONSTRAINT   exp_detail_exp_id_fk         REFERENCES exp_master (exp_id)         ON DELETE CASCADE, 
	catagory_id	 NUMBER    	   CONSTRAINT   exp_detail_catagory_id_fk    REFERENCES exp_catagory (catagory_id)  ON DELETE CASCADE);


--create sequence for expence detail id

CREATE SEQUENCE exp_detail_exp_detail_id_seq START WITH 1 INCREMENT BY 1 ;


--academic year table

CREATE TABLE academic_years
	(academic_year_id   NUMBER	   GENERATED BY DEFAULT AS IDENTITY    CONSTRAINT   academic_years_academic_year_id_pk   PRIMARY KEY,
	start_date	   DATE,
	end_date	   DATE,
	year_name	   VARCHAR2 (30),
	status		   VARCHAR2 (20));


--classrooms table

CREATE TABLE classrooms
	(classroom_id  NUMBER           GENERATED BY DEFAULT AS IDENTITY    CONSTRAINT   classrooms_classroom_id_pk PRIMARY KEY,
	room_number    NUMBER (10) NOT NULL,
	capacity       NUMBER (10),
	location       VARCHAR2 (50));


--class table

CREATE TABLE class
	(class_id           NUMBER          GENERATED BY DEFAULT AS IDENTITY START WITH 6  CONSTRAINT class_class_id_pk PRIMARY KEY,
	class_name          VARCHAR2 (50)   NOT NULL,
	status	            VARCHAR2 (20),
	classroom_id	    NUMBER	    CONSTRAINT   class_classroom_id_fk      REFERENCES  classrooms    (classroom_id));


--students table

CREATE TABLE students
	(student_id       NUMBER		       CONSTRAINT students_student_id_pk PRIMARY KEY,
	first_name        VARCHAR2 (30)   NOT NULL,
	last_name         VARCHAR2 (30),
	father_name       VARCHAR2 (50),
	mother_name       VARCHAR2 (50),
	gender	          VARCHAR2 (20),
	email	          VARCHAR2 (50)  		CONSTRAINT   students_email_uk    UNIQUE,
	phone_no          VARCHAR2 (30),
	religion          VARCHAR2 (30),
	date_of_birth     DATE,
	blood_group       VARCHAR2 (10),
	picture		  BLOB,
	present_address   VARCHAR2 (100),
	permanent_address VARCHAR2 (100),
	status	          CHAR(1));


--guardians table

CREATE TABLE guardians
	(guardian_id       NUMBER         		 CONSTRAINT guardians_guardian_id_pk PRIMARY KEY,
	guardian_name         VARCHAR2 (30)   NOT NULL,
	occupation         VARCHAR2 (40),
	relationship       VARCHAR2 (30)   NOT NULL,
	phone_no           VARCHAR2 (20)   NOT NULL 	 CONSTRAINT   guardians_phone_no_uk   UNIQUE,
	email	           VARCHAR2 (50)  		 CONSTRAINT   guardians_email_uk      UNIQUE,
	present_address    VARCHAR2 (100),
	permanent_address  VARCHAR2 (100),
	status		   VARCHAR2 (20),
	student_id         NUMBER         		CONSTRAINT   students_id_fk       REFERENCES  students (student_id)  ON DELETE CASCADE);


--create sequecnt for guardian id

CREATE SEQUENCE guardians_guardian_id_seq START WITH 1 INCREMENT BY 1 ;


--sections table

CREATE TABLE sections
	(section_id     NUMBER     GENERATED BY DEFAULT AS IDENTITY  CONSTRAINT   sections_section_id_pk  PRIMARY KEY,
	section_name    VARCHAR2 (20) NOT NULL,
	status		VARCHAR2 (20));


--subjects table

CREATE TABLE subjects
	(subject_id    NUMBER   (6)    GENERATED BY DEFAULT AS IDENTITY START WITH 100 	CONSTRAINT subjects_subject_id_pk PRIMARY KEY,
	subject_code   NUMBER   (10),
	subject_name   VARCHAR2 (50)   NOT NULL,
	Textbooks      VARCHAR2 (200),
	status	       VARCHAR2 (20),
	mandatory      VARCHAR2 (20));



--grades table

CREATE TABLE grades
	(grade_id   NUMBER    	GENERATED BY DEFAULT AS IDENTITY  CONSTRAINT grades_grade_id_pk PRIMARY KEY,
	grade_name VARCHAR2 (2) NOT NULL,
	min_marks  NUMBER	CONSTRAINT    grades_min_marks_ck    CHECK (min_marks >= 0),
	max_marks  NUMBER	CONSTRAINT    grades_max_marks_ck    CHECK (max_marks <= 100));


--admission table

CREATE TABLE admission
	(admission_id    	NUMBER		        CONSTRAINT  admission_admission_id_pk  PRIMARY KEY, 
	admission_date   	DATE DEFAULT SYSDATE,
	status	         	VARCHAR2 (20),
	admission_fees   	number(10),
	student_id	 	NUMBER			CONSTRAINT  admission_student_id_fk   REFERENCES  students (student_id),
	class_id        	NUMBER   (5)  		CONSTRAINT   admission_class_id_fk          REFERENCES  class      (class_id),
	roll_no	         	NUMBER   (6),
	subject_group	 	VARCHAR2 (30),
	section_id	 	NUMBER   (6)   		CONSTRAINT   admission_section_id_fk  REFERENCES  sections (section_id),
	academic_year_id    	NUMBER	        	CONSTRAINT   admission_academic_year_id_fk  REFERENCES  academic_years (academic_year_id));


--create sequecnt for admission id

CREATE SEQUENCE admission_admission_id_seq START WITH 1 INCREMENT BY 1 ;


--exams table

CREATE TABLE exams
	(exam_id       NUMBER  	 GENERATED BY DEFAULT AS IDENTITY  CONSTRAINT exams_exam_id_pk PRIMARY KEY,
	exam_date      DATE DEFAULT SYSDATE,
	start_time     DATE,
	end_time       DATE,
	exam_name      VARCHAR2 (50) NOT NULL,
	class_id       NUMBER   (5)  	CONSTRAINT   exams_class_id_fk        REFERENCES  class (class_id),
	section_id     NUMBER   (6)     CONSTRAINT   exams_section_id_fk      REFERENCES  sections (section_id),
	subject_id     NUMBER		CONSTRAINT   exams_subject_id_fk      REFERENCES  subjects (subject_id),
	examiner_id    NUMBER           CONSTRAINT   exams_examiner_id_fk     REFERENCES  employees (employee_id));


--marksheets master table

CREATE TABLE marksheets_m
	(marksheet_m_id  NUMBER		CONSTRAINT  marksheets_m_marksheet_m_id_pk  PRIMARY KEY,
	exam_id	         NUMBER	        CONSTRAINT   marksheets_m_exam_id_fk       REFERENCES   exams     (exam_id),
	class_id         NUMBER (5)  	CONSTRAINT   marksheets_m_class_id_fk      REFERENCES   class (class_id),  
	student_id       NUMBER	        CONSTRAINT   marksheets_m_student_id_fk    REFERENCES   students  (student_id), 
	issue_date       DATE DEFAULT SYSDATE);


--marksheets detail table

CREATE TABLE marksheets_d
	(marksheet_d_id   NUMBER      CONSTRAINT   marksheets_d_marksheet_d_id_pk  PRIMARY KEY,
	marksheet_m_id    NUMBER      CONSTRAINT   marksheets_d_marksheet_m_id_fk  REFERENCES   marksheets_m  (marksheet_m_id),
	subject_id        NUMBER (5)  CONSTRAINT   marksheets_d_subject_id_fk      REFERENCES   subjects  (subject_id),
	marks 	          NUMBER      CONSTRAINT   marksheets_d_marks_ck    	   CHECK (marks BETWEEN 0 AND 100),
	grade_id          NUMBER      CONSTRAINT   marksheets_d_grade_id_fk        REFERENCES   grades    (grade_id));


--create sequecnt for marsheet detail id

CREATE SEQUENCE marksheets_d_marksheet_d_id_seq START WITH 1 INCREMENT BY 1 ;


--class and subjects table

CREATE TABLE class_subjects
	(id	       NUMBER		GENERATED BY DEFAULT AS IDENTITY  CONSTRAINT  class_subjects_id_pk   PRIMARY KEY, 
	class_id       NUMBER		CONSTRAINT   class_subjects_class_id_fk      REFERENCES class (class_id) ON DELETE CASCADE,
	subject_id     NUMBER		CONSTRAINT   class_subjects_subject_id_fk    REFERENCES subjects (subject_id) ON DELETE CASCADE,
	teacher_id     NUMBER   	CONSTRAINT   class_subjects_teacher_id_fk    REFERENCES employees (employee_id)  ON DELETE CASCADE,
					CONSTRAINT   class_subjects_class_id_subject_id_uk UNIQUE (class_id, subject_id));


--student attendance master table

CREATE TABLE stu_at_master
	(master_at_id      NUMBER        CONSTRAINT stu_at_master_master_at_id_pk PRIMARY KEY,
	attendance_date    DATE          DEFAULT SYSDATE,
	class_id           NUMBER        CONSTRAINT   stu_at_master_class_id_fk       REFERENCES   class       (class_id),
	teacher_id         NUMBER (8)	 CONSTRAINT   stu_at_master_teacher_id_fk     REFERENCES   employees   (employee_id));


--student attendance detail table

CREATE TABLE stu_at_detail
	(detail_at_id  NUMBER		 CONSTRAINT stu_at_detail_detail_at_id_pk PRIMARY KEY,
	status         CHAR,
	description    VARCHAR2 (500),
	master_at_id   NUMBER		 CONSTRAINT   stu_at_detail_master_at_id_fk       REFERENCES   stu_at_master (master_at_id), 
	student_id     NUMBER		 CONSTRAINT   stu_at_detail_student_id_fk         REFERENCES students (student_id));


--create sequecnt for student attendenct detail id

CREATE SEQUENCE stu_at_detail_at_id_seq START WITH 1 INCREMENT BY 1 ;
	

--income catagory table

CREATE TABLE income_catagory
	(catagory_id    NUMBER        GENERATED BY DEFAULT AS IDENTITY  CONSTRAINT income_catagory_catagory_id_pk PRIMARY KEY,
	catagory_name   VARCHAR2 (40) NOT NULL);


--income master table

CREATE TABLE income_m
	(income_m_id     NUMBER   		CONSTRAINT income_income_m_id_pk PRIMARY KEY,
	income_date    	 DATE DEFAULT SYSDATE,
	description      VARCHAR2 (500),
	employee_id      NUMBER (8)		CONSTRAINT   income_employee_id_fk    REFERENCES   employees         (employee_id),
	total_amount     NUMBER (8,2));


--income detail table

CREATE TABLE income_d
	(income_d_id     NUMBER   		CONSTRAINT   income_income_d_id_pk PRIMARY KEY,
	catagory_id      NUMBER			CONSTRAINT   income_catagory_id_fk    REFERENCES   income_catagory   (catagory_id),
	student_id       NUMBER			CONSTRAINT   income_student_id_fk     REFERENCES   students          (student_id),
	income_m_id      NUMBER			CONSTRAINT   income_income_m_id_fk    REFERENCES   income_m          (income_m_id),
	description      VARCHAR2 (500),
	amount           NUMBER (8,2));


--create sequecnt for income detail id

CREATE SEQUENCE income_d_id_seq START WITH 1 INCREMENT BY 1 ;


--user roles table

CREATE TABLE user_roles
	(user_role_id    NUMBER (5)     GENERATED BY DEFAULT AS IDENTITY START WITH 1000 INCREMENT BY 10 CONSTRAINT user_roles_user_role_id_pk PRIMARY KEY,
	user_role_name   VARCHAR2 (40)  NOT NULL,
	description	 VARCHAR2 (100),
	status		 VARCHAR2 (20));


--users table

CREATE TABLE users
	(user_id      NUMBER         GENERATED BY DEFAULT AS IDENTITY START WITH 10 INCREMENT BY 5 CONSTRAINT users_user_id_pk PRIMARY KEY,
	user_name     VARCHAR2 (35)  NOT NULL,
	password      VARCHAR2 (16)  NOT NULL,
	status        VARCHAR2 (20),
	employee_id   NUMBER (8)     CONSTRAINT   users_employee_id_fk    REFERENCES   employees   (employee_id),
	student_id    NUMBER         CONSTRAINT   users_student_id_fk     REFERENCES   students    (student_id),
	user_role_id  NUMBER (5)     CONSTRAINT   users_user_role_id_fk   REFERENCES   user_roles  (user_role_id));


SELECT tname FROM tab;