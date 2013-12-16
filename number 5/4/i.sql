USE [StayHomewithoutPer];
GO

SELECT Mit.Gender ,
	  Fil.[Branch ID] ,
	  COUNT ( Mit.[EMPl Id] ) AS anzahl
  FROM
	  Fil JOIN Mit ON Fil.[Branch ID] = Mit.[Branch ID]
  GROUP BY Mit.Gender ,
		 Fil.city ,
		 Fil.[Branch ID]
  HAVING Fil.city = 'London';
