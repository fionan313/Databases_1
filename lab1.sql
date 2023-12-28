drop table if exists insta_users;

create table insta_users (username varchar(30) primary key, first_name char(20), last_name char(20), signup_date date);

insert into insta_users values ('Lucky cat','costa','andrea', '2021-09-27');
insert into insta_users values ('Test User','Test','user', '2021-09-27');
insert into insta_users values ('Joe Bloggs','James','Murphy', '2022-12-25');
insert into insta_users values ('SQL LOVER','Sarah','Jane', '2023-09-19');

select * from insta_users;