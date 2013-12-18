--Master
USE [StayHomewithoutPer]

begin transaction

update Fil set city = 'Reutlingen'  where [Branch ID] = 'B001'

select * from Fil where [Branch ID] = 'B001'

rollback TRANSACTION
