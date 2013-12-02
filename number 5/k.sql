USE [StayHomewithoutPer]
GO
----View 
--SELECT        COUNT([EMPl Id]) AS zahl, Gender, [Branch ID]
--FROM            dbo.Mit
--WHERE        (Position = 'Supervisor') 
--GROUP BY Gender, [Branch ID]
--UNION
--SELECT null, null, [Branch ID]
--FROM Mit
--WHERE Position != 'Supervisor'

--ODER

--SELECT null, null, [Branch ID]
--FROM Fil
--WHERE [Branch ID]= 'B002'

-- http://technet.microsoft.com/en-us/library/ms177410%28v=sql.105%29.aspx
--PIVOT(<aggregation function>(<column being aggregated>)
 -- wenn nicht isnull dann wird "NULL" in field sein  
SELECT [Branch ID], ISNULL(M, 0) as M, ISNULL(F, 0) as F
  FROM Bill_k
  pivot( Sum(zahl) for Gender in (M,F) ) as test
GO


