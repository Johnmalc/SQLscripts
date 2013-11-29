USE [StayHomewithoutPer]
GO
-- Neukaze Boo2 - Pozor na to
----View 
--SELECT        COUNT(dbo.Mit.[EMPl Id]) AS zahl, dbo.Mit.Gender, dbo.Fil.[Branch ID]
--FROM            dbo.Mit FULL OUTER JOIN
--                         dbo.Fil ON dbo.Mit.[Branch ID] = dbo.Fil.[Branch ID]
--WHERE        (dbo.Mit.Position = 'Supervisor')
--GROUP BY dbo.Mit.Gender, dbo.Fil.[Branch ID]
 
SELECT [Branch ID], ISNULL(M, 0) as M, ISNULL(F, 0) as F
  FROM Bill_k
  pivot( Min(zahl) for Gender in (M,F) ) as test
GO


