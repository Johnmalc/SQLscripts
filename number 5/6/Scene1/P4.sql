--P4
USE [StayHomewithoutPer]
GO
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
GO

BEGIN TRANSACTION;
GO

SELECT *
  FROM Fil
  WHERE [Branch ID] = 'B001';
GO

COMMIT TRANSACTION;
GO