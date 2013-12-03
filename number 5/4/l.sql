USE [StayHomewithoutPer];
GO

-- 100% Fertig 

SELECT [Branch ID] , 
       CASE
       WHEN M / F = 1 THEN 'Average'
       WHEN F / M > 1 THEN 'Over Woman'
       WHEN M / F > 1 THEN 'Over Man'
       WHEN M IS NULL THEN 'Over Woman'
       WHEN F IS NULL THEN 'Over Man'
       END AS Wah
  FROM( 
        SELECT [Branch ID] , 
               MIN( CASE
                    WHEN Gender = 'M' THEN zahl
                    END
                  )AS M , 
               MIN( CASE
                    WHEN Gender = 'F' THEN zahl
                    END
                  )AS F
          FROM Bill_j
          GROUP BY [Branch ID]
      )AS test;
GO


