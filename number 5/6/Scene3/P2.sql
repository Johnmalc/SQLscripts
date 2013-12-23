USE [StayHomewithoutPer]
GO
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
GO

begin transaction
go
select * from Fil
go
commit transaction
go