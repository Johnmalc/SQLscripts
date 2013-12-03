USE [StayHomewithoutPer]
GO
-- This usually means your SQL statement is joining on more than one table, and doesn't know which column you're trying to retrieve.
-- http://databases.aspfaq.com/database/what-does-ambiguous-column-name-mean.html
SELECT [EMPl Id]
	  ,[dbo].[Fil].[Branch ID]
      ,[Name]
      ,[Gender]
      ,[Position]
  FROM [dbo].[Mit] Join [dbo].[Fil] on [Mit]. [Branch ID] = [Fil].[Branch ID] 
  where [Fil].[Branch ID] = 'B014' AND [Mit].Position = 'Assistant' AND [Mit].Gender = 'F' 
GO
-- same 
--SELECT [EMPl Id]
--	  ,[dbo].[Fil].[Branch ID]
--      ,[Name]
--      ,[Gender]
--      ,[Position]
--  FROM [dbo].[Mit] , [dbo].[Fil]  
--  where [Mit]. [Branch ID] = [Fil].[Branch ID] And [Fil].[Branch ID] = 'B014' AND [Mit].Position = 'Assistant' AND [Mit].Gender = 'F' 
--GO


