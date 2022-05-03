use exercises;

create table uzytkownicy
(
	id int auto_increment primary key,
    imie varchar(20) not null,
    nazwisko varchar(50) not null,
    email varchar(255) not null,
    adres_ulica varchar(255) not null,
    adres_miasto varchar(255) not null,
    adres_kod varchar(6) not null,
    telefon int(9) not null,
    data_rejestracji timestamp default now() on update current_timestamp
);


load data infile 
'/Users/remigiuszlagodzki/Dumps/uzytkownicy.csv'
into table uzytkownicy
character set utf8
fields terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(imie, nazwisko, email, adres_ulica, adres_miasto, adres_kod, telefon);

select * from uzytkownicy;

create table zamowienia
(
	id int auto_increment primary key,
    uzytkownicy_id int,
    data_zamowienia timestamp default now() on update current_timestamp,
    foreign key (uzytkownicy_id) references uzytkownicy(id) 
);

create table koszyk
(
	zamowienia_id int,
    ksiazki_id int,
    foreign key (zamowienia_id) references zamowienia(id),
    foreign key (ksiazki_id) references Exercises.ksiazki(id)
);
    
load data infile 
'/Users/remigiuszlagodzki/Dumps/zamowienia.csv'
into table zamowienia
character set utf8
fields terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(id, uzytkownicy_id);
    
load data infile 
'/Users/remigiuszlagodzki/Dumps/koszyk.csv'
into table koszyk
character set utf8
fields terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(zamowienia_id, ksiazki_id);    

select * from ksiazki;
select * from uzytkownicy;
select * from koszyk;
select * from zamowienia;

select * from zamowienia, uzytkownicy
where uzytkownicy_id = uzytkownicy_id;


select
	zamowienia_id,
    count(*) as ile_ksiazek
from koszyk, ksiazki
where ksiazki_id = ksiazki.id
group by zamowienia_id;







