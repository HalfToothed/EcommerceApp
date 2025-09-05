-- ecommerce.sql

-- Create Database
CREATE DATABASE Ecommerce;
GO

USE Ecommerce;
GO

-- Create Products Table
CREATE TABLE Products (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10,2) NOT NULL,
    Category NVARCHAR(100) NOT NULL,
    ImageUrl NVARCHAR(500),
    StockQuantity INT NOT NULL,
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    LastUpdatedDate DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Insert Sample Data
INSERT INTO Products (Name, Description, Price, Category, ImageUrl, StockQuantity, CreatedDate, LastUpdatedDate)
VALUES
('Smartphone X1', 'Latest model with 5G and OLED display', 699.99, 'Electronics', 'https://via.placeholder.com/150', 50, GETDATE(), GETDATE()),
('Wireless Earbuds', 'Noise-cancelling, long battery life', 129.99, 'Electronics', 'https://via.placeholder.com/150', 200, GETDATE(), GETDATE()),
('Gaming Laptop', 'High performance laptop for gaming', 1499.00, 'Electronics', 'https://via.placeholder.com/150', 30, GETDATE(), GETDATE()),
('T-Shirt', 'Cotton casual T-shirt', 19.99, 'Clothing', 'https://via.placeholder.com/150', 100, GETDATE(), GETDATE()),
('Jeans', 'Slim fit blue denim jeans', 49.99, 'Clothing', 'https://via.placeholder.com/150', 80, GETDATE(), GETDATE()),
('Jacket', 'Waterproof winter jacket', 89.99, 'Clothing', 'https://via.placeholder.com/150', 40, GETDATE(), GETDATE()),
('Novel: The Lost World', 'Adventure fiction novel', 14.99, 'Books', 'https://via.placeholder.com/150', 120, GETDATE(), GETDATE()),
('Programming in C#', 'Comprehensive guide for beginners', 39.99, 'Books', 'https://via.placeholder.com/150', 60, GETDATE(), GETDATE()),
('Cookbook: Easy Meals', 'Recipes for quick cooking', 24.99, 'Books', 'https://via.placeholder.com/150', 70, GETDATE(), GETDATE()),
('Sneakers', 'Comfortable running sneakers', 59.99, 'Clothing', 'https://via.placeholder.com/150', 90, GETDATE(), GETDATE()),
('Bluetooth Speaker', 'Portable speaker with deep bass', 79.99, 'Electronics', 'https://via.placeholder.com/150', 110, GETDATE(), GETDATE()),
('Headphones', 'Over-ear wired headphones', 49.99, 'Electronics', 'https://via.placeholder.com/150', 95, GETDATE(), GETDATE()),
('Formal Shirt', 'White slim fit formal shirt', 34.99, 'Clothing', 'https://via.placeholder.com/150', 60, GETDATE(), GETDATE()),
('History Book', 'World history reference', 29.99, 'Books', 'https://via.placeholder.com/150', 45, GETDATE(), GETDATE()),
('Children Story Book', 'Illustrated bedtime stories', 9.99, 'Books', 'https://via.placeholder.com/150', 150, GETDATE(), GETDATE());
GO
