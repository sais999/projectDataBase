DROP SCHEMA IF EXISTS tvondemand;
CREATE SCHEMA tvondemand;
USE tvondemand;
--
-- Table structure for table `actor`
--
CREATE TABLE actor (
 actor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(45) NOT NULL,
 last_name VARCHAR(45) NOT NULL,
 PRIMARY KEY (actor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `country`
--
CREATE TABLE country (
 country_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 country VARCHAR(50) NOT NULL,
 PRIMARY KEY (country_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `city`
--
CREATE TABLE city (
 city_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 city VARCHAR(50) NOT NULL,
 country_id SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY (city_id),
 CONSTRAINT `fk_city_country` FOREIGN KEY (country_id) REFERENCES country (country_id)
ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `address`
--
CREATE TABLE address (
 address_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 address VARCHAR(50) NOT NULL,
 district VARCHAR(20) DEFAULT NULL,
 city_id SMALLINT UNSIGNED NOT NULL,
 postal_code VARCHAR(10) DEFAULT NULL,
 phone VARCHAR(20) NOT NULL,
 PRIMARY KEY (address_id),
 CONSTRAINT `fk_address_city` FOREIGN KEY (city_id) REFERENCES city (city_id) ON 
DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `category`
--
CREATE TABLE category (
 category_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
 name VARCHAR(25) NOT NULL,
 PRIMARY KEY (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `language`
--
CREATE TABLE language (
 language_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
 name CHAR(20) NOT NULL,
 PRIMARY KEY (language_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `customer`
--
CREATE TABLE customer (
 customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(45) NOT NULL,
 last_name VARCHAR(45) NOT NULL,
 email VARCHAR(50) DEFAULT NULL,
 address_id SMALLINT UNSIGNED NOT NULL,
 active BOOLEAN NOT NULL DEFAULT TRUE,
 create_date DATETIME NOT NULL,
 PRIMARY KEY (customer_id),
 CONSTRAINT fk_customer_address FOREIGN KEY (address_id) REFERENCES address 
(address_id) ON DELETE RESTRICT ON UPDATE CASCADE
 )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `film`
--
CREATE TABLE film (
 film_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 title VARCHAR(128) NOT NULL,
 description TEXT DEFAULT NULL,
 release_year YEAR DEFAULT NULL,
 language_id TINYINT UNSIGNED NOT NULL,
 original_language_id TINYINT UNSIGNED DEFAULT NULL,
 length SMALLINT UNSIGNED DEFAULT NULL,
 rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
 special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT 
NULL,
 PRIMARY KEY (film_id),
 CONSTRAINT fk_film_language FOREIGN KEY (language_id) REFERENCES language 
(language_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_film_language_original FOREIGN KEY (original_language_id) REFERENCES 
language (language_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `series`
--
CREATE TABLE series (
 series_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 title VARCHAR(128) NOT NULL,
 description TEXT DEFAULT NULL,
 num_seasons SMALLINT UNSIGNED NOT NULL,
 language_id TINYINT UNSIGNED NOT NULL,
 original_language_id TINYINT UNSIGNED DEFAULT NULL,
 rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
 special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT 
NULL,
 PRIMARY KEY (series_id),
 CONSTRAINT fk_series_language FOREIGN KEY (language_id) REFERENCES language 
(language_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_series_language_original FOREIGN KEY (original_language_id) 
REFERENCES language (language_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `series_seasons`
--
CREATE TABLE series_seasons (
 series_id SMALLINT UNSIGNED NOT NULL,
 season_id SMALLINT UNSIGNED NOT NULL,
 season_release_year YEAR DEFAULT NULL,
 num_episodes SMALLINT UNSIGNED NOT NULL,
 CONSTRAINT fk_series_seasons_series_id FOREIGN KEY (series_id) REFERENCES series 
(series_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `episodes`
--
CREATE TABLE episodes (
 episode_id SMALLINT UNSIGNED NOT NULL,
 series_id SMALLINT UNSIGNED NOT NULL,
 season_id SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY (episode_id),
 CONSTRAINT fk_episodes_series_id FOREIGN KEY (series_id) REFERENCES series 
(series_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `film_actor`
--
CREATE TABLE film_actor (
 actor_id SMALLINT UNSIGNED NOT NULL,
 film_id SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY (actor_id,film_id),
 CONSTRAINT fk_film_actor_actor FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON 
DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_film_actor_film FOREIGN KEY (film_id) REFERENCES film (film_id) ON 
DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `series_actor`
--
CREATE TABLE series_actor (
 actor_id SMALLINT UNSIGNED NOT NULL,
 series_id SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY (actor_id, series_id),
 CONSTRAINT fk_series_actor_actor FOREIGN KEY (actor_id) REFERENCES actor (actor_id) 
ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_series_actor_series FOREIGN KEY (series_id) REFERENCES series 
(series_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `film_category`
--
CREATE TABLE film_category (
 film_id SMALLINT UNSIGNED NOT NULL,
 category_id TINYINT UNSIGNED NOT NULL,
 PRIMARY KEY (film_id, category_id),
 CONSTRAINT fk_film_category_film FOREIGN KEY (film_id) REFERENCES film (film_id) ON 
DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_film_category_category FOREIGN KEY (category_id) REFERENCES category 
(category_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `series_category`
--
CREATE TABLE series_category (
 series_id SMALLINT UNSIGNED NOT NULL,
 category_id TINYINT UNSIGNED NOT NULL,
 PRIMARY KEY (series_id, category_id),
 CONSTRAINT fk_series_category_series FOREIGN KEY (series_id) REFERENCES series 
(series_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_series_category_category FOREIGN KEY (category_id) REFERENCES 
category (category_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `inventory`
--
CREATE TABLE inventory (
 inventory_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
film_id SMALLINT UNSIGNED,
 episode_id SMALLINT UNSIGNED,
 PRIMARY KEY (inventory_id),
 CONSTRAINT fk_inventory_film FOREIGN KEY (film_id) REFERENCES film (film_id) ON 
DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_inventory_episode FOREIGN KEY (episode_id) REFERENCES episodes 
(episode_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT chk CHECK (
 film_id IS NOT NULL AND episode_id IS NULL OR
 film_id IS NULL AND episode_id IS NOT NULL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `rental`
--
CREATE TABLE rental (
 rental_id INT NOT NULL AUTO_INCREMENT,
 rental_date DATETIME NOT NULL,
 inventory_id MEDIUMINT UNSIGNED NOT NULL,
 customer_id SMALLINT UNSIGNED NOT NULL,
 PRIMARY KEY (rental_id),
 UNIQUE KEY (rental_date,inventory_id,customer_id),
 CONSTRAINT fk_rental_inventory FOREIGN KEY (inventory_id) REFERENCES inventory 
(inventory_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT fk_rental_customer FOREIGN KEY (customer_id) REFERENCES customer 
(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `payment`
--
CREATE TABLE payment (
 payment_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 customer_id SMALLINT UNSIGNED NOT NULL,
 rental_id INT DEFAULT NULL,
 amount DECIMAL(5,2) NOT NULL,
 payment_date DATETIME NOT NULL,
 PRIMARY KEY (payment_id),
 CONSTRAINT fk_payment_rental FOREIGN KEY (rental_id) REFERENCES rental (rental_id) ON 
DELETE SET NULL ON UPDATE CASCADE,
 CONSTRAINT fk_payment_customer FOREIGN KEY (customer_id) REFERENCES customer 
(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `subscriptions`
--
CREATE TABLE subscriptions (
 customer_id SMALLINT UNSIGNED NOT NULL,
 subscription_code TINYINT UNSIGNED NOT NULL,
 CONSTRAINT fk_subscripticons_customer FOREIGN KEY (customer_id) REFERENCES 
customer (customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
 -- , CONSTRAINT fk_subscriptions_subscription_code FOREIGN KEY (subscription_code) 
REFERENCES subscription_fees (subscription_code) ON DELETE RESTRICT ON UPDATE 
CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `subscription_fees`
--
CREATE TABLE subscription_fees (
 subscription_code TINYINT UNSIGNED NOT NULL,
 film_fee DECIMAL(5,2) NOT NULL,
 series_fee DECIMAL(5,2) NOT NULL
 -- , CONSTRAINT fk_subscription_fees_subscription FOREIGN KEY (subscription_code) 
REFERENCES subscriptions (subscription_code) ON DELETE RESTRICT ON UPDATE 
CASCADE 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `employees`
--
CREATE TABLE employees (
 employee_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(45) NOT NULL,
 last_name VARCHAR(45) NOT NULL,
 email VARCHAR(50) DEFAULT NULL,
 PRIMARY KEY (employee_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `administrator`
--
CREATE TABLE administrator (
 administrator_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(45) NOT NULL,
 last_name VARCHAR(45) NOT NULL,
 email VARCHAR(50) DEFAULT NULL,
 PRIMARY KEY (administrator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Table structure for table `log_table`
--
CREATE TABLE log_table (
 username VARCHAR(255),
 user_type VARCHAR(45),
 action_type VARCHAR(45),
 action_table VARCHAR(45),
 action_datetime_ DATETIME,
 if_successful BOOLEAN
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




