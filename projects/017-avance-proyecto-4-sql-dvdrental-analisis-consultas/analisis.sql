USE dvdrental;
GO

-- =========================================
-- 1. Nombre y apellido de los actores
-- =========================================
SELECT first_name, last_name
FROM actor;

-- =========================================
-- 2. Nombre completo en una sola columna
-- =========================================
SELECT first_name + ' ' + last_name AS nombre_completo
FROM actor;

-- =========================================
-- 3. Actores cuyo nombre empieza con "D"
-- =========================================
SELECT *
FROM actor
WHERE first_name LIKE 'D%';

-- =========================================
-- 4. Actores con el mismo nombre
-- =========================================
SELECT first_name, COUNT(*) AS total
FROM actor
GROUP BY first_name
HAVING COUNT(*) > 1;

-- =========================================
-- 5. Costo máximo de renta
-- =========================================
SELECT MAX(rental_rate) AS max_rental_rate
FROM film;

-- =========================================
-- 6. Películas con ese costo máximo
-- =========================================
SELECT title, rental_rate
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- =========================================
-- 7. Cantidad de películas por rating
-- =========================================
SELECT rating, COUNT(*) AS total
FROM film
GROUP BY rating;

-- =========================================
-- 8. Películas que NO son rating R o NC-17
-- =========================================
SELECT title, rating
FROM film
WHERE rating NOT IN ('R', 'NC-17');

-- =========================================
-- 9. Clientes por tienda
-- =========================================
SELECT store_id, COUNT(*) AS total_clientes
FROM customer
GROUP BY store_id;

-- =========================================
-- 10. Película más rentada
-- =========================================
SELECT TOP 1 f.title, COUNT(*) AS total_rentas
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY total_rentas DESC;

-- =========================================
-- 11. Películas que NO se han rentado
-- =========================================
SELECT f.title
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.rental_id IS NULL;

-- =========================================
-- 12. Clientes que no han rentado
-- =========================================
SELECT c.first_name, c.last_name
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
WHERE r.rental_id IS NULL;

-- =========================================
-- 13. Actores con más de 30 películas
-- =========================================
SELECT a.first_name, a.last_name, COUNT(*) AS total_peliculas
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name
HAVING COUNT(*) > 30;

-- =========================================
-- 14. Ventas totales por tienda (corregido)
-- =========================================
SELECT s.store_id, 
       SUM(CAST(p.amount AS DECIMAL(10,2))) AS total_ventas
FROM payment p
JOIN staff st ON p.staff_id = st.staff_id
JOIN store s ON st.store_id = s.store_id
GROUP BY s.store_id;

-- =========================================
-- 15. Clientes que rentaron más de una vez
-- =========================================
SELECT c.first_name, c.last_name, COUNT(*) AS total_rentas
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
HAVING COUNT(*) > 1;