USE [StayHomewithoutPer]
GO

SELECT [Gender], count([EMPl Id]) as anzahl
  FROM [dbo].[Mit]
  Group by Gender
GO


