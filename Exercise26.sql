use Exercises;

select
	distinct uzytkownicy.id,
    uzytkownicy.email,
    case
    when ksiazki.tytul like '%Harry Potter%' then 'comment1'
    when zamowienia.uzytkownicy_id > 0 then 'comment2'
    else 'comment3'
    end as email_text,
    case
    when ksiazki.tytul like '%Harry Potter%' then 'coupon1'
    when zamowienia.uzytkownicy_id > 0 then 'coupon2'
    else 'coupon3'
    end as coupon
from uzytkownicy
left join zamowienia 
on uzytkownicy.id = zamowienia.uzytkownicy_id
	left join koszyk
    on zamowienia.id = koszyk.zamowienia_id
		left join ksiazki
        on koszyk.ksiazki_id = ksiazki.id;