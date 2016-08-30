-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
		SELECT id FROM artists WHERE name='Queen';
		SELECT * FROM albums WHERE artist_id=51;


-- 2) [Count](S) how many tracks belong to the media type "Protected MPEG-4 video file".
   SELECT * FROM media_types;
   \dt
   
   SELECT COUNT(*) FROM tracks WHERE media_type_id=3;


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
   SELECT * FROM genres WHERE name='Electronica/Dance';
   SELECT unit_price FROM tracks WHERE genre_id = 15;
   SELECT * FROM tracks WHERE genre_id = 15 ORDER BY unit_price ASC LIMIT 1;

-- 4) Find  all the artists whose names start with A.

   SELECT name FROM artists WHERE name ILIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.
SELECT tracks.id, tracks.name FROM playlists_tracks, tracks WHERE playlist_id = 1 AND playlists_tracks.track_id=tracks.id;
