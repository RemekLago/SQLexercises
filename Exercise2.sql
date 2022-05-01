create table fast_animals
	(
	zwierze char(20) default 'nienazwany',
	max_predkosc int,
	stan char(10) default 'nie podano'
	);
desc fast_animals;

insert into fast_animals(zwierze, max_predkosc, stan)
values ('Sokol Wedrowny', 390, 'nurkowanie');
insert into fast_animals(zwierze, max_predkosc)
values ('Orzel Zloty', 320);
insert into fast_animals(max_predkosc, stan)
values (390, 'nurkowanie');
select * from fast_animals;

create table unique_animals
	(
	zwierze_id int not null,
    zwierze char(20) default 'nienazwany',
	max_predkosc int not null,
	stan char(10) default 'nie podano',
	primary key (zwierze_id)
	);
    
insert into unique_animals(zwierze_id, zwierze, max_predkosc, stan)
values (1, 'Sokol Wedrowny', 390, 'nurkowanie');
insert into unique_animals(zwierze_id, zwierze, max_predkosc)
values (2, 'Orzel Zloty', 320);
insert into unique_animals(zwierze_id, max_predkosc, stan)
values (3, 390, 'nurkowanie');
select * from unique_animals;

create table unique_animals2
	(
	zwierze_id int auto_increment primary key,
    zwierze char(20) default 'nienazwany',
	max_predkosc int not null,
	stan char(10) default 'nie podano'
	);
insert into unique_animals2(zwierze, max_predkosc, stan)
values ('Sokol Wedrowny', 390, 'nurkowanie');
insert into unique_animals2(zwierze, max_predkosc)
values ('Orzel Zloty', 320);
insert into unique_animals2(zwierze_id, zwierze, max_predkosc)
values (173, 'Korbuz', 160);
insert into unique_animals2(zwierze, max_predkosc)
values ('Gepard', 120);

select * from unique_animals2;

show databases;



