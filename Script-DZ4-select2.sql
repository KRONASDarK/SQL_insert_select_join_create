SELECT g.name AS Genre_Name,
       COUNT(pg.performer_id) AS Number_Of_Performers
FROM Genres g
JOIN PerformersGenres pg ON g.id = pg.genre_id
GROUP BY g.name;

INSERT INTO Albums (name, year) VALUES ('Revival', '2020');
INSERT INTO Tracks (name, duration, album_id) VALUES ('Dance Again', 3.45, 4);
INSERT INTO Tracks (name, duration, album_id) VALUES ('Back to Life', 4.15, 4);
SELECT id FROM Albums ORDER BY id DESC LIMIT 1;

SELECT a.name AS Album_Name,
       ROUND(AVG(t.duration), 2) AS Average_Duration
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
GROUP BY a.name;

SELECT p.name AS Performer_Name
FROM Performers p
WHERE NOT EXISTS (
    SELECT *
    FROM PerformersAlbums pa
    JOIN Albums a ON pa.album_id = a.id
    WHERE pa.performer_id = p.id AND a.year = 2020
);

SELECT c.name AS Collection_Name
FROM Collections c
JOIN CollectionsTracks ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.tracks_id = t.id
JOIN PerformersAlbums pa ON t.album_id = pa.album_id
JOIN Performers p ON pa.performer_id = p.id
WHERE p.name = 'Michael Jackson';

