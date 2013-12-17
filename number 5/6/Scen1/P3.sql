--P3
--Specifies that; statements cannot read data that has been modified 
--but not committed by other transactions. This prevents dirty reads.
--Data can be changed by other transactions between individual statements
-- within the current transaction, resulting in nonrepeatable reads or 
--phantom data. This option is the SQL Server default.
USE [StayHomewithoutPer]
GO
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
GO

BEGIN TRANSACTION;
GO

SELECT *
  FROM Fil
  WHERE [Branch ID] = 'B001';
GO


COMMIT TRANSACTION;
GO