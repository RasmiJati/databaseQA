delimiter //
create procedure jobTitleWithOfficeCode6()
BEGIN
select jobTitle from employees where officeCode = 6;
END;