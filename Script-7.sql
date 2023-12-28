/*Drop tables with CASCADE to remove dependent objects*/

DROP TABLE IF EXISTS follow CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS likes CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS photos CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS users CASCADE; /* Removes any table that exist with the same name as specified */


CREATE TABLE users (user_id serial PRIMARY KEY, user_name VARCHAR(20) UNIQUE NOT NULL, creation_date DATE);/* Create table named users with the variable user_id (varchar), user_name (char) thatt is unique and not null, creation_date (date) */
CREATE TABLE photos (photo_id serial PRIMARY KEY, image_url VARCHAR(5000),PublicationDate date, user_id INT REFERENCES users(user_id));/* Create table named photos with the variable photo_id (serial), image_url (char), foreign key referncing the user_id (serial) in the table users */
CREATE TABLE likes (user_id INT,photo_id INT,like_date TIMESTAMP, PRIMARY KEY (user_id, photo_id),FOREIGN KEY (user_id) REFERENCES users(user_id),FOREIGN KEY (photo_id) REFERENCES photos(photo_id));
CREATE TABLE follow (follower_id INT,followee_id INT,follow_date TIMESTAMP,PRIMARY KEY (follower_id, followee_id),FOREIGN KEY (follower_id) REFERENCES users(user_id),FOREIGN KEY (followee_id) REFERENCES users(user_id));

INSERT INTO users (user_name, creation_date)

VALUES

	('money.man','2021-09-27'),
	('person.smith','2022-12-25'),
	('dit4life','2016-10-26'),
	('iheartapple','1984-01-24'),
	('johnson.jones','2023-05-30'),
	('ttremblot0', '2022-07-17'),
	('iiczokvitz1', NULL),
	('lrickerd2', '2021-02-22'),
	('mkittredge3', '2022-01-31'),
	('oabrahamoff4', '2023-02-13'),
	('wbalsdone5', '2021-04-10'),
	('jhambly6', '2021-01-09'),
	('ldeware7', '2021-07-10'),
	('bheinonen8', '2020-12-25'),
	('ckiellor9', '2021-02-19'),
	('bgillebert0', '2023-01-05'),
	('mleimster1', '2023-05-07'),
	('dverty2', '2022-12-18'),
	('nliddington3', '2023-03-12'),
	('wluxford4', '2022-12-25'),
	('iascrofte5', '2023-03-18'),
	('edines6', '2022-11-01'),
	('ahitchens7', '2023-01-10'),
	('ltemperton8', '2023-04-11'),
	('aodyvoie9', '2023-04-23');



INSERT INTO photos (image_url, user_id, PublicationDate)

VALUES
    ('http://dummyimage.com/220x100.png/5fa2dd/ffffff', 1,'2021-09-17'),
	('http://dummyimage.com/236x100.png/5fa2dd/ffffff', 2,'2022-04-25'),
	('http://dummyimage.com/196x100.png/5fa2dd/ffffff', 3,'2023-05-07'),
	('http://dummyimage.com/138x100.png/dddddd/000000', 4,'2020-06-17'),
	('http://dummyimage.com/193x100.png/5fa2dd/ffffff', 5,'2019-07-23'),
	('http://dummyimage.com/216x100.png/cc0000/ffffff', 6,'2020-08-27'),
	(NULL, 7,'2021-09-26'),
	('http://dummyimage.com/140x100.png/cc0000/ffffff', 8,'2021-09-26'),
	('http://dummyimage.com/179x100.png/ff4444/ffffff', 9,'2021-09-17'),
	('http://dummyimage.com/142x100.png/ff4444/ffffff', 10,'2021-09-06'),
	('http://dummyimage.com/198x100.png/ff4444/ffffff', 11,'2021-09-26'),
	(NULL, 12,'2021-09-27'),
	('http://dummyimage.com/190x100.png/dddddd/000000', 13,'2021-09-17'),
	('http://dummyimage.com/169x100.png/ff4444/ffffff', 14,'2022-04-25'),
	('http://dummyimage.com/224x100.png/cc0000/ffffff', 15,'2023-05-07'),
	('http://dummyimage.com/198x100.png/dddddd/000000', 16,'2017-04-24'),
	('http://dummyimage.com/203x100.png/5fa2dd/ffffff', 17,'2018-05-05'),
	('http://dummyimage.com/228x100.png/cc0000/ffffff', 18,'2019-06-15'),
	('http://dummyimage.com/113x100.png/dddddd/000000', 19,'2022-07-25'),
	(NULL, 20,'2023-05-06'),
	('http://dummyimage.com/166x100.png/5fa2dd/ffffff', 21,'2019-09-27'),
	('http://dummyimage.com/243x100.png/dddddd/000000', 22,'2020-10-13'),
	('http://dummyimage.com/148x100.png/dddddd/000000', 23,'2021-11-15'),
	('http://dummyimage.com/161x100.png/dddddd/000000', 24,'2022-12-16'),
	('http://dummyimage.com/185x100.png/5fa2dd/ffffff', 25,'2023-06-27');


INSERT INTO likes (user_id, photo_id, like_date)

