
delimiter //
create procedure customerNameAndCreditLimitEqualZero ()
BEGIN
	select customerName , creditLimit from Customers where creditLimit = 0;
END;

call customerNameAndCreditLimitEqualZero();