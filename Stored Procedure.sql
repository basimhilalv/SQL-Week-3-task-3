CREATE PROCEDURE totalSalesByBook @bookstitle VARCHAR(50)
AS
SELECT SUM(Sales.Amount) 
FROM Sales
INNER JOIN Books ON Sales.BookID = Books.BookID
WHERE Books.Title = @bookstitle;
GO

EXEC totalSalesByBook @bookstitle = 'Aadujeevitham';