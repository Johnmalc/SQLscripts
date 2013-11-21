USE [StayHomewithoutPer]
GO
-- Select street, city, zip From Branch, Staff Where Name = 'Lilly Jennings' AND BranchFK = BranchID
-- Zeigen Sie die Adresse (Str, Ort, PLZ) der Filiale an, in der 'Lilly Jennings' arbeitet?
SELECT Fil.Street, Fil.city, Fil.ZIP
FROM Fil, Mit
WHERE Fil.[Branch ID] = Mit.[Branch ID] AND Mit.Name = 'Lilly Jennings'