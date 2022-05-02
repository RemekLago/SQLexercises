use Exercises;
create table ksiazki
(
	id INT auto_increment primary key,
    autor CHAR(40),
    tytul VARCHAR(150),
    rok_wydania INT,
    isbn CHAR(13),
    rating DEC(3,2),
    rating_no INT,
    reviews_no INT,
    star_1 INT,
	star_2 INT,
	star_3 INT,
	star_4 INT,
	star_5 INT
);

select autor, tytul from ksiazki
into outfile '/Users/remigiuszlagodzki/Dumps/pliktests.csv'
character set utf8
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n';

select tytul, rok_wydania from ksiazki
into outfile '/Users/remigiuszlagodzki/Dumps/pliktests1.csv'
fields terminated by ','
lines terminated by '\r\n';

