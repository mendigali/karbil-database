SELECT `lesson`.`name`, `lesson_schedule`.`start_time`, `lesson_schedule`.`finish_time`
FROM `lesson`
INNER JOIN `lesson_schedule`
ON `lesson`.`id` = `lesson_schedule`.`lesson_id`
WHERE `lesson_schedule`.`start_time` = MIN(`lesson_schedule`.`start_time`);

-- SHOW LIST OF TEACHERS WHO TEACH 3 LESSONS IN WHICH STUDENTS WIN THE MOST PRIZES IN COMPETITION
SELECT `user`.`first_name`, `user`.`last_name`, subject.`name`
FROM `user`
INNER JOIN `teacher`
ON `teacher`.`user_id` = `user`.`id`
INNER JOIN (
    SELECT `lesson`.`id`, `lesson`.`name`, COUNT(`lesson`.`name`) AS winners
    FROM `lesson`
    INNER JOIN `user_competition`
    ON `user_competition`.`lesson_id` = `lesson`.`id`
    GROUP BY `lesson`.`name`
    ORDER BY winners DESC, `lesson`.`name` ASC
    LIMIT 3
) AS subject
ON `teacher`.`lesson_id` = subject.`id`;

-- SHOW LESSONS THAT TAKE PLACE IN CLASSROOMS WITH A CAPACITY OF MORE THAN 21 PEOPLE
SELECT `lesson`.`name`, `lesson_schedule`.`start_time`, `day_of_week`.`name`
FROM `lesson`
INNER JOIN `lesson_schedule`
ON `lesson_schedule`.`lesson_id` = `lesson`.`id`
LEFT JOIN `day_of_week`
ON `day_of_week`.`id` = `lesson_schedule`.`day_of_week_id`
WHERE `lesson_schedule`.`classroom_id` IN (
	SELECT `classroom`.`id`
    FROM `classroom`
    WHERE `classroom`.`capacity` > 21
)
ORDER BY `day_of_week`.`id` ASC,
`lesson_schedule`.`start_time` ASC;

-- SHOW DETAILS ABOUT TEACHERS WHO TEACH LESSONS EARLIER THAN AT 12:00
SELECT `user`.`first_name`, `user`.`last_name`, `user`.`phone`
FROM `user`
INNER JOIN `teacher`
ON `user`.`id` = `teacher`.`user_id`
INNER JOIN `lesson`
ON `teacher`.`lesson_id` = `lesson`.`id`
INNER JOIN `lesson_schedule`
ON `lesson`.`id` = `lesson_schedule`.`lesson_id`
WHERE `lesson_schedule`.`lesson_id` IN (
	SELECT `lesson_id`
    FROM `lesson_schedule`
    WHERE `start_time` < '12:00'
);

-- SHOW FIRST NAME, COUNTRY, CITY, ADDRESS OF USERS WHO PARTICIPATE IN CYBERSPORT CLUB
SELECT `user`.`first_name`, `country`.`name`, `city`.`name`, `address`.`street_name`, `address`.`house_number`
FROM `country`
INNER JOIN `city`
ON `country`.`id` = `city`.`country_id`
INNER JOIN `address`
ON `address`.`city_id` = `city`.`id`
INNER JOIN `user`
ON `user`.`address_id` = `address`.`id`
INNER JOIN `user_club_role`
ON `user`.`id` = `user_club_role`.`user_id`
WHERE `user_club_role`.`role_id` IN (
	SELECT `club_role`.`id`
    FROM `club_role`
    WHERE `club_role`.`club_id` = (
    	SELECT `club`.`id`
        FROM `club`
        WHERE `club`.`name` LIKE '%Cyber%'
    )
);

-- SHOW THE MOST EXPERIENCED TEACHERS (THOSE WHO HAVE WORKING EXPERIENCE > 30 YEARS OR ANY TEACHER CATEGORY EXCLUDING "WITHOUT CATEGORY") 
SELECT `user`.`first_name`, `user`.`last_name`, `lesson`.`name`
FROM `user`
INNER JOIN `teacher`
ON `user`.`id` = `teacher`.`user_id`
INNER JOIN `lesson`
ON `lesson`.`id` = `teacher`.`lesson_id`
WHERE `teacher`.`user_id` IN (
	SELECT `teacher`.`user_id`
    FROM `teacher`
    WHERE FLOOR(DATEDIFF(CURRENT_DATE, `teacher`.`carier_start`)/365) > 30
    OR `teacher`.`category_id` <> 1
);