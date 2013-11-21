USE [StayHomewithoutPer]
GO
-- Wer ist der Supervisor vom Mitarbeiter mit der EmpID = 54? Lösen Sie diese Aufgabe bitte mit einer Subquery.
SELECT *
FROM Mit
WHERE Mit.[EMPl Id] IN (
	SELECT [reports to the Boss]
	FROM Mit
	WHERE [EMPl Id]= 54
); 

--SELECT *
--FROM Staff
--WHERE EmpID IN (
--	SELECT SupervisorFK
--	FROM Staff
--	WHERE EmpID= 54
--);