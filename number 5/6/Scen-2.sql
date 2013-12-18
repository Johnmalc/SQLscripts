-- Scen 2
USE [StayHomewithoutPer]


--P1
begin transaction;
update Fil set city = 'Edinburgh'  where [Branch ID] = 'B001'

select * from Fil where [Branch ID] = 'B001'

rollback TRANSACTION

--P2
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
begin transaction
select * from Fil where [Branch ID] = 'B001'

select * from Fil where [Branch ID] = 'B001'

--P3
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
begin transaction
select * from Fil where [Branch ID] = 'B001'

--P4
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
begin transaction
select * from Fil where [Branch ID] = 'B001'
rollback TRANSACTION

--P5
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select * from Fil where [Branch ID] = 'B001'
rollback TRANSACTION