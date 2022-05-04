use Exercises;

select
	*
from zamowienia
join koszyk
on zamowienia.id = koszyk.zamowienia_id
join ksiazki
on koszyk.ksiazki_id = ksiazki.id;

select
	uzytkownicy.imie,
    uzytkownicy.nazwisko,
    ksiazki.tytul
from uzytkownicy
	join zamowienia on uzytkownicy.id = zamowienia.uzytkownicy_id
    join koszyk on zamowienia.id = koszyk.zamowienia_id
    join ksiazki on koszyk.ksiazki_id = ksiazki.id;