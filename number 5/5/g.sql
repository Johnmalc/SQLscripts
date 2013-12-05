USE [StayHomewithoutPer];
GO

With do as (SELECT Mit.[EMPl Id], Mit.Name, Mit.[Branch ID]
            FROM dbo.Mit Join Fil on (Fil.[Branch ID]=Mit.[Branch ID])
            WHERE Fil.[Geleitet von] = Mit.[EMPl Id] and Position != 'Manager')
SELECT *
  FROM do 

GO


