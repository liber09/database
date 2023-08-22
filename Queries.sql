--CRUD

--Create
--User 1 places a order on 1 of product 1
INSERT INTO webshop.dbo.Orders VALUES (1,'2022-12-14 15:12:33',199.90,1);
INSERT INTO webshop.dbo.OrderRows VALUES (5,1,1);

--Select
--Get the order we just created including the order row
SELECT * FROM Orders
INNER JOIN OrderRows On orders.id = OrderRows.OrderId
Where Orders.id = 5

--Update
--The user changes its order and orders two products instead
Begin transaction
UPDATE Orders
SET Orders.TotalAmount = 398.80
FROM Orders
INNER JOIN OrderRows
ON orders.id = OrderRows.OrderId
WHERE Orders.Id = 5

UPDATE OrderRows
SET OrderRows.Amount = 2
FROM OrderRows
INNER JOIN Orders
ON orders.id = OrderRows.OrderId
WHERE Orders.Id = 5

Commit 

--2 free chosen mathFunctions
--List all orders with date from 1 december 2022 or later
SELECT * FROM Orders WHERE OrderDate > '2022-11-30'

--What order id has the most expensive order
SELECT TOP (1) Id FROM Orders order by TotalAmount desc
