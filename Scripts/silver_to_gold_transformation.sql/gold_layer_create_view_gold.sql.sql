--------------------------
-- CREATE VIEW CALENDER --
--------------------------

CREATE VIEW gold.calender
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Calenders/',
        DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

DROP VIEW IF EXISTS gold.calender;
SELECT * FROM sys.views WHERE name = 'calendar';





---------------
-- CUSTOMERS --
---------------
CREATE VIEW gold.customers
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Customers/',
         DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

DROP VIEW gold.customers;
DROP VIEW IF EXISTS gold.customers;





--------------
-- PRODUCTS --
--------------
CREATE VIEW gold.products
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Products/',
         DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

DROP VIEW gold.products;
DROP VIEW IF EXISTS gold.products;




-------------
-- RETURNS --
-------------
CREATE VIEW gold.returns
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Returns/',
         DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

DROP VIEW gold.returns;
DROP VIEW IF EXISTS gold.returns;






-----------
-- SALES --
-----------
CREATE VIEW gold.sales
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Sales/',
         DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

DROP VIEW gold.sales;
DROP VIEW IF EXISTS gold.sales;






-----------------
-- TERRITORIES --
-----------------
CREATE VIEW gold.territories
AS 
SELECT 
*
FROM 
    OPENROWSET(
        BULK'AdventureWorks_Territories/',
         DATA_SOURCE = 'source_silver',
        FORMAT = 'PARQUET'
    ) AS Quer1

    DROP VIEW gold.territories;
    DROP VIEW IF EXISTS gold.territories;