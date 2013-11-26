
Select Fil.city, telefon
from Fil
where city = 'London'  AND telefon not like '+44 171%'
group by Fil.city, telefon
--having count(Fil.city) >= 2

go
