drop table if exists movies;
drop table if exists actors;

create table movies (movie_id varchar(30) primary key, movie_name char(20), movie_length int(20), release_date date);
create table actors (actor_id varchar(30) primary key, actor_first_name char(20), actor_last_name char(20), birth_date date);