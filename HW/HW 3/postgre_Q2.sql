create table Student(
	ID varchar(20) Not Null,
	Gender varchar(10) Not Null,
	Course varchar(50) Not Null,
	CGPA varchar(50) Not Null, 
	constraint stud_pk primary key(ID))
	
select  * from Student

create table Stud_info(
	ID varchar(20) Not Null,
	Marital_Status varchar(10),
	Depression varchar(10),
	Anxiety varchar(10),
	Panic varchar(10),
	Treatment varchar(10),
	constraint info_pk primary key (ID))
	
select * from Stud_info

alter table Stud_info
add constraint fk
foreign key (ID)
references Student(ID)

copy public.student (id, gender, course, cgpa) FROM 'C:/Users/Prayag Purani/Desktop/Dbms DATA 225/HW/HW 3/Student.csv' DELIMITER ',' CSV
copy public.stud_info 'C:/Users/Prayag Purani/Desktop/Dbms DATA 225/HW/HW 3/Stud_info.csv' DELIMITER ',' CSV

update student set Course = 'Data Analylits' where ID = '2'

delete from stud_info where ID = '2'