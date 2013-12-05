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
WITH cteLevels
    AS ( SELECT  CAST( REPLICATE( '.' , 1 ) + Name AS varchar( 25 )) AS [Categoty Name],
			 Id,
               boss ,
			CAST(Id AS VARCHAR(MAX)) AS [Order],
                1 AS [Level]
                
		  
           FROM Novatest
		-- where id=1
 
         UNION ALL
         SELECT CAST( REPLICATE( '.' , Level + 1 ) + Name AS varchar( 25 )) AS [Categoty Name],
                Novatest.Id,
               Novatest.boss ,
              [Level] + 1   AS [Level]
			 ,[Order] + '.' + CAST(Novatest.Id AS VARCHAR(MAX))   AS [Order]
                
           FROM
                Novatest INNER JOIN cteLevels
                ON  cteLevels.id=Novatest.boss
	 )
       

    SELECT  *
      FROM cteLevels
	 order by [Order]
GO
