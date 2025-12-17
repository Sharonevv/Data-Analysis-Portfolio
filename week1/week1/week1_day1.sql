-- Week 1 - Day 1 SQLBolt Practice
SQL SELECT Queries & Data Filtering
Practiced querying structured datasets using SQL to extract and analyze relevant information. 
I Applied SELECT statements, logical operators (AND, OR), WHERE clauses, 
and pattern matching (LIKE) to filter and retrieve data 
based on specific conditions. This exercise demonstrates the ability to:
identify and extract precise data points from larger datasets
apply logical constraints to support data-driven decision-making
map relationships and patterns within structured data for insights

-- Lesson 1 SELECT queries 101 (https://sqlbolt.com/lesson/select_queries_introduction)
-- Exercise 1, Find the title of each film
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



--Lesson 2 Queries with constraints [WHERE] (https://sqlbolt.com/lesson/select_queries_with_constraints)
--Excercise 1, Find the movie with a row id of 6
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




--Lesson 3 Queries with constraints [text patterns] (https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2)
--Exercise 1 Find all the Toy Story movies
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
