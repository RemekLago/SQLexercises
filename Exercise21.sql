use Exercises;

select 
	tytul,
    rating,
    case 
		when rating > 4 then 'dobra ksiazka'
        else 'przecietna ksiazka'
	end as opinia,
    autor
from ksiazki;

select 
	tytul,
    rating,
    case 
		when rating > 4.2 then 'bardzo dobra ksiazka'
		when rating between 3.8 and 4.2then 'dobra ksiazka'
        else 'przecietna ksiazka'
	end as opinia,
    autor
from ksiazki;

select 
	tytul,
    rating,
    if(rating > 4, 'dobra ksiazka', 'przecietna ksiazka')
    autor
from ksiazki;


select 
	tytul,
	rating,
    case
		when rating > 4.5 then '*****'
        when rating between 4.0 and 4.5 then '****\,'
		when rating between 3.5 and 4.0 then '****,'
        when rating between 3.0 and 3.5 then '***\,'
        when rating between 2.5 and 3.0 then '***,'
        when rating between 2.0 and 2.5 then '**\,'
		else '*'
	end as stars,
    rok wydania,
    case 
		when rok_wydania < 1492 then '#sredniowiecze'
        when rok_wydania between 1492 and 1520 then '#renesans'
        when rok_wydania between 1520 and 1680 then '#barok'
        when rok_wydania between 1680 and 1789 then '#oswiecenie'
        when rok_wydania between 1789 and 1850 then '#romantyzm'
        when rok_wydania between 1850 and 1880 then '#pozytywizm'
        when rok_wydania between 1880 and 1918 then '#modernizm'
        when rok_wydania between 1918 and 1939 then '#literaturamiedzywojena'
        else '#literaturawspolczesna'
	end as hashtag,
    if (
		(star_1 + star_2 + star_3 + star_4) > star_5,
		'przewazniej mniej niz 5 gwiazdek',
		'przewaznie 5 gwiazdek') as klasyfikacja
    from ksiazki
    group by tytul;



