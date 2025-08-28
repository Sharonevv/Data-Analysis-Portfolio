-- Week 1 - Day 5 SQLBolt Practice

--Lesson 12 Order of execution of a Query  (https://sqlbolt.com/lesson/select_queries_order_of_execution) 
--Exercise 1, Find the number of movies each director has directed
SELECT director, COUNT(title) AS movies_per_director
  FROM movies GROUP BY director; 

--Lesson 12, Exercise 2
--Find the total domestic and international sales that can be attributed to each director
