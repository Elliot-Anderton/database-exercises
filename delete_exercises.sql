USE codeup_test_db;

    DELETE
        FROM albums
    WHERE release_date > 1990;

    DELETE
        FROM albums
    WHERE artist LIKE '%Various artists%';

    DELETE
        FROM albums
    WHERE genre LIKE '%disco%';