/* 
This is the the SQL code for the project 
restaurant_orders table I did. I got the dataset from kiggle 
to help tackle real world data 
*/

--1. Write a query to select all columns  and all rows from the restaurant_orders table.
SELECT * FROM restaurant_orders;

--2. Write a query to select only the customer name and food item columns from restaurant_orders table.
SELECT Customer Name, Food Item FROM restaurant_orders;

--3. Write a query to show only the first 5 rows of the restaurant_orders table.
SELECT TOP 5 * FROM restaurant_orders;

--4. Write a query to select all orders where the (c4)Category is ‘Dessert’.
SELECT Category FROM restaurant_orders WHERE Category = 'Dessert'; 

--5. Write a query to select all orders where the quantity is greater than 2.
SELECT Quantity FROM restaurant_orders WHERE Quantity > 2;






