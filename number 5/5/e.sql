USE [StayHomewithoutPer];
GO
-- e) Gibt es Mitarbeiter die weniger verdienen als der bestbezahlte ihrer Untergebenen? 
-- http://stackoverflow.com/questions/15189328/how-to-select-the-max-salary-per-department-including-the-employees-that-earn-i
WITH assistenGeh
    AS ( SELECT Gehalt ,
                e.[Branch ID] ,
                e.[EMPl Id]
           FROM
                Mit e INNER JOIN(SELECT MAX( e.Gehalt )MaxSalary ,
                                        d.[Branch ID]
                                   FROM
                                        Mit e INNER JOIN Fil d
                                        ON e.[Branch ID] = d.[Branch ID]
                                   WHERE Position = 'Assistant'
                                   GROUP BY d.[Branch ID])de
                ON e.Gehalt = de.MaxSalary
               AND e.[Branch ID] = de.[Branch ID] )
-- ORDER BY [Branch ID] )

,supervisorGeh
    AS ( SELECT [Branch ID] ,
                Gehalt ,
                Mit.[EMPl Id]
           FROM Mit
           WHERE Position = 'Supervisor' )
    
    
    
    
    SELECT DISTINCT *
      FROM
           dbo.Mit JOIN supervisorGeh ON Mit.Gehalt = supervisorGeh.[EMPl Id]
      --                JOIN assistenGeh ON Mit.[EMPl Id] = assistenGeh.[EMPl Id]
      WHERE Position = 'Supervisor';
-- SELECT DISTINCT Mit.[EMPl Id] ,
--                 Name ,
--                 Mit.[Branch ID] ,
--                 Position ,
--                 Mit.Gehalt,
--	assistenGeh.Gehalt ,
--            supervisorGeh.Gehalt
--   FROM
--        dbo.Mit JOIN supervisorGeh ON Mit.[EMPl Id] = supervisorGeh.[EMPl Id]
--                JOIN assistenGeh ON Mit.[EMPl Id] = assistenGeh.[EMPl Id]





-- http://stackoverflow.com/questions/8351831/sql-query-to-find-the-all-subordinates-under-a-single-superior
WITH Subordinates AS
(
   SELECT  [EMPl Id],  Name,  Mit.[reports to the Boss]
   FROM Mit
   WHERE  [reports to the Boss] = 2 -- here give the app manager who manages subs

   UNION ALL

   SELECT  Mit.[EMPl Id],  Mit.Name,  Mit.[reports to the Boss]
   FROM Mit
   INNER JOIN Subordinates AS sub ON  Mit.[reports to the Boss] = sub.[EMPl Id]
)
SELECT s.[EMPl Id],  Name,  s.[reports to the Boss]
FROM Subordinates as s



















-- WHERE Position = 'Supervisor'
--   GROUP BY Mit.[EMPl Id] ,
--            Name ,
--Mit.Gehalt,
--            Mit.[Branch ID] ,
--            Position ,
--            assistenGeh.Gehalt ,
--            supervisorGeh.Gehalt
--   HAVING assistenGeh.Gehalt > supervisorGeh.Gehalt
GO

