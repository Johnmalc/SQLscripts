USE [StayHomewithoutPer]
GO
-- Zeigen Sie mit Hilfe einer Funktion das größte Gehalt an, das ein 'Manager' bezieht.
SELECT MAX([Gehalt]) 
  FROM [dbo].[Mit]
  where Position = 'Manager'
GO

--SELECT MAX(Salary) 
--  FROM Staff
--  where jobtitle = 'Manager'


