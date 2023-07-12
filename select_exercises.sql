USE codeup_test_db;

SELECT album_name, artist
    FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date, album_name
    FROM albums
WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre, album_name
    FROM albums
WHERE album_name = 'Nevermind';

SELECT album_name, release_date
    FROM albums
WHERE release_date BETWEEN 1990 and 1999;

SELECT album_name, sales
    FROM albums
WHERE sales < 20;

SELECT album_name, genre
    FROM albums
WHERE genre LIKE '%rock%';