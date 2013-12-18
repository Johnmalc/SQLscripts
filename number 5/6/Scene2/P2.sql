--P2
USE [StayHomewithoutPer]
GO
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
GO

begin transaction;
go

select * from Fil where [Branch ID] = 'B001';
go
