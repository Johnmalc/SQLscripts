USE [StayHomewithoutPer];
GO
-- e) Gibt es Mitarbeiter die weniger verdienen als der bestbezahlte ihrer Untergebenen? 
-- Fur mich: ANy bosses who make less money then their employees 
-- http://stackoverflow.com/questions/15189328/how-to-select-the-max-salary-per-department-including-the-employees-that-earn-i
-- http://iggyfernandez.wordpress.com/2011/12/01/the-twelve-days-of-sql-day-2/
-- http://stackoverflow.com/questions/8351831/sql-query-to-find-the-all-subordinates-under-a-single-superior

-- kor
select m.[EMPl Id], m.Name, m.Gehalt
from Mit m
where exists (
  select * from Mit e
  where m.[EMPl Id] = e.[reports to the Boss]
  and e.Gehalt > m.Gehalt -- bei m wird leere menge
)

GO
-- same
-- unkor
select m.[EMPl Id], m.Name, m.Gehalt
from Mit m
where m.Gehalt < (
  select max(e.Gehalt) from Mit e
  where m.[EMPl Id] = e.[reports to the Boss]
)