SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://oliststorageaccount10.dfs.core.windows.net/olistdata/silver/',
        FORMAT = 'PARQUET'
    ) AS [result]


create schema gold

create view gold.final 
as 
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://oliststorageaccount10.dfs.core.windows.net/olistdata/silver/',
        FORMAT = 'PARQUET'
    ) AS result1

select * from gold.final


-- CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Nasigor3ng1';
-- CREATE DATABASE SCOPED CREDENTIAL zaidadmin WITH IDENTITY = 'Managed Identity';

-- select * from sys.database_credentials;

CREATE EXTERNAL FILE FORMAT extfileformat WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

CREATE EXTERNAL DATA SOURCE goldlayer WITH (
    LOCATION = 'https://oliststorageaccount10.dfs.core.windows.net/olistdata/gold/',
    CREDENTIAL = zaidadmin
);


CREATE EXTERNAL TABLE gold.finaltable WITH (
        LOCATION = 'Serving',
        DATA_SOURCE = goldlayer,
        FILE_FORMAT = extfileformat
) AS
SELECT * FROM gold.final;
