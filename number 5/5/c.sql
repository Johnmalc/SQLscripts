USE [StayHomewithoutPer];
GO
-- http://www.datenbankforum.com/threads/theoretische-frage-zu-einer-abfrage-mit-union.1243/
-- http://www.codinghorror.com/blog/2007/10/a-visual-explanation-of-sql-joins.html
-- c) Welche Supervisors haben weniger als zwei Untergebene? 
-- zeigt kein 48 weil er 0 untergeben hat ->  48 hat keinen assisten -> null

-- optional
WITH sdf
    AS ( SELECT Mit.[reports to the Boss] AS empno ,
			 COUNT ( * ) AS pocet
		 FROM Mit
		 GROUP BY Mit.[reports to the Boss] ) 
--    -- table which has 32 rows / how employees reports to each his boss
  



    SELECT [EMPl Id] ,
		 name ,
		 gender ,
		 Gehalt ,
		 position
	 FROM Mit
	 WHERE [EMPl Id] IN(SELECT [reports to the Boss]
					  FROM Mit
					  GROUP BY [reports to the Boss]
					   HAVING COUNT ( * ) < 2)
					  -- dej mi bosy kteri se nevyskytuji vice nez 2 krat v seznamu
		  AND 
		  position = 'Supervisor'
    -- 38+42+61, not 48 this is done by other select
   
    UNION
    SELECT [EMPl Id] ,
		 name ,
		 gender ,
		 Gehalt ,
		 position
	 FROM
		 Mit s Left JOIN sdf
		 ON sdf.empno = s.[EMPl Id]

	 --To produce the set of records only in Table A, but not in Table B, 
	 --we perform the same left outer join, then exclude the records we don't want from the right side via a where clause.
	 -- via Jeff @reddit
	 WHERE Position = 'Supervisor'
		  AND 
		  sdf.empno IS NULL;
  GO
  -- geht nicht
SELECT x.*
  FROM Mit x
  WHERE Position = 'Supervisor'
	   AND 
	   [EMPl Id] IN(SELECT [reports to the Boss]
				   FROM Mit
				   GROUP BY [reports to the Boss]
				   HAVING COUNT ( * ) < 2)
	   or
	   Position = 'Supervisor'
	   and 
	   NOT EXISTS(SELECT *
				 FROM Mit y
				 WHERE x.[EMPl Id] = y.[EMPl Id]); 



