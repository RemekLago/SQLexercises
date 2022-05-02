use sakila;
select * from customer limit 40;

update customer set email = 'Lopez.A@yahoo.com' where customer_id = 32;

delete from customer where customer_ID = 33; 
select * from customer limit 40;