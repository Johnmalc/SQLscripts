USE [StayHomewithoutPer]
GO



SELECT DISTINCT
 
[Geleitet von],
Fil.[Branch ID]
      
  FROM [dbo].[Fil], Mit
  where EXISTS (SELECT Mit.Position
		From Mit
		where Position = 'Manager')
	order by [Geleitet von], Fil.[Branch ID]

GO


