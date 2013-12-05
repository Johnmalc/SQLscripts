USE [StayHomewithoutPer];
GO

With do as (SELECT *
            FROM dbo.Mit
            WHERE Position != 'Manager' and
		  Position != 'Supervisor' and
		  Position != 'Assistant')

SELECT *
  FROM do 

GO


