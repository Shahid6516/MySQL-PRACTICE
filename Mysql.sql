CREATE DATABASE CLASSDB;
-- create a database using CREATE DATABASE command
SHOW DATABASES;
-- list all the databases available on your MySQL server
CREATE DATABASE IF NOT EXISTS CLASSDB;
-- it only create database if it is not exist.
DROP DATABASE CLASSDB;
-- Deleting a database
USE CLASSDB;
-- Select db to work and only work on selectd db
SHOW TABLES;
-- this is used to list all the tables present in the currently selected database.

CREATE DATABASE SDB;
-- create a database

USE SDB;
-- select the database

CREATE TABLE USERS (
    EMAIL VARCHAR(50),
    PASSWORD VARCHAR(50),
    USERNAME VARCHAR(50),
    ID INT PRIMARY KEY AUTO_INCREMENT -- it is used if we want to uniquely identifer something 
)
-- CREATE A TABLE (it's like schema and schema is just a bluprint)

SHOW TABLES;
-- list all the tables in selected DB

DESC USERS;
-- Describe the table

INSERT INTO
    USERS (USERNAME, EMAIL, PASSWORD)
VALUES (
        'SHAHID',
        'wdythe@gmail.com',
        '123'
    );
-- INSERT DATA INTO THE TABLE

INSERT INTO
    USERS (USERNAME, EMAIL, PASSWORD)
VALUES (
        'ZAHID',
        'zahid@gmail.com',
        'zahid@123'
    );
-- insert data into the tables

SELECT ID, EMAIL, USERNAME FROM USERS;
-- SELECT DATA FROM THE TABLE

SELECT * FROM USERS;
-- SELECT ALL THE DATA FROM THE TABLE

INSERT INTO
    USERS (USERNAME, EMAIL, PASSWORD)
VALUES (
        'KALLAN',
        'KALLAN@GMAIL.COM',
        '123'
    ),
    (
        'MALLAN',
        'MALLAN@GMAIL.COM',
        '1234'
    ),
    (
        'JALLAN',
        'JALLAN@GMAIL.COM',
        '124'
    );
-- INSERT MULTIPLE DATA INTO THE TABLES

####### * CREATE A POSTS TABLE WITH ID, CONTENT,USER ID, CREATED_AT COLUMNS * #######
USE SDB;

CREATE TABLE POSTS (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CONTENT VARCHAR(255),
    USER_ID INT, -- to whom the post belong
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO POSTS (CONTENT, USER_ID) VALUES ("HELLO WORLD", 1);
--INSERT DATA INO THE TABLE

SELECT * FROM POSTS;
-- select all the data from the tabel

SELECT * FROM USERS WHERE ID = 3;
-- YOU CAN FILTER AND WRITE THE CONDITION WHAT DATA YOU WANT

SELECT * FROM POSTS WHERE USER_ID = 1 AND CONTENT = 'HELLO WORLD';
-- FILTER

-- OPERATOR IN MYSQL -
-- =, != ,<,>,<=,>=,AND,OR , NOT,IN,BETWEEN,LIKE,ISNULL,IS NOT NULL

DELETE FROM POSTS WHERE ID = 1;   -- DELETE A ROW FROM THE TABLE

DROP TABLE POSTS;   -- DELETE A TABLE


UPDATE POSTS SET CONTENT = 'MY WORLD' WHERE ID = 2;      --Only the post with ID = 2 was updated.


