show databases;
create database exemplo1;
use exemplo1;
CREATE TABLE person(
	person_id smallint unsigned,
	fname VARCHAR (20),
	lname varchar (20),
	gender enum ('M','F'),
	birth_date date,
	street varchar (30),
	city varchar (20),
	state varchar (20),
	country varchar (20),
	postal_code varchar (20),
    constraint pk_person primary key (person_id)
);
show databases;
use exemplo1;
desc person;


