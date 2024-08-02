use client;
create table Customers(customerNumber int(11) NOT NULL PRIMARY KEY , customerName varchar(50) NOT NULL, contactLastName varchar(50) NOT NULL, contactFirstName varchar(50) NOT NULL, phone varchar(10) NOT NULL, addressLine1 varchar(50) NOT NULL , addressLine2 varchar(50) , city varchar(50) NOT NULL,state varchar(50) , postalCode varchar(15) ,
 country varchar(50) NOT NULL, salesRepEmployeeNumber int(11) , creditLimit decimal(10,2) ) ;
insert into Customers values(1,'Ram Bdr Thapa' , 'Thapa','Ram','9841524152','Samakushi','Raniban','Kathmandu','bagmati','44800',
'Nepal',5,10000.00);
insert into customers values(2,'Hari Thapa' , 'Thapa','Hari','9841544152','Shankamul','Baneshwor','Kathmandu','bagmati','44600',
'Nepal',2,15000.00);
select *from client.customers;
