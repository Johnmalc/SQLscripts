USE [StayHomewithoutPer]
GO

SELECT [EMPl Id]
      ,[Name]
      ,[Gender]
      ,[Gehalt]
      ,[reports to the Boss]
      ,[Branch ID]
      ,[Position]
  FROM [dbo].[Mit]
  where [Position]='Manager' 
GO


