USE [StayHomewithoutPer]
GO

-- Welche Mitarbeiter hat der Manager Nr. 25?

SELECT *
  FROM [dbo].[Mit]
  where Mit.[Branch ID] = ( SELECT Mit.[Branch ID] From Mit where Mit.[EMPl Id] = 25 ) ANd Mit.Position != 'Manager'
GO

