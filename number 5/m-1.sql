USE [StayHomewithoutPer]
GO
-- nerozumim, ujasnit si zda a co je namysli -> ????
SELECT [EMPl Id]
      ,[Name]
      ,[reports to the Boss]
  FROM [dbo].[Mit]
  where Mit.[reports to the Boss] is null
GO


