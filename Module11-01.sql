 -- SELECT * FROM tekcampers;
 
-- INSERT INTO tekcampers SELECT * FROM students.tekcamp01; 

-- ALTER TABLE tekcampers MODIFY COLUMN id INT auto_increment; 

-- INSERT INTO tekcampers(first_name, last_name, gender, education)
-- values 
-- ('Cody', 'Clark', 'M', NULL),
-- ('Aaron', 'White', 'M', NULL),
-- ('Monica', 'Howard', 'F', NULL),
-- ('Kevin', 'Keesee', 'M', NULL),
-- ('Davon', 'Bruwster', 'M', NULL),
-- ('John', 'Kol', 'M', NULL),
-- ('Justin', 'Cheng', 'M', NULL),
-- ('Tyler', 'Clements', 'M', NULL),
-- ('Vimala', 'Murthy', 'F', NULL),
-- ('Gowtham', 'Katta', 'M', NULL); 
-- values ('John', 'Bozarov', 'M', 'Bachelors'); 
-- SELECT * FROM tekcampers;


-- DELETE from tekcampers
-- WHERE id = 9 or 20 or 26; 

-- UPDATE tekcampers 
-- SET education = NULL
-- WHERE id BETWEEN 1 and 27; 
-- SELECT * FROM tekcampers;

-- Adding gender
-- update tekcampers
-- set gender = "F"
-- where (id=4 or id=10);
-- update tekcampers
-- set gender = "M"
-- where (id=2 or id=15 or id=22 or id=24);
-- SELECT * FROM tekcampers;

-- Adding education 
-- update tekcampers
-- set education = "High School"
-- where (id=14 or id=25 or id=31);
-- update tekcampers
-- set education = "Some College"
-- where (id=7 or id=12 or id=15 or id=19 or id=24 or id=28 or id=35 or id=32);
-- update tekcampers
-- set education = "Associates"
-- where (id=8 or id=17);
-- update tekcampers
-- set education = "Bachelors"
-- where (id=1 or id=4 or id=5 or id=6 or id=11 or id=16 or id=18 or id=33 or id=38 or id=36);
-- update tekcampers
-- set education = "Masters"
-- where (id=21 or id=37 or id = 3);


--  select * from tekcampers 
--  where length(last_name) > 7; 

-- select * from tekcampers
-- order by first_name; 

-- select * from tekcampers
-- order by last_name; 

-- select * from tekcampers
-- where gender = 'M'; 

-- select * from tekcampers
-- where gender = 'F'; 

-- select * from tekcampers
-- where education = 'Masters'; 

-- select * from tekcampers
-- where education = 'Bachelors';

-- select * from tekcampers
-- where education = 'Associates';

-- select * from tekcampers
-- where education = 'High School' or education = 'Some College';

-- select * from tekcampers
-- where education is null; 
-- select * from tekcampers; `ta-mark`


-- creating new table ta-mark
-- CREATE TABLE `ta-mark` AS 
-- SELECT * from tekcampers
-- WHERE (id=8 or id=32 or id=21 or id=23 or id=25 or id=27 or id=28 or id=29 or id=30 or id=35 or id=36 or id = 38);
--  select * from `ta-mark`; 

-- create table hobbies 
-- (hobby_id int primary key auto_increment, hobby_name varchar(50)); 

-- insert into hobbies (hobby_name) 
-- values
-- ("Reading"),
-- ("Motorcycle Riding"),
-- ("Video Games"),
-- ("Golfing"),
-- ("Cattle Rustling"),
-- ("Gardening"),
-- ("Aerial Yoga"),
-- ("Running"),
-- ("Working Out"),
-- ("Pickle Ball"),
-- ("Engineering projects with the kids"),
-- ("Jiu Jitsu"),
-- ("Writing"),
-- ("Cooking"),
-- ("Eating"),
-- ("Music"),
-- ("Hockey"),
-- ("Soccer"),
-- ("Longboarding"),
-- ("Growing Peppers");

 -- select * from hobbies; 

-- creating aggregate table 
-- create table hobbiesinmarkgroup  ( 
-- id int references `ta-mark`(id),
-- hobby_id int references hobbies(hobby_id)
-- ); 
-- select * from hobbiesinmarkgroup; 

-- insert into hobbiesinmarkgroup (id, hobby_id ) 
-- values 
-- (8, 15), 
-- (21, 19), 
-- (23, 14),
-- (25, 17), 
-- (27, 1), 
-- (28, 18), 
-- (29, 14), 
-- (30, 1), 
-- (32, 3),
-- (35, 15), 
-- (36, 20),
-- (38, 8); 
-- select * from hobbiesinmarkgroup; 

-- Prints names of each students with hobbies 
-- select first_name, last_name, hobby_name from `ta-mark` 
-- left join hobbiesinmarkgroup
-- on `ta-mark`.id = hobbiesinmarkgroup.id
-- left join hobbies 
-- on hobbiesinmarkgroup.hobby_id = hobbies.hobby_id; 










