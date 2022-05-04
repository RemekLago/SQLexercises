use Exercises;

create table magazyn
(
	id int auto_increment primary key,
    ksiazki_id int,
    stan_magazynowy int,
    hurtownia tinyint,
    data_aktualizacji timestamp default now() on update current_timestamp,
    foreign key (ksiazki_id) references ksiazki(id)
);

load data infile
'/Users/remigiuszlagodzki/Dumps/magazyn.csv'
into table magazyn
character set utf8
fields terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(ksiazki_id, stan_magazynowy, hurtownia);

select * from magazyn;

delimiter $$
create trigger insert_order before insert on koszyk
for each row begin
	update magazyn set stan_magazynowy = stan_magazynowy -1
		where magazyn.ksiazki_id - new.ksiazki_id;
end; $$
delimiter ;


insert into zamowienia(uzytkownicy_id)
values
	(4),
	(8);
    
    
select * 
from zamowienia 
where uzytkownicy_id = 4 or uzytkownicy_id = 8;

insert into koszyk(zamowienia_id, ksiazki_id)
values
	(12, 1),
	(12, 3),
    (13, 4);