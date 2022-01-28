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

--------------Uc4-----------------------
---ability to edit contact--------------

UPDATE AddressBookTable SET Phonenum=97456638984 WHERE FirstName='Mohit';
UPDATE AddressBookTable SET Lastname='Kumar' WHERE FirstName='Srujan';
UPDATE AddressBookTable SET EmailId='kumar12@gmail.com' WHERE LastName='Zurunge';

---------------UC5---------------
-----Delete contact using their name------


DELETE FROM AddressBookTable WHERE FirstName='Neha';

---------------UC6---------------
-----Retrieve person's City------


SELECT FirstName,phonenum FROM  AddressBookTable WHERE address='Dombivali Mumbai' or stateCode='Maharashtra';
