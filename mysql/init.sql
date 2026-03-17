DROP TABLE IF EXISTS answer;
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS difficulty;
DROP TABLE IF EXISTS user;

CREATE DATABASE quiz;
USE quiz;

--
-- USER TABLES
--

CREATE TABLE user (
    userID          INT PRIMARY KEY AUTO_INCREMENT,
    username        VARCHAR(50) UNIQUE,
    xp              INT DEFAULT 0,
    password        TEXT
);

--
-- QUIZ TABLES
--

CREATE TABLE difficulty (
    difficultyID           INT PRIMARY KEY AUTO_INCREMENT,
    difficultyLabel        VARCHAR(100)
);

CREATE TABLE category (
    categoryID           INT PRIMARY KEY AUTO_INCREMENT,
    categoryLabel        VARCHAR(100)
);

CREATE TABLE question (
    questionID      INT PRIMARY KEY AUTO_INCREMENT,
    questionText    TEXT,
    categoryID      INT,
    difficultyID    INT,
    FOREIGN KEY (categoryID) REFERENCES category(categoryID),
    FOREIGN KEY (difficultyID) REFERENCES difficulty(difficultyID)
);

CREATE TABLE answer (
    answerID        INT PRIMARY KEY AUTO_INCREMENT,
    answerText      TEXT,
    isCorrect       BOOLEAN DEFAULT 0,
    questionID      INT,
    FOREIGN KEY (questionID) REFERENCES question(questionID)
)