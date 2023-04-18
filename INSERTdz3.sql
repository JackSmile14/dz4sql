INSERT INTO Genres(Name_Genres) 
VALUES('rap'), ('jazz'),('pop music'),('rock music'),('heavy metal');


--Добавлеяем исполнителей
INSERT into Performers(Name_Performers)
values ('Ariana Grande'),('Lady Gaga'),('Billie Eilish'),('Rihanna'),
('Harry Styles'),('Doja Cat'),('Lorde'),('Madonna');

--Добавлеяем Альбомы
INSERT into Albums(Name_Albums, year_issue)
values ('Ariana Grande Albums','2010'),('Lady Gaga Albums','2012'),
('Billie Eilish Albums','2014'),('Rihanna Albums','2016'),
('Harry Styles Albums','2018'),('Doja Cat Albums','2020'),
('Lorde Albums','2022'),('Madonna Albums','2019');

--Добавлеяем Сборники
INSERT into Collections(Name_Collections, year_issue)
values ('Ariana Grande Lady Gaga ','2015'),('Billie Eilish Rihanna','2017'),
('Harry Styles Doja Cat','2019'),('Lorde Madonna','2020'),
('Ariana Grande Madonna','2021');

--Добавлеяем Треки
INSERT into Tracks(Name_Tracks, duration, Albums_id)
values('7 rings', '00:02:58', 1),
('Dangerous Woman', '00:03:12', 1),
('Bloody Mary', '00:02:44', 2),
('Poker Face', '00:02:38', 2),
('bad guy', '00:04:54', 3),
('bellyache', '00:01:59', 3),
('Diamonds', '00:02:25', 4),
('Love The Way My Lie', '00:02:43', 4),
('An Englishman in Jamaica', '00:04:36', 5),
('Nakisou Ni Naru Kurai', '00:01:33', 5),
('Best Friend', '00:01:55', 6),
('motive', '00:01:37', 6),
('Royals', '00:02:19', 7),
('Team', '00:05:33', 7),
('4 Minutes', '00:02:46', 8);

--Добавлеяем Исп_Жанры
INSERT into Performers_Genres(Performers_id,Genres_id)
values(1,1),
(2,3),
(3,3),
(4,2),
(5,4),
(6,5),
(7,3),
(8,2),
(8,3);

--Добавлеяем Исп_Альбомы
INSERT into Performers_Albums(Albums_id,Performers_id)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

--Добавлеяем Сборники_треки
INSERT into Collections_Tracks(Tracks_id,Collections_id)
values(1,1),
(2,1),
(4,1),
(5,2),
(6,2),
(7,3),
(8,3),
(9,4),
(10,4),
(12,5),
(11,5);