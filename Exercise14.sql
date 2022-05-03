use Exercises;

select * from ksiazki where autor like 'John Tolkien';

select * from ksiazki where autor like 'John%';

select * from ksiazki where autor like '%Tolkien';

select 
	substring(autor, ' ', 1) 
from ksiazki 
where substring_index(autor, ' ', 1) like '____';


select *
from ksiazki
where tytul like '%the%';

select substring_index(autor, ' ', -1)
from ksiazki
where substring_index(autor, ' ', -1) like '______';

select substring_index(autor, ' ', -1)
from ksiazki
where char_length(substring_index(autor, ' ', -1)) = 6;

select distinct upper(substring_index(autor, ' ', 1))
from ksiazki
where autor like 'e%';

