--Prepare the tables with some values

--Default data for Customers
INSERT INTO webshop.dbo.Customers VALUES ('Svensson', 'Lars','Skånegatan 34', 54322, 'Demostad','lars.svensson@testcompany.com','0705452056');
INSERT INTO webshop.dbo.Customers VALUES ('Jansson', 'Mona','Stormvägen 214', 12374, 'Storstaden','mona.kansson@gmail.com','0764739914');
INSERT INTO webshop.dbo.Customers VALUES ('Dixon', 'Lee','Byn 1', 94732, 'Norra stan','dixon.lee@dixon.org','0728473309');
INSERT INTO webshop.dbo.Customers VALUES ('Erixsson', 'Elin','Centralgatan 21', 23942, 'Centralstan','elin_erixsson@mail.com','0703748833');
INSERT INTO webshop.dbo.Customers VALUES ('Berg', 'Frida','Lilla vägen 2', 74635, 'Lillastan','bergfrida@berg.com','0702622255');

--Default product data 
INSERT INTO webshop.dbo.Products VALUES ('Shorts', 'Snygga cargoshorts', 199.90);
INSERT INTO webshop.dbo.Products VALUES ('Tshirt', 'Tshirt med coolt tryck', 179.50);
INSERT INTO webshop.dbo.Products VALUES ('Tshirt-enkel', 'Enkel och stilren', 99.90);
INSERT INTO webshop.dbo.Products VALUES ('Kavaj', 'Elegant kavaj för speciella stunder', 499.90);
INSERT INTO webshop.dbo.Products VALUES ('Jeans', 'Bekväma jeans i stretchmaterial', 199.90);
INSERT INTO webshop.dbo.Products VALUES ('Hoodie', 'Varm och mysig', 549.90);
INSERT INTO webshop.dbo.Products VALUES ('Tshirt', 'Sval tanktop', 199.90);

--Default product images
INSERT INTO webshop.dbo.ProductImages VALUES (1,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (2,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (3,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (4,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (5,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (6,CONVERT(VARBINARY,''));
INSERT INTO webshop.dbo.ProductImages VALUES (7,CONVERT(VARBINARY,''));

--Default orders data
INSERT INTO webshop.dbo.Orders VALUES (4,'2022-12-01 08:45:51',749.80,3);
INSERT INTO webshop.dbo.Orders VALUES (2,'2022-11-11 12:39:01',749.80,4);
INSERT INTO webshop.dbo.Orders VALUES (1,'2022-12-12 12:12:12',549.90,2);
INSERT INTO webshop.dbo.Orders VALUES (3,'2022-12-21 22:50:10',879.30,1);

--Default orderRow data
INSERT INTO webshop.dbo.OrderRows VALUES (1,6,1);
INSERT INTO webshop.dbo.OrderRows VALUES (1,7,1);
INSERT INTO webshop.dbo.OrderRows VALUES (2,1,1);
INSERT INTO webshop.dbo.OrderRows VALUES (2,3,2);
INSERT INTO webshop.dbo.OrderRows VALUES (3,6,1);
INSERT INTO webshop.dbo.OrderRows VALUES (4,2,1);
INSERT INTO webshop.dbo.OrderRows VALUES (4,4,1);
INSERT INTO webshop.dbo.OrderRows VALUES (4,5,1);
