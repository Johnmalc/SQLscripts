USE [StayHomewithoutPer]
GO
-- Neukaze Boo2 - Pozor na to
----View 
--SELECT        COUNT([EMPl Id]) AS zahl, Gender, [Branch ID]
--FROM            dbo.Mit
--WHERE        (Position = 'Supervisor')
--GROUP BY Gender, [Branch ID]
--UNION
--SELECT null, null, [Branch ID]
--FROM Fil
--WHERE [Branch ID]= 'B002'
 
SELECT [Branch ID], ISNULL(M, 0) as M, ISNULL(F, 0) as F
  FROM Bill_k
  pivot( Min(zahl) for Gender in (M,F) ) as test
GO


