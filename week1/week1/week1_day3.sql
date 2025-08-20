-- Week 1 - Day 3 SQLBolt Practice

-- Lesson 7 OUTTER JOINs (https://sqlbolt.com/lesson/select_queries_with_outer_joins)
-- Exercise 1,





SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;
