USE [StayHomewithoutPer];
GO
-- http://dba.stackexchange.com/questions/54720/hierarchy-of-employee-names-with-cte-cannot-create-a-correct-version
-- http://beyondrelational.com/modules/2/blogs/88/posts/10119/hierarchical-data-using-cte-common-table-expression-with-depth-first-strategy-sql-server.aspx
-- Almost 
WITH cteLevels( Id ,
                ParentId ,
                LEVEL ,
                [Order] ,
                position )
    AS ( SELECT [EMPl Id] ,
                [reports to the Boss] ,
                0 AS Level ,
                CONVERT( varchar( max ) ,Mit.[EMPl Id] )AS [Order] ,
                Position
           FROM Mit
           WHERE [Branch ID] = 'B003'
             AND [reports to the Boss] = 1
         -- You are missing creating the base result set - which is the highest level in the hierarchy. This is 
         -- identified by [reports to the Boss] = 1. 
         --So if you might have a CEO that does not report to anyone, he will have it set to NULL.
         UNION ALL
         SELECT Mit.[EMPl Id] ,
                Mit.[reports to the Boss] ,
                cteLevels.LEVEL+1 AS LEVEL ,
                cteLevels.[Order]+CONVERT( varchar( 30 ) ,Mit.[EMPl Id] )AS [Order] ,
                Mit.Position
           FROM
                Mit INNER JOIN cteLevels
                ON cteLevels.Id = Mit.[reports to the Boss] )
    SELECT REPLICATE( ' ' ,cteLevels.Id )+Mit.Name AS Name ,
           Id ,
           ParentId ,
           Mit.position
      FROM
           MIt INNER JOIN cteLevels
           ON cteLevels.Id = Mit.[EMPl Id]
      ORDER BY [Order] -- muss sein wegen ordnung 
GO
