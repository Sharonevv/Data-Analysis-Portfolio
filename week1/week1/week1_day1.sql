-- Week 1 - Day 1 SQLBolt Practice
-- By me: Sharone

-- Lesson 1, Exercise 1
-- Find the title of each film
SELECT title FROM movies;

-- Lesson 1, Exercise 2
-- Find the director of each film
SELECT director FROM movies;

-- Lesson 1, Exercise 3
-- Find the title and director of each film
SELECT title, director FROM movies;

-- Lesson 1, Exercise 4
-- Find the title and year of each film
SELECT title, year FROM movies;

-- Lesson 1, Exercise 5
-- Find all the information about each film
SELECT * FROM movies;



--Lesson 2, Excercise 1
--Find the movie with a row id of 6
SELECT title FROM movies WHERE id = 6

--Lesson 2, Exercise 2
--Find the movies released in the years between 2000 and 2010 
SELECT title FROM movies WHERE year BETWEEN 2000 AND 2010;

--Lesson 2, Excercise 3
--Find the movies not released in the years between 2000 and 2010
SELECT title FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

--Lesson 2, Exercise 4
--Find the first 5 Pixar movies and their release year
SELECT title FROM movies WHERE year <= 2003;




--Lesson 3, Exercise 1
--Find all the Toy Story movies
SELECT title FROM movies WHERE title LIKE "toy stor%";

--Lesson 3, Exercise 2
--Find all the movies directed by John Lasseter 
SELECT title FROM movies WHERE Director ='John Lasseter';

--Lesson 3, Exercise 3
--Find all the movies (and director) not directed by John Lasseter
SELECT title, director FROM movies WHERE director!='John Lasseter';

--Lesson 3, Exercise 4
--Find all the WALL-* movies
SELECT title FROM movies WHERE title LIKE "WALL__";
