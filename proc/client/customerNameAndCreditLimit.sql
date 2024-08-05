delimiter //
create procedure customerNameAndCreditLimit ()
BEGIN
	select customerName , creditLimit from Customers where creditLimit > 100000;
END;

call customerNameAndCreditLimit();