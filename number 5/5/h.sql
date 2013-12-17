USE [StayHomewithoutPer];
GO
-- top -> manual
-- http://www.codespaces.com/blog/2011/02/24/oracle-limiting-the-number-of-records-like-top-n-limit/
-- http://technet.microsoft.com/en-us/library/ms186734.aspx
-- http://troels.arvin.dk/db/rdbms/#select-limit 
--WITH staff_order
--    AS ( SELECT Mit.[EMPl Id] ,
--                ROW_NUMBER( )OVER( ORDER BY Mit.Gehalt DESC )AS rownumber
--           FROM Mit )
--    -- 2 spalten; rownumber  return number of a row
--    --It looks at the data after the where clause is
--    --applied, and is applied in an order that we specify using the keyword OVER. 
--    --, to use row_number() to filter the number of rows returns, we must use a subquery.
    
--    -- this applies the sort order of row_number
--    -- ROW_NUMBER( ) = Returns the sequential number of a row within a partition of a result set,

--    SELECT Mit.*
--      FROM Mit ,staff_order
--      WHERE staff_order.[EMPl Id] = Mit.[EMPl Id]
--        AND staff_order.rownumber <= 10
--      ORDER BY Mit.Gehalt DESC;
-- oben ist gleiche wie unter

SELECT TOP 10 *
  FROM Mit
 ORDER BY Mit.Gehalt DESC;

GO
-- nimmt hier die hoheren 10 in der Mit
-- "Find all persons (px) such that the number of other persons (py) is less than 3".
-- nimmt die 10 hochsten (geordnet nach dem Gehalt)
SELECT Distinct Gehalt
  FROM Mit AS px
  WHERE(SELECT  COUNT ( Gehalt )
		FROM Mit AS py
		-- here min/max
		WHERE py.Gehalt > px.Gehalt) <= 10
--ORDER BY px.Gehalt DESC;

GO

-- nicht notig 
SELECT *
  FROM Mit d
  WHERE 10 > (SELECT COUNT ( * )
			 FROM Mit r
			 WHERE r.Gehalt > d.Gehalt);
