USE [StayHomewithoutPer];
GO
--a) Wer ist der Chef von Mitarbeiter Nr. 63? 
SELECT *
  FROM dbo.Mit
  WHERE Mit.[EMPl Id] = (SELECT Mit.[reports to the Boss] -- Boss number = empl number
                           FROM Mit
                           WHERE Mit.[EMPl Id] = 63);
GO


