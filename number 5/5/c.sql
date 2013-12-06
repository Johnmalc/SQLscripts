USE [StayHomewithoutPer];
GO
-- http://www.datenbankforum.com/threads/theoretische-frage-zu-einer-abfrage-mit-union.1243/
-- c) Welche Supervisors haben weniger als zwei Untergebene? 
--SELECT 
---- count([EMPl Id]) as anzahl_mitarbeiter,
--	Name, Gender, Gehalt, [EMPl Id]
--  FROM [dbo].[Mit]
--  where exists (Select Name, Gender, Gehalt, [EMPl Id] From Mit where [reports to the Boss]= )
----  group by [reports to the Boss]
--GO
-- zeigt kein 48 weil er 0 untergeben hat ->  48 hat keinen assisten -> null
SELECT [EMPl Id] , 
       name , 
       gender , 
       Gehalt , 
       position
  FROM Mit
  WHERE [EMPl Id] IN( 
                      SELECT [reports to the Boss]
                        FROM Mit
				    GROUP BY [reports to the Boss]
                        HAVING COUNT(*) < 2 
				    --and COUNT(*) =0
				 --   order by [reports to the Boss]
                    )
    AND position = 'Supervisor'
--intersect 
--select [EMPl Id] , 
--       name , 
--       gender , 
--       Gehalt , 
--       position
--	  from Mit
--	 where position
--        = 
--        'Supervisor'

	 -- where [EMPl Id] = 48

