delimiter //
create procedure selectJobTitleFirstAndLastName()
BEGIN
select firstName,lastName,jobTitle from employees;
END;