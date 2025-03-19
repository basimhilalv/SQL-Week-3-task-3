
SELECT Books.Title,
        SUM(Amount) AS total_sales,
        AVG(Amount) AS Average,
        MIN(Amount) AS Minimum,
        MAX(Amount) AS Maximum,
        COUNT(Amount) AS Count
From Sales
INNER JOIN Books ON Sales.BookID = Books.BookID
GROUP BY Books.Title;

--Retrieve books title from sales by categorizing by books title
SELECT Books.Title, SUM(Sales.Amount) AS Total_Sales
FROM Sales
INNER JOIN Books ON Sales.BookID = Books.BookID
GROUP BY Books.Title;

--Retrieve books total sale amount by grouping on Year of sale and book title
SELECT Books.Title, YEAR(Sales.SalesDate), SUM(Sales.Amount) AS Total_Sales
FROM Sales
INNER JOIN Books ON Sales.BookID = Books.BookID
GROUP BY Books.Title, YEAR(Sales.SalesDate);

--Retrieve books titles with sales above 10000
SELECT Books.Title, SUM(Amount) AS total_sales
From Sales
INNER JOIN Books ON Sales.BookID = Books.BookID
GROUP BY Books.Title
HAVING SUM(Amount) > 10000;

-- Stored Procedure execution
EXEC totalSalesByBook @bookstitle = 'Vellimoonga'; 

-- User Defined function execution
SELECT AverageSaleAmount();
