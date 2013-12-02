USE [StayHomewithoutPer]
GO
-- This usually means your SQL statement is joining on more than one table, and doesn't know which column you're trying to retrieve.
-- http://databases.aspfaq.com/database/what-does-ambiguous-column-name-mean.html
SELECT [EMPl Id]
	  ,[dbo].[Fil].[Branch ID]
      ,[Name]
      ,[Gender]
      ,[Position]
  FROM [dbo].[Mit], [dbo].[Fil]
  where [Mit].[Branch ID] = [Fil].[Branch ID] AND [Fil].[Branch ID] = 'B014' AND [Mit].Position = 'Assistant' AND [Mit].Gender = 'F' 
GO


