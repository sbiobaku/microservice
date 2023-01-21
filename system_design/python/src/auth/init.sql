Drop USER "auth_user"@"localhost";

CREATE USER "auth_user"@"localhost" IDENTIFIED BY 'testing1234';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES  ON auth.* TO "auth_user"@"localhost";

USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY key,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) values ("saifbiobaku@slb.com", "testing1234");