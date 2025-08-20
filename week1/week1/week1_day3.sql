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


--Lesson 8 (      ) 
--Exercise 1, hi
