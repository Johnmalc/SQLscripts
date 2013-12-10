USE [StayHomewithoutPer];
GO

-- Welche Mitarbeiter hat der Manager Nr. 25?

SELECT *
  FROM dbo.Mit
  WHERE Mit.[Branch ID] = (SELECT Mit.[Branch ID]
                             FROM Mit
                             WHERE Mit.[EMPl Id] = 25)
   AND Mit.Position != 'Manager'; -- includes or here doesn't include manager
GO

