/* 

MY RDS Endpoing: database-2.crkyuecboye3.us-east-1.rds.amazonaws.com
port: 3306
username: tekadmin
password: can you slack me for password, I would not push to github 

I have some experience using AWS services, for example AWS Lambda, S3 bucket, EC2 instance and API Gateway. 
I tried to create RDS PostgreSQL instance and connect it to pgAdmin but I could not make it work. Now after Amir's presentation 
I was able to successfully create RDS mySQL instance and connect it to my mysql workbench. I had single small blocker 
which was first I could not connect and I chenched publicly available setting to yes and it worked. 

The reason I choose AWS is I have little experience with it and I also know that it is becoming very popular so I want to 
learn it. I am also planning to implement cloud9 IDE. 

*/



CREATE SCHEMA `teksystems`;

show databases; 

CREATE TABLE `teksystems`.`tekcampers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `gender` VARCHAR(20) NULL,
  `education` VARCHAR(45) NULL,
  `bootcamp` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


select * from teksystems.tekcampers; 


insert into teksystems.tekcampers(first_name, last_name, gender, education, bootcamp)
values
('Abigail','Swigert','F','Bachelors',NULL),
('Gabe','Chavez','M',NULL,'Us Navy'),
('Nancy','Golden','F','Masters',NULL),
('Jessica','Ulysse','F','Bachelors',NULL),
('Sabitha','Radhakrishnan','F','Bachelors',NULL),
('Adam','Rice','M','Bachelors','Coding Dojo'),
('Marcelo','Barbosa','M','Some College','Coding Dojo'),
('Caleb','Waters','M','Associates',NULL),
('Norita','Sieffert','F','Doctorate',NULL),
('Katherine','Kim','F','Bachelors',NULL),
('Julian','Ladd','M','Some College','Coding Dojo'),
('Vani','Muppuru','F','Masters',NULL),
('Kevin','Ibanez','M','High School',NULL),
('George','Torres','M','Some College',NULL),
('Jose','Moreno','M','Bachelors',NULL),
('Phoenix','Shane','F','Associates','DevMountain'),
('Mathew','Castiglione','M','Bachelors',NULL),
('Victor','Betts','M','Some College',NULL),
('Mathew','Choat','M','Masters','SMU Coding'),
('Michael','Kinney','M',NULL,NULL),
('Korey','Brooks','M','Masters',NULL),
('Christian','Gonzalez','M','Some College',NULL),
('Zachary','Johnson','M','High School','DevMountain'),
('Sarah','Bates','F',NULL,NULL),
('Cody','Clark','M','Some College','Trilogy Education'),
('Aaron','White','M',NULL,NULL),
('Monica','Howard','F',NULL,NULL),
('Kevin','Keesee','M','High School',NULL),
('Devon','Brewster','M','Some College',NULL),
('John','Bozarov','M','Bachelors',NULL),
('John','Kol','M','Some College',NULL),
('Justin','Cheng','M','Some College','Trilogy Education'),
('Tyler','Clements','M','Bachelors',NULL),
('Vimala','Murthy','F','Masters',NULL),
('Gowtham','Katta','M','Bachelors',NULL);



select * from tekcampers 
where length(last_name) > 7; 

select * from tekcampers
order by first_name; 

select * from tekcampers
order by last_name; 

select * from tekcampers
where gender = 'M'; 

select * from tekcampers
where gender = 'F'; 

select * from tekcampers
where education = 'Masters'; 

select * from tekcampers
where education = 'Bachelors';

select * from tekcampers
where education = 'Associates';

select * from tekcampers
where education = 'High School' or education = 'Some College';


CREATE TABLE `ta-mark` AS 
SELECT * from tekcampers
WHERE (id=8 or id=19 or id=21 or id=23 or id=24 or id=25 or id=26 or id=28 or id=30 or id=32 or id=33 or id = 35);

select * from `ta-mark`; 


create table hobbies 
(hobby_id int primary key auto_increment, hobby_name varchar(50)); 


insert into hobbies (hobby_name) 
values
("Reading"),
("Motorcycle Riding"),
("Video Games"),
("Golfing"),
("Cattle Rustling"),
("Gardening"),
("Aerial Yoga"),
("Running"),
("Working Out"),
("Pickle Ball"),
("Engineering projects with the kids"),
("Jiu Jitsu"),
("Writing"),
("Cooking"),
("Eating"),
("Music"),
("Hockey"),
("Soccer"),
("Longboarding"),
("Growing Peppers"),
("Interior decoration"),
("Playing the piano"),
("EatSleepCode");



create table hobbiesinmarkgroup  ( 
id int references `ta-mark`(id),
hobby_id int references hobbies(hobby_id)
); 


insert into hobbiesinmarkgroup(id, hobby_id ) 
values 
(8, 15), 
(21, 22), 
(23, 17),
(25, 14), 
(19, 19), 
(24, 1), 
(26, 1), 
(28, 3), 
(30, 18),
(32, 15), 
(33, 20),
(35, 8); 

select * from hobbiesinmarkgroup; 





-- Prints names of each students with hobbies 
select first_name, last_name, hobby_name from `ta-mark` 
left join hobbiesinmarkgroup
on `ta-mark`.id = hobbiesinmarkgroup.id
left join hobbies 
on hobbiesinmarkgroup.hobby_id = hobbies.hobby_id;