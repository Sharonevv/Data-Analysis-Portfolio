

--Lesson 10 Queries with aggregates (Pt. 1) (https://sqlbolt.com/lesson/select_queries_with_aggregates) 
--Exercise 1 Find the longest time that an employee has been at the studio 
SELECT MAX (Years_employed) AS studio_time
  FROM employees; 
