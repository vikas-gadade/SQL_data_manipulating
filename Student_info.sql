--Database creating

create database student_info

--Table creating in database

create table Student
(
ID Int ,
[Name] Varchar(30),
Age Int,
Height Float
)

--Selecting all from table

Select * from Student

--Adding values in table

insert into Student values(1,'Manish',24,168.2)            
insert into Student values(2,'Anand',27,125), (3,'Rahul',25,162)
insert into Student values(4,'Rahul',26,162)
insert into student values (5,'Neha',NULL,165)
Select * from Student

--Adding columns in table

alter table Student
add EmailID VarChar(40),Gender Char(1)
Select * from Student

--Deleting columns from table

alter table student
drop column Gender,emailid
Select * from Student

--Updating values in table

update student
set age = 25
where Id = 1
Select * from Student

--Deleting row from table

delete from student
where [Name] = 'Rahul' and age = 25
Select * from Student

--Selecting null value

select * from student 
where age is null

--Getting today's date

select getdate ()

--Changing table name

EXEC sp_rename 'dbo.Student', 'StudentTable';
select * from studenttable

EXEC sp_rename 'dbo.StudentTable', 'Student';
select * from student

--Changing column name

EXEC sp_rename 'dbo.student.age','SAge'
EXEC sp_rename 'dbo.student.NAME','SNAME'
Select*from Student

EXEC sp_rename 'dbo.student.Sage','Age'
EXEC sp_rename 'dbo.student.SNAME','Name'
Select*from Student

--Selecting name starting with 'a'

Select*from Student
where [Name] like 'a%'

--Selecting name 'neha' and name range from 'A' TO 'M'

select * from Student
where [Name]= 'Neha'
or [Name] like '[A-M]%'

--Deleting all data

truncate table Student
select * from Student

--Deleting all table

drop table Student
select * from Student