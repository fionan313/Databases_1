/*Drop tables with CASCADE to remove dependent objects*/

DROP TABLE IF EXISTS follow CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS likes CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS photos CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS users CASCADE; /* Removes any table that exist with the same name as specified */


CREATE TABLE users (user_id serial PRIMARY KEY, user_name VARCHAR(20) UNIQUE NOT NULL, creation_date DATE);/* Create table named users with the variable user_id (varchar), user_name (char) thatt is unique and not null, creation_date (date) */
CREATE TABLE photos (photo_id serial PRIMARY KEY, image_url VARCHAR(50), user_id INT REFERENCES users(user_id));/* Create table named photos with the variable photo_id (serial), image_url (char), foreign key referncing the user_id (serial) in the table users */
CREATE TABLE likes (user_id INT,photo_id INT,like_date TIMESTAMP, PRIMARY KEY (user_id, photo_id),FOREIGN KEY (user_id) REFERENCES users(user_id),FOREIGN KEY (photo_id) REFERENCES photos(photo_id));
CREATE TABLE follow (follower_id INT,followee_id INT,follow_date TIMESTAMP,PRIMARY KEY (follower_id, followee_id),FOREIGN KEY (follower_id) REFERENCES users(user_id),FOREIGN KEY (followee_id) REFERENCES users(user_id));

INSERT INTO users (user_name, creation_date)

VALUES

	('money.man','2021-09-27'),
	('person.smith','2022-12-25'),
	('dit4life','2016-10-26'),
	('iheartapple','1984-01-24'),
	('johnson.jones','2023-05-30') ;

INSERT INTO photos (image_url, user_id)

VALUES
    ('https://www.temporary-url.com/3EA16C', 1),
    ('https://www.temporary-url.com/F9EB', 2),
    ('https://www.temporary-url.com/723DF', 3),
    ('https://www.temporary-url.com/1850', 4),
    ('https://www.temporary-url.com/4C179', 5);

INSERT INTO likes (user_id, photo_id, like_date)

VALUES
    (1, 5, '2020-08-22 16:10:25'),
    (2, 4, '2021-04-22 13:12:36'),
    (3, 2, '2022-12-22 22:34:45'),
    (4, 1, '2023-06-22 08:22:01'),
    (5, 3, '2023-09-22 19:54:12');
   
INSERT INTO follow (follower_id, followee_id, follow_date)
VALUES
    (1, 4, '2020-08-22 16:10:25'),
    (3, 5, '2021-04-22 13:12:36'),
    (5, 3, '2022-12-22 22:34:45'),
    (2, 1, '2023-06-22 08:22:01'),
    (4, 2, '2023-09-22 19:54:12');
   
   
   
/* retrieves data from the tables in the database, and returns the data */

select * from users;
select * from photos;
select * from likes;
select * from follow;

   
