use sakila;
-- joint by group by--
select* from actor;
select * from film_actor;

select actor.actor_id, first_name, film_actor.film_id
from actor join film_actor
where(actor.actor_id= film_actor.actor_id);


select actor.actor_id, count(film_id)
from actor join film_actor
where(actor.actor_id= film_actor.actor_id)
group by actor_id;

select actor.actor_id, count(film_id) as total
from actor join film_actor
where(actor.actor_id= film_actor.actor_id)
group by actor_id having total>20;

-- subquery --
-- a query within a query--

select * from payment;
-- payment id , customer_id .. amount > pyment_id(1)

select amount from payment where payment_id=1;

select payment_id, customer_id, amount
from payment where amount>2.99;




-- () subquery / nested query 
select payment_id, customer_id,amount
from payment where amount= (select amount from payment where payment_id=1);

select * from payment;
-- get the payment_id , customer_id , rental_id , amount, and month of payment = amount = rental id 573 --


select * from payment where rental_id=573;

select payment_id, customer_id, rental_id, amount,month(payment_date)
from payment where amount=0.99;

select payment_id, customer_id, rental_id, amount, month(payment_date)
from payment where amount=(select amount from payment where rental_id=573);

select * from actor;
