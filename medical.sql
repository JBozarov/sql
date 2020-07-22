CREATE TABLE `physician` (
	`physician_id` INT NOT NULL AUTO_INCREMENT,
	`physician_name` varchar(50) NOT NULL,
	PRIMARY KEY (`physician_id`)
);

CREATE TABLE `patients` (
	`patient_id` INT NOT NULL AUTO_INCREMENT,
	`patient_name` varchar(50) NOT NULL,
	`patient_email` varchar(50) NOT NULL,
	`patient_dob` DATE NOT NULL,
	`patient_address` varchar(300) NOT NULL,
	`patient_phone_number` INT NOT NULL,
	PRIMARY KEY (`patient_id`)
);

CREATE TABLE `diagnoses` (
	`diagnoses_id` INT NOT NULL AUTO_INCREMENT,
	`diagnoses_name` varchar(50) NOT NULL,
	`patient_id` INT NOT NULL,
	`physician_id` INT NOT NULL,
	`description` varchar(2500) NOT NULL,
	PRIMARY KEY (`diagnoses_id`)
);

CREATE TABLE `appointments` (
	`appointment_id` INT NOT NULL AUTO_INCREMENT,
	`physician_id` INT NOT NULL,
	`patient_id` INT NOT NULL,
	`appointment_time` DATE NOT NULL,
	`appointment_notes` varchar(255) NOT NULL,
	PRIMARY KEY (`appointment_id`)
);

CREATE TABLE `medical_history` (
	`medical_history_id` INT NOT NULL AUTO_INCREMENT,
	`patient_id` INT NOT NULL,
	`description` varchar(500) NOT NULL,
	`date` DATE NOT NULL,
	PRIMARY KEY (`medical_history_id`)
);

ALTER TABLE `diagnoses` ADD CONSTRAINT `diagnoses_fk0` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `diagnoses` ADD CONSTRAINT `diagnoses_fk1` FOREIGN KEY (`physician_id`) REFERENCES `physician`(`physician_id`);

ALTER TABLE `appointments` ADD CONSTRAINT `appointments_fk0` FOREIGN KEY (`physician_id`) REFERENCES `physician`(`physician_id`);

ALTER TABLE `appointments` ADD CONSTRAINT `appointments_fk1` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

ALTER TABLE `medical_history` ADD CONSTRAINT `medical_history_fk0` FOREIGN KEY (`patient_id`) REFERENCES `patients`(`patient_id`);

