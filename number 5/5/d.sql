USE [StayHomewithoutPer]
GO
-- d) Gibt es Mitarbeiter, die nicht in der Branch arbeiten in der sie die Funktion eines Managers haben? 
SELECT [EMPl Id]
      ,[Name]
      ,[Gender]
      ,[Gehalt]
      ,[reports to the Boss]
      ,Fil.[Branch ID]
      ,[Position]
  FROM [dbo].[Mit] Join Fil on (Mit.[Branch ID]=Fil.[Branch ID])
  where Position ='Manager' and Fil.[Geleitet von] != Mit.[EMPl Id]
GO


