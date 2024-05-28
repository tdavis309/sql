select * from actor 


select actor_id , first_name , last_name 
from actor
where last_name = 'Wahlberg';
--2

select * from payment ;
select payment_id, amount
from payment 
where amount between 3.99 and 5.99;
--5602

select * from inventory ; 
SELECT film_id,Count(inventory_id) as most_film
FROM inventory

GROUP BY film_id
order by most_film  desc
limit 1;
--film id: 350 ; 8

select * from customer ;
SELECT COUNT(LAST_NAME)
FROM customer
WHERE LAST_NAME = 'WILLIAM';
--0

select * from rental;
select staff_id, count(inventory_id) as most_rental
from rental
group by staff_id
order by most_rental desc 
limit 1;
-- staff_id 1 -8040

select * from address;
select count(distinct district) as diff_districts
from address ;
--378

select * from film_actor;
select count(actor_id ) as max_act, film_id
from film_actor
group by film_id
order by max_act  desc;
-- film_id 508-15

select * from customer;

select store_id, count(last_name)
from customer 
where last_name like '%es' 
group by store_id;
--13

select * from payment;
select amount, count(rental_id) as rental_count
from payment 
where customer_id between 380 and 480
group by amount
having count(rental_id) > 250;
--3

select * from film;

select count(distinct rating)
from film;
--5
select rating, sum(film_id)
from film
group by rating 
order by sum(film_id) desc
limit 1; -- pg13