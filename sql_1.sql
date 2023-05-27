--1. How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name
from actor
where last_name like 'Wahlberg'
--Answer: 2

--2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;
--Answer: 0

--3. What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory 
group by film_id
order by count(film_id) desc;
--Answer: Crossroad Casualties, Shock Cabin, Ridgemont Submarie, Greatest North....

--4. How many customers have the last name ‘William’?
select last_name
from customer
where last_name like 'William';
--Answer: 0

--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(staff_id)
from payment
group by staff_id
order by count(staff_id) desc;
--Answer: Staff_id 2, Jon

--6. How many different district names are there?
select COUNT(distinct district)
from address;
--Answer: 378

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(actor_id)
from film_actor
group by film_id
order by COUNT(actor_id) DESC;
--Answer: Lambs Cincinatti

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select COUNT(last_name)
from (select store_id, last_name
from customer
where store_id=1) as only_store_1
where last_name like '%es';
--Answer: 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount, COUNT(amount)
from payment
where customer_id > 380 and customer_id < 430
group by amount
order by COUNT DESC;
--Answer: 3

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, COUNT(film_id)
from film
group by rating
order by COUNT desc;
--Answer: 5 categories; PG-13 has the most

