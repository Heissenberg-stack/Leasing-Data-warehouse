/* 
1. checking if a database called LeasingDataWarehouse exists
2. if yes, It will be dropped entirly and create a new database with the same name
3.Creating a new Database with the name 'LeasingDataWarehouse' 
4.creating shcemas using the medallion method " Bronze, Silver, Gold"

REMINDER>>
Running this script will drop the entire Database with the data inside
*/
-- Create database for leasing
USE MASTER; 
GO
-- In case the database already exist, Truncate and alter
IF EXISTS (SELECT 1 FROM	sys.databases 
		WHERE name = 'LeasingDataWarehouse')
BEGIN
DROP DATABASE LeasingDataWarehouse;
END;
GO

-- Creating the data warehouse
CREATE DATABASE LeasingDataWarehouse;
GO

USE LeasingDataWarehouse;
GO

--creating schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
