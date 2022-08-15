SELECT album_name, album_date FROM albums    
	WHERE album_date = 2018;

SELECT track_name, track_duration FROM tracks t    
	ORDER BY track_duration DESC
	LIMIT 1;
	
SELECT track_name FROM tracks 
	WHERE track_duration >= 210;
	
SELECT collection_name FROM collections 
	WHERE collection_date BETWEEN 2018 and 2020;
	
SELECT artist_name FROM artists
	WHERE artist_name NOT LIKE '%% %%';
	
SELECT track_name FROM tracks
	WHERE track_name LIKE '%%My%%';

-- 1 название и год выхода альбомов, вышедших в 2018 год

    SELECT  name, year_of_release FROM albums
    WHERE year_of_release BETWEEN '2018-01-01' AND '2018-12-31';


-- 2 название и продолжительность самого длительного трека

    SELECT   name, tracklength FROM tracks
    ORDER BY tracklength DESC;

-- 3  название треков, продолжительность которых не менее 3,5 минуты;

    SELECT  name FROM tracks
    WHERE duration >= 03.50;

--4 названия сборников, вышедших в период с 2018 по 2020 год включительно;

    SELECT name FROM collections
    WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31';

--5 исполнители, чье имя состоит из 1 слова;

    SELECT name FROM executor
    WHERE name NOT LIKE '%% %%';
 
--6 название треков, которые содержат слово "мой"/"my";

    SELECT name FROM tracks
    WHERE name LIKE '%мой%%';



    

