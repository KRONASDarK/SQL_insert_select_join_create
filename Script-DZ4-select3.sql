SELECT DISTINCT a.name AS Album_Name
FROM Albums a
JOIN PerformersAlbums pa ON a.id = pa.album_id
JOIN Performers p ON pa.performer_id = p.id
WHERE (
    SELECT COUNT(*)
    FROM PerformersGenres pg
    WHERE pg.performer_id = p.id
) > 1;

SELECT t.name AS Track_Name
FROM Tracks t
WHERE t.id NOT IN (
    SELECT tracks_id
    FROM CollectionsTracks
);

SELECT p.name AS Performer_Name
FROM Performers p
JOIN PerformersAlbums pa ON p.id = pa.performer_id
JOIN Tracks t ON pa.album_id = t.album_id
WHERE t.duration = (
    SELECT MIN(duration)
    FROM Tracks
);

SELECT a.name AS Album_Name
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.id
HAVING COUNT(t.id) = (
    SELECT MIN(track_count)
    FROM (
        SELECT COUNT(id) AS track_count
        FROM Tracks
        GROUP BY album_id
    ) subq
);