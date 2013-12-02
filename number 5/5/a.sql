USE [StayHomewithoutPer]
GO

SELECT *
  FROM [dbo].[Mit]
  where Mit.[EMPl Id] = (Select Mit.[reports to the Boss] From Mit where Mit.[EMPl Id]=63)
  -- Mit.[EMPl Id] = 63
GO


