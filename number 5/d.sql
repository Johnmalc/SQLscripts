USE [StayHomewithoutPer];
GO

SELECT count([EMPl Id]) as anzahl
  FROM [dbo].[Mit]
  -- prazdne policko nehraje zadnou roli, alespon zde
  where [Name] like '% McDonalds' 
GO


