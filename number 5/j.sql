USE [StayHomewithoutPer]
GO
-- Doku : http://sqlfiddle.com/#!6/c2312/1
-- http://www.elsasoft.org/samples/ReportServer_adventureworks/SqlServer.SPRING.KATMAI.AdventureWorks2008/view_SalesvSalesPersonSalesByFiscalYears.htm
-- http://stackoverflow.com/questions/15745042/efficiently-convert-rows-to-columns-in-sql-server-2008
-- CAST(Zahl as float) 

SELECT MAX(F/M) as test, [Branch ID]
FROM Bill
pivot ( MAX(Zahl) for Gender in (M,F) ) as s 
group by [Branch ID]
order by test DESC 
GO
