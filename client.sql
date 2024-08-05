use client;
create table Customers(customerNumber int(11) NOT NULL PRIMARY KEY , customerName varchar(50) NOT NULL, contactLastName varchar(50) NOT NULL, contactFirstName varchar(50) NOT NULL, phone varchar(10) NOT NULL, addressLine1 varchar(50) NOT NULL , addressLine2 varchar(50) , city varchar(50) NOT NULL,state varchar(50) , postalCode varchar(15) ,
 country varchar(50) NOT NULL, salesRepEmployeeNumber int(11) , creditLimit decimal(10,2) ) ;
insert into Customers values(1,'Ram Bdr Thapa' , 'Thapa','Ram','9841524152','Samakushi','Raniban','Kathmandu','bagmati','44800',
'Nepal',5,10000.00);
insert into customers values(2,'Hari Thapa' , 'Thapa','Hari','9841544152','Shankamul','Baneshwor','Kathmandu','bagmati','44600',
'Nepal',2,15000.00);
select *from client.customers;

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `salesRepEmployeeNumber`, `creditLimit`) VALUES
(13, 'Alpha Corp', 'Smith', 'John', '5551234', '123 Elm St', 'Apt 1A', 'New York', 'NY', '10001', 'USA', 101, 0.00),
(12, 'Beta Inc', 'Doe', 'Jane', '5555678', '456 Oak St', 'Suite 100', 'Los Angeles', 'CA', '90001', 'USA', 102, 250000.00),
(3, 'Gamma LLC', 'Johnson', 'Jack', '5559101', '789 Pine St', 'Floor 2', 'Chicago', 'IL', '60601', 'USA', 103, 150000.00),
(4, 'Delta Enterprises', 'Williams', 'Jill', '5551122', '101 Maple St', 'Apt 3B', 'Houston', 'TX', '77001', 'USA', 104, 0.00),
(5, 'Epsilon Ltd', 'Brown', 'Jim', '5553344', '202 Birch St', 'Apt 202', 'Phoenix', 'AZ', '85001', 'USA', 105, 175000.00),
(6, 'Zeta Corporation', 'Davis', 'Jake', '5555566', '303 Cedar St', 'Suite 4C', 'Philadelphia', 'PA', '19101', 'USA', 106, 0.00),
(7, 'Eta Solutions', 'Miller', 'Jessica', '5557788', '404 Spruce St', 'Apt 5D', 'San Antonio', 'TX', '78201', 'USA', 107, 120000.00),
(8, 'Theta Enterprises', 'Wilson', 'Jeremy', '5559900', '505 Fir St', 'Suite 6E', 'San Diego', 'CA', '92101', 'USA', 108, 0.00),
(9, 'Iota Corp', 'Moore', 'Julie', '5551123', '606 Willow St', 'Ste 300', 'Dallas', 'TX', '75201', 'USA', 109, 180000.00),
(10, 'Kappa Industries', 'Taylor', 'Jared', '5554455', '707 Aspen St', 'Apt 7F', 'San Jose', 'CA', '95101', 'USA', 110, 200000.00),
(11, 'Lambda Ltd', 'Martin', 'Carlos', '5556677', '123 Maple Rd', 'Ste 1', 'Toronto', 'ON', 'M4B 1B3', 'Canada', 111, 125000.00);

