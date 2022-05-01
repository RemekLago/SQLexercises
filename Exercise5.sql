show databases;
create database Exercises;
use exercises;
SHOW tables;
create table slowest_animals;
show tables;
create table slowest_animals
(
zwierze char(20),
gatunek char(20),
predkosc decimal(8,6)
);

show tables;
insert into slowest_animals (zwierze, gatunek, predkosc) Values('Slonka Amerykanska', 'ptak', 8.0);
select * from slowest_animals;
insert into slowest_animals (zwierze, gatunek, predkosc) Values('Zolw Wielki', 'gad', 1.6);
insert into slowest_animals (zwierze, gatunek, predkosc) Values('Konik Morski', 'ryba', 0.0161);
insert into slowest_animals (zwierze, predkosc) Values('Slimak Bananowy', 0.000083);
insert into slowest_animals (zwierze, gatunek) Values('Slimak Bananowy', 'koralowce');
select * from slowest_animals;