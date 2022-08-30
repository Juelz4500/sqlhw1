1.How many actors are there with the last name ‘Wahlberg’?;
                    Answer = 2;


SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


2. How many payments were made between $3.99 and $5.99?;
                    Answer = 4764;

SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


3. What film does the store have the most of? (search in inventory);
                    Answer =film_id 200;

SELECT film_id, Count(*)
FROM inventory
GROUP BY film_id;

4. How many customers have the last name ‘William’?;
                    Answer= 0;

SELECT last_name
FROM customer
WHERE last_name = 'William';

5. What store employee (get the id) sold the most rentals?;
                    Answer= 1;


SELECT staff_id, Count(*)
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

6. How many different district names are there?
                    Answer= 16;

SELECT COUNT(DISTINCT name)
FROM category;



7. What film has the most actors in it? (use film_actor table and get film_id)
                    Answer=606, 87, 714, 188, 146, 249 ;


SELECT film_id, Count(*)
FROM film_actor
GROUP BY film_id
ORDER BY Count(film_id);

8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
                    Answer= 13;


SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es';


9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250);
                    Answer=9 amounts;

SELECT Count(customer_id), COUNT(rental_id), amount
FROM payment
GROUP BY amount
HAVING COUNT(rental_id) > 250 
ORDER BY Count(customer_id) BETWEEN 380 and 430;


10. Within the film table, how many rating categories are there? And what rating has the most
movies total?;
                    Answer1= 5; Answer2=PG-13;


SELECT rating, Count(*)
FROM film
GROUP BY rating;
 
