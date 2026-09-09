-- Retail Sales & Profitability Analysis

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Orders;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Orders;

-- 3. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 4. Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 5. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 6. Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 7. Top 10 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
