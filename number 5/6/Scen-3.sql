USE [StayHomewithoutPer]


--e) Szenario 3:
--1) P2 - P5 beginnen eine neue Transaktion und selektieren alle Filialen.
--2) Dann soll P1 eine neue Filiale anlegen. Was stellt P1 fest?
--3) P5 beendet mit „rollback work“. Was stellt P1 – P4 fest?
--4) P2 – P4 wiederholen die Abfrage. Hat sich das Ergebnis geändert? 
--5) P1 beendet Transaktion mit „commit work“. 

--P1

begin transaction;
insert into Fil values ('B0099', '5th Avenue', 'NY', '95741', 20, '180095468712');
commit transaction;
--P2
begin transaction;
select * from Fil where [Branch ID] = 'B001'
--P3
begin transaction
select * from Fil where [Branch ID] = 'B001'
--P4
begin transaction
select * from Fil where [Branch ID] = 'B001'
commit transaction;

--P5
begin transaction
select * from Fil where [Branch ID] = 'B001'

rollback work;


