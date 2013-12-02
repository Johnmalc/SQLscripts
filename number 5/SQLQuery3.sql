USE [StayHomewithoutPer]
GO

Create View sdaskhkkfsdgfdg as  

SELECT       COUNT(dbo.Mit.[EMPl Id]) AS zahl, dbo.Mit.Gender
FROM            dbo.Mit
where Mit.Position = 'Supervisor'
group by Mit.Gender

UNION 

SELECT  Fil.[Branch ID], Fil.city
FROM Fil


--WHERE        (Mit.Position = 'Supervisor') AND (Fil.[Branch ID] = 'B002')

GO


