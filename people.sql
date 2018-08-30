    -- PEOPLE --

    -- 1 --
    CREATE TABLE People (
        id SERIAL,
        name TEXT,
        age INTEGER,
        height INTEGER,
        city TEXT,
        FavoriteColor TEXT
    );

    --2--
    INSERT INTO People (
        name, age, height, city, FavoriteColor
    ) values 
        ('Bob', 23, 144, 'New York', 'Gray'),
        ('Jake', 55, 180, 'Denver', 'Pink'),
        ('Sally', 12, 138, 'Austin', 'Yellow'),
        ('Greg', 78, 155, 'Boulder', 'Brown'),
        ('Alice', 33, 164, 'Miami', 'Green');

    -- 3 --
    SELECT * FROM People
    ORDER BY height DESC;

    -- 4 --
    SELECT * FROM People
    ORDER BY height ASC;

    -- 5 --
    SELECT * FROM People
    ORDER BY age DESC;

    -- 6 --
    SELECT * FROM People
    WHERE age > 20;

    -- 7 --
    SELECT * FROM People
    WHERE age = 18

    -- 8 --
    SELECT * FROM People
    WHERE age < 20 AND age > 30

    -- 9 --
    SELECT * FROM People
    WHERE age <> 27;

    -- 10 --
    SELECT * FROM People
    WHERE favoriteColor <> 'red';

    -- 11 --
    SELECT * FROM People
    WHERE favoriteColor != 'red' OR favoriteColor != 'blue';

    -- 12 --
    SELECT * FROM People
    WHERE favoriteColor = 'orange' OR favoriteColor = 'green';

    -- 13 --
    SELECT * FROM People
    WHERE favoriteColor IN ('orange', 'green' , 'blue');

    -- 14 --
    SELECT * FROM People
    WHERE favoriteColor IN ('yellow', 'purple');

    -- ORDERS --

    -- 1 --
    CREATE TABLE Orders (
        PersonID SERIAL,
        ProductName TEXT,
        ProductPrice DECIMAL,
        Quantity INTEGER
    );

    -- 2 --
    INSERT INTO Oders (
    ProductName, ProductPrice, Quantity
    ) values 
        ('Pen', 00.50 , 10),
        ('Notebook', 1.00 , 5),
        ('Highlighter', 0.75 , 2),
        ('Calculator', 9.99 , 1),
        ('Paper', 1.99 , 3);

    -- 3 --
    SELECT * FROM Orders;

    -- 4 --
    SELECT SUM(Quantity)
    FROM Orders;


    -- 5 --
    SELECT SUM(ProductPrice  * Quantity)
    FROM Orders;

    -- 6 --
    SELECT SUM(ProductPrice * Quantity)
    FROM Orders 
    WHERE PersonID = 3;

    -- ARTIST --
    -- 1 --
    INSERT INTO Artist (Name) 
    VALUES ('Sean Cooldude');

    INSERT INTO Artist (Name) 
    VALUES ('Austin Crazyman');

    INSERT INTO Artist (Name) 
    VALUES ('Hunter Funperson');

    -- 2 --
    SELECT * FROM Artist
    ORDER BY name DESC;

    -- 3 --
    SELECT * FROM Artist 
    ORDER BY Name ASC 
    LIMIT 5;

    -- 4 --
    SELECT * FROM Artist
    WHERE name
    LIKE "black%";

    -- 5 --
    SELECT * FROM Artist
    WHERE name
    LIKE "%black%";

    -- EMPLOYEES --

    -- 1 --
    SELECT FirstName, LastName FROM Employee
    WHERE City = 'Calgary';

    -- 2 --
    SELECT FirstName, LastName, Min(BirthDate)
    FROM Employee;

    -- 3--
    SELECT FirstName, LastName, Max(BirthDate)
    FROM Employee;

    -- 4 --
    SELECT * FROM Employee
    WHERE ReportsTo = 2;

    -- 5 --
    SELECT Count(*) FROM Employee
    WHERE city = 'Lethbridge';

    -- INVOICE --

    -- 1 --
    SELECT Count(*) FROM Invoice
    WHERE BillingCountry = 'USA';

    -- 2 --
    SELECT Max(Total)
    FROM Invoice

    -- 3 --
    SELECT Min(Total)
    FROM Invoice

    -- 4 --
    Select * FROM Invoice
    WHERE Total > 5;

    -- 5 --
    SELECT Count(*) FROM Invoice
    WHERE Total > 5;

    -- 6 --
    SELECT Count(*) FROM Invoice
    WHERE BillingState in ('CA', 'TX', 'AZ');

    -- 7 --
    SELECT AVG(Total)
    FROM Invoice;

    -- 8 --
    SELECT SUM(Total)
    FROM Invoice;
