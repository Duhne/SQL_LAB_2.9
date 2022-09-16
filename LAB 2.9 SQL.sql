-- 1. How many distinct (different) actors' last names are there?
SELECT distinct last_name, first_name, actor_id FROM sakila.actor; 

-- 2. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *, 
CASE
WHEN weekday(rental_date) then 'weekday'
ELSE 'weekend'
END AS 'day_type'
FROM sakila.rental;

-- 3. Get all films with ARMAGEDDON in the title.
-- 4. Get 10 the longest films.
-- 5. How many films include Behind the Scenes content?
-- 6. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, round(AVG(length),2) as 'average_legnth' FROM sakila.film
WHERE length > 120
Group by rating;

-- 7. Rank films by length (filter out the rows that have nulls or 0s in length column). In your output, only select the columns title, length, and the rank.
