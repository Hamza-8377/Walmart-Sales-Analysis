USE walmart_db;
-- checking the data
SELECT * FROM walmart_sales LIMIT 10;
-- extracting month & year from date
SELECT 
    YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY year, month
ORDER BY year, month; 
-- counting rows
SELECT COUNT(*) AS total_rows FROM walmart_sales;
-- basic sales summary
SELECT 
    MIN(Weekly_Sales) AS min_sales,
    MAX(Weekly_Sales) AS max_sales,
    AVG(Weekly_Sales) AS avg_sales
FROM walmart_sales;
-- total sales by store
SELECT Store, SUM(Weekly_Sales) AS total_sales
FROM walmart_sales
GROUP BY Store
ORDER BY total_sales DESC;
-- effect of holidays
SELECT Holiday_Flag, AVG(Weekly_Sales) AS avg_sales
FROM walmart_sales
GROUP BY Holiday_Flag;
