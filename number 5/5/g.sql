USE [StayHomewithoutPer];
GO
--CTE no need
SELECT Mit.[EMPl Id] ,
       Mit.Name ,
       Mit.[Branch ID]
  FROM
       dbo.Mit JOIN Fil ON Fil.[Branch ID] = Mit.[Branch ID]
  WHERE Fil.[Geleitet von] = Mit.[EMPl Id]
    AND Position != 'Manager';
GO


