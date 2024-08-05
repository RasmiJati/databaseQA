delimiter //
create procedure selectAllCustomers()

BEGIN
	select *from Customers;
END;

call selectAllCustomers();