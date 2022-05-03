select curdate();

select curtime();

select now();

select day(now);
select day('2019-10-19');
select dayname(now());
select dayofweek(now());
select dayofyear(now());

select month(now());
select monthname(now());
select hour(now());
select minute(now());
select second(now());

select date_format('2010-05-01 14:32:11', '%d/%m/%y');
select date_format('2010-05-01 14:32:11', '%D/%M/%Y');

select datediff(now(), '2010-05-01');

select date_add(now(), interval 100 day);

select date_add(now(), interval 23 year);

select date_add(now(), interval 100 minute);

select date_sub(now(), interval 24 hour);

select timestamp('2010-05-01');

create table komentarze
(
	tresc varchar(250),
    data_wpisu timestamp default now() on update current_timestamp
    );

insert into komentarze(tresc) values('ta ksiazka jest ciekawa');

select * from kometarze;



