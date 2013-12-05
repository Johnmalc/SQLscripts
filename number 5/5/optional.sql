USE [StayHomewithoutPer];
GO
-- to co budem tak jako tak potrebovat
--SELECT Name , 
--       [EMPl Id] , 
--       [reports to the Boss] , 
--       Position
--  FROM dbo.Mit
--  WHERE Mit.[Branch ID]
--        = 
--        'B003';
--GO
-- http://beyondrelational.com/modules/2/blogs/88/posts/10119/hierarchical-data-using-cte-common-table-expression-with-depth-first-strategy-sql-server.aspx
-- Creating CTE
WITH cteLevels  AS 
	   (
		  SELECT Mit.Name , [EMPl Id] ,  [reports to the Boss] ,   Position, 1 AS [Level] ,
	--	   CAST (REPLICATE('_',1) + Name as varchar(25))  as [Categoty Name]
	-- oder 
		    REPLICATE('_' + Name ,1)  as [Categoty Name]
           FROM Mit
           WHERE Mit.[Branch ID] ='B003'
         
		  UNION ALL
         
		    SELECT  Mit.Name , Mit.[EMPl Id] ,  Mit.[reports to the Boss] , Mit.Position,   [Level] + 1 AS [Level] , 
			--	CAST( REPLICATE( '_' , [Level] + 1) + Mit.Name AS varchar( 25 ) )AS [Categoty Name]
			REPLICATE( '_' + Mit.Name  , [Level] + 1 ) AS [Categoty Name]

			FROM	Mit INNER JOIN cteLevels ON (Mit.[EMPl Id] = Mit.[reports to the Boss])
			
    )
       

    -- Viewing Data
SELECT *
FROM cteLevels
--order by [Categoty Name]

GO
