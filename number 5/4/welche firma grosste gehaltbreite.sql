USE [StayHomewithoutPer]
GO

SELECT TOP 1 e.[Branch ID], Max(e.Gehalt) as mx, Min(e.Gehalt) as mi, Max(e.Gehalt)-Min(e.Gehalt) as dif
From Mit e
group by e.[Branch ID]
order by dif DESC
GO


