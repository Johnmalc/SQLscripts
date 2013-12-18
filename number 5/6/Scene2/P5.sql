Use [StayHomewithoutPer]
go

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
go

begin transaction
go

select * from Fil where [Branch ID] = 'B001'
go

rollback TRANSACTION
go