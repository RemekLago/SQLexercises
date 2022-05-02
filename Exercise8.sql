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

load data infile '/Users/remigiuszlagodzki/Dumps/ksiazki.csv'
into table ksiazki
fields terminated by ';'
lines terminated by '\r\n'
ignore 1 lines
(autor, tytul, rok_wydania, isbn, @rating, rating_no, reviews_no, star_1, star_2, star_3, star_4, star_5)
set rating = replace (@rating, ',', '.');
select * from ksiazki;