CREATE TABLE `students` (
	`student_id` INT NOT NULL AUTO_INCREMENT,
	`student_name` varchar(50) NOT NULL,
	`student_major` INT NOT NULL,
	`advisor_id` INT NOT NULL,
	PRIMARY KEY (`student_id`)
);

CREATE TABLE `advisors` (
	`advisor_id` INT NOT NULL AUTO_INCREMENT,
	`advisor_name` varchar(50) NOT NULL,
	`student_id` INT NOT NULL,
	PRIMARY KEY (`advisor_id`)
);

CREATE TABLE `major` (
	`major_id` INT NOT NULL AUTO_INCREMENT,
	`major_name` varchar(50) NOT NULL,
	`major_degree` varchar(255) NOT NULL,
	`major_field` varchar(50) NOT NULL,
	PRIMARY KEY (`major_id`)
);

CREATE TABLE `student_notes` (
	`note_id` INT NOT NULL AUTO_INCREMENT,
	`note_date` DATE NOT NULL,
	`advisor_id` INT NOT NULL,
	`student_id` INT NOT NULL,
	PRIMARY KEY (`note_id`)
);

ALTER TABLE `students` ADD CONSTRAINT `students_fk0` FOREIGN KEY (`student_major`) REFERENCES `major`(`major_id`);

ALTER TABLE `students` ADD CONSTRAINT `students_fk1` FOREIGN KEY (`advisor_id`) REFERENCES `advisors`(`advisor_id`);

ALTER TABLE `advisors` ADD CONSTRAINT `advisors_fk0` FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`);

ALTER TABLE `student_notes` ADD CONSTRAINT `student_notes_fk0` FOREIGN KEY (`advisor_id`) REFERENCES `advisors`(`advisor_id`);

ALTER TABLE `student_notes` ADD CONSTRAINT `student_notes_fk1` FOREIGN KEY (`student_id`) REFERENCES `students`(`student_id`);

