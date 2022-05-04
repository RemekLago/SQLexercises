use Exercises;

    CREATE TABLE autor
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        imie CHAR(20),
        nazwisko CHAR(20)
    );
     
    CREATE TABLE ksiazka
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        tytul CHAR(20),
        rok_wydania INT(4),
        autor_id INT,
        FOREIGN KEY(autor_id) REFERENCES autor(id)
    );
     
    INSERT INTO autor(imie, nazwisko)
    VALUES
        ("George", "Orwell"),
        ("Bram", "Stoker"),
        ("Frank", "Herbert"),
        ("Stephen", "King") ,
        ("Charles", "Dickens");
     
     
    INSERT INTO ksiazka(tytul, rok_wydania, autor_id)
    VALUES
        ("Animal Farm", 1945, 1),
        ("Dune", 1965, 3),
        ("Dracula", 1897, 2),
        ("The Stand", 1990, 4),
        ("1984", 1949, 1),
        ("The Shining", 1977, 4);
     
     
    SELECT * FROM autor;
    SELECT * FROM ksiazka;
    
-- left join
select *
from autor left join ksiazka
on autor.id = ksiazka.autor_id;

select *
from autor left join ksiazka
on autor.id = ksiazka.autor_id
where ksiazka.autor_id is null;

select *
from autor left join ksiazka
on autor.id = ksiazka.autor_id
where ksiazka.autor_id is not null;

-- right join
select *
from autor right join ksiazka
on autor.id = ksiazka.autor_id;
    
select *
from autor right join ksiazka
on autor.id = ksiazka.autor_id
where ksiazka.autor_id is null;
   
-- inner join == join
select *
from autor inner join ksiazka
on autor.id = ksiazka.autor_id;

-- cross join
select * 
from autor, ksiazka;

select *
from autor cross join ksiazka;

-- full join
select * 
from autor
left join ksiazka 
on autor.id = ksiazka.autor_id 
union
select * 
from autor
right join ksiazka 
on autor.id = ksiazka.autor_id;

drop table ksiazka;

CREATE TABLE ksiazka
    (
        id INT AUTO_INCREMENT PRIMARY KEY,
        tytul CHAR(20),
        rok_wydania INT(4),
        autor_id INT,
        FOREIGN KEY(autor_id) 
			REFERENCES autor(id)
            on delete cascade
    );


   