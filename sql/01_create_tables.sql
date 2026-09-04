-- Italian Restaurant Analytics
-- SQL Database Schema
-- This script defines the tables used for the SQL analysis.

CREATE TABLE IF NOT EXISTS sales (
    "Date" TIMESTAMP,
    "Category" TEXT,
    "Sales" REAL
);

CREATE TABLE IF NOT EXISTS promotions (
    "Date" TIMESTAMP,
    "Promotion" TEXT,
    "Uses" INTEGER,
    "Discount Amount" REAL
);

CREATE TABLE IF NOT EXISTS payment_methods (
    "Date" TIMESTAMP,
    "Payment Method" TEXT,
    "Transactions" INTEGER,
    "Sales" REAL
);

CREATE TABLE IF NOT EXISTS employees (
    "Employee" TEXT,
    "Quantity" REAL,
    "Quantity (%)" REAL,
    "Sales" REAL,
    "Sales (%)" REAL
);

CREATE TABLE IF NOT EXISTS products (
    "Category" TEXT,
    "Product" TEXT,
    "Quantity" REAL,
    "Quantity (%)" REAL,
    "Sales" REAL,
    "Sales (%)" REAL
);