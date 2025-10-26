--Week 1- Day6 SQLbolt Practice 

--Lesson 16 Creating Tables (https://sqlbolt.com/lesson/creating_tables)
-- Exercise, Create a new table named Database with the following columns:
--Name A string (text) describing the name of the database
-- Version A number (floating point) of the latest version of this database
--Download_count An integer count of the number of times this database was downloaded


CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);

--Lesson 17 Altering tables (https://sqlbolt.com/lesson/altering_tables)
--Exercise 1, Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE movies ADD COLUMN Aspect_Ratio FLOAT;


--Lesson 17, Exercise 2 Add another column named Language with a TEXT data type to store the language that the movie was released in.
--Ensure that the default for this language is English
ALTER TABLE movies ADD COLUMN Language TEXT DEFAULT "ENGLISH";




--Lesson 18 Dropping table (https://sqlbolt.com/lesson/dropping_tables)
--Exercise 1, We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE movies;

--Lesson 18, Exercise 2
--And drop the BoxOffice table as well
DROP TABLE  Boxoffice;

