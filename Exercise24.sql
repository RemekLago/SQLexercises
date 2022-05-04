use Exercises;

select * from zamowienia, uzytkownicy 
where uzytkownicy_id = uzutkownicy.id;

select * from zamowienia, koszyk
where zamowienia_id = zamowienia.id
and uzytkownicy_id = 1;

select
	zamowienia.id,
    uzytkownicy.adres_ulica,
    uzytkownicy.adres_miasto,
    uzytkownicy.adres_kod
from zamowienia 
left join uzytkownicy
on zamowienia.uzytkownicy_id = uzytkownicy.id;

select *
from zamowienia 
right join uzytkownicy
on zamowienia.uzytkownicy_id = uzytkownicy.id
where uzytkownicy_id = 1;


select *
from koszyk
join ksiazki 
on koszyk.ksiazki_id = ksiazki.id;

select *
from koszyk
join ksiazki
on koszyk.ksiazki_id = ksiazki.id
where ksiazki.tytul like '%Harry Potter%';

select
	uzytkownic.email
from uzytkownicy
left join zamowienia
on uzytkownicy.id = zamowienia.uzytkownicy_id
where zamowienia.uzytkownicy_id is null;

select *
from zamowienia
right join uzytkownicy
on uzytkownicy_id = uzytkownicy.id
where uzytkownicy.adres_miasto like 'Warszawa'; 

