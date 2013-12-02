USE [StayHomewithoutPer]
GO

SELECT        Mit.Gender, Fil.[Branch ID], count(Mit.[EMPl Id]) as anzahl
FROM            Fil,Mit
where Fil.[Branch ID] = Mit.[Branch ID]
GROUP BY Mit.Gender, Fil.city, Fil.[Branch ID]
HAVING   Fil.city = 'London'
