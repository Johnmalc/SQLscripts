USE [StayHomewithoutPer]
GO
-- http://www.codespaces.com/blog/2011/02/24/oracle-limiting-the-number-of-records-like-top-n-limit/
WITH staff_order AS (
    SELECT Mit.[EMPl Id], row_number() over (ORDER BY Mit.Gehalt DESC) AS rownumber
        FROM Mit )

SELECT *
  FROM Mit, staff_order
  where staff_order.[EMPl Id] = Mit.[EMPl Id] and staff_order.rownumber <= 11
  order by Mit.Gehalt DESC
GO

--Select TOP 10 * From Mit order by Mit.Gehalt DESC
--GO