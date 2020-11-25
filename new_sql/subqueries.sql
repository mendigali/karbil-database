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
