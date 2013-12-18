USE [StayHomewithoutPer]
go

SET TRANSACTION ISOLATION LEVEL READ COMMITTED

begin transaction
go

select * from Fil where [Branch ID] = 'B001'
go








