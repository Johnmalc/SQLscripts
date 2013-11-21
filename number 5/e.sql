USE [StayHomewithoutPer]
GO

SELECT count([EMPl Id]) as anzahl
      --,[Name]
      --,[Gender]
      --,[Gehalt]
      --,[Branch ID]
      --,[Position]
  FROM [dbo].[Mit]
  where [Branch ID] = 'B011'
GO


