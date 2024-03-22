use sakila;
-- to change column name we use as 
select actor_id, actor_id+5+3+4  as "newid" from actor;

-- oredr by(sorting) is always come in ascending oredr
select actor_id, actor_id+5+1+2+3 as "newid" 
from actor order by newid;

select* from payment order by staff_id;
select* from payment order by customer_id, amount  desc;
select* from payment order by customer_id, amount desc, rental_id desc ;

select* from payment order by customer_id, amount desc, payment_date desc;

select count(*) from payment; 
select count(customer_id) from payment;

-- to remove duplivation of repeated values--
select distinct(customer_id) from payment;

select count( distinct( customer_id ) ) from payment;

select count(amount) from payment;

select sum(amount) , count(amount) from payment;

select sum(amount) , count(amount) , max(amount) from payment;
select sum(amount) , count(amount) , max(amount) , avg(amount) from payment;

select sum(amount) , count(amount) , max(amount) , avg(amount) ,
sum(amount) / count(amount) as Average
from payment;

select sum(amount) , count(amount) , max(amount) , avg(amount) ,
sum(amount) / count(amount) as Average
from payment where customer_id;

select sum(amount) , count(amount) , max(amount) , avg(amount) ,
sum(amount) / count(amount) as Average
from payment where customer_id=4;

-- GROUP BY --
select customer_id  from payment
group by customer_id;

select customer_id, count(*) from payment
group by customer_id;

-- to filter the data --
select customer_id, count(*) from payment
where customer_id between 1 and 5
group by customer_id;

select customer_id, count(*) from payment
where customer_id between 40 and 90
group by customer_id;


-- Having clause is used with group by--
-- used to filter data from group by operations
select customer_id, count(*) from payment
group by customer_id having count(*)>30;


select customer_id, count(*) from payment
where customer_id between 40 and 90
group by customer_id having count(*)>30;

-- customer_id , total_amount
-- customer_id , amount ==> column

select customer_id, sum(amount) from payment
group by customer_id having sum(amount)>100;



select staff_id ,avg(amount) from payment
group by staff_id having avg(amount)>2;

group by customer_id having sum(amount)>100;




