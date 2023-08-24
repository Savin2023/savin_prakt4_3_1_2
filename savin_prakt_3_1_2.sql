CREATE DATABASE IF NOT EXISTS practic;
USE practic;
ALTER DATABASE practic CHARACTER SET = utf8;
DROP TABLE shops;
CREATE TABLE IF NOT EXISTS shops(id int not null, title varchar(30) not null,
 address varchar(30) not null , city varchar(20) not null,`working hours` varchar(15) not null,
 index(id,title));
INSERT INTO shops VALUES(0,'Пятёрочка','ул. Семёнова, 47','Москва','8:00-22:00');
-- Вариант 2
INSERT INTO shops VALUES(1,'Перекрёсток','ул. Семёнова, 48','Москва','круглосуточно'),
						(2,'Пятёрочка','ул. Вовы, 32','Санкт-Петербург','8:30-22:30'),
						(3,'Перекрёсток','ул. Татьяны Б., 1','Ижевск','9:00-21:00');

UPDATE shops SET title='Пятерочка 2' WHERE title='Пятерочка';
UPDATE shops SET address='пр-т Орлова,33' WHERE city='Ижевск';
UPDATE shops SET address='Рядом с домом', title="Всегда открыто" WHERE `working hours`='круглосуточно';
DELETE FROM shops WHERE id=2;

