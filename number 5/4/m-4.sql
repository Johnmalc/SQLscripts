USE [StayHomewithoutPer]
GO

SELECT *
  FROM [dbo].[Mit] Inner Join Fil on Mit.[EMPl Id] != Fil.[Geleitet von] AND Fil.[Branch ID] = Mit.[Branch ID]
  where Mit.Position='Manager' 
GO


