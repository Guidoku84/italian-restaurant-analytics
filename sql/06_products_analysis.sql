-- Italian Restaurant Analytics
-- Products Analysis
-- This script explores product sales and quantity performance.

-- Display the first rows from the products table

SELECT
    "Category",
    "Product",
    ROUND("Quantity", 2) AS Quantity,
    ROUND("Sales", 2) AS Sales
FROM products
LIMIT 10;

-- Identify the top products by sales

SELECT
    "Product",
    ROUND("Sales", 2) AS Total_Sales
FROM products
ORDER BY Total_Sales DESC
LIMIT 15;

-- Identify the top products by quantity sold

SELECT
    "Product",
    ROUND("Quantity", 2) AS Total_Quantity
FROM products
ORDER BY Total_Quantity DESC
LIMIT 15;

-- Identify products with the lowest positive sales

SELECT
    "Product",
    ROUND("Sales", 2) AS Total_Sales
FROM products
WHERE "Sales" > 0
ORDER BY Total_Sales ASC
LIMIT 15;

-- Calculate total product sales

SELECT
    ROUND(SUM("Sales"), 2) AS Total_Product_Sales
FROM products;

-- Calculate total quantity sold

SELECT
    ROUND(SUM("Quantity"), 2) AS Total_Quantity_Sold
FROM products;

-- Calculate sales by product category

SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM products
GROUP BY "Category"
ORDER BY Total_Sales DESC;

-- Identify the top products by average sales value per unit

SELECT
    "Product",
    ROUND("Sales" / "Quantity", 2) AS Average_Sales_Per_Unit
FROM products
WHERE "Quantity" >= 20
ORDER BY Average_Sales_Per_Unit DESC
LIMIT 15;

-- Identify products with zero sales but positive quantity

SELECT
    "Product",
    ROUND("Quantity", 2) AS Quantity
FROM products
WHERE "Sales" = 0
  AND "Quantity" > 0
ORDER BY Quantity DESC;

-- Author: Guido Acosta
-- Data Analyst Portfolio Project
-- GitHub Portfolio - 2026