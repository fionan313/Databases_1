drop table if exists scientist;
drop table if exists university;

create table univeristy (uni_id varchar(30) primary key, uni_name varchar(30));

create table scientist (id serial primary key, firstname varchar(100), lastname varchar(100), uni_id varchar(20) references university (uni_id));

insert into univeristy values ('c101', 'TU Dublin'), ('c102', 'Trinity');

insert into scientist (id, firstname, lastname, uni_id) values (1, 'albert', 'einstein', 'c101');
insert into scientist (id, firstname, lastname) values (2, 'isaac', 'newton');
insert into scientist (id, firstname, lastname) values (3, 'marie', 'curie');

update scientist set uni_id ='c102' where id =2;
select * from scientist;