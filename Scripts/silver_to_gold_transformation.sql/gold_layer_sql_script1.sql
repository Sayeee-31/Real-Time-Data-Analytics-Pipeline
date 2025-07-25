SELECT * FROM 
OPENROWSET(
    BULK 'https://dataalakestorage.dfs.core.windows.net/silvercon/AdventureWorks_Calenders/',
    FORMAT = 'PARQUET'
) as query1;


SELECT * FROM gold.customers;