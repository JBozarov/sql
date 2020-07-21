CREATE TABLE `customers` (
	`customer_id` int NOT NULL AUTO_INCREMENT,
	`customer_name` varchar(50) NOT NULL,
	`customer_email` varchar(100) NOT NULL,
	PRIMARY KEY (`customer_id`)
);

CREATE TABLE `order_details` (
	`order_detail_id` int NOT NULL AUTO_INCREMENT,
	`order_id` int NOT NULL,
	`product_id` int NOT NULL,
	`order_total` int NOT NULL,
	PRIMARY KEY (`order_detail_id`)
);

CREATE TABLE `products` (
	`product_id` int NOT NULL AUTO_INCREMENT,
	`product_name` varchar(50) NOT NULL,
	`product_amount` int NOT NULL,
	`product_price` int NOT NULL,
	`expiration_date` DATE NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `orders` (
	`order_id` bigint NOT NULL AUTO_INCREMENT,
	`customer_id` int NOT NULL,
	`paid` BOOLEAN NOT NULL,
	PRIMARY KEY (`order_id`)
);

ALTER TABLE `order_details` ADD CONSTRAINT `order_details_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_details` ADD CONSTRAINT `order_details_fk1` FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`);

ALTER TABLE `order_details` ADD CONSTRAINT `order_details_fk2` FOREIGN KEY (`order_total`) REFERENCES `frappuccinos`(`frappuccinos_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`);

