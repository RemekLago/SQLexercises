CREATE TABLE fastest
(
	animal CHAR(30),
	max_speed INT,
	class CHAR(20)
);
INSERT INTO fastest(animal, max_speed, class)
VALUES
	("Peregrine falcon", 390, "Flight-diving"),
	("Golden eagle", 320, "Flight-diving"),
	("Whitethroated needletail swift", 170, "Flight"),
	("Eurasian hobby", 160, "Flight"),
	("Mexican free-tailed bat", 160, "Flight"),
	("Frigatebird", 153, "Flight"),
	("Rock dove", 149, "Flight"),
	("Spur-winged goose", 142, "Flight"),
	("Black marlin", 129, "Swimming"),
	("Gyrfalcon", 128, "Flight");
    
desc fastest;
select * from fastest;

update fastest set max_speed = 500 where class = 'Flight';

delete from fastest where animal = 'Rock dove';

delete from fastest where class = 'Flight-diving';
select * from fastest;
