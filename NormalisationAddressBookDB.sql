create database NormalisationAddressBook;

use NormalisationAddressBook;

-- if we thank about addressBook the prime attributes are Phoenumber,name 
-- where address and rest all things are non prime attributes which depends upon above attributes
--what we will do we will create two tables one which contains prime attribute named it as contacts
-- other which contains data regarding address.

create  table contacts 
(
	id int  not null primary key identity,
	firstname varchar(20) not null,
	lastname varchar(20) not null,
	phonenum bigint unique,
	Type_Name varchar(20) not null
);

select * from contacts;



create table Address
(
	Ad_id int not null,
	address varchar(150),
	state varchar(50),
	city varchar(50),
	country varchar(50),
	zipcode varchar(50),
	emailid varchar(50),
	primary key(Ad_id),

	id int foreign key REFERENCES contacts(id)
	on delete cascade
);

drop table Address;

---------- Uc2--------------------
----Retrive data from table ------

select * from contacts
inner join Address
on Address.Ad_id=contacts.id;

----- UC3----------------------------------
--Ability to insert data-----------------

insert into contacts
(firstname,lastname,phonenum,Type_Name)
values
('Mohit','tanwar',5878864347,'Family');

select * from contacts;

insert into Address
(Ad_id,address,state,city,country,zipcode,emailid)
values
(1,'Jamuna par','delhi','jamuna','india','2567252','mohit@com');

insert into contacts
(firstname,lastname,phonenum,Type_Name)
values
('Abhi','mahatre',3682263,'Friend');

insert into Address
(Ad_id,address,state,city,country,zipcode,emailid)
values
(2,'lokhandwala','Mumbai','dharavi','india','25676582','lokhand@com');

insert into contacts
(firstname,lastname,phonenum,Type_Name)
values
('mohan','mahajan',26738322,'Profession'),
('jaun','alia',356728331,'Profession');

insert into Address
(Ad_id,address,state,city,country,zipcode,emailid)
values
(3,'jammuhind','kasmir','jk','india','36783','loh@com'),
(4,'porsch','kullu','uk','india','36783','kanu@com');

------------Uc4------------------
--Ability to edit data ---------

update contacts
set firstname='John'
where id=1;

update Address
set state='tamilnadu'
where Ad_id=1;

-----------------Uc5---------------------
-----Delete data from Table and confirm weather deleted from Address table or not----------

DELETE FROM contacts WHERE FirstName='John';

---------Uc6------------------------------
------retrive data based on city belongs to------------

select * from contacts
inner join Address
on Address.Ad_id=contacts.id and city='uk';











