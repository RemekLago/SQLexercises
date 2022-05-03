use Exercises;

select
	tytul as title,
	rating
from ksiazki
order by rating;

select
	tytul as title,
	rating
from ksiazki
order by rating desc;

select
	tytul as title,
	rating
from ksiazki
order by rating desc
limit 10;

select
	autor as author,
	tytul as title,
	rating_no as rating,
    rok_wydania as publication_year,
    isbn
from ksiazki
order by 4 desc;

select
	substring_index(autor, ' ', 1) as last_name,
	tytul as title
from ksiazki
order by rating_no desc
limit 15;

