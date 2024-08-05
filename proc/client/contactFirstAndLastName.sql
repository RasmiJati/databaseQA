delimiter //
create procedure contactFirstAndLastName()

BEGIN 
	select contactFirstName , contactLastName from Customers;
END;

call contactFirstAndLastName();