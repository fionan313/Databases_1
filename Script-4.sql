drop table if exists likes; /* Removes any table that exist with the same name as specified */
drop table if exists photos; /* Removes any table that exist with the same name as specified */
drop table if exists users; /* Removes any table that exist with the same name as specified */


create table users (user_id serial primary key, user_name char(20), creation_date date); /* Create table named users with the variable user_id (varchar), user_name (char), creation_date (date) */
create table photos (photo_id serial primary key, image_url varchar(50), user_id VARCHAR(30), constraint user_fk FOREIGN key (user_id) references users (user_id)); /* Create table named photos with the variable photo_id (varchar), image_url (char), user_id (date) */
create table likes (user_id serial primary key, photo_id serial, like_date TIMESTAMP); /* Create table named likes with the variable user_id (varchar), photo_id (varchar), like_date (TIMESTAMP) */

/* INSERT INTO statements to add at least 5 rows to each table. */

INSERT INTO users (user_name, creation_date)

VALUES

	('money.man','2021-09-27'),
	('person.smith','2022-12-25'),
	('dit4life','2016-10-26'),
	('iheartapple','1984-01-24'),
	('johnson.jones','2023-05-30') ;

INSERT INTO photos (image_url, user_id)

VALUES

	('https://www.temporary-url.com/3EA16C','dit4life'),
	('https://www.temporary-url.com/F9EB','johnson.jones'),
	('https://www.temporary-url.com/723DF','money.man'),
	('https://www.temporary-url.com/1850','iheartapple'),
	('https://www.temporary-url.com/4C179','person.smith') ;

INSERT INTO likes (like_date)

VALUES

	('2020-08-22 16:10:25'),
	('2021-04-22 13:12:36'),
	('2022-12-22 22:34:45'),
	('2023-06-22 08:22:01'),
	('2023-09-22 19:54:12') ;

/* retrieves data from the tables in the database, and returns the data */
	
select * from photos;
select * from users;
select * from likes;
