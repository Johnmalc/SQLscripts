USE [StayHomewithoutPer];
GO

SELECT [Branch ID] ,
       COUNT( [EMPl Id] )AS t
  FROM dbo.Mit
  GROUP BY [Branch ID]
  ORDER BY t DESC;

GO


