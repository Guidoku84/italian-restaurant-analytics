-- Italian Restaurant Analytics
-- Payment Methods Analysis
-- This script explores sales and transaction activity by payment method.

-- Display the first rows from the payment methods table

SELECT
    "Date",
    "Payment Method",
    "Transactions",
    ROUND("Sales", 2) AS Sales
FROM payment_methods
LIMIT 10;

-- Calculate total sales by payment method

SELECT
    "Payment Method",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM payment_methods
GROUP BY "Payment Method"
ORDER BY Total_Sales DESC;

-- Calculate total transactions by payment method

SELECT
    "Payment Method",
    SUM("Transactions") AS Total_Transactions
FROM payment_methods
GROUP BY "Payment Method"
ORDER BY Total_Transactions DESC;

-- Identify the payment method with the highest total sales

SELECT
    "Payment Method",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM payment_methods
GROUP BY "Payment Method"
ORDER BY Total_Sales DESC
LIMIT 1;

-- Calculate monthly sales by payment method

SELECT
    strftime('%Y-%m', "Date") AS Month,
    "Payment Method",
    ROUND(SUM("Sales"), 2) AS Total_Sales
FROM payment_methods
GROUP BY Month, "Payment Method"
ORDER BY Month, Total_Sales DESC;

-- Author: Guido Acosta
-- Data Analyst Portfolio Project
-- GitHub Portfolio - 2026