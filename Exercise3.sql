show databases;
use sakila;
show tables;
select * from film;
select 
	title, 
	rating 
from film 
limit 50;

select title,
	film_id 
from film 
where film_id >980; 

select 
	title, 
    film_id, 
    rating 
from film 
where rating = 'g'; 

select 
	title as 'Title film', 
    film_id as 'ID', 
    rating as 'Rating film'
from film 
where rating = 'PG' or rating = 'Pg-13'; 