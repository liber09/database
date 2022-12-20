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
	
);