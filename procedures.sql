--
-- STORED PROCEDURE 3.1
--
DELIMITER $
CREATE PROCEDURE proc_ex_3_1 
(
IN film_or_series VARCHAR(1), 
IN top_n SMALLINT(5),
IN min_date DATE,
IN max_date DATE
)
BEGIN
 CASE film_or_series 
 WHEN 'm' THEN 
 SELECT 
 F.film_id, 
 F.title, 
 COUNT(*) as total_rent
 FROM film F
 INNER JOIN inventory I 
 ON F.film_id = I.film_id
 INNER JOIN rental R
 ON R.inventory_id = I.inventory_id
 INNER JOIN payment P 
 ON P.rental_id = R.rental_id
 WHERE P.payment_date >= min_date AND P.payment_date <= max_date
 OR P.payment_date <= min_date AND P.payment_date >= max_date
 GROUP BY F.film_id, F.title
 ORDER BY total_rent DESC, film_id ASC
 LIMIT top_n;
 WHEN 's' THEN
 SELECT 
 S.series_id,
 S.title, 
 COUNT(*) as total_rent
 FROM series S
 INNER JOIN episodes E
 ON S.series_id = E.series_id
 INNER JOIN inventory I
 ON I.episode_id = E.episode_id
 INNER JOIN rental R
 ON R.inventory_id = I.inventory_id
 INNER JOIN payment P 
 ON P.rental_id = R.rental_id
 WHERE P.payment_date >= min_date AND P.payment_date <= max_date
 OR P.payment_date <= min_date AND P.payment_date >= max_date
 GROUP BY S.series_id, S.title
 ORDER BY total_rent DESC, series_id ASC
 LIMIT top_n;
 END CASE;
END $
SHOW CREATE PROCEDURE proc_ex_3_1; 
CALL proc_ex_3_1('m', 10, '2005-07-31', '2022-07-01');
CALL proc_ex_3_1('m', 6, '2005-07-01', '2022-07-31');
CALL proc_ex_3_1('s', 8, '2005-07-01', '2022-09-30');
--
-- STORED PROCEDURE 3.2
--
DELIMITER $
CREATE PROCEDURE proc_ex_3_2
(
IN given_email VARCHAR(50), 
IN given_date DATE,
OUT total_items SMALLINT(5)
)
BEGIN
 SELECT COUNT(*) INTO total_items 
 FROM CUSTOMER C 
 INNER JOIN SUBSCRIPTIONS S ON C.customer_id = S.customer_id 
 INNER JOIN payment P ON C.customer_id = P.customer_id
 WHERE C.email = given_email AND DATE(P.payment_date) = given_date 
 GROUP BY C.email, S.subscription_code 
 ORDER BY total_items DESC;
 SELECT 
 DATE(P.payment_date) as payment_date,
 C.email, 
 S.subscription_code, 
 COUNT(*) as total_items 
 FROM CUSTOMER C 
 INNER JOIN SUBSCRIPTIONS S
 ON C.customer_id = S.customer_id 
 INNER JOIN payment P 
 ON C.customer_id = P.customer_id
 WHERE C.email = given_email AND DATE(P.payment_date) = given_date 
 GROUP BY C.email, S.subscription_code;
