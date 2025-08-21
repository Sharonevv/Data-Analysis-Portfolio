

--Lesson 10 Queries with aggregates (Pt. 1) (https://sqlbolt.com/lesson/select_queries_with_aggregates) 
--Exercise 1 Find the longest time that an employee has been at the studio 
SELECT MAX (Years_employed) AS studio_time
  FROM employees; 

--Lesson 10, Exercise 2
--For each role, find the average number of years employed by employees in that role
SELECT role, AVG(years_employed) as Avg_yrs_employed
FROM employees
GROUP BY role;

--Lesson 10, Exercise 3
--Find the total number of employee years worked in each building
SELECT building, SUM (Years_employed) AS Sum_of_years_worked 
  FROM employees GROUP BY building ;
