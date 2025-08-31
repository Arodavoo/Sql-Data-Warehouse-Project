/*
===================================================================
Database and Schema Setup
===================================================================
Description:
    This script will create a new database called 'DataWarehouse'.
    - If a database with the same name is already present, it will 
      be dropped and recreated.  
    - After creation, three schemas are initialized inside the 
      database: 'bronze', 'silver', and 'gold'.

Note:
    Executing this script will completely remove the existing 
    'DataWarehouse' database (if it exists), including all its 
    objects and data. Be sure you understand the impact and have 
    backups before running it.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
