CREATE TABLE Sales(
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    SalesDate DATE,
    BookID INT,
    Amount INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);