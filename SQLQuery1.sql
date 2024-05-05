--STEP- 1

--CREATING TABLE

CREATE TABLE [Dbo].[Name1]
([FullName] nvarchar(max) DEFAULT('') NULL)

--STEP -2 Inserting the data

Insert into dbo.Name values ('supraja.bhogadi')  

-- step-3 the data
select FullName as InputName from dbo.Name
--Step -4  The output for supraja.bhogadi as Supraja.Bhogadi
-- selecting particular Charcaters to be in uppercase where remaing to be in lowercase
SELECT 
    UPPER(LEFT(FullName, 1)) +
    LOWER(SUBSTRING(FullName, 2, CHARINDEX('.', FullName) - 1))
     +  UPPER(SUBSTRING(FullName, CHARINDEX('.', FullName) + 1, 1)) 
     + LOWER(SUBSTRING(FullName, CHARINDEX('.', FullName) + 2, LEN(FullName) - CHARINDEX('.', FullName) - 1)) as OutputName
FROM 
    dbo.Name;