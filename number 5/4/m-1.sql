USE [StayHomewithoutPer]
GO

SELECT [EMPl Id]
      ,[Name]
      ,[reports to the Boss]
  FROM [dbo].[Mit]
  -- http://stackoverflow.com/questions/9581745/sql-is-null-and-null
  where Mit.[reports to the Boss] = null -- is vs. = je ohromny rozdil
GO


