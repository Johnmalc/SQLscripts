USE [StayHomewithoutPer]
GO

WITH cteLevels
    AS ( SELECT CAST( REPLICATE( '.' ,1 )+Name AS varchar( 25 ))AS [Categoty Name] ,
                [EMPl Id] ,
                [reports to the Boss],
			 Position 
                --CAST( Id AS varchar( max ))AS [Order] ,
                --1 AS Level
           FROM Mit
		 where [Branch ID] = 'B003'
         -- where id=1
 
         UNION ALL
         SELECT CAST( REPLICATE( '.' ,1 )+Name AS varchar( 25 ))AS [Categoty Name] ,
                Mit.[EMPl Id] ,
                Mit.[reports to the Boss],
			 Mit.Position
                --Level+1 AS Level ,
                --[Order]+'.'+CAST( Novatest.Id AS varchar( max ))AS [Order]
           FROM
                Mit INNER JOIN cteLevels
                ON cteLevels.[EMPl Id] = Mit.[reports to the Boss] 
		)
    SELECT distinct *
      FROM cteLevels
   --   ORDER BY [Order];
GO
