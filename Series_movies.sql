CREATE DATABASE IF NOT EXISTS Ireflix;
DROP DATABASE Ireflix;
USE Ireflix;
SELECT*FROM movies;

-- Define model

-- Create users table
CREATE TABLE users (
    username VARCHAR(35),
    name VARCHAR(35) NOT NULL,
    surname VARCHAR(35) NOT NULL,
    password VARCHAR(15) NOT NULL,
    PRIMARY KEY(username)
);
select*from users;

-- Create Actors table
CREATE TABLE actors (
	id_actor INT auto_increment,
    name VARCHAR(35) NOT NULL,
    surname VARCHAR(35) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_actor)
);

-- Create directors table
CREATE TABLE directors (
	id_director INT, 
    name VARCHAR(35) NOT NULL,
    surname_dir VARCHAR(35),
    nationality VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_director)
);

-- Create Movies table
CREATE TABLE movies (
    id_movies INT ,  
    name VARCHAR(35) NOT NULL,
    genre VARCHAR(35) NOT NULL,
    duration TIME NOT NULL,
    qualification DECIMAL(2,1) CHECK (qualification BETWEEN 1 AND 10),
    protagonist_name VARCHAR(35) NOT NULL,
    protagonist_surname VARCHAR(35) NOT NULL,
    id_protagonist INT NOT NULL,
    id_director INT NOT NULL,
    PRIMARY KEY (id_movies),
	FOREIGN KEY (id_protagonist) REFERENCES actors(id_actor),
	FOREIGN KEY (id_director) REFERENCES directors(id_director) 
);

-- Create Movies series
CREATE TABLE series (
    id_series INT ,  
    name VARCHAR(35) NOT NULL, 
    genre VARCHAR(20) NOT NULL,
    qualification DECIMAL(2,1) ,  
    protagonist_name VARCHAR(35) NOT NULL,
    protagonist_surname VARCHAR(35) NOT NULL,
    director_surname VARCHAR(35) NOT NULL,
    seasons INT NOT NULL,
    id_protagonist INT NOT NULL,
	id_director INT NOT NULL,
    PRIMARY KEY (id_series),
    FOREIGN KEY (id_protagonist) REFERENCES actors(id_actor),
	FOREIGN KEY (id_director) REFERENCES directors(id_director)
);


-- Create UserMoviesActivity table

CREATE TABLE UserMoviesActivity (
    username VARCHAR(35),
    id_UserMoviesActivity INT ,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (username, id_UserMoviesActivity),
    FOREIGN KEY (username) REFERENCES users(username),
    FOREIGN KEY (id_UserMoviesActivity) REFERENCES movies(id_movies)
);

-- Create UserSeriesActivity table
CREATE TABLE UserSeriesActivity (
    Username VARCHAR(35),
    ID_userSeriesActivity INT ,
    Genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (Username, ID_userSeriesActivity),
    FOREIGN KEY (Username) REFERENCES Users(Username),
    FOREIGN KEY (ID_userSeriesActivity) REFERENCES Series(ID_Series)
);

ALTER TABLE UserSeriesActivity MODIFY ID_userSeriesActivity INT;


-- 4) Managing Movie Release Dates in Relational Databases: Add Years Movie Released

SELECT*FROM movies; -- outr opscao eh criar uma tebal alternative e dar um join com essa tabela movies
ALTER TABLE movies
ADD COLUMN  release_date DATE ;

alter table movies DROP COLUMN release_date;


-- 5)Total Movie Appearances of a Famous Protagonist Actor ‘Leonardo DiCaprio’

-- select 'Leaonaro DiCaprio' and movies he participated
SELECT 
    movies.name AS movie_name, 
    movies.qualification, 
    actors.name AS actor_name,
	actors.surname AS actor_surname
FROM actors INNER JOIN movies 
ON actors.id_actor = movies.id_protagonist
WHERE actors.name LIKE 'Leonardo' AND actors.surname LIKE 'Dicaprio';

-- count movies He Leaonardo DiCaprio participeted
SELECT 
    COUNT(*) AS total_movies_actor
FROM actors
INNER JOIN movies 
    ON actors.id_actor = movies.id_protagonist
WHERE actors.name LIKE 'Leonardo' AND actors.surname LIKE 'Dicaprio';

-- 6)Obtain the list of actors who were protagonist in movies 

select*from movies;
select movies.name, movies.qualification, actors.name
from movies join actors
ON movies.id_movies = actors.id_actor;

-- looking for evalute my project I will obtain a list of directs commum choosed for each users.

SELECT  
    u.username,  
    u.name AS user_name,  
    COUNT(d.id_director) AS num_directors,
    GROUP_CONCAT( d.name SEPARATOR ', ') AS director_names
FROM users AS u  
JOIN UserSeriesActivity usa ON u.username = usa.Username  
JOIN series s ON usa.ID_userSeriesActivity = s.id_series  
JOIN directors d ON s.id_director = d.id_director 
GROUP BY u.username, u.name;



