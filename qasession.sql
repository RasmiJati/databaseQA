use qasession;

-- ******************PERSONS**************** 
select *from qasession.persons;

create table Persons(PersonID int,FirstName varchar(255),LastName varchar(255),Address varchar(255),City varchar(255));
insert into persons values(1,'Rasmi','Jati','Bkt','Bkt');
insert into persons(id,FirstName,LastName,Address,City,marks) values(4,'Ram','Thapa','Kapurdhara','pkr',75),
('5','Ram','Shrestha','kapurdhara','ktm',80),
('6','Sita','Rana','koteshwor','ktm',55),
('7','Ram','Shrestha','banepa','kavre',71),
('8','noman','Shrestha','basundhara','laltipur',70);

Alter table Persons Change PersonId id int;  -- ****** change persons id column name *****

-- ***** unsigned means it takes positive only *****
alter table Persons add column marks int;

SET SQL_SAFE_UPDATES = 0; -- ******Disable safe updates:*****
update Persons set marks = 65 where id = 3;
SET SQL_SAFE_UPDATES = 1; -- ******Re-enable safe updates (if needed)******

select FirstName,LastName from Persons where marks > 79;

select FirstName from Persons where marks < 80 and city = 'ktm';

select FirstName, marks from Persons where city = 'ktm' and marks <80 limit 3 ;
 
select FirstName, marks from Persons where city = 'ktm' and marks <80 order by marks Asc limit 3 ;
select FirstName, marks from Persons where city = 'ktm' and marks <80 order by marks DESC limit 3 ;


-- ******************DEPARTMENT**************** 
select *from qasession.department;
create table department(id int, deptName varchar(50),person_id int);
insert into department(id,deptName,person_id) values(1, 'science',1),(2,'maths',2),(3,'nepali',4);

select deptName, FirstName from department inner join Persons on department.person_id = Persons.id;

select FirstName from Persons UNION select deptName from department;

select avg(marks) from Persons;

select FirstName from Persons where marks > 72.6250;

select *from Persons where marks > (select avg(marks) from Persons);  -- ***** dynamic query / sub query *****

