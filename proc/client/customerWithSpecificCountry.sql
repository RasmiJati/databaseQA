delimiter //

create procedure customerWithSpecificCountry()
BEGIN  
	select customerName from Customers where country = 'USA';
END;

call customerWithSpecificCountry();