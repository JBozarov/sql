/* After connecting my rds instance, you can do these queries: */ 

-- To see tekcampers table: 
select * from tekcampers; 

-- To see ta-mark table 
select * from `ta-mark`; -- if table name contains - ( dash ) it has to be surrounded by backtick 

-- To see hobbies table: 
select * from tekcampers; 

-- To see hobbiesinmarkgroup table: 
select * from hobbiesinmarkgroup; 

-- Prints names of each students with hobbies 
select first_name, last_name, hobby_name from `ta-mark` 
left join hobbiesinmarkgroup
on `ta-mark`.id = hobbiesinmarkgroup.id
left join hobbies 
on hobbiesinmarkgroup.hobby_id = hobbies.hobby_id;


-- These queries for problem #7 for exercise 1 
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

-- I have other queries in aws-rds.sql file 
-- please slack me for my db instance passord. 