delimiter //
create procedure firstNameInDesc()
BEGIN
select firstName from employees order by firstName DESC;
END;