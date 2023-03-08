-- Question 1 
-- Answer: 2 
select *
from actor 
where last_name in (
	select last_name 
	where last_name = 'Wahlberg'
);

-- Question 2 
-- Answer: 1,400 
select customer_id 
from payment 
where amount between 3.99 and 5.99;

-- Question 3 
-- Answer: Crossroads Casualties, Shock Cabin, Ridgemont Submarine, Greatest North, Moon Bunch, 
-- Storm Happiness, Dinosaur Secretary, Mockingbird Hollywood, Beverly Outlaw, Saturday Lambs, 
-- Roses Treasure, Academy Dinosaur, etc.
select COUNT(film_id), film_id 
from inventory 
group by film_id;

-- Question 4 
-- Answer: One - William Satterfield 
 select *
 from customer 
 where first_name in (
 	select first_name 
 	where first_name = 'William'
 ); 

-- Question 5
-- Answer: Staff Id 2 got the most rentals. 
select COUNT (amount), staff_id 
from payment    
group by staff_id; 

-- Question 6
-- Answer: 378
select COUNT (district), district 
from address
group by district; 

-- QUESTION 7
-- Answer: Lambs Cincinatti
select COUNT(film_id), film_id 
from film_actor 
group by film_id; 

-- QUESTION 8 
-- Answer: 21
select last_name
from customer 
where last_name like '%es'; 

-- QUESTION 9 
-- Answer: 6.99, 8.99, 4.99
select count(amount), amount 
from payment 
where customer_id > 380 and customer_id < 430
group by amount 
order by count desc; 

-- Question 10 
--Answer: 5 rating categories, PG-13 had the most movies. 
select COUNT(rating), rating 
from film 
group by rating; 
