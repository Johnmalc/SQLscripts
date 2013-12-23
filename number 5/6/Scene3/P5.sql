USE [StayHomewithoutPer]
go
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
go

begin transaction
go
select * from Fil
go

rollback work
go
