USE [StayHomewithoutPer]
GO
-- Zeigen Sie alle Filialen an, die in der Stadt London liegen.
SELECT *
  FROM [dbo].[Fil]
  where city = 'London'
GO

-- SELECT * FROM Branch where city = 'London'

