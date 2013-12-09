USE [StayHomewithoutPer];
GO

-- Avarage pro gruppe
WITH 
    assG
    AS ( SELECT ROUND( AVG( Mit.Gehalt ) ,2 )AS Assistant
           FROM Mit
           WHERE Mit.Position = 'Assistant' ) 
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
    AS (SELECT 2 * Mit.Gehalt as neuG, Mit.[EMPl Id]
	   FROM Mit)

					 
    -- f) Gibt es Mitarbeiter die mehr doppelt soviel verdienen, als der Durchschnitt (alle) ihrer Untergebenen? 
    SELECT * --, neuG.[EMPl Id] 
      FROM manG, supG, neuG, dirG, assG
	   WHERE neuG > manG.Manager and neuG > supG.Supervisor and neuG > dirG.Director and neuG > assG.Assistant

GO




