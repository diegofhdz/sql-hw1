--Question 1: How many actors are there with the last name ‘Wahlberg’?
select count(distinct first_name) from actor where last_name like 'Wahlberg';

--Question 2: How many payments were made between $3.99 and $5.99?
select count(amount) from payment where amount between 3.99 and 5.99;

--Question 3: What film does the store have the most of? (search in inventory)
select count(film_id), film_id from inventory group by film_id order by count(film_id) desc;

--Question 4: How many customers have the last name ‘William’?
select count(last_name) from customer where last_name like 'William';

--Question 5: What store employee (get the id) sold the most rentals?
select count(staff_id), staff_id from rental group by staff_id order by count(staff_id) desc;

--Question 6: How many different district names are there?
select count(distinct district) from address;

--Question 7: What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id from film_actor group by film_id order by count(actor_id) desc;
--Film 208 15 actors

--Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(customer_id) from customer where last_name like '_%es' and store_id = 1;
--13

--Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select amount ,count(amount) from payment where customer_id between 380 and 430 group by amount having count(amount) > 250;

--Question 10: Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select rating, count(rating) from film group by rating order by count(rating) desc;
