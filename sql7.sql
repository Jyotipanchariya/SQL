use sakila;
select customer_id, count(*),
concat("Total people is ", count(*)) as "total people"
from payment group by customer_id;


select customer_id,staff_id from payment
group by customer_id,staff_id;


select customer_id,staff_id,count(*) from payment
group by customer_id,staff_id
having count(*)>12;

