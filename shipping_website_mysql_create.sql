CREATE TABLE `customer` (
	`customer_id` BINARY NOT NULL AUTO_INCREMENT,
	`customer_name` varchar(50) NOT NULL,
	`customer_address` TEXT NOT NULL,
	`customer_address` TEXT NOT NULL,
	PRIMARY KEY (`customer_id`)
);

CREATE TABLE `products` (
	`product_id` INT NOT NULL AUTO_INCREMENT,
	`product_name` varchar(50) NOT NULL,
	`product_quantity` INT NOT NULL,
	`product_price` INT NOT NULL,
	`vendor_id` INT NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `vendors` (
	`vendor_id` INT NOT NULL AUTO_INCREMENT,
	`vendor_name` varchar(50) NOT NULL,
	`vendor_email` varchar(50) NOT NULL,
	`vendor_phone_number` varchar(50) NOT NULL,
	PRIMARY KEY (`vendor_id`)
);

CREATE TABLE `orders` (
	`order_id` BINARY NOT NULL AUTO_INCREMENT,
	`customer_id` INT NOT NULL,
	`paid` BOOLEAN NOT NULL,
	PRIMARY KEY (`order_id`)
);

CREATE TABLE `order_details` (
	`order_detail_id` INT NOT NULL AUTO_INCREMENT,
	`order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`order_total` INT NOT NULL,
	PRIMARY KEY (`order_detail_id`)
);

ALTER TABLE `products` ADD CONSTRAINT `products_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendors`(`vendor_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `order_details` ADD CONSTRAINT `order_details_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_details` ADD CONSTRAINT `order_details_fk1` FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`);

