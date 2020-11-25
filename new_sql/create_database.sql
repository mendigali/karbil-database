CREATE TABLE `teacher_category` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `prize` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `level` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `day_of_week` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `classroom` (
  `id` SERIAL,
  `floor` INT NOT NULL,
  `capacity` INT NOT NULL,
  `has_camera` BOOLEAN NOT NULL
);

CREATE TABLE `book` (
  `id` SERIAL,
  `title` VARCHAR(200) NOT NULL,
  `author` VARCHAR(200) NOT NULL,
  `publish_year` YEAR NOT NULL,
  `class` INT
);

CREATE TABLE `class_role` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `lesson` (
  `id` SERIAL,
  `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `club` (
  `id` SERIAL,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT
);

CREATE TABLE `country` (
  `id` SERIAL,
  `name` VARCHAR(100) NOT NULL
);

CREATE TABLE `city` (
  `id` SERIAL,
  `country_id` BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  FOREIGN KEY (`country_id`)
  REFERENCES `country`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `address` (
  `id` SERIAL,
  `city_id` BIGINT UNSIGNED,
  `street_name` VARCHAR(200) NOT NULL,
  `house_number` INT,
  FOREIGN KEY (`city_id`)
  REFERENCES `city`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE `user` (
  `id` SERIAL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `middle_name` VARCHAR(50),
  `gender` BOOLEAN,
  `birth_date` DATE,
  `phone` VARCHAR(15),
  `address_id` BIGINT UNSIGNED,
  UNIQUE (`email`),
  FOREIGN KEY (`address_id`)
  REFERENCES `address`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE `class` (
  `id` SERIAL,
  `graduate_year` YEAR NOT NULL,
  `parallel` CHAR(1) NOT NULL,
  `classroom_id` BIGINT UNSIGNED,
  FOREIGN KEY (`classroom_id`)
  REFERENCES `classroom`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL
);


CREATE TABLE `competition` (
  `id` SERIAL,
  `title` VARCHAR(250) NOT NULL,
  `description` TEXT NOT NULL,
  `level_id` BIGINT UNSIGNED NOT NULL,
  `city_id` BIGINT UNSIGNED,
  `start_date` DATE NOT NULL,
  `finish_date` DATE,
  FOREIGN KEY (`level_id`)
  REFERENCES `level`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`city_id`)
  REFERENCES `city`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `lesson_schedule` (
  `id` SERIAL,
  `lesson_id` BIGINT UNSIGNED,
  `class_id` BIGINT UNSIGNED NOT NULL,
  `teacher_id` BIGINT UNSIGNED,
  `day_of_week_id` BIGINT UNSIGNED NOT NULL,
  `classroom_id` BIGINT UNSIGNED,
  `start_time` TIME NOT NULL,
  `finish_time` TIME,
  FOREIGN KEY (`lesson_id`)
  REFERENCES `lesson`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY (`class_id`)
  REFERENCES `class`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`teacher_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY (`day_of_week_id`)
  REFERENCES `day_of_week`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`classroom_id`)
  REFERENCES `classroom`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE `club_schedule` (
  `id` SERIAL,
  `club_id` BIGINT UNSIGNED NOT NULL,
  `start_time` TIME NOT NULL,
  `finish_time` TIME,
  `day_of_week_id` BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (`day_of_week_id`)
  REFERENCES `day_of_week`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`club_id`)
  REFERENCES `club`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `club_role` (
  `id` SERIAL,
  `club_id` BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  FOREIGN KEY (`club_id`)
  REFERENCES `club`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `user_club_role` (
  `user_id` BIGINT UNSIGNED,
  `role_id` BIGINT UNSIGNED,
  PRIMARY KEY (`user_id`, `role_id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`role_id`)
  REFERENCES `club_role`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `user_class` (
  `user_id` BIGINT UNSIGNED NOT NULL,
  `class_id` BIGINT UNSIGNED NOT NULL,
  `role_id` BIGINT UNSIGNED,
  PRIMARY KEY (`user_id`, `class_id`, `role_id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`class_id`)
  REFERENCES `class`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`role_id`)
  REFERENCES `class_role`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `teacher` (
  `user_id` BIGINT UNSIGNED,
  `lesson_id` BIGINT UNSIGNED,
  `carier_start` DATE,
  `category_id` BIGINT UNSIGNED,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`lesson_id`)
  REFERENCES `lesson`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY (`category_id`)
  REFERENCES `teacher_category`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE `user_competition` (
  `user_id` BIGINT UNSIGNED,
  `competition_id` BIGINT UNSIGNED,
  `lesson_id` BIGINT UNSIGNED,
  `prize_id` BIGINT UNSIGNED,
  PRIMARY KEY (`user_id`, `competition_id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`competition_id`)
  REFERENCES `competition`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`lesson_id`)
  REFERENCES `lesson`(`id`)
  ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY (`prize_id`)
  REFERENCES `prize`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `user_book` (
  `user_id` BIGINT UNSIGNED,
  `book_id` BIGINT UNSIGNED,
  `rent_date` DATE,
  PRIMARY KEY (`user_id`, `book_id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `user`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (`book_id`)
  REFERENCES `book`(`id`)
  ON UPDATE CASCADE ON DELETE CASCADE
);