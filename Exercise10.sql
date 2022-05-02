use Exercises;

select concat(autor, tytul) from ksiazki limit 5;

select concat(autor, '-', tytul, '-', rok_wydania) from ksiazki limit 5;

select 
	concat_ws(' - ', autor, title, rok_wydania) as 'autor-tytu-rok wydania'
from ksiazki 
limit 5;


select substring('MySQL jest super', 7, 4);

select substring('MySQL jest super', 3, 14);

select substring('MySQL jest super', 7);

select substring('MySQL jest super', -4);

select substr(tytul, 1, 12) from ksiazki;

select concat(
	substr(title, 1, 7),
    '...')
from ksiazki;


select
	concat_ws
	(
		' - ',
		concat
		(
			substr(autor, 1, 5),
			"..."
		),
		concat
		(
			substr(tytul, 1, 10),
			"..."
		)
	)
from ksiazki;
