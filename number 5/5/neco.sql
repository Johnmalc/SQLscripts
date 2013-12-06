--    Gibt es Mitarbeiter (man+dir) die mehr doppelt soviel verdienen, als der Durchschnitt ihrer Untergebenen?  not 
-- Gibt es Mitarbeiter die weniger verdienen als der bestbezahlte ihrer Untergebenen? n
WITH Subordinates AS
(
   SELECT  [EMPl Id],  Name,  Mit.[reports to the Boss], Gehalt
   FROM Mit
  -- WHERE  [reports to the Boss] = 1 -- here give the app manager who manages subs

   UNION ALL

   SELECT  Mit.[EMPl Id],  Mit.Name,  Mit.[reports to the Boss], Mit.Gehalt
   FROM Mit
   Inner JOIN Subordinates AS sub ON  
   Mit.[EMPl Id] = sub.[reports to the Boss]
  -- Mit.[reports to the Boss] = sub.[EMPl Id] -- egal welche
)
--SELECT Distinct s.[EMPl Id], s.Name,  s.Gehalt, s.[reports to the Boss], Mit.Name, Mit.Gehalt
--FROM Subordinates as s Join Mit on (s.[reports to the Boss] = Mit.[EMPl Id])


--Select Distinct *
--from Subordinates


-- Gibt es Mitarbeiter die weniger verdienen als der bestbezahlte ihrer Untergebenen? 
-- Gibt es Mitarbeiter (man+dir) die mehr doppelt soviel verdienen, als der Durchschnitt ihrer Untergebenen?  
-- udela prumer zarpalty lidi co pracuji pro roverta kinga
select Distinct Avg(s.Gehalt) From Subordinates as s Join Mit on (s.[reports to the Boss] = Mit.[EMPl Id])
--  where Mit.Name = 'Robert King'


--SELECT Distinct s.[EMPl Id], s.Name,  s.Gehalt, s.[reports to the Boss], Mit.Name, Mit.Gehalt
--From Subordinates as s Join Mit on (s.[reports to the Boss] = Mit.[EMPl Id])
--where 2 * s.Gehalt < all (SELECt Avg(s.Gehalt) From Subordinates as s Join Mit on (s.[reports to the Boss] = Mit.[EMPl Id]))
----(select  Avg(s.Gehalt) From Subordinates as s Join Mit on (s.[reports to the Boss] = Mit.[EMPl Id]) 
---- where Mit.Name = 'Robert King')
----Mit.Gehalt
--group by  Mit.Name,s.[reports to the Boss], s.[EMPl Id], s.Name,  s.Gehalt, Mit.Gehalt
----having 2 * s.Gehalt <= Avg(Mit.Gehalt)
--order by [EMPl Id]


