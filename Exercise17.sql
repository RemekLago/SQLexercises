use Exercises;

select min(rating) from ksiazki;

select rating from ksiazki order by rating limit 1;

select max(rating) from ksiazki;

select rating from ksiazki order by rating desc limit 1;

select 
	autor, 
    tutyl, 
    rating 
from ksiazki 
where rating = (select min(rating) from ksiazki);

select sum(ratings_no) from ksiazki;

select autor, sum(ratings_no), count(*) from ksiazki group by autor;

select avg(ratings_no) from ksiazki;

select
	rok_wydania,
    avg(rating),
    count(*)
from ksiazki
group by rok_wydania
order by rok_wydania desc;

select
	rok_wydania,
    round(avg(rating), 2),
    count(*)
from ksiazki
where rok_wydania % 2 = 0
group by rok_wydania
order by rok_wydania desc;


select
	autor,
    min(rok_wydania)
from ksiazki
group by autor;
    
    
select
	autor,
    sum(reviews_no) as comments
from ksiazki
group by autor
order by comments desc
limit 10; 

select 
	autor,
    round(avg(star_1), 0),
    round(avg(star_5), 0)
from ksiazki
group by autor
order by substring_index(autor, ' ', -1);




