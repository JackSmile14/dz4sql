--Количество исполнителей в каждом жанре
SELECT Name_Genres, COUNT(Performers_id) FROM Genres j
left JOIN Performers_Genres auj ON j.id = auj.Genres_id
GROUP BY j.Name_Genres;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(Name_Tracks) FROM Tracks t
JOIN Albums a ON t.Albums_id = a.id
WHERE year_issue in ('2019', '2020');

--Средняя продолжительность треков по каждому альбому
SELECT Name_Albums, AVG(duration) FROM Albums a
JOIN Tracks t ON t.Albums_id = a.id
group by Name_Albums;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT Name_Performers FROM Performers au
where Name_Performers not in (SELECT Name_Performers FROM Performers au
	JOIN Performers_Albums aua ON au.id = aua.Performers_id
	join Albums a on aua.Albums_id = a.id
	where year_issue in ('2020')	
	);

--Названия сборников, в которых присутствует конкретный исполнитель (Rihanna). 
--немного накосячи с вводом(привязкой треков к сборникам) данных получилоась логическа неувязка выдачи
select DISTINCT Name_Collections FROM Collections s
	left JOIN Collections_Tracks st ON st.Collections_id = s.id
	left JOIN Tracks t ON t.id = st.Tracks_id
	left JOIN Albums a ON a.id = t.Albums_id
	left JOIN Performers_Albums pa ON pa.Performers_id = a.id
	left JOIN Performers au ON pa.Performers_id = au.id
	where Name_Performers like '%Rihanna%'	
;

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра
SELECT distinct Name_Albums, count(auj.Performers_id) FROM Albums a
JOIN Performers_Albums aua ON a.id = aua.Albums_id
JOIN Performers au ON aua.Performers_id = au.id
JOIN Performers_Genres auj ON au.id = auj.Performers_id
group by Name_Albums, auj.Performers_id
having  count(auj.Performers_id) > 1;

--Наименования треков, которые не входят в сборники

select Name_Tracks from Tracks t
left join Collections_Tracks st on t.id = st.Tracks_id
where st.Tracks_id is null

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
--тут конечно лучше where но до having я додумался раньше
SELECT Name_Performers, duration FROM Performers au
JOIN Performers_Albums aua ON au.id = aua.Performers_id
JOIN Albums a ON aua.Albums_id = a.id
JOIN Tracks t ON a.id = t.Albums_id
group by Name_Performers, duration
having duration = (select min(duration) from Tracks);


--Названия альбомов, содержащих наименьшее количество треков..

select distinct  Name_Albums FROM Albums a
JOIN Tracks t ON a.id = t.Albums_id
group by Albums_id, Name_Albums
having  count(t.id) = (select count(t.id) from Tracks t
	group by Albums_id
	order by 1
	limit 1
);











