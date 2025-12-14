SELECT name AS track_name, duration FROM Tracks ORDER BY duration DESC LIMIT 1;

SELECT name FROM Tracks WHERE duration >= 3.5;

SELECT name FROM Collections WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM Performers WHERE name NOT LIKE '% %';

SELECT name FROM Performers WHERE name SIMILAR TO '[^ ]+';

SELECT name FROM Tracks WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%';
