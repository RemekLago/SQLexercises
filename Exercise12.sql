use Exercises;

select reverse('MySQL jest super!');

select reverse(autor) from ksiazki;

select char_length('MySQL jest super!');

select tytul, char_length(tytul) as 'dlugosc tytulu' from ksiazki;

select upper('MySQL jest super!');

select lower('MySQL jest super!');

select autor from ksiazki;

select 
	substring_index(autor, ' ', 1) as first_name,
    substring_index(autor, ' ', -1) as last_name
from ksiazki;

select distinct rok_wydania from ksiazki;


select 
	distinct substring_index(
		lower(autor), ' ', 1)
		as first_name,
	char_length(
		substring_index(autor, ' ', 1) 
		as lenght
from ksiazki;



