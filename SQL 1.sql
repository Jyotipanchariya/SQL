
 
/* multi line comment
*/
show databases;

-- databse use
 use sakila;

show tables;
-- DQL : Data query language (select statemnt)
select * from actor;

select actor_id , last_name from actor;

select actor_id , actor_id+5 from actor;

select actor_id , actor_id+5,first_name from actor;

select actor_id, first_name from actor
where actor_id not between 3 and 6;

