USE [StayHomewithoutPer]
GO
-- nerozumim, ujasnit si zda a co je namysli -> ????
SELECT -- TOP 1
	   [EMPl Id]
      ,[Name]
      ,[reports to the Boss]
  FROM [dbo].[Mit], Fil
  -- where Mit.[reports to the Boss] is null
  where Fil.[Geleitet von] is not null
GO


