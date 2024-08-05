
delimiter //

create procedure calculateAverageMarks()

begin 
	select avg(marks) from Persons;
end;

call calculateAverageMarks();





