-- Italian Restaurant Analytics
-- Employees Analysis
-- This script explores employee sales and quantity performance.

-- Display the employee data

SELECT
    "Employee",
    ROUND("Quantity", 2) AS Quantity,
    ROUND("Sales", 2) AS Sales
FROM employees;

-- Rank employees by total sales

SELECT
    "Employee",
    ROUND("Sales", 2) AS Total_Sales
FROM employees
ORDER BY Total_Sales DESC;

-- Rank employees by quantity sold

SELECT
    "Employee",
    ROUND("Quantity", 2) AS Total_Quantity
FROM employees
ORDER BY Total_Quantity DESC;

-- Identify the employee with the highest sales

SELECT
    "Employee",
    ROUND("Sales", 2) AS Total_Sales
FROM employees
ORDER BY Total_Sales DESC
LIMIT 1;

-- Author: Guido Acosta
-- Data Analyst Portfolio Project
-- GitHub Portfolio - 2026