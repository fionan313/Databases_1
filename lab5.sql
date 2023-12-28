/*Drop tables with CASCADE to remove dependent objects*/

DROP TABLE IF EXISTS follow CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS likes CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS photos CASCADE; /* Removes any table that exist with the same name as specified */
DROP TABLE IF EXISTS users CASCADE; /* Removes any table that exist with the same name as specified */


CREATE TABLE users (user_id serial PRIMARY KEY, user_name VARCHAR(20) UNIQUE NOT NULL, creation_date DATE);/* Create table named users with the variable user_id (varchar), user_name (char) thatt is unique and not null, creation_date (date) */
CREATE TABLE photos (photo_id serial PRIMARY KEY, image_url VARCHAR(5000), user_id INT REFERENCES users(user_id));/* Create table named photos with the variable photo_id (serial), image_url (char), foreign key referncing the user_id (serial) in the table users */
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
	('iiczokvitz1', '2022-09-03'),
	('lrickerd2', '2021-02-22'),
	('mkittredge3', '2022-01-31'),
	('oabrahamoff4', '2023-02-13'),
	('wbalsdone5', '2021-04-10'),
	('jhambly6', '2021-01-09'),
	('ldeware7', '2021-07-10'),
	('bheinonen8', '2020-12-25'),
	('ckiellor9', '2021-02-19');


INSERT INTO photos (image_url, user_id)

VALUES
    ('http://businessinsider.com/habitasse/platea/dictumst/etiam.jpg?aliquam=a&non=feugiat&mauris=et&morbi=eros&non=vestibulum&lectus=ac&aliquam=est&sit=lacinia&amet=nisi&diam=venenatis&in=tristique&magna=fusce&bibendum=congue&imperdiet=diam&nullam=id&orci=ornare&pede=imperdiet&venenatis=sapien&non=urna&sodales=pretium&sed=nisl&tincidunt=ut&eu=volutpat', 1),
	('http://instagram.com/sit/amet/sem/fusce.html?id=auctor&luctus=gravida&nec=sem&molestie=praesent&sed=id&justo=massa&pellentesque=id&viverra=nisl&pede=venenatis&ac=lacinia&diam=aenean&cras=sit&pellentesque=amet&volutpat=justo&dui=morbi&maecenas=ut&tristique=odio&est=cras&et=mi&tempus=pede&semper=malesuada&est=in&quam=imperdiet&pharetra=et&magna=commodo&ac=vulputate&consequat=justo&metus=in&sapien=blandit&ut=ultrices&nunc=enim&vestibulum=lorem&ante=ipsum&ipsum=dolor&primis=sit&in=amet&faucibus=consectetuer&orci=adipiscing&luctus=elit&et=proin&ultrices=interdum&posuere=mauris&cubilia=non&curae=ligula&mauris=pellentesque&viverra=ultrices&diam=phasellus&vitae=id&quam=sapien&suspendisse=in&potenti=sapien', 2),
	('http://yandex.ru/justo.html?consequat=nulla&varius=tempus&integer=vivamus&ac=in&leo=felis&pellentesque', 3),
	('https://scribd.com/accumsan/odio/curabitur/convallis/duis/consequat.xml?quisque=odio&id=justo&justo=sollicitudin&sit=ut&amet=suscipit&sapien=a', 4),
	('http://lycos.com/pede/venenatis/non/sodales/sed/tincidunt/eu.aspx?praesent=in&blandit=purus&nam=eu&nulla=magna&integer=vulputate&pede=luctus&justo=cum&lacinia=sociis&eget=natoque&tincidunt=penatibus&eget=et&tempus=magnis&vel=dis&pede=parturient&morbi=montes&porttitor=nascetur&lorem=ridiculus&id=mus&ligula=vivamus&suspendisse=vestibulum&ornare=sagittis&consequat=sapien&lectus=cum&in=sociis&est=natoque&risus=penatibus&auctor=et&sed=magnis&tristique=dis&in=parturient&tempus=montes&sit=nascetur&amet=ridiculus&sem=mus&fusce=etiam&consequat=vel&nulla=augue&nisl=vestibulum&nunc=rutrum&nisl=rutrum&duis=neque&bibendum=aenean&felis=auctor', 5),
	('https://delicious.com/nulla/sed.aspx?sapien=morbi&dignissim=non&vestibulum=quam&vestibulum=nec&ante=dui&ipsum=luctus&primis=rutrum&in=nulla&faucibus=tellus&orci=in&luctus=sagittis&et=dui&ultrices=vel&posuere=nisl&cubilia=duis&curae=ac&nulla=nibh&dapibus=fusce&dolor=lacus&vel=purus&est=aliquet&donec=at&odio=feugiat&justo=non&sollicitudin=pretium&ut=quis&suscipit=lectus&a=suspendisse&feugiat=potenti&et=in&eros=eleifend&vestibulum=quam&ac=a&est=odio&lacinia=in&nisi=hac&venenatis=habitasse&tristique=platea&fusce=dictumst&congue=maecenas&diam=ut', 6),
	('https://surveymonkey.com/semper/rutrum/nulla/nunc/purus.png?lacus=sollicitudin&at=vitae&turpis=consectetuer&donec=eget&posuere=rutrum&metus=at&vitae=lorem&ipsum=integer&aliquam=tincidunt&non=ante&mauris=vel&morbi=ipsum&non=praesent&lectus=blandit&aliquam=lacinia&sit=erat&amet=vestibulum&diam=sed&in=magna&magna=at', 7),
	('https://deliciousdays.com/erat/nulla/tempus.xml?mauris=mauris&enim=sit&leo=amet&rhoncus=eros&sed=suspendisse&vestibulum=accumsan&sit=tortor&amet=quis&cursus=turpis&id=sed&turpis=ante&integer=vivamus&aliquet=tortor&massa=duis&id=mattis&lobortis=egestas&convallis=metus&tortor=aenean&risus=fermentum&dapibus=donec&augue=ut&vel=mauris&accumsan=eget&tellus=massa&nisi=tempor', 8),
	('https://pagesperso-orange.fr/massa.jsp?semper=sit&porta=amet&volutpat=lobortis&quam=sapien&pede=sapien&lobortis=non&ligula=mi&sit=integer&amet=ac&eleifend=neque&pede=duis&libero=bibendum&quis=morbi&orci=non&nullam=quam&molestie=nec&nibh=dui&in=luctus&lectus=rutrum&pellentesque=nulla&at=tellus&nulla=in&suspendisse=sagittis&potenti=dui&cras=vel&in=nisl&purus=duis&eu=ac&magna=nibh&vulputate=fusce&luctus=lacus&cum=purus&sociis=aliquet&natoque=at&penatibus=feugiat&et=non&magnis=pretium&dis=quis&parturient=lectus&montes=suspendisse&nascetur=potenti&ridiculus=in&mus=eleifend&vivamus=quam&vestibulum=a&sagittis=odio&sapien=in&cum=hac&sociis=habitasse&natoque=platea&penatibus=dictumst&et=maecenas&magnis=ut&dis=massa&parturient=quis&montes=augue&nascetur=luctus&ridiculus=tincidunt&mus=nulla&etiam=mollis&vel=molestie&augue=lorem&vestibulum=quisque&rutrum=ut&rutrum=erat&neque=curabitur&aenean=gravida&auctor=nisi&gravida=at&sem=nibh&praesent=in&id=hac&massa=habitasse&id=platea&nisl=dictumst&venenatis=aliquam&lacinia=augue&aenean=quam&sit=sollicitudin&amet=vitae&justo=consectetuer&morbi=eget&ut=rutrum&odio=at&cras=lorem', 9),
	('https://time.com/eu/massa/donec.js?pede=tincidunt&ac=ante&diam=vel&cras=ipsum&pellentesque=praesent&volutpat=blandit&dui=lacinia&maecenas=erat&tristique=vestibulum&est=sed&et=magna&tempus=at&semper=nunc&est=commodo&quam=placerat&pharetra=praesent&magna=blandit&ac=nam&consequat=nulla&metus=integer&sapien=pede&ut=justo&nunc=lacinia&vestibulum=eget', 10),
	('https://hud.gov/libero/rutrum/ac/lobortis/vel/dapibus/at.jsp?eu=lorem&magna=integer&vulputate=tincidunt&luctus=ante&cum=vel&sociis=ipsum&natoque=praesent&penatibus=blandit&et=lacinia&magnis=erat&dis=vestibulum&parturient=sed&montes=magna&nascetur=at&ridiculus=nunc&mus=commodo&vivamus=placerat&vestibulum=praesent&sagittis=blandit&sapien=nam&cum=nulla&sociis=integer&natoque=pede&penatibus=justo&et=lacinia&magnis=eget&dis=tincidunt&parturient=eget&montes=tempus&nascetur=vel&ridiculus=pede&mus=morbi&etiam=porttitor&vel=lorem&augue=id&vestibulum=ligula&rutrum=suspendisse&rutrum=ornare&neque=consequat&aenean=lectus&auctor=in&gravida=est&sem=risus&praesent=auctor&id=sed&massa=tristique&id=in&nisl=tempus&venenatis=sit&lacinia=amet&aenean=sem&sit=fusce&amet=consequat&justo=nulla&morbi=nisl&ut=nunc&odio=nisl&cras=duis&mi=bibendum&pede=felis&malesuada=sed&in=interdum&imperdiet=venenatis&et=turpis&commodo=enim&vulputate=blandit&justo=mi&in=in&blandit=porttitor&ultrices=pede&enim=justo&lorem=eu&ipsum=massa&dolor=donec&sit=dapibus&amet=duis', 11),
	('http://last.fm/tortor/id/nulla/ultrices/aliquet/maecenas/leo.jsp?hac=turpis&habitasse=sed&platea=ante&dictumst=vivamus&morbi=tortor&vestibulum=duis&velit=mattis&id=egestas&pretium=metus&iaculis=aenean&diam=fermentum&erat=donec&fermentum=ut&justo=mauris&nec=eget&condimentum=massa&neque=tempor&sapien=convallis&placerat=nulla&ante=neque&nulla=libero&justo=convallis&aliquam=eget&quis=eleifend&turpis=luctus&eget=ultricies&elit=eu&sodales=nibh&scelerisque=quisque&mauris=id&sit=justo&amet=sit&eros=amet&suspendisse=sapien&accumsan=dignissim&tortor=vestibulum', 12),
	('https://hostgator.com/ridiculus/mus/etiam.html?nulla=vivamus&mollis=tortor&molestie=duis&lorem=mattis&quisque=egestas', 13),
	('https://goo.ne.jp/id/turpis/integer/aliquet/massa.xml?pretium=ornare&nisl=imperdiet&ut=sapien&volutpat=urna&sapien=pretium&arcu=nisl&sed=ut&augue=volutpat&aliquam=sapien&erat=arcu&volutpat=sed&in=augue&congue=aliquam&etiam=erat&justo=volutpat&etiam=in&pretium=congue&iaculis=etiam&justo=justo&in=etiam&hac=pretium&habitasse=iaculis&platea=justo&dictumst=in&etiam=hac&faucibus=habitasse&cursus=platea&urna=dictumst&ut=etiam&tellus=faucibus&nulla=cursus&ut=urna&erat=ut&id=tellus&mauris=nulla&vulputate=ut&elementum=erat&nullam=id&varius=mauris&nulla=vulputate&facilisi=elementum&cras=nullam&non=varius&velit=nulla&nec=facilisi&nisi=cras&vulputate=non&nonummy=velit&maecenas=nec&tincidunt=nisi&lacus=vulputate&at=nonummy&velit=maecenas&vivamus=tincidunt&vel=lacus&nulla=at&eget=velit&eros=vivamus&elementum=vel&pellentesque=nulla&quisque=eget&porta=eros&volutpat=elementum&erat=pellentesque&quisque=quisque&erat=porta', 14),
	('https://youtu.be/elit/ac/nulla/sed/vel.jpg?leo=ut&pellentesque=odio&ultrices=cras&mattis=mi&odio=pede&donec=malesuada&vitae=in&nisi=imperdiet&nam=et&ultrices=commodo&libero=vulputate&non=justo&mattis=in&pulvinar=blandit&nulla=ultrices&pede=enim&ullamcorper=lorem&augue=ipsum&a=dolor&suscipit=sit&nulla=amet&elit=consectetuer&ac=adipiscing&nulla=elit&sed=proin&vel=interdum&enim=mauris&sit=non&amet=ligula&nunc=pellentesque&viverra=ultrices&dapibus=phasellus&nulla=id&suscipit=sapien&ligula=in&in=sapien&lacus=iaculis&curabitur=congue&at=vivamus&ipsum=metus&ac=arcu&tellus=adipiscing&semper=molestie&interdum=hendrerit&mauris=at&ullamcorper=vulputate&purus=vitae&sit=nisl&amet=aenean&nulla=lectus', 15);


INSERT INTO likes (user_id, photo_id, like_date)

VALUES
    (1, 4, '2023-05-21 20:36:10'),
	(2, 5, '2023-05-11 02:03:36'),
	(3, 6, '2023-05-12 01:39:17'),
	(4, 7, '2023-07-10 13:08:05'),
	(5, 8, '2022-12-18 17:15:43'),
	(6, 9, '2023-04-19 04:25:14'),
	(7, 10, '2023-08-06 07:22:50'),
	(8, 11, '2022-10-10 23:42:20'),
	(9, 12, '2023-06-03 05:07:43'),
	(10, 13,'2023-03-08 07:49:37'),
	(11, 14, '2023-06-17 19:36:39'),
	(12, 15, '2023-02-20 12:45:05'),
	(13, 1, '2023-07-27 00:05:16'),
	(14, 2, '2023-06-08 05:39:42'),
	(15, 3, '2023-08-29 04:55:12');
   
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
	(13, 14, '2023-06-17 19:36:39'),
	(15, 15, '2023-02-20 12:45:05'),
	(14, 1, '2023-07-27 00:05:16');
   
   
   
/* retrieves data from the tables in the database, and returns the data */

select * from users;
select * from photos;
select * from likes;
select * from follow;

select user_name, photo_id from likes join users using (user_id) where photo_id between 9 and 9; 

select user_name,follower_id,followee_id from follow CROSS join users where followee_id between 9 and 9;

select user_name,photo_id from likes join users using (user_id) where photo_id between 9 and 9 and like_date between '2022-12-18 17:15:43' and '2023-05-21 20:36:10';