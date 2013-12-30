USE [StayHomewithoutPer]
go

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go

begin transaction
go

select * from Fil
go
commit transaction
go

