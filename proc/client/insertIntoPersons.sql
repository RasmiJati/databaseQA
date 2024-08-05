delimiter //
create procedure insertIntoPersons()

BEGIN  
	insert into persons(PersonID,FirstName,LastName,Address,City,marks) values
    (1,'Ram','Thapa','Kapurdhara','pkr',75),
	(2,'Ram','Shrestha','kapurdhara','ktm',80),
	(3,'Sita','Rana','koteshwor','ktm',55),
	(4,'Ram','Shrestha','banepa','kavre',71),
	(5,'noman','Shrestha','basundhara','laltipur',70);
END;

call insertIntoPersons();