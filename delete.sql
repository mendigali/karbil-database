-- DELETE CLUBS THAT HAVE NO DESCRIPTION
DELETE FROM `club`
WHERE `club`.`description` IS NULL;

-- DELETE ALL TUTORS
DELETE FROM `user_class`
WHERE `user_class`.`role_id` = 3;

-- DELETE USERS THAT ARE NOT CONNECTED WITH ANY CLASS
DELETE FROM `user`
WHERE `user`.`id` IN (
	SELECT `user`.`id`
    FROM `user`
    LEFT JOIN `user_class`
    ON `user`.`id` = `user_class`.`user_id`
    WHERE `user_class`.`user_id` IS NULL
);

-- DELETE CLUB MEETING IN FRIDAY, SATURDAY, SUNDAY
DELETE FROM `club_schedule`
WHERE `day_of_week_id` BETWEEN 5 AND 7;

-- DELETE CLASSROOMS WHICH DOES NOT HAVE A CAMERA AND CAPACITY IS LESS THAN 30 STUDENTS
DELETE FROM `classroom`
WHERE `has_camera` = 0 AND `capacity` < 30;

-- DELETE ALL COMPETITIONS THAT WERE NOT HELD IN KAZAKHSTAN
DELETE FROM `competition`
WHERE `competition`.`city_id` IN (
	SELECT `city`.`id`
    FROM `city`
    INNER JOIN `country`
    ON `city`.`country_id` = `country`.`id`
    AND `country`.`name` <> 'Kazakhstan'
);