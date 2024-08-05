delimiter //

create procedure avgMarksSubQueries()

BEGIN
select firstName, marks from persons where marks > (select avg(marks) from Persons); 
END;
