-- Q1
SELECT c.first_name, c.last_name, c.address_id, a.district 
FROM customer c 
JOIN address a 
ON c.address_id = a.address_id 
WHERE a.district = 'Texas';

-- Q2
SELECT C.first_name ,C.last_name, p.amount
FROM customer c 
JOIN payment p 
ON c.customer_id = p.customer_id 
WHERE p.amount > 7;

--Q3
SELECT c.first_name, SUM(p.amount) 
FROM customer c 
JOIN payment p 
ON c.customer_id = p.customer_id 
GROUP BY c.first_name ,c.last_name 
HAVING SUM(p.amount) > 175;

--Q4
SELECT cus.first_name , cus.last_name, ci.city, cou.country 
FROM customer cus
JOIN address a 
ON cus.address_id = a.address_id 
JOIN city ci
ON ci.city_id = a.city_id 
JOIN country cou 
ON cou.country_id  = ci.country_id 
WHERE cou.country = 'Argentina';

--Q5
SELECT c.category_id, COUNT(fc.film_id), c."name" 
FROM category c
JOIN film_category fc
ON fc.category_id = c.category_id  
GROUP BY c.category_id 
ORDER BY count(fc.film_id) DESC 

--Q6
SELECT f.film_id , f.title, COUNT(fa.actor_id), description 
FROM film_actor fa  
JOIN film f 
ON f.film_id = fa.film_id 
GROUP BY f.film_id 
ORDER BY COUNT(fa.actor_id)
DESC

--Q7
SELECT a.actor_id, a.first_name, a.last_name, COUNT(fa.film_id)
FROM film f 
JOIN film_actor fa 
ON fa.film_id = f.film_id 
JOIN actor a 
ON a.actor_id = fa.actor_id 
GROUP BY a.actor_id 
ORDER BY COUNT(fa.film_id)
LIMIT 1

--Q8
SELECT c2.country_id, c2.country, COUNT(c.city)
FROM city c 
JOIN country c2 
ON c.country_id  = c2.country_id 
GROUP BY c2.country_id 
ORDER BY COUNT(c.city)DESC
LIMIT 1

--Q9
SELECT a.actor_id ,a.first_name , a.last_name , COUNT(a.actor_id)
FROM film f 
JOIN film_actor fa 
ON f.film_id = fa.film_id 
JOIN actor a 
ON a.actor_id = fa.actor_id 
GROUP BY a.actor_id 
HAVING COUNT(a.actor_id) BETWEEN 20 AND 25
ORDER BY COUNT(a.actor_id) DESC 





