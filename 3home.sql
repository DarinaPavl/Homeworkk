-- 1. Количество исполнителей в каждом жанре
SELECT g.name AS genre_name, COUNT(gp.performer_id) AS performer_count
FROM Genres g
LEFT JOIN Genres_Performers gp ON g.id = gp.genre_id
GROUP BY g.name;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(*) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020;

-- 3. Средняя продолжительность треков по каждому альбому
SELECT a.name AS album_name, AVG(t.duration) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.name;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году
SELECT p.name AS performer_name
FROM Performers p
WHERE p.id NOT IN (
    SELECT pa.performer_id
    FROM Performers_Albums pa
    JOIN Albums a ON pa.album_id = a.id
    WHERE a.year = 2020
);

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (Queen)
SELECT DISTINCT c.name AS collection_name
FROM Collections c
JOIN Collections_Tracks ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Performers_Albums pa ON a.id = pa.album_id
JOIN Performers p ON pa.performer_id = p.id
WHERE p.name = 'Queen';