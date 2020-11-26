# School management system

![Entity relationship diagram](ERD.png "ERD")

## Vocabulary
* Application logic - example: check if email address is correct in server side with php
* Bridge table - used to divide many-to-many relationship into one-to-many
* Lookup table - store static data
* SERIAL can be used only once in a table because each table can have only 1 AUTO_INCREMENT attribute

---

When I will create Google Docs or Microsoft Word file, add Preface at the beginning of it, where I will say about this repo, that firstly I have made all the documentation in Github and it is better to look there.

## Table of contents
1. [Abstract](#abstract)
1. [Introduction](#introduction)
1. [Purpose of the project](#purpose-of-the-project)
1. [Entities](#entities)
    * [Student](#student)
1. [Business rules](#business-rules)

# Abstract
* Project sector
    * Education
* Project name
    * School management system
* Company
    * Karagandy "Bilim-Innovation" lyceum #1 for boys
* Project objectives
    * Learn core principles of database architecture
    * Get better at writing SQL queries
    * Understand what is database normalization
    * Practise at designing entity-relationship diagrams
    * Create real database for school
* Project author
    * University: Astana IT University
    * Group: SE-2019
    * Student: Temir Mendigali

[Back to table of contents](#table-of-contents)
# Introduction
As we all know, today the state program Digital Kazakhstan is being implemented, the purpose of which is to improve the quality of life of the population through the use of digital technologies. One of the areas of this program is the digitalization of education, in particular the digitalization of educational institutions. For this reason, I decide to choose this topic.

I decided to implement this global project locally, in the territory of my former school. So, the goal of my project is to create a database which will store information about school, its students, teachers and alumnees.

The Database Management System is practical because users can access it from various platforms at any time. Also, a digital database eliminates the need to store a huge amount of paper documentation, and more importantly, speeds up the processing of information at times.

[Back to table of contents](#table-of-contents)
# Purpose of the project
My goal is to create database for Karagandy “Bilim-Innovation” lyceum #1. Teachers at the school have been collecting student achievements in paper version for many years. Using the data in this form is not very convenient and for this reason, later they have begun transferring these papers into digital format, in the form of Microsoft Excel and Word files. But this option also has its drawbacks, because in order to access the data you need to transfer it from one computer to another in various ways, for example, via a USB flash drive. So therefore, I believe that transferring all this information to a database management system will be a very correct, relevant and logical solution of this problem.

The school keeps track of students, teachers, graduates, tutors and other staff. All these users will be able to register a personal account. The school has around 250 students, 40 teachers and administrators, 10 tutors. There are nearly 30 classrooms, 10 classes, each class has its own curator, tutor, classroom teacher, 25 subjects, 10 clubs. The database will need to contain their information, such as name, surname, birthday, class, his contacts, the clubs that the student is a member of, the subject in which he participates in the Olympiads, and it is also necessary to save the achievements of students at these Olympiads and competitions. Olympiads will contain following attributes name of the Olympiad/competition, a result (medal, certificate), place and date of the event. At the same time, the teachers will keep the subject they teach, their experience, qualifications, education, and more. Moreover, there will be other features such as: upcoming events calendar, lessons schedule, news feed, tracking of books from library, school canteen menu etc.

[Back to table of contents](#table-of-contents)
<!-- List of all the entities that are used in database -->
# Entities
1. User - in fact, it was possible to divide different users into different tables, but it was decided to keep them in a common table and save the user type as one of the attributes. List of currently available user types:
    1. Student
    1. Teacher
    1. Curator
    1. Tutor
    1. Graduate
    1. Parent
1. Lesson
1. Club - students are able to join clubs. 
1. Class - information about each class, including list of students, head teacher, curator, tutor of a class.
1. Classroom - detailed information about each classroom.
1. Book - ability to keep records of all books in the library.
1. Lesson schedule - each class will have its own schedule.
1. Club schedule - each club has its own schedule.
1. Attendance - ability to monitor student attendance at each lesson.
1. Academic performance - teachers can assign grades to their students.
1. Blog post - school maintains its own news blog, which publishes articles about upcoming and past Olympiads, events taking place in the school, student achievements, etc.
1. Upcoming events calendar - when I was at school, I often faced the problem that there was no clear schedule of upcoming events, especially Olympiads and competitions. This entity will store the event name, date, location, and the teacher who is responsible for the event.

[Back to table of contents](#table-of-contents)
<!-- Detailed information about student entity including all of its attributes -->
# Student

## Attributes:
1. id
1. First name
1. Last name
1. Middle name
1. Age
1. Gender
1. Olympiad subject
1. Joined clubs
1. Email
1. Phone number
1. Address

```sql
CREATE TABLE `user` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `middle_name` VARCHAR(50),
    `date_of_birth` DATE NOT NULL,
    `gender` BOOLEAN NOT NULL,
    `user_type_id` BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_type_id`)
    REFERENCES `user_type`(`id`)
);
```
```sql
SELECT `user`.`first_name`, `user`.`last_name`, `lesson`.`name`
FROM `user`
JOIN `user_lesson` ON `user`.`id` = `user_lesson`.`user_id`
JOIN `lesson` ON `user_lesson`.`lesson_id` = `lesson`.`id`
JOIN `language` ON `lesson`.`language_id` = `language`.`id`
WHERE `language`.`iso2` = 'ru';
```
id | first_name | last_name | middle_name | date_of_birth | gender | preferred_language
--- | --- | --- | --- | --- | --- | --- |
1 | Temir | Mendigali | Kairatuly | 2002-09-13 | 1 | rus

[Back to table of contents](#table-of-contents)
# Language
## Attributes:
1. id
1. iso_alpha2
1. iso_alpha3
1. original_name
1. english_name

 id | iso2 | iso3 | original_name | english_name 
----|------|------|---------------|--------------
 1  | en   | eng  | English       | English      
 2  | ru   | rus  | Русский       | Russian      
 3  | kk   | kaz  | Қазақ         | Kazakh       

# Competition
## Attributes:
1. id
1. level (International, Republic, Regional, State)

# Class roles
## Attributes:
1. id
1. name (Curator, Teacher, Tutor, Student, )

[Back to table of contents](#table-of-contents)
# Business rules
1. Each user can have only one primary role such as student, teacher, curator etc.
1. User can have zero or many additional roles such as head of club, school president, head teacher for educational work, dormitory manager etc.
1. Teacher can teach one or more lessons.
1. Student can join zero or many clubs.
1. Student can achieve zero or many achievements.
1. Student can take zero or many books from library.
1. Student can be only of one class.
1. Each class have one and only one head teacher, tutor and curator.
1. Teacher can have zero or many additional roles such as head teacher for educational work, dormitory manager, responsible for conducting events.
1. Teacher can have zero or one category such as teacher-master, teacher-researcher etc.
