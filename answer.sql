-- Week 6 Assignment: SQL Joins and Relationships


-- Question 1: INNER JOIN - Employees and Offices
-- Retrieve employee information and match employees with their offices.

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- Question 2: LEFT JOIN - Products and Product Lines
-- Retrieve product information and its related product line.

SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN - Customers and Orders
-- Retrieve information about the first 10 orders.

SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber ASC
LIMIT 10;