VALUES
    (1, 5, '2023-05-21 20:36:10'),
	(2, 5, '2023-05-11 02:03:36'),
	(3, 6, '2023-05-12 01:39:17'),
	(4, 7, '2023-07-10 13:08:05'),
	(5, 8, '2022-12-18 17:15:43'),
	(1, 9, '2023-04-19 04:25:14'),
	(7, 10, '2023-08-06 07:22:50'),
	(8, 11, '2022-10-10 23:42:20'),
	(9, 12, '2023-06-03 05:07:43'),
	(10, 13,'2023-03-08 07:49:37'),
	(11, 14, NULL),
	(12, 15, '2023-02-20 12:45:05'),
	(13, 1, '2023-07-27 00:05:16'),
	(14, 2, '2023-06-08 05:39:42'),
	(15, 1, '2023-08-29 04:55:12'),
	(16, 16, '2023-06-02 23:32:15'),
	(17, 21, '2023-08-01 13:05:37'),
	(18, 18, '2022-03-19 15:02:54'),
	(19, 25, '2023-03-02 19:34:34'),
	(20, 24, NULL),
	(21, 19, '2022-05-26 13:27:34'),
	(22, 22, '2020-07-25 19:56:05'),
	(23, 17, '2020-12-14 22:17:59'),
	(24, 23, '2020-08-28 14:58:18'),
	(25, 20, '2021-07-25 21:46:19');

   
INSERT INTO follow (follower_id, followee_id, follow_date)
VALUES
    (1, 4, '2020-08-22 16:10:25'),
    (3, 5, '2021-04-22 13:12:36'),
    (5, 3, '2022-12-22 22:34:45'),
    (2, 1, '2023-06-22 08:22:01'),
    (4, 2, '2023-09-22 19:54:12'),
    (6, 7, '2023-07-10 13:08:05'),
	(7, 8, '2022-12-18 17:15:43'),
	(8, 9, '2023-04-19 04:25:14'),
	(9, 10, '2023-08-06 07:22:50'),
	(10, 11, '2022-10-10 23:42:20'),
	(11, 12, '2023-06-03 05:07:43'),
	(12, 13, '2023-03-08 07:49:37'),
	(13, 15, '2023-06-17 19:36:39'),
	(15, 14, '2023-02-20 12:45:05'),
	(14, 1, '2023-07-27 00:05:16'),
	(16, 21, '2021-11-20 10:18:16'),
	(17, 23, '2022-08-14 02:47:42'),
	(18, 17, '2021-05-21 19:56:46'),
	(19, 18, NULL),
	(20, 25, '2022-12-03 00:19:51'),
	(21, 24, '2020-09-01 15:57:37'),
	(22, 20, '2022-10-31 08:43:58'),
	(23, 16, '2022-09-21 09:18:02'),
	(24, 19, '2020-12-08 08:34:40'),
	(25, 22, '2022-12-01 19:34:24');
	   
   
   
/* retrieves data from the tables in the database, and returns the data */

/*select * from users;
select * from photos;
select * from likes;
select * from follow;*/

/*select user_name, photo_id from likes join users using (user_id) where photo_id between 9 and 9; 

select user_name,follower_id,followee_id from follow CROSS join users where followee_id between 9 and 9;

select user_name,photo_id from likes join users using (user_id) where photo_id between 9 and 9 and like_date between '2022-12-18 17:15:43' and '2023-05-21 20:36:10';*/


/*Write a query to select the username and the number of photos published by each user. 
Display the result in two columns: "Username" and "Number of photos".
Order the result by the number of photos in descending order. */ 

/*SELECT u.user_name, COUNT(p.photo_id) "number of photos"
FROM users u
LEFT JOIN photos p ON u.user_id = p.user_id
GROUP BY u.user_id ORDER BY "number of photos" desc;

/*Find the total number of likes received for each photo. Display the photo_id and the corresponding number of likes. 
Order the result by the number of likes in descending order.
 */

SELECT p.photo_id, COUNT(*) "number of likes"
FROM likes l
LEFT JOIN photos p ON l.photo_id = p.photo_id 
GROUP BY p.photo_id ORDER BY "number of likes" desc;


/*Identify the user who has posted the earliest photo. Display their username and the date of the earliest photo. 
 Display the date in the format DD/MM/YYYY*/

SELECT TO_CHAR(MIN(PublicationDate), 'DD/MM/YYYY') AS min_begin_date
FROM photos;

SELECT u.user_name, TO_CHAR(MIN(p.PublicationDate), 'DD/MM/YYYY') "start"
from photos p join users u on u.user_id = p.user_id group by u.user_id, p.PublicationDate order by p.PublicationDate limit 1;*/

/*Q1*/

Explain analyse select * from users where user_id = 1;
/*Slower*/

drop index if exists primary_key_users;
create index primary_key_users on users(user_id);

Explain analyse select * from users where user_id = 1;
/*Faster*/

/*Q2*/

explain analyze select publicationDate from photos order by publicationDate DESC;
/*Slower*/

drop index if exists published_photo_index;
create index published_photo_index on photos(PublicationDate);

explain analyze select publicationDate from photos order by publicationDate DESC;
/*Faster*/

/*Set Operations*/

/*Q1*/

/*select follower_id from follow f intersect select followee_id from follow f JOIN users u ON f.user_id = u.user_id where user_name like 'money.man';*/

/*select follower_id, followee_id from follow JOIN users ON users.user_id = follow.follower_id where user_name like 'person.smith';*/


/*select follower_id from follow intersect select followee_id from follow where user_name like 'money.man';*/


select follower_id as user_id from follow where followee_id in (SELECT user_id from users where user_name = 'money.man')
union
select followee_id as user_id from follow where followee_id in (SELECT user_id from users where user_name = 'money.man');


select u.user_name from users u join follow f on u.user_id = f.follower_id  where u.user_name = 'dit4life'
union 
select uu.user_name from users uu join follow f on uu.user_id = f.followee_id  where uu.user_name = 'dit4life';


/*Q2*/


select user_id from likes intersect select follower_id as user_id from follow;











