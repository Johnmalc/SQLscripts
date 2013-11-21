USE [StayHomewithoutPer]
GO



SELECT Fil.[Branch ID]
      ,[Geleitet von],
	  (SELECT Mit.Position
		From Mit
		where Position = 'Manager')

  FROM [dbo].[Fil], Mit

GO


