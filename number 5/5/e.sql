USE [StayHomewithoutPer];
GO
-- e) Gibt es Mitarbeiter die weniger verdienen als der bestbezahlte ihrer Untergebenen? 
-- http://stackoverflow.com/questions/15189328/how-to-select-the-max-salary-per-department-including-the-employees-that-earn-i
-- http://iggyfernandez.wordpress.com/2011/12/01/the-twelve-days-of-sql-day-2/


select m.[EMPl Id], m.Name, m.Gehalt
from Mit m
where exists (
  select * from Mit e
  where m.[EMPl Id] = e.[reports to the Boss]
  and m.Gehalt < e.Gehalt
)

-- http://stackoverflow.com/questions/8351831/sql-query-to-find-the-all-subordinates-under-a-single-superior
--WITH Subordinates AS
--(
--   SELECT  [EMPl Id],  Name,  Mit.[reports to the Boss]
--   FROM Mit
--   WHERE  [reports to the Boss] = 2 -- here give the app manager who manages subs

--   UNION ALL

--   SELECT  Mit.[EMPl Id],  Mit.Name,  Mit.[reports to the Boss]
--   FROM Mit
--   INNER JOIN Subordinates AS sub ON  Mit.[reports to the Boss] = sub.[EMPl Id]
--)
--SELECT s.[EMPl Id],  Name,  s.[reports to the Boss]
--FROM Subordinates as s

GO

