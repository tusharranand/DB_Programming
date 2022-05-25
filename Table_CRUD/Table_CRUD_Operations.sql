-- create a table in a database
-- execute "USE Database" if the database is not currently in use
CREATE TABLE testTableOne(
-- column_name data_type contraints
tableOneColumnOne int PRIMARY KEY NOT NULL,
tableOnecolumnTwo varchar(50)
)

CREATE TABLE testTableTwo(
tableTwocolumnOne int PRIMARY KEY NOT NULL,
tableTwocolumnTwo varchar(50),
-- foreign key and reference to table one
tableOneLink int,
FOREIGN KEY (tableOneLink) REFERENCES testTableOne (tableOneColumnOne)
)

-- insert one row at a time
INSERT INTO testTableTwo (tableTwocolumnOne, tableTwocolumnTwo, tableOneLink) VALUES (2, 'firstEntry', null)

-- insert multiple rows at once
INSERT INTO testTableOne (tableOneColumnOne, tableOnecolumnTwo) VALUES 
-- enter all values in brackets separated by commas
(1, 'entryOne'),
(2, 'entryTwo'),
(3, 'entryThree'),
(4, 'entryFour')

-- read tables using SELECT query
-- " * " is used to select all columns at once
SELECT * FROM testTableOne
SELECT * FROM testTableTwo

-- update value within a table
UPDATE testTableTwo SET tableTwocolumnTwo = 'secondEntry' WHERE tableTwocolumnOne = 2
-- to update whole column remove WHERE clause

-- delete particular data
DELETE FROM testTableTwo WHERE tableTwocolumnOne = 2
-- delete all data from a table
TRUNCATE TABLE testTableTwo
-- delete whole table
DROP TABLE testTableTwo