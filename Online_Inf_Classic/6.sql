USE [StayHomewithoutPer]
GO
-- Wieviele Filialen gibt es in der Stadt "Liverpool" (Nur die Anzahl anzeigen)? Achten Sie bei der Ausgabe 
-- auf eine aussagekr�ftige Spalten�berschrif

SELECT count([Branch ID]) as anzahl
  FROM [dbo].[Fil]
  where city = 'Liverpool'
GO


--SELECT count(BranchID) as anzahl
--  FROM Branch
--  where city = 'Liverpool'
