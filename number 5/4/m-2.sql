USE [StayHomewithoutPer]
GO

SELECT [Branch ID]
      ,[Street]
      ,[city]
      ,[ZIP]
      ,[Geleitet von]
  FROM [dbo].[Fil]
  where [Geleitet von] is null
GO


