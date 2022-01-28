create database AddressBook;

-- Welcome to addressBook Database

use AddressBook;

-- Uc2 Address Book Table having attributes

create table AddressBookTable
(
	firstname varchar(20) not null,
	Lastname varchar(20) ,
	address varchar(200),
	zipcode int,
	stateCode varchar(100),
	country varchar(100),
	phonenum bigint,
	emailid varchar(150)
	

);

select * from AddressBookTable;

--uc3 ability to insert data into table

INSERT  AddressBookTable VALUES('Mohit ','Tanwar','Kotul Akole',422610,'Maharashtra','india',8792810271,'Mohit@gmail.com'),
('Neha','Shelke','Warora Nagpur',3333333,'Chandigad','india',8232322323,'neha@gmail.com'),
('Srujan','Mahajan','Dombivali Mumbai',444444,'Maharashtra','japan',9112121212,'srujan@gmail.com'),
('Prajwal','Zurunge','Chandannagar Vimannagar',555555,'gujrat','india',9876543322,'prajwal@gmail.com');
