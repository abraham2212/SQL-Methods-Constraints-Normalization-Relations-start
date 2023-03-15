create database Course 

use Course 

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50),
	[Email] nvarchar(150) unique,
	[Age] int check(Age>20),
	[Salary] decimal
)

select * from Teachers


insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
values	('Cavid','Bashirov','javid@code.edu.az','29',6000),
		('Aydin','Aliyev','aydin@code.edu.az','30',2000),
		('Elcan','Memmedzade','elcanr@code.edu.az','31',5000),
		('Leyla','Agayeva','Leyla@code.edu.az','28',1000),
		('Ulvi','Macidov','ulvi@code.edu.az','27',3000),
		('Namiq','Haciyev','namiq@code.edu.az','22',1500);
		

		UPDATE Teachers
SET [Email] = 'namiq@mail.ru'
WHERE [Id] = 6;




 select  AVG(Age) as 'Age average' from Teachers

 select * from Teachers where [Age] > (select AVG(Age) from Teachers)

 select * from Teachers where [Salary] between 1000 and 3000 and [Salary] not in(1000,3000)


  select * from Teachers where [Email] like '%mail.ru'



  select * from Teachers where [Name] like 'C%'


