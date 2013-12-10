USE [StayHomewithoutPer];
GO
-- -- f) Gibt es Mitarbeiter die mehr doppelt soviel verdienen, als der Durchschnitt (alle) ihrer Untergebenen? 
-- Fur mich: Any Bosses who have twice bigger salary than his subordinate
-- Avarage pro gruppe
WITH 
    assG
    AS ( SELECT ROUND( AVG( Mit.Gehalt ) ,2 )AS Assistant
           FROM Mit
           WHERE Position = 'Assistant' ) 
    ,manG
    AS ( SELECT ROUND( AVG( Gehalt ) ,2 )AS Manager 
           FROM Mit
           WHERE Position = 'Manager' ) 
    ,supG
    AS ( SELECT ROUND( AVG( Gehalt ) ,2 )AS Supervisor
           FROM Mit
           WHERE Position = 'Supervisor' )
    ,dirG
    AS ( SELECT ROUND( AVG( Gehalt ) ,2 )AS Director
           FROM Mit
           WHERE Position = 'Director' )
    ,neuG
    AS (SELECT 2 * Mit.Gehalt as neuG, Mit.[EMPl Id], Mit.[Branch ID], Mit.Gender, Mit.Name, Mit.Position, MIt.[reports to the Boss]
	   FROM Mit)

					 
    -- f) Gibt es Mitarbeiter die mehr doppelt soviel verdienen, als der Durchschnitt (alle) ihrer Untergebenen? 
    SELECT neuG.* --, neuG.[EMPl Id] 
      FROM manG, supG, neuG, dirG, assG
	   WHERE neuG > manG.Manager and neuG > supG.Supervisor and neuG > dirG.Director and neuG > assG.Assistant

GO




