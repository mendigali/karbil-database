-- SHOW LIST OF THE TEACHERS AND LESSON THAT EACH OF THEM TEACH
SELECT `user`.`first_name`, `user`.`last_name`, `lesson`.`name`
FROM `user`
INNER JOIN `teacher`
ON `user`.`id` = `teacher`.`user_id`
INNER JOIN `lesson`
ON `teacher`.`lesson_id` = `lesson`.`id`;

-- SHOW LIST OF CLASSES AND THEIR CLASSROOMS
SELECT `class`.*, `classroom`.`floor`
FROM `class`
INNER JOIN `classroom`
ON `class`.`classroom_id` = `classroom`.`id`;

-- SHOW LESSON SCHEDULE FOR CLASS WITH ID EQUAL 1
SELECT `day_of_week`.`name`, `lesson_schedule`.`start_time`, `lesson_schedule`.`finish_time`, `lesson`.`name`, `classroom`.`id`, `classroom`.`floor`
FROM `lesson`
INNER JOIN `lesson_schedule`
ON `lesson`.`id` = `lesson_schedule`.`lesson_id`
INNER JOIN `classroom`
ON `lesson_schedule`.`classroom_id` = `classroom`.`id`
INNER JOIN `day_of_week`
ON `lesson_schedule`.`day_of_week_id` = `day_of_week`.`id`
WHERE `lesson_schedule`.`class_id` = 1
ORDER BY `day_of_week`.`id` ASC;

-- SHOW ACHIEVEMENTS OF EVERY STUDENT ON ANY COMPETITION
SELECT `user`.`first_name`, `user`.`last_name`, `prize`.`name`, `competition`.`title`
FROM `user`
INNER JOIN `user_competition`
ON `user`.`id` = `user_competition`.`user_id`
INNER JOIN `prize`
ON `user_competition`.`prize_id` = `prize`.`id`
INNER JOIN `competition`
ON `competition`.`id` = `user_competition`.`competition_id`
ORDER BY `prize`.`id`, `user`.`first_name` ASC;

-- SHOW COMPETITIONS WHERE LEVEL OF COMPETITION STARTS WITH "Rep"
SELECT `competition`.`title`, `city`.`name`, `competition`.`start_date`
FROM `competition`
INNER JOIN  `level`
ON `competition`.`level_id` = `level`.`id`
LEFT JOIN `city`
ON `city`.`id` = `competition`.`city_id`
WHERE `level`.`name` LIKE 'Rep%'
ORDER BY `competition`.`start_date` ASC;

-- SHOW INFORMATION ABOUT EACH HEADMAN IN SCHOOL
SELECT `user`.`first_name`, `class`.`graduate_year`, `class`.`parallel`, `user`.`email`, `user`.`phone`
FROM `user`
INNER JOIN `user_class`
ON `user`.`id` = `user_class`.`user_id`
INNER JOIN `class_role`
ON `user_class`.`role_id` = `class_role`.`id`
INNER JOIN `class`
ON `class`.`id` = `user_class`.`class_id`
WHERE `class_role`.`name` = 'Headman';

-- SHOW NUMBER OF PARTICIPANTS FOR EACH CLUB
SELECT `club`.`name`, COUNT(`club`.`name`) AS participants
FROM `club`
LEFT JOIN `club_role`
ON `club`.`id` = `club_role`.`club_id`
INNER JOIN `user_club_role`
ON `user_club_role`.`role_id` = `club_role`.`id`
INNER JOIN `user`
ON `user`.`id` = `user_club_role`.`user_id`
GROUP BY `club`.`name`
ORDER BY participants DESC;

-- SHOW DIFFERENT LESSONS THAT ARE ATTENDED BY STUDENTS WHO WILL GRADUATE IN 2020 OR in 2021
SELECT DISTINCT `lesson`.`name`
FROM `lesson`
INNER JOIN `lesson_schedule`
ON `lesson`.`id` = `lesson_schedule`.`id`
RIGHT JOIN `class`
ON `class`.`id` = `lesson_schedule`.`class_id`
WHERE `class`.`graduate_year` = '2020' OR `class`.`graduate_year` = '2021';

-- SHOW ONLY CURATORS AND USER WITH BIRTHDAY BETWEEN 6 July 2003 AND 21 November 2005
SELECT `user`.`first_name`, `user`.`birth_date`, `user`.`gender`
FROM `user`
INNER JOIN `user_class`
ON `user`.`id` = `user_class`.`user_id`
INNER JOIN `class_role`
ON `class_role`.`id` = `user_class`.`role_id`
WHERE `class_role`.`name` = 'Curator' OR `user`.`birth_date` BETWEEN '2003-07-06' AND '2005-11-21';

-- SHOW MINIMUM AND MAXIMUM CAPACITY OF STUDENTS THAT CAN FIT IN ONE CLASSROOM WHICH HAS NO CAMERA INSIDE
SELECT MIN(`classroom`.`capacity`), MAX(`classroom`.`capacity`)
FROM `classroom`
WHERE `classroom`.`has_camera` <> 0;