ALTER TABLE `book`
MODIFY COLUMN `title` VARCHAR(150);

ALTER TABLE `user`
DROP INDEX `address_id`;

ALTER TABLE `address`
ADD `floor` INT;

ALTER TABLE `address`
CHANGE `house_number` `house_number` INT NOT NULL;

ALTER TABLE `user`
ADD FOREIGN KEY (`address_id`)
REFERENCES `address`(`id`);

ALTER TABLE `address`
DROP COLUMN `floor`;

ALTER TABLE `user_club_role`
ADD `join_date` DATE;

ALTER TABLE `user_club_role`
DROP COLUMN `join_date`;

ALTER TABLE `book`
CHANGE `publish_year` `publish_year` CHAR(4) NOT NULL;