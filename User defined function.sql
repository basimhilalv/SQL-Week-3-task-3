CREATE FUNCTION AverageSaleAmount()
    RETURNS INT
AS
BEGIN
    DECLARE @avgsale INT;
    SELECT @avgsale = AVG(Amount)
    FROM Sales;
    RETURN @avgsale;
END;




