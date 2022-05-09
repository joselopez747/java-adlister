CREATE DATABASE adlister_db;
CREATE USER 'adlister_db_user'@'localhost' IDENTIFIED BY 'codeup';
GRANT ALL ON adlister_db.* TO 'adlister_db_user'@'localhost';

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
                     id int unsigned NOT NULL AUTO_INCREMENT,
                     user_id int unsigned NOT NULL,
                     title varchar(240) NOT NULL,
                     description text NOT NULL,
                     PRIMARY KEY (id),
                     CONSTRAINT ads_user_id_fk FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id int unsigned NOT NULL AUTO_INCREMENT,
                       username varchar(50) NOT NULL,
                       email varchar(60) NOT NULL,
                       password varchar(255) NOT NULL,
                       PRIMARY KEY (id)
);

USE adlister_db;

INSERT INTO users (username, email, password) VALUES ('admin', 'admin@admin.net', 'password');
SELECT id FROM users WHERE username = 'admin';