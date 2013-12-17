--http://technet.microsoft.com/en-us/library/ms173763.aspx
USE [StayHomewithoutPer]
-- Scenario 1
rollback work



begin transaction;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from Fil where [Branch ID] = 'B001'
commit work

begin transaction;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
update Fil set city = 'Reutlingen'  where [Branch ID] = 'B001'

begin transaction;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from Fil where [Branch ID] = 'B001'
commit work

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;