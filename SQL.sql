1. Select all the records from the "Customers" table.
SELECT * FROM Customers;

2. Get distinct countries from the Customers table.
SELECT DISTINCT country FROM Customers;

3. Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT * FROM Customers WHERE customer_id starts LIKE 'BL%';

4. Get the first 100 records of the orders table.
SELECT * FROM orders ORDER BY order_date ASC LIMIT 100;

5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

6. Get all orders where the ShipRegion is not equal to NULL.
SELECT * FROM orders WHERE NOT ShipRegion='null';

7. Get all customers ordered by the country, then by the city.
SELECT * FROM Customers ORDER BY country, city;

8. Add a new customer to the customers table. You can use whatever values/
INSERT INTO Customers (contact_name, city, postal_code, country) VALUES ('Ivona','Farmington Hills','48331','USA');

9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the
ShipCountry is equal to France.
UPDATE orders SET ShipRegion='EuroZone' WHERE ShipCountry='France';

10. Delete all orders from `order_details` that have a quantity of 1.
DELETE FROM order_details WHERE quantity='1';

11. Calculate the average, max, and min of the quantity at the `order details` table.
SELECT AVG(quantity), MAX(quantity), MIN(quantity), FROM order_details

12. Calculate the average, max, and min of the quantity at the `order details` table,
grouped by the orderid.
SELECT MIN(quantity) AS min_quantity, AVG(quantity) AS avg_quantity, MAX(quantity) AS max_quantity FROM order_details GROUP BY orderid

13. Find the CustomerID that placed order 10290 (orders table)
SELECT CustomerID FROM orders WHERE orderid='10290'

14. Do an inner join, left join, right join on orders and customers tables. (These are three
separate queries, one for each type of join.)
SELECT * FROM orders INNER JOIN Customers  ON orders.customer_id = customers.customer_id;
SELECT * FROM orders LEFT JOIN Customers  ON orders.customer_id = customers.customer_id;
SELECT * FROM orders RIGHT JOIN Customers  ON orders.customer_id = customers.customer_id;

15. Use a join to get the ship city and ship country of all the orders which are associated
with an employee who is in London.
SELECT employees.city, employees.country INNER JOIN employees ON employees.city = 'London'

16. Use a join to get the ship name of all orders that include a discontinued product. (See
orders, order_details, and products. 1 means discontinued.)
SELECT orders.ship_name, order_details.order_id, products.discontinued FROM ((orders INNER JOIN order_details ON orders.ship_name = products.discontinued) INNER JOIN products ON orders.ship_name = order_details.order_id) WHERE products.discontinued = '1';

17. Get first names of all employees who report to no one.
SELECT first_name FROM employees WHERE reports_to IS NULL;

18. Get first names of all employees who report to Andrew.
SELECT first_name FROM employees WHERE reports_to 'Andrew';


