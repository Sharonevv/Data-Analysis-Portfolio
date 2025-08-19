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




--Lesson 5 Review: Simple SELECT (https://sqlbolt.com/lesson/select_queries_review)
--Exercise 1, List all the Canadian cities and their populations
SELECT city, population FROM north_american_cities 
  WHERE country = 'Canada';

--Lesson 5, Exercise 2 
--Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM north_american_cities
  WHERE country = 'United States' ORDER BY latitude DESC;

--Lesson 5, Exercise 3 List all the cities west of Chicago, ordered from west to east
SELECT city, longitude FROM north_american_cities 
  WHERE longitude < -87.629798 ORDER BY longitude ASC;

--Lesson 5, Exercise 4
--List the two largest cities in Mexico (by population)
SELECT city, population FROM north_american_cities 
  WHERE country = 'Mexico' ORDER BY population DESC LIMIT 2;

--Lesson 5, Exercise 5
--List the third and fourth largest cities (by population) in the United States and their population
SELECT city, population FROM north_american_cities 
  WHERE country = 'United States' ORDER BY population DESC LIMIT 2 OFFSET 2;



-- Lesson 6 (      ) 
--Exercise 1, 








