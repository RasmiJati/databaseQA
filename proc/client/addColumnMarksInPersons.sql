delimiter //

 create procedure addColumnMarks()
 BEGIN
	Alter table Persons add column marks decimal(10,2);
 END;
 
 call addColumnMarks();