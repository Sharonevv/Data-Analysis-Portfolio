-- Week 1 - Day 3 SQLBolt Practice

-- Lesson 7 SELECT queries 101 (https://sqlbolt.com/lesson/select_queries_introduction)
-- Exercise 1,





SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;
