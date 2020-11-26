-- UPDATE TEACHER CATEGORY TO TEACHER-MASTER FOR TEACHERS WHO HAVE WORKING EXPERIENCE > 30 YEARS
UPDATE `teacher`
SET `teacher`.`category_id` = 6
WHERE `teacher`.`user_id` IN (
	SELECT `teacher`.`user_id`
    FROM `teacher`
    WHERE FLOOR(DATEDIFF(CURRENT_DATE, `teacher`.`carier_start`)/365) > 30
);

-- CHANGE GENDER OF USERS WHO HAVE BIRTHDAY IN MAY OR 
UPDATE `user`
SET `user`.`gender` = false
WHERE MONTH(`user`.`birth_date`) = 5
OR MONTH(`user`.`birth_date`) = 6;

-- CHANGE CLASS PARALLEL FROM 'A' TO 'C' FOR CLASSES WITH GRADUATION YEAR LATER THAN 2022
UPDATE `class`
SET `class`.`parallel` = 'C'
WHERE `class`.`graduate_year` > 2022
AND `class`.`parallel` = 'A';

-- INCREASE CAPACITY OF CLASSES FROM THE FIRST FLOOR
UPDATE `classroom`
SET `classroom`.`capacity` = `classroom`.`capacity`*2
WHERE `classroom`.`floor` = 1;

-- MOVE LESSONS FROM SUNDAY TO MONDAY
UPDATE `lesson_schedule`
SET `lesson_schedule`.`day_of_week_id` = 1
WHERE `lesson_schedule`.`day_of_week_id` = 7;

-- CHANGE NAME FROM GOLD TO NO MEDAL
UPDATE `prize`
SET `prize`.`name` = 'No medal'
WHERE `prize`.`id` = 1;