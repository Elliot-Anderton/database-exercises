USE codeup_test_db;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        album_name  VARCHAR(100) NOT NULL,
                        release_date INT,
                        sales INT NOT NULL,
                        genre VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id)
);