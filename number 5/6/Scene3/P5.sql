USE [StayHomewithoutPer]
go
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
go

begin transaction
go
select * from Fil
go

commit
rollback work
go
