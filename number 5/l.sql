USE [StayHomewithoutPer]
GO
-- Geht nicht
SELECT [Branch ID], city, (case when M/F=1 then 'Avarage' 
								when F/M > 1 then 'Over Woman' 
								when M/F > 1 then 'Over Man' 
								--when M/F is null then 'Unter' 
							end)  as Wah
							
FROM Bill_j
pivot ( Max(Zahl) for Gender in (M,F) ) as s 

GO


