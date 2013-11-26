USE [StayHomewithoutPer]
GO

SELECT city
      ,[telefon]
  FROM [dbo].[Fil]

where telefon not Like '+44%'
GO