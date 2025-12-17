-- Week 1 - Day 2 SQLBolt Practice
Data Filtering, Sorting, and Joins Practice
I worked on querying structured datasets using SQL 
to extract actionable insights. Applied filtering and sorting techniques 
to organize data and identify meaningful patterns. 
Explored multi-table analysis through INNER JOINs to combine datasets 
and analyze relationships, simulating real-world process mapping and data-driven decision-making.


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



--Lesson 6 Multi-table queries with JOINS (https://sqlbolt.com/lesson/select_queries_with_joins) 
--Exercise 1, Find the domestic and international sales for each movie
SELECT title, domestic_sales, international_sales
  FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;

--Lesson 6, Exercise 2 
--Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id
  WHERE international_sales > domestic_sales;

--Lesson 6, Exercise 3 
--List all the movies by their ratings in descending order
SELECT title, rating FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id 
  ORDER BY rating DESC;








