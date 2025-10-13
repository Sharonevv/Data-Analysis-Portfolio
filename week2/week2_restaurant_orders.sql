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


--TOPIC 3: SORTING Results

--11. Write a query to select all orders and sort them by price in ascending order.
SELECT * FROM restaurant_orders ORDER BY price ASC;

--12. Write a query to select all orders and sort first by quantity descending, then by price ascending.
SELECT * FROM restaurant_orders ORDER BY Quantity DESC, Price ASC;

--13. Write a query to select all orders and sort them alphabetically by customer name.
SELECT * FROM restaurant_orders ORDER BY Customer Name ASC;


--TOPIC 4: AGGREGATION Functions 

--14. Write a query to count the total number of orders in restaurant_orders.
SELECT COUNT(*) AS Total_num_orders FROM restaurant_orders; 

--15. Write a query to find the maximum price among all orders.
SELECT MAX(Price) AS Max_order_price FROM restaurant_orders;

--16. Write a query to find the minimum quantity among all orders.
SELECT MIN(Quantity) AS Min_order_quantity FROM restaurant_orders; 

--17. Write a query to calculate the average price of all orders.
SELECT AVG(Price) AS Avg_order_price FROM restaurant_orders;

--18. Write a query to calculate the total quantity of items ordered.
SELECT SUM(Quantity) AS Sum_of_quantity FROM restaurant_orders;


--TOPIC 5: GROUP BY

--19. Write a query to calculate the total quantity ordered for each category.
SELECT Category, SUM(Quantity) AS total_quantity 
  FROM restaurant_orders GROUP BY Category; 

--20. Write a query to calculate the average price for each food item.
SELECT Food Item, AVG(Price) AS Avg_prics 
  FROM restaurant_orders GROUP BY Food Item;

--21. Write a query to count the number of orders for each payment method.
SELECT COUNT(*) AS Num_orders FROM restaurant_orders
  GROUP BY Payment Method;

--22. Write a query to find the highest price in each category.
SELECT Category, MAX(Price) AS Max_price FROM restaurant_orders 
  GROUP BY Category;


--TOPIC 6 LIMIT / OFFSET 

--23. Write a query to select the top 3 most expensive orders.
SELECT TOP 3 * FROM restaurant_orders 
  ORDER BY price DESC;

--24. Write a query to skip the first 5 orders and show the next 5 orders.
SELECT * FROM restaurant_orders ORDER BY order_id
  OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;


--TOPIC 7 Combining Clauses

--25. Write a query to select customer name, food item, and price for all dessert orders, sorted by price descending.
SELECT Customer Name, Food Item, Price FROM restaurant_orders WHERE Category = 'Dessert' 
  ORDER BY Price DESC;

--26. Write a query to count the number of orders per customer, but only include orders where quantity is greater than 1.
SELECT customer_name, COUNT(*) AS num_orders
  FROM restaurant_orders WHERE quantity > 1 GROUP BY customer_name;





















