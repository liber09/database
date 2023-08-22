--Create table for customer
CREATE TABLE Customers (
    Id int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    StreetAddress varchar(255) NOT NULL,
	PostalCode int NOT NULL,
	City varchar(255) NOT NULL,
	Email varchar(255),
	PhoneNumber varchar(255)
);

--Create table for product
CREATE TABLE Products (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Name varchar(255) NOT NULL,
    Description varchar(255),
	Price decimal NOT NULL);

--Create table productImages, images in separate table for optimizing load times in situations where you want
--Procuctinfo but not image data.
CREATE TABLE ProductImages (
    Id int IDENTITY(1,1) PRIMARY KEY,
	ProductId int NOT NULL FOREIGN KEY REFERENCES Products(id) , --Which product does the image belong to
    Image varbinary(MAX) --The image 
);

--Create table for orders. CustomerID is foreign key to know what customer placed the order
CREATE TABLE Orders (
    Id int IDENTITY(1,1) PRIMARY KEY,
    CustomerID int FOREIGN KEY REFERENCES Customer(id), --What customer placed the order
	OrderDate DateTime, --Orderdate and time
	TotalAmount decimal, --The total amount for the order
	OrderStatus int  -- What is the status, ordered, preparing for delivery, ready for delivery, delivered
);

--Create table OrderRows, orderID is foreignKey to orders to know what order the row belongs to
--ProductID is to know what product the orderrow concerns
CREATE TABLE OrderRows(
	Id int IDENTITY(1,1) PRIMARY KEY,
	OrderId int FOREIGN KEY REFERENCES Orders(id), --What order
	ProductId int FOREIGN KEY REFERENCES Products(id), --What product
	Amount int  --Number of products
);
