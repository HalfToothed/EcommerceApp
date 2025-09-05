-- Connect to the database
-- \c ecommerce;

-- Drop table if exists (clean setup)
DROP TABLE IF EXISTS "Products";

-- Create Products table
CREATE TABLE "Products" (
    "Id" SERIAL PRIMARY KEY,
    "Name" VARCHAR(255) NOT NULL,
    "Description" TEXT,
    "Price" DECIMAL(10,2) NOT NULL,
    "Category" VARCHAR(100),
    "ImageUrl" VARCHAR(500),
    "StockQuantity" INT NOT NULL,
    "CreatedDate" TIMESTAMP NOT NULL DEFAULT NOW(),
    "LastUpdatedDate" TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Insert sample products
INSERT INTO "Products" ("Name", "Description", "Price", "Category", "ImageUrl", "StockQuantity", "CreatedDate", "LastUpdatedDate")
VALUES
('Wireless Mouse', 'Ergonomic wireless mouse with 2.4 GHz connectivity.', 19.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Mouse', 50, NOW(), NOW()),
('Mechanical Keyboard', 'RGB backlit mechanical keyboard with blue switches.', 89.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Keyboard', 30, NOW(), NOW()),
('Bluetooth Headphones', 'Noise-cancelling over-ear headphones with mic.', 59.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Headphones', 20, NOW(), NOW()),
('Men T-Shirt', 'Cotton round-neck t-shirt in black.', 15.99, 'Clothing', 'https://dummyimage.com/200x200/000/fff&text=T-Shirt', 100, NOW(), NOW()),
('Women Dress', 'Floral summer dress for casual wear.', 39.99, 'Clothing', 'https://dummyimage.com/200x200/000/fff&text=Dress', 25, NOW(), NOW()),
('Jeans', 'Slim-fit blue denim jeans.', 45.00, 'Clothing', 'https://dummyimage.com/200x200/000/fff&text=Jeans', 60, NOW(), NOW()),
('Sneakers', 'Comfortable sports sneakers for running.', 70.00, 'Clothing', 'https://dummyimage.com/200x200/000/fff&text=Sneakers', 40, NOW(), NOW()),
('Novel - The Great Adventure', 'Bestselling adventure novel.', 12.99, 'Books', 'https://dummyimage.com/200x200/000/fff&text=Book', 80, NOW(), NOW()),
('Programming in C#', 'Beginner to advanced guide for C# developers.', 34.50, 'Books', 'https://dummyimage.com/200x200/000/fff&text=C%23+Book', 15, NOW(), NOW()),
('Cookbook', 'Delicious recipes from around the world.', 22.00, 'Books', 'https://dummyimage.com/200x200/000/fff&text=Cookbook', 35, NOW(), NOW()),
('Smartphone', 'Latest 5G smartphone with 128GB storage.', 599.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Phone', 10, NOW(), NOW()),
('Tablet', '10-inch Android tablet with 64GB storage.', 199.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Tablet', 15, NOW(), NOW()),
('Backpack', 'Durable laptop backpack with multiple compartments.', 49.99, 'Clothing', 'https://dummyimage.com/200x200/000/fff&text=Backpack', 22, NOW(), NOW()),
('Notebook', 'Hardcover ruled notebook for daily notes.', 6.99, 'Books', 'https://dummyimage.com/200x200/000/fff&text=Notebook', 100, NOW(), NOW()),
('Smartwatch', 'Fitness tracking smartwatch with heart-rate monitor.', 129.99, 'Electronics', 'https://dummyimage.com/200x200/000/fff&text=Watch', 12, NOW(), NOW());
