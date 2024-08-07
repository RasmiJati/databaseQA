delimiter //
 create procedure createEmployeeTable()
 BEGIN
	create table employees(
    id int primary key,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    email varchar(50) not null unique,
    jobTitle varchar(50) not null,
    reportsTo varchar(50) not null
    );
 END;
 
 Alter table employees add column officeCode int;