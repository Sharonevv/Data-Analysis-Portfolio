-- Week 1 - Day 4 SQLBolt Practice
I Analyzed employee data using SQL aggregate functions to summarise workforce metrics and identify patterns across roles 
and buildings. Applied MAX, AVG, SUM, and COUNT alongside GROUP BY and HAVING clauses 
to evaluate employee tenure, role distribution, and organisational capacity.

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




--Lesson 11, Queries with aggregates (Pt. 2 ) (https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2)
--Exercise 1, Find the number of Artists in the studio (without a HAVING clause)
SELECT COUNT(role) FROM employees WHERE role ='Artist';

--Lesson 11, Exercise 2
--Find the number of Employees of each role in the studio
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

--Lesson 11, Exercise 3
--Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed) FROM employees 
  GROUP BY role HAVING role = "Engineer";




