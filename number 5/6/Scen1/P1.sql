-- Master
USE [StayHomewithoutPer]
GO
BEGIN TRANSACTION
GO

UPDATE Fil
SET city = 'Reutlingen'
  WHERE [Branch ID] = 'B001'
GO

ROLLBACK TRANSACTION;
GO
