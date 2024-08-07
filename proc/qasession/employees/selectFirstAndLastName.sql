delimiter //
create procedure selectFirstAndLastName()
BEGIN
	select firstName,lastName from employees;
END;