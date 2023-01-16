cCREATE -- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE customers
(
    CustomerId INT NOT NULL PRIMARY KEY, -- primary key column
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    -- specify more columns here
);
GO