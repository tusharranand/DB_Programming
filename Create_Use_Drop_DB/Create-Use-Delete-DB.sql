-- create a database with the name "TestDb"
CREATE DATABASE TestDb

-- show a list of databases in the server
EXEC sp_databases
-- or 
Select name from master.sys.databases order by name

-- put "TestDb" to use if it exists to execute all querries
USE TestDb

-- delete the database if it exists and is not currently in use
-- USE master
DROP DATABASE IF EXISTS TestDb
