use Exercises;

select
	autor,
    count(*) as 'amount'
from ksiazki
group by autor;

select
	rok_wydania,
    count(*) as 'amount'
from ksiazki
group by rok_wydania 
order by amount desc;
