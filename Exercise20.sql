use Exercises;

select cast('2020-05-01' as date);

select cast(10 as char);

select
	substring_index(autor, ' ', 1) as first_name,
    substring_index(autor, ' ', -1) as last_name,
    tytul,
    rok_wydania
where
	substring_index(autor, ' ', -1) = 'Tolkien' or
    substring_index(autor, ' ', -1) = 'Rowling' or
    substring_index(autor, ' ', -1) = 'King' or
    substring_index(autor, ' ', -1) = 'Orwell';
    

select
	substring_index(autor, ' ', 1) as first_name,
    substring_index(autor, ' ', -1) as last_name,
    tytul,
    rok_wydania
where
	substring_index(autor, ' ', -1) in ('Tolkien', 'Rowling', 'King', 'Orwell');
    
select
	substring_index(autor, ' ', 1) as first_name,
    avg(rating)
from ksiazki
where
	first_name in ('John', 'Dan', 'George', 'William') and
    rok_wydania % 2 = 1 
group by first_name;
    
    