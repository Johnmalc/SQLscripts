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
WITH sdf
    AS ( SELECT Mit.[reports to the Boss] AS empno ,
                COUNT( * )AS te
           FROM Mit
           GROUP BY Mit.[reports to the Boss] )
    SELECT [EMPl Id] ,
           name ,
           gender ,
           Gehalt ,
           position
    --,ISNULL(null, 0) -- nicht notig
      FROM Mit
      WHERE [EMPl Id] IN(SELECT [reports to the Boss]
                           FROM Mit
                           GROUP BY [reports to the Boss]
                           HAVING COUNT( * ) < 2)
        AND position = 'Supervisor'
    UNION
    SELECT DISTINCT [EMPl Id] ,
                    name ,
                    gender ,
                    Gehalt ,
                    position
    -- sdf.empno AS Num_subordinates -- kann sein
      FROM
           Mit s LEFT JOIN sdf
           ON sdf.empno = s.[EMPl Id]
      WHERE Position = 'Supervisor'
        AND sdf.empno IS NULL;
  GO


