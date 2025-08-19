--Lesson 4 Exercise 1 (https://sqlbolt.com/lesson/filtering_sorting_query_results
--List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director FROM movies
  ORDER BY director;

--Lesson 4, Exercise 2
--List the last four Pixar movies released (ordered from most recent to least)
SELECT title, year FROM movies
  ORDER BY year DESC LIMIT 4;

--Lesson 4, Exercise 3
--List the first five Pixar movies sorted alphabetically
SELECT title FROM movies 
  ORDER BY title ASC LIMIT 5;

--Lesson 4, Exercise 4
--List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
  ORDER BY title ASC LIMIT 5 OFFSET 5;

Leson 5 Review: Simple SELECT https://sqlbolt.com/lesson/select_queries_review
