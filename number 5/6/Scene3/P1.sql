USE [StayHomewithoutPer]
go
--P1

begin transaction
go

insert into Fil values ('B0099', '5th Avenue', 'NY', '95741', 20, '180095468712');
go

select * From Fil
go

commit transaction
go

delete from Fil where Fil.[Branch ID]='B0099'

rollback work


