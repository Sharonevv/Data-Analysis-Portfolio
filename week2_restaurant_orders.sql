/* 
This is the the SQL code for the project 
restaurant_orders table I did. I got the dataset from kiggle 
to help tackle real world data 
*/

--TOPIC 1: Basic SELECT 

--1. Write a query to select all columns  and all rows from the restaurant_orders table.
SELECT * FROM restaurant_orders;

--2. Write a query to select only the customer name and food item columns from restaurant_orders table.
SELECT Customer Name, Food Item FROM restaurant_orders;

--3. Write a query to show only the first 5 rows of the restaurant_orders table.
SELECT TOP 5 * FROM restaurant_orders;

--4. Write a query to select all orders where the (c4)Category is ‘Dessert’.
SELECT * FROM restaurant_orders WHERE Category = 'Dessert'; 

--5. Write a query to select all orders where the quantity is greater than 2.
SELECT * FROM restaurant_orders WHERE Quantity > 2;



--TOPIC 2: Filtering with WHERE 

--6. Write a query to select all orders where the payment method is ‘Card’ and the price is greater than 20.
SELECT * FROM restaurant_orders 
  WHERE Payment Method ='Card' AND Price > 5;

--7. Write a query to select all orders where the food item starts with the letter ‘C’.
SELECT FROM restaurant_orders WHERE Food Item ='C%';

--8. Write a query to select all orders where the category is either ‘Dessert’ or ‘Starter’.
SELECT * FROM restaurant_orders 
  WHERE Category IN ('DESSERT','Starter');

--9. Write a query to select all orders where the order time is after 12:00 PM.
SELECT * FROM restaurant_orders WHERE CAST (Order Time AS Time) >'12:00';

--10. Write a query to select all orders where the price is between 17 and 23.
SELECT * FROM restaurant_orders WHERE Price BETWEEN 17 AND 23;


