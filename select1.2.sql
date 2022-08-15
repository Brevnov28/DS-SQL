--количество исполнителей в жанре

SELECT g.genre_name, count(ga.artists_id) FROM genres g
   JOIN genres_artists ga ON g.id = ga.genres_id
   GROUP BY g.genre_name;

--количество треков в альбомах 2019-20гг
  
SELECT al.album_name, al.album_date , count(t.id) FROM albums al
   JOIN tracks t ON al.id = t.album_id
   WHERE al.album_date BETWEEN 2019 and 2020
   GROUP BY al.album_name, al.album_date;

--средняя продолжителбность треков
   
SELECT al.album_name, AVG(t.track_duration) FROM albums al
	JOIN tracks t ON al.id = t.album_id
	GROUP BY al.album_name;

--исполнители не выпустили альбом 2020г

SELECT ar.artist_name FROM artists ar
   JOIN albums_artists aa ON ar.id = aa.artists_id
   JOIN albums a ON a.id = aa.albums_id
   WHERE a.album_date < 2020; 

--сборники, конкретный исполнитель АВВА
  
SELECT c.collection_name FROM collections c
   JOIN tracks_collections tc ON c.id = tc.collection_id
   JOIN tracks t ON t.id = tc.track_id
   JOIN albums a ON a.id = t.album_id
   JOIN albums_artists aa ON a.id = aa.albums_id
   JOIN artists ar ON ar.id = aa.artists_id 
   WHERE ar.artist_name LIKE '%ABBA%';

--альбомы, более одного жанра
  
SELECT a.album_name FROM albums a
	JOIN albums_artists aa ON a.id = aa.albums_id
	JOIN artists ar ON ar.id = aa.artists_id
	JOIN genres_artists ga ON ga.artists_id = ar.id
	JOIN genres g ON g.id = ga.genres_id
	GROUP BY ar.artist_name, a.album_name
    HAVING count(ga.genres_id) > 1;

--треки вне сборников
   
SELECT t.track_name FROM tracks t
	LEFT JOIN  tracks_collections tc ON t.id = tc.track_id
	WHERE tc.track_id IS null;

-- самый короткий трек

SELECT ar.artist_name FROM artists ar
	JOIN albums_artists aa ON ar.id = aa.artists_id 
	JOIN albums a ON a.id = aa.albums_id
	JOIN tracks t ON t.album_id = a.id
	WHERE track_duration = (SELECT min(track_duration) FROM tracks);

-- альбомы с мин количеством треков

SELECT al.album_name , count(t.id) FROM albums al
    JOIN tracks t ON al.id = t.album_id
    GROUP BY al.album_name 
    HAVING count(t.id) in (
    	SELECT count(t.id) FROM albums al
    	JOIN tracks t ON al.id = t.album_id
        GROUP BY al.album_name
        ORDER BY count(t.id)
        LIMIT 1);