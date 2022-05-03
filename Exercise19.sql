use Esercises;

select 
	autor,
    rok_wydania
from ksiazki
where rok_wydania between 2005 and 2010;

select
	autor,
    avg(rating)
from ksiazki
where rok_wydania between 1990 and 2005
group by 1
order by 1;

select
	autor,
    sum(star_1)
from ksiazki
where rating_no > 1000000 or
reviews_no > 50000
group by autor;

select
	sum(star_5)/sum(rating_no)*100 as percent
from ksiazki
where rating > 4;

select
	avg(rating)
from ksiazki
where char_length(substring_index(autor, ' ', -1)) not between 6 and 10;

select
	autor,
    rok_wydania,
    sum(reviews_no)
from ksiazki
where rating_no > 600000
group by autor, rok_wydania
order by autor desc;

select
	autor,
    tytul,
    rok_wydania
from ksiazki
where rok_wydania % 2 =0;

select * 
from ksiazki
where rating_no != (star_1 + star_2 + star_3 + star_4 + star_5);

update ksiazki 
set rating_no = (star_1 + star_2 + star_3 + star_4 + star_5)
where rating_no != (star_1 + star_2 + star_3 + star_4 + star_5);

