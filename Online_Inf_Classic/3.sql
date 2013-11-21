USE [StayHomewithoutPer]
GO
-- Welche Mitarbeiter Haben ein Gehalt (Salary) von 30000 und den JobTitle 'Assistant'? 
--SELECT *
--  FROM Staff
--  where Salary= 30000 AND jobtitle='Assistant'
SELECT *
  FROM [dbo].[Mit]
  where Gehalt = 30000 AND Position='Assistant'
GO


