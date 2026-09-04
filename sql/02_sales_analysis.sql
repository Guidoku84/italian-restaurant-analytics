-- Italian Restaurant Analytics
-- Sales Analysis
-- This script explores sales performance using SQL queries.

-- Display the first rows from the sales table with sales rounded to two decimals

SELECT
    "Date",
    "Category",
    ROUND("Sales", 2) AS Sales
FROM sales
LIMIT 10;

-- Calculate total sales

SELECT
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM sales;

-- Calculate total sales by category

SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM sales
GROUP BY "Category"
ORDER BY Total_Sales DESC;

-- Calculate total sales by month

SELECT
    strftime('%Y-%m', "Date") AS Month,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

-- Identify the month with the highest total sales

SELECT
    strftime('%Y-%m', "Date") AS Month,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Total_Sales DESC
LIMIT 1;

-- Calculate each category's percentage contribution to total sales

SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS Total_Sales,
    ROUND(
        SUM("Sales") * 100.0 / (SELECT SUM("Sales") FROM sales),
        2
    ) AS Sales_Percentage
FROM sales
GROUP BY "Category"
ORDER BY Total_Sales DESC;

-- Identify the month with the lowest total sales

SELECT
    strftime('%Y-%m', "Date") AS Month,
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Total_Sales ASC
LIMIT 1;

-- Author: Guido Acosta
-- Data Analyst Portfolio Project
-- GitHub Portfolio - 2026