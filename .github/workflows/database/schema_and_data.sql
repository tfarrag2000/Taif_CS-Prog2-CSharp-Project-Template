-- نموذج مبدئي لقاعدة بيانات المشروع (استبدل الجداول بما يناسب فكرة مشروعك)
CREATE DATABASE ProjectDB;
GO
USE ProjectDB;
GO

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(100) NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(150) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID)
);

INSERT INTO Categories (CategoryName) VALUES (N'Electronics'), (N'Accessories');
INSERT INTO Products (ProductName, Price, Quantity, CategoryID)
VALUES (N'Laptop', 3500.00, 10, 1), (N'Wireless Mouse', 85.00, 25, 2);
