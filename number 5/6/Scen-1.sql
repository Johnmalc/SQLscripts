--http://technet.microsoft.com/en-us/library/ms173763.aspx
USE [StayHomewithoutPer]

-- Scenario 1

--P1
rollback TRANSACTION
--P2
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
begin transaction
select * from Fil where [Branch ID] = 'B001'
commit TRANSACTION
--P3
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
begin transaction
update Fil set city = 'Reutlingen'  where [Branch ID] = 'B001'
--P4
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
begin transaction
select * from Fil where [Branch ID] = 'B001'
commit TRANSACTION
--P5
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;