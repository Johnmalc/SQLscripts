USE [StayHomewithoutPer]

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
go

begin transaction
go

select * from Fil where [Branch ID] = 'B001'
go

rollback TRANSACTION




