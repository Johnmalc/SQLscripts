USE [StayHomewithoutPer];
GO
-- Doku : http://sqlfiddle.com/#!6/c2312/1
-- http://www.elsasoft.org/samples/ReportServer_adventureworks/SqlServer.SPRING.KATMAI.AdventureWorks2008/view_SalesvSalesPersonSalesByFiscalYears.htm
-- http://stackoverflow.com/questions/15745042/efficiently-convert-rows-to-columns-in-sql-server-2008
-- CAST(Zahl as float) 
-- 100% Fertig

--SELECT        CAST(COUNT(dbo.Mit.[EMPl Id]) AS float) AS zahl, ISNULL(dbo.Mit.Gender, '0') AS Gender, dbo.Mit.[Branch ID], dbo.Fil.city
--FROM            dbo.Fil INNER JOIN
--                         dbo.Mit ON dbo.Fil.[Branch ID] = dbo.Mit.[Branch ID]
--GROUP BY dbo.Mit.Gender, dbo.Mit.[Branch ID], dbo.Fil.city



-- Obracene ale bez view
--SELECT Max(case when Gender='M' then zahl end) as M, Max (case when Gender='F' then zahl end) as F, dbo.Mit.[Branch ID], dbo.Fil.city
--From            dbo.Fil INNER JOIN
--                         dbo.Mit ON dbo.Fil.[Branch ID] = dbo.Mit.[Branch ID]
--GROUP BY dbo.Mit.[Branch ID], dbo.Fil.city


SELECT  (F / Masf)  AS te, [Branch ID]
  FROM( 
        SELECT [Branch ID] ,
               MIN( CASE
                    WHEN Gender = 'M' THEN zahl
                    END
                  )AS Masf , 
               MIN( CASE
                    WHEN Gender = 'F' THEN zahl
                    END
                  )AS F
          FROM Bill_j
          GROUP BY [Branch ID]
      )AS test
  ORDER BY te DESC;


-- Right, but he wants without pivot
--SELECT F/M as test, [Branch ID]
--FROM Bill_j
--pivot ( MAX(Zahl) for Gender in (M,F) ) as s
--group by [Branch ID], F, M -- oder ohne F, M aber dann mit Max(F/M)
--order by test DESC
--GO