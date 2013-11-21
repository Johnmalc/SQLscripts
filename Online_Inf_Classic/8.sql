USE [StayHomewithoutPer]
GO
--Gruppieren Sie die Mitarbeiter nach deren Einkommen und geben Sie die
-- Anzahl der Mitarbeiter in der jeweiligen Gehaltsgruppe an. Wählen Sie eine aussagekräftige Spaltenüberschrift.
SELECT count([EMPl Id]) as test
      ,[Gehalt]
  FROM [dbo].[Mit]
  group by Gehalt

--SELECT count(EmpID) as test
--,Salary
--FROM Staff
--group by Salary
GO


