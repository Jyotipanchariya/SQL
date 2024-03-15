-- IN OPERATOR (SPECIFIC VALUES)
use sakila;
select actor_id , first_name from actor
where actor_id in (3,4,12);

select * from actor
where first_name like '%J';
select * from actor
where first_name like '%S%';
select * from actor
where first_name like '_U__%';

select * from actor
where first_name not  like '_U__%';

select * from actor_info
where first_name="NICK" and actor_id>150;

select * from actor_info
where first_name="NICK" or actor_id>170;

select * from actor_info
where (first_name="JENNIFER" or first_name="NICK") and actor_id >3; 

select * from actor_info