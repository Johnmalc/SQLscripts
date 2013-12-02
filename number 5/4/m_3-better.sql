Use [StayHomewithoutPer]
GO


SELECT city, telefon
     
  FROM Fil
  Where (City='Brighton' AND telefon not Like '+44 1273%')
OR (City='Bristol' AND telefon not Like '+44 117%')
OR (City='Derby' AND telefon not Like '+44 1332%')
OR (City='Aberdeen' AND telefon not Like '+44 1224%') 
OR (City='Edinburgh' AND telefon not Like '+44 131%')
OR (City='Exeter' AND telefon not Like '+44 1392%')
OR (City='Leeds' AND telefon not Like '+44 113%')
OR (City='Liverpool' AND telefon not Like '+44 151%')
OR (City='London' AND telefon not Like '+44 171%')
OR (City='Glasgow' AND telefon not Like '+44 141%')
OR (City='Manchester' AND telefon not Like '+44 161%')
OR (City='Newcastle' AND telefon not Like '+44 1782%')
