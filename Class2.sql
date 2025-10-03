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

create table favorite_food(
	person_id smallint unsigned,
    food varchar (20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id)
    references person(person_id)
);
desc favorite_food;
show databases;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where constraint_schema = 'exemplo1';
insert into person values ('2','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234'),('3','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234'),('4','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234'),('5','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234'),('6','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234'),('7','Carolina','Silva','F',
'1979-08-21','rua tal','Cidade J','RJ','BR','2605-1234');
select * from person;
select * from favorite_food;