CREATE TABLE Customer (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    StreetAddress varchar(255) NOT NULL,
	PostalCode int NOT NULL,
	City varchar(255) NOT NULL
);

CREATE TABLE Products (
    ID int NOT NULL PRIMARY KEY,
    Name varchar(255) NOT NULL,
    Description varchar(255),
	Price decimal,
);

CREATE TABLE ProductImages (
    ID int NOT NULL PRIMARY KEY,
	ProductId int ,
    Name varchar(255) NOT NULL,
    Image varbinary(MAX)
);


CREATE TABLE ORDERS (
    ID int NOT NULL PRIMARY KEY,
    CustomerID int NOT NULL,
	TotalAmount decimal,
	OrderStatus int
);

CREATE TABLE OrderRows(
	ID int NOT NULL PRIMARY KEY,
	OrderId int NOT NULL,
	ProductId int NOT NULL,

