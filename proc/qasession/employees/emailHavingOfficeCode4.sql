delimiter //
create procedure emailHavingOfficeCode4()
BEGIN  
select email from employees where officeCode = 4;
END;