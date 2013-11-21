USE [StayHomewithoutPer]
GO

SELECT        Mit.Gender, Fil.[Branch ID], Mit.[EMPl Id]
FROM            Fil Full outer JOIN
                         Mit ON Fil.[Branch ID] = Mit.[Branch ID]
where Mit.Gender is null or Mit.Gender is not null
GROUP BY Mit.Gender, Fil.[Branch ID], Fil.city,  Mit.[EMPl Id]
HAVING        Fil.city = 'London'
