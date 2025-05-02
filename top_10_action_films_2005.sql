-- Top 10 most rented 'Action' films in 2005
WITH ActionFilms2005 AS (
    SELECT a.film_id, a.title
    FROM reatcodeltd_axldp_sakila_film AS a
    JOIN reatcodeltd_axldp_sakila_film_category AS b ON a.film_id = b.film_id
    WHERE b.category_id = (
        SELECT category_id 
        FROM reatcodeltd_axldp_sakila_category 
        WHERE name = 'Action'
    )
),
RentalCounts AS (
    SELECT i.film_id, COUNT(r.rental_id) AS rental_count
    FROM reatcodeltd_axldp_sakila_rental AS r
    JOIN reatcodeltd_axldp_sakila_inventory AS i ON r.inventory_id = i.inventory_id
    WHERE YEAR(r.rental_date) = 2005
    GROUP BY i.film_id
)
SELECT af.title, rc.rental_count
FROM ActionFilms2005 AS af
INNER JOIN RentalCounts AS rc ON af.film_id = rc.film_id
ORDER BY rc.rental_count DESC
LIMIT 10;