END $
SHOW create procedure proc_ex_3_2a; 
CALL proc_ex_3_2('DAN.PAINE@sakilacustomer.org', '2005-07-07', @total_items);
SELECT @total_items;
CALL proc_ex_3_2('PENELOPE.BARBER@sakilacustomer.org', '2022-08-22', @total_items);
SELECT @total_items;
CALL proc_ex_3_2('EMANUEL.LOWERY@sakilacustomer.org', '2022-08-22', @total_items);
SELECT @total_items;
CALL proc_ex_3_2('GRACE.ELLIS@sakilacustomer.org', '2005-08-23', @total_items);
SELECT @total_items;
CALL proc_ex_3_2('GILBERT.SLEDGE@sakilacustomer.org', '2006-02-14', @total_items);
SELECT @total_items;
CALL proc_ex_3_2('JULIE.SANCHEZ@sakilacustomer.org', '2006-02-14', @total_items);
SELECT @total_items;
--
-- STORED PROCEDURE 3.3
--
DELIMITER $
CREATE PROCEDURE proc_ex_3_3()
BEGIN
 SELECT 
 YEAR(P.payment_date) AS payment_date_year,
 DATE_FORMAT(P.payment_date, '%M') AS payment_date_month,
 SUM(SF.series_fee * (CASE WHEN I.episode_id IS NULL AND SF.subscription_code != 1 
THEN 0 ELSE 1 END)) AS total_series_amount,
 CASE 
 WHEN YEAR(P.payment_date) < '2022' THEN SUM(P.amount)
 WHEN YEAR(P.payment_date) >= '2022' THEN SUM(SF.film_fee * (CASE WHEN I.film_id 
IS NULL THEN 0 ELSE 1 END))
 ELSE NULL
 END as total_film_amount
 FROM payment P 
 INNER JOIN customer C 
 ON P.customer_id = C.customer_id 
 INNER JOIN subscriptions S 
 ON C.customer_id = S.customer_id 
 INNER JOIN subscription_fees SF 
 ON S.subscription_code = SF.subscription_code 
 INNER JOIN rental R
 ON P.rental_id = R.rental_id
 INNER JOIN inventory I
 ON R.inventory_id = I.inventory_id
 GROUP BY payment_date_year, payment_date_month
 ORDER BY payment_date_year ASC, payment_date_month DESC;
END $
SHOW CREATE PROCEDURE proc_ex_3_3; 
CALL proc_ex_3_3();
--
-- STORED PROCEDURE 3.4 - INDEXING OF last_name COLUMN to optimise query and the 
speed of data retrieval
--
CREATE INDEX idx_surname ON actor(last_name);
SHOW INDEXES FROM actor;
--
--
--
-- STORED PROCEDURE 3.4.A
--
DELIMITER $
CREATE PROCEDURE proc_ex_3_4a
(
IN min_surname VARCHAR(50), 
IN max_surname VARCHAR(50),
OUT total_actors SMALLINT(5)
)
BEGIN
 SELECT COUNT(*) INTO total_actors
 FROM actor A 
 WHERE LEFT(A.last_name, LENGTH(min_surname)) >= min_surname AND 
LEFT(A.last_name, LENGTH(min_surname)) <= max_surname 
 OR LEFT(A.last_name, LENGTH(min_surname)) <= min_surname AND LEFT(A.last_name, 
LENGTH(min_surname)) >= max_surname;
 SELECT 
 A.last_name, 
 A.first_name
 FROM actor A 
 WHERE LEFT(A.last_name, LENGTH(min_surname)) >= min_surname AND 
LEFT(A.last_name, LENGTH(min_surname)) <= max_surname
 OR LEFT(A.last_name, LENGTH(min_surname)) <= min_surname AND LEFT(A.last_name, 
LENGTH(min_surname)) >= max_surname
 ORDER BY A.last_name ASC;
END $
SHOW create procedure proc_ex_3_4a; 
CALL proc_ex_3_4a('Aco', 'Alm', @total_actors);
SELECT @total_actors;
CALL proc_ex_3_4a('Mar', 'Mem', @total_actors);
SELECT @total_actors;
CALL proc_ex_3_4a('BAA', 'BAJ', @total_actors);
SELECT @total_actors;
--
-- STORED PROCEDURE 3.4.B
--
DELIMITER $
CREATE PROCEDURE proc_ex_3_4b
(
IN given_surname VARCHAR(50)
)
BEGIN
 SELECT 
 A.last_name, 
 A.first_name,
 ROW_NUMBER() OVER (PARTITION BY A.last_name) as row_num 
 FROM actor A 
 WHERE A.last_name = given_surname
 ORDER BY A.last_name;
END $
SHOW create procedure proc_ex_3_4b; 
CALL proc_ex_3_4b('Acosta');
CALL proc_ex_3_4b('Hayden');
CALL proc_ex_3_4b('Murray');


