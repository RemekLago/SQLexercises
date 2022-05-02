use Exercises;

CREATE TABLE fastest_file
(
	zwierze CHAR(30),
    predkosc INT,
    klasa CHAR(20)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE '/usr/local/mysql/data/fastest_file.csv'
INTO TABLE fastest_file
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n';

select * from fastes_file;

create table fastes_file2
(
	zwierze CHAR(30),
    predkosc DECIMAL(4,1),
    klasa CHAR(20)
    );

LOAD DATA IN FILE '/Users/remigiuszlagodzki/Dumps/fastest_utf8.csv'
INTO TABLE fastest_file2
CHARACTER SET utf8
FIELDS TERMINATED By ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(zwierze, @predkosc, @klasa)
SET predkosc = REPLACE (@predkosc, ',', '.')
	klasa = IF(@klasa = '', NULL, @klasa);


