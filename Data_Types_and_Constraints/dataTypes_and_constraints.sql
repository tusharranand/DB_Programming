-- create a table to display all data types and constraints
CREATE TABLE testTableThree(
-- data type: integer
-- constraint: primary key, not null
tableThreeIntegerColumn INT PRIMARY KEY NOT NULL,
-- data type: string/varchar
-- constraint: not null
tableThreeVarcharColumn VARCHAR(25) NOT NULL,
-- data type: datetime
-- constraint: default
tableThreeDatetimeColumn DATETIME DEFAULT GetDate(),
-- data type: decimal(precision, scale)
-- constraint: unique
tableThreeDecimalColumn DECIMAL(4,2) UNIQUE,
-- data type: character
-- constraint: check
tableThreeCharColumn CHAR CHECK(tableThreeCharColumn = 'X' OR tableThreeCharColumn = 'Y' OR tableThreeCharColumn = 'Z'),
--data type: bit (0 or 1)
tableThreeBitColumn BIT,
-- constraint: Foreign key and reference
tableOneLinkTwo int,
FOREIGN KEY (tableOneLinkTwo) REFERENCES testTableOne (tableOneColumnOne)
)
