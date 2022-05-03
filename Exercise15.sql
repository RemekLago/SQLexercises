use Exercises;

select count(*) from ksiazki;

select count(distinct autor) from ksiazki; 

select count(*) from ksiazki where title like '%the%';

select 
	count(*) 
from ksiazki 
where char_length(substring_index(autor, ' ', -1)) = 6;

select
	count(*)
from ksiazki
where rok_wydania = 2012;

select
	count(*)
from ksiazki
where substring_index(autor, ' ', 1) like 'John';



