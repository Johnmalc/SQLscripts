USE [StayHomewithoutPer]
GO
--Gruppieren Sie die Mitarbeiter nach deren Einkommen und geben Sie die
-- Anzahl der Mitarbeiter in der jeweiligen Gehaltsgruppe an. W�hlen Sie eine aussagekr�ftige Spalten�berschrift.
SELECT count([EMPl Id]) as test
      ,[Gehalt]
  FROM [dbo].[Mit]
  group by Gehalt

--SELECT count(EmpID) as test
--,Salary
--FROM Staff
--group by Salary
GO


