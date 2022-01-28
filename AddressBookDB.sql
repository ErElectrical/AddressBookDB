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