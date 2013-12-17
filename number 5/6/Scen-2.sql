-- Scen 2
USE [StayHomewithoutPer]





--P2
begin transaction;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from Fil where [Branch ID] = 'B001'

--P3
begin transaction;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
select * from Fil where [Branch ID] = 'B001'

--P4
begin transaction;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from Fil where [Branch ID] = 'B001'


--P5
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select * from Fil where [Branch ID] = 'B001'