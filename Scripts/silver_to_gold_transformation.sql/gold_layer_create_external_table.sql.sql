CREATE MASTER KEY ENCRYPTION BY PASSWORD ='S@yee_2631' 


CREATE DATABASE SCOPED CREDENTIAL cred_saee
WITH 
IDENTITY = 'Managed Identity'



SELECT * FROM sys.database_scoped_credentials;



-- Source --
CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION = 'https://dataalakestorage.dfs.core.windows.net/silvercon',
    CREDENTIAL = cred_saee
)
DROP EXTERNAL DATA SOURCE source_silver;




-- File Format --
CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION = 'https://dataalakestorage.dfs.core.windows.net/goldcon',
    CREDENTIAL = cred_saee
)
DROP EXTERNAL DATA SOURCE source_gold;



CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION ='org.apache.hadoop.io.compress.SnappyCodec'
)
DROP EXTERNAL FILE FORMAT format_parquet;



-- External Table --

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold ,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales;

DROP EXTERNAL TABLE gold.extsales;



SELECT * FROM gold.extsales;