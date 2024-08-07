delimiter //
create procedure emailInAsc()
BEGIN
select email from employees order by email ASC;
END;