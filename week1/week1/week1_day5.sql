-- Week 1 - Day 5 SQLBolt Practice

--Lesson 12 Order of execution of a Query  (https://sqlbolt.com/lesson/select_queries_order_of_execution) 
--Exercise 1, Find the number of movies each director has directed
SELECT director, COUNT(title) AS movies_per_director
  FROM movies GROUP BY director; 

--Lesson 12, Exercise 2
--Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) AS  gross_sales_per_director FROM movies
  JOIN Boxoffice ON movies.Id = Boxoffice.movie_Id GROUP BY director;




--Lesson 13 Inserting rows (https://sqlbolt.com/lesson/inserting_rows)
--Exercise 1, Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies VALUES(15, "Toy Story 4","Sharone Boois", 2025, 135);

--Lesson 13, Exercise 2
--Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. 
--Add the record to the BoxOffice table.
INSERT INTO boxoffice VALUES (15, 8.7, 340000000, 270000000);





--Lesson 14 Updating Rows (https://sqlbolt.com/lesson/updating_rows)
--Exercise 1, The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies SET Director = "John Lasseter" WHERE Title = "A Bug's Life";

--Lesson 14, Exercise 2
--The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies SET Year = 1999 WHERE Title = "Toy Story 2";

--Lesson 14, Exercise 3
--Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich



