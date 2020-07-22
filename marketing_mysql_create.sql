CREATE TABLE `product` (
	`product_id` INT NOT NULL AUTO_INCREMENT,
	`product_name` varchar(50) NOT NULL,
	`product_description` varchar(50) NOT NULL,
	`product_quantity` INT NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `rating` (
	`rating_id` INT NOT NULL AUTO_INCREMENT,
	`customer_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`actual_rating` INT,
	`actual_description` varchar(3000),
	PRIMARY KEY (`rating_id`)
);

CREATE TABLE `customers` (
	`customer_id` INT NOT NULL AUTO_INCREMENT,
	`customer_name` varchar(50) NOT NULL AUTO_INCREMENT,
	`customer_gender` varchar AUTO_INCREMENT,
	`customer_region` varchar AUTO_INCREMENT,
	`customer_age` INT AUTO_INCREMENT,
	PRIMARY KEY (`customer_id`)
);

ALTER TABLE `rating` ADD CONSTRAINT `rating_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`);

ALTER TABLE `rating` ADD CONSTRAINT `rating_fk1` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

