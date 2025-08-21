-- Week 1 - Day 3 SQLBolt Practice

-- Lesson 7 OUTTER JOINs (https://sqlbolt.com/lesson/select_queries_with_outer_joins)
-- Exercise 1, Find the list of all buildings that have employees 
SELECT DISTINCT building FROM employees;

--Lesson 7, Exercise 2
--Find the list of all buildings and their capacity
SELECT * FROM buildings 

--Lesson 7, Exercise 3
--List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;


--Lesson 8 A short note on NULLs (https://sqlbolt.com/lesson/select_queries_with_nulls) 
--Exercise 1, Find the name and role of all employees who have not been assigned to a building
SELECT name, role FROM employees
WHERE building IS NULL;

--Lesson 8, Exercise 2
--Find the names of the buildings that hold no employees 
SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;




--Lesson 9, Queries with expressions (https://sqlbolt.com/lesson/select_queries_with_expressions)
--Exercise 1, List all movies and their combined sales in millions of dollars
 SELECT title, (international_sales + domestic_sales) /1000000 as gross 
   from movies join boxoffice on movies.id= boxoffice.movie_id;

--Lesson 9, Exercise 2
--List all movies and their ratings in percent






