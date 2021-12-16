-- Lab | SQL Queries 2 --
-- Zsanett Borsos --

-- Select all the actors with the first name ‘Scarlett’.--
SELECT first_name, last_name FROM sakila.actor
WHERE first_name = 'Scarlett';
-- Select all the actors with the last name ‘Johansson’. --
SELECT first_name, last_name FROM sakila.actor
WHERE last_name = 'Johansson';
-- How many films (movies) are available for rent? --
SELECT COUNT(title) FROM sakila.film;
-- How many films have been rented? --
SELECT COUNT(rental_id) FROM sakila.rental;
-- What is the shortest and longest rental period? --
-- The shortest rental period: --
SELECT DISTINCT(rental_duration) FROM sakila.film
ORDER BY rental_duration ASC
LIMIT 1;
-- The longest rental persiod: --
SELECT DISTINCT(rental_duration) FROM sakila.film
ORDER BY rental_duration DESC
LIMIT 1;
-- What are the shortest and longest movie duration? --
SELECT max(length) AS 'max_duration', min(length) AS 'min_duration' FROM sakila.film;
-- What's the average movie duration? --
SELECT AVG(length) FROM sakila.film;
-- What's the average movie duration expressed in format (hours, minutes)? --
SELECT CONCAT(FLOOR(length/60),'h ',MOD(length,60),'m') AS duration FROM sakila.film;
-- How many movies longer than 3 hours? --
SELECT COUNT(length) FROM sakila.film
WHERE length > 180;
-- Get the name and email formatted. --
SELECT lower(email) FROM sakila.customer;
-- What's the length of the longest film title? --
SELECT max(length(title)) FROM sakila.film;
