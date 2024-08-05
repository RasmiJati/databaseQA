-- Create a database named "college" and use this database
create database college;
use college;

-- create table named "Student"
create table Student(
rollNumber int Primary key,
 fullName varchar (50),
 address varchar(50),
 marks decimal(10,2)
);

-- Insert atleast 10 data to fill this Student records.
Insert into Student(rollNumber , fullName , address , marks) values
(1,'Riya Shrestha','Bhaktapur',80.00),
(2,'Hari Gurung','Baneshwor',75.00),
(3,'Sita Sherpa','Koteshwor',81.00),
(4,'Meera Shrestha','Kapan',70.00),
(5,'Arju Thapa','Jhapa',60.25),
(6,'Rita Rajbansi','Kavre',50.00),
(7,'Raju Kafle','Baneshwor',35.80),
(8,'Ray Sharma' , 'Bhaktapur' , 90.00),
(9,'Ram Limbu','Dhading',40.01),
(10,'Raywati Maharjan', 'Patan',90.55)
;


-- create table named "Teacher"
create table Teacher(
id int primary key,
name varchar(50),
assignedStudentId int, 
salary decimal(10,2),
foreign key(assignedStudentId) references Student(rollNumber)
on update cascade
on delete cascade
);

-- Insert at least 10 Teacher records.
insert into Teacher(id, name, assignedStudentId, salary) values
(1, 'Alice Johnson', 1, 75000.00),
(2, 'Bob Smith', 9, 68000.00),
(3, 'Carol White', 5, 72000.00),
(4, 'David Brown', 3, 65000.00),
(5, 'Eve Davis', 2, 70000.00),
(6, 'Frank Green', 5, 68000.00),
(7, 'Grace Hall', 3, 69000.00),
(8, 'Hank Young', 8, 71000.00),
(9, 'Ivy King', 4, 67000.00),
(10, 'Jack Lee', 6, 72000.00)
;

select *from Student;
select *from Teacher;

-- update name from teacher 
update Teacher set name = 'Salice Johnson' where id = 1;

-- Display total marks from all the students (can use aggregate functions)
select sum(marks) as Total_marks_of_all_students from Student;

-- Calculate average marks and display all the student's fullName whose marks > 50
select fullName , avg(marks) from Student group by fullName Having avg(marks) > 50;

-- calculate and display top 3 students based on highest marks
select * from Student order by marks DESC limit 3;

-- calculate and display top 3 students based on lowest marks
select *from Student order by marks Asc limit 3;

-- Display only teacher name who name starts with letter "s"
select *from Teacher where teacherName like 'S%';

-- Display only teacher name who name ends with letter "a"
select *from Teacher where teacherName like '%a';

-- Rename column "name" to "teacherName" on Teacher table
alter table Teacher change name teacherName varchar(50);
select *from Teacher;

-- Display teacherName in descending order alphabetically
select teacherName from Teacher order by teacherName Asc;

-- Display top 3 teacherName with highest salary
select teacherName from Teacher order by salary Desc limit 3;
select *from Teacher;


-- *************************************SUBQUERY******************************************************* 
 -- List all teachers who have students with marks greater than 80.
 select teacherName from Teacher where assignedStudentId in (select rollNumber from student where marks > 80);
 
 -- List all students who are assigned to teachers with a salary greater than 70000.
select fullName from Student where rollNumber in (select assignedStudentId from Teacher where salary > 70000);
 
 

-- *****************************************JOIN********************************************************

-- List all teachers with their assigned students' names.
select teacherName as teacher , fullName as students from Teacher inner join Student on Teacher.assignedStudentId = Student.rollNumber;

-- List all students with their respective teachers' names.
 select fullName as studentName , teacherName from Student join Teacher on Student.rollNumber = Teacher.assignedStudentId;
 
 
 -- ******************************************UNION****************************************************
 
-- List all unique names from both teachers and students.
SELECT teacherName FROM Teacher UNION SELECT fullName AS studentName FROM Student;

-- List all teacher and student names along with their roles.
SELECT teacherName AS name, 'Teacher' AS role FROM Teacher UNION SELECT fullName AS name, 'Student' AS role FROM Student;



