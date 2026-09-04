-- Italian Restaurant Analytics
-- Promotions Analysis
-- This script explores promotion usage and discount amounts.

-- Display the first rows from the promotions table

SELECT
    "Date",
    "Promotion",
    "Uses",
    ROUND("Discount Amount", 2) AS Discount_Amount
FROM promotions
LIMIT 10;

-- Calculate total discount amount

SELECT
    ROUND(SUM("Discount Amount"), 2) AS Total_Discount_Amount
FROM promotions;

-- Identify the most frequently used promotions

SELECT
    "Promotion",
    SUM("Uses") AS Total_Uses
FROM promotions
GROUP BY "Promotion"
ORDER BY Total_Uses DESC
LIMIT 10;

-- Identify promotions with the highest total discount amount

SELECT
    "Promotion",
    ROUND(SUM("Discount Amount"), 2) AS Total_Discount_Amount
FROM promotions
GROUP BY "Promotion"
ORDER BY Total_Discount_Amount DESC
LIMIT 10;

-- Calculate total discount amount by month

SELECT
    strftime('%Y-%m', "Date") AS Month,
    ROUND(SUM("Discount Amount"), 2) AS Total_Discount_Amount
FROM promotions
GROUP BY Month
ORDER BY Month;

-- Author: Guido Acosta
-- Data Analyst Portfolio Project
-- GitHub Portfolio - 2026