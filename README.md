# School management system

![Entity relationship diagram](ERD.png "ERD")

## Vocabulary
* Application logic - example: check if email address is correct in server side with php
* Bridge table - used to divide many-to-many relationship into one-to-many
* Lookup table - store static data
* SERIAL can be used only once in a table because each table can have only 1 AUTO_INCREMENT attribute

## Table of contents
1. [Abstract](#abstract)
1. [Introduction](#introduction)
1. [Purpose of the project](#purpose-of-the-project)
1. [Project creation outline](#project-creation-outline)
1. [Entities](#entities)
1. [Business rules](#business-rules)
1. [Attributes](#attributes)
1. [Database normalization](#database-normalization)
1. [Potential future upgrades](#potential-future-upgrades)
1. [Conclusion](#conclusion)
1. [List of used literature and resources](#list-of-used-literature-and-resources)
1. [Queries](#queries)

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
As we all know, today the state program Digital Kazakhstan is being implemented, the purpose of which is to improve the quality of life of the population through the use of digital technologies. One of the areas of this program is the digitalization of education, in particular the digitalization of educational institutions.

For this reason, I decide to choose this topic. I decided to implement this global project locally, in the territory of my former school. When I was in school, I often faced various problems that I tried to solve in this project. One such problem was the paperwork, namely sorting documents by year and subject. The school kept the achievements of students at various Olympiads and competitions. In addition, I was a robotics Olympiad and I needed to keep track of everyone who participated in this club. So, the goal of my project is to create a database which will store information about school, its students, teachers and alumnees.

The Database Management System is practical because users can access it from various platforms at any time. Also, a digital database eliminates the need to store a huge amount of paper documentation, and more importantly, speeds up the processing of information at times.

[Back to table of contents](#table-of-contents)

# Purpose of the project
My goal is to create database for Karagandy “Bilim-Innovation” lyceum #1. Teachers at the school have been collecting student achievements in paper version for many years. Using the data in this form is not very convenient and for this reason, later they have begun transferring these papers into digital format, in the form of Microsoft Excel and Word files. But this option also has its drawbacks, because in order to access the data you need to transfer it from one computer to another in various ways, for example, via a USB flash drive. So therefore, I believe that transferring all this information to a database management system will be a very correct, relevant and logical solution of this problem.

The school keeps track of students, teachers, graduates, tutors and other staff. All these users will be able to register a personal account. The school has around 250 students, 40 teachers and administrators, 10 tutors. There are nearly 30 classrooms, 10 classes, each class has its own curator, tutor, classroom teacher, 25 subjects, 10 clubs. The database will need to contain their information, such as name, surname, birthday, class, his contacts, the clubs that the student is a member of, the subject in which he participates in the Olympiads, and it is also necessary to save the achievements of students at these Olympiads and competitions. Olympiads will contain following attributes name of the Olympiad/competition, a result (medal, certificate), place and date of the event. At the same time, the teachers will keep the subject they teach, their experience, qualifications, education, and more. Moreover, there will be other features such as: competitions calendar, lessons schedule, clubs schedule, tracking of books from library.

[Back to table of contents](#table-of-contents)
<!-- List of all the entities that are used in database -->
# Project creation outline
To complete this project, I decided to create an action plan that I will rely on during the creation process. I have identified the following steps for myself:
* Determine all entities contained in the project.
* List the business rules to be followed in the project.
* Design ER diagram including all the attributes for each entity and relationship.
* Create all entities, relationships and attributes in the database using SQL.

[Back to table of contents](#table-of-contents)

# Entities
The first step in creating this project was to define the entities that will be stored in the database. I have defined 14 entities for this project.
1. User
1. Lesson
1. Club
1. Club role
1. Class
1. Classroom
1. Book
1. Competition
1. Teacher
1. Address
1. Lesson schedule
1. Club schedule
1. Country
1. City

[View source code of the entities](create_database.sql)

[Back to table of contents](#table-of-contents)

# Business rules
After that, I began to draw up business rules that will guide me during the creation of the project and when designing the database. Below is a list of my business rules.
* A user can be associated with a class multiple times and have different roles in that class.
* A club can have many roles.
* Each teacher can teach one lesson.
* A student can join several clubs.
* A student can get an unlimited number of achievements in different competitions.
* A student can take only one prize place within one competition.
* At one competition, a student can participate in only one lesson.
* The student can borrow several books from the library.
* Each class has its own classroom.
* The club may have several scheduled classes.
* The user can only specify one address.
* Each class can attend several lessons.
* Each lesson can be in the lesson schedule several times.
* Different lessons from the lesson schedule can take place in a classroom.
* Each city can only be in one country.
* Each address can be linked to one city.
* The competition can only be held in one city.
* Teacher can have zero or one category.

[Back to table of contents](#table-of-contents)

# Attributes
* User can have full name, date of birth, gender, email, password, phone number, and address.
* Address consists of city, street name, and house number.
* Country has name.
* City has name and unique number of country where it is located.
* Teacher has lessons that he teaches, start date of his career, and his category.
* Class has a graduation year, parallel, classroom, and users who have particular roles in the class.
* Classroom has capacity of students, floor, number, and labeled if it has camera or not.
* Competition has title, description, level, location city, and date.
* Book has title, author, publish year, and if it is classbook, then it has a class number for which it is intended.
* Club has name, description and roles.
* Lesson has name.
* Lesson schedule consists of class, lesson, classroom, time of lesson, day of the week.
* Club schedule consists of club, time of meeting, and day of the week.

[Back to table of contents](#table-of-contents)

# Database normalization
1. First Normal Form (1NF)
For a table to be in the First Normal Form, it should follow the following rules:
    * Attributes should only have atomic values.
    * All attributes in a table should have unique names.
    * Values stored in a column should be of the same domain.

1. Second Normal Form (2NF)
For a table to be in the Second Normal Form, it should follow the following rules:
    * It is in the 1NF.
    * It does not have Partial Dependency.

1. Third Normal Form (3NF)
For a table to be in the Third Normal Form, it should follow the following rules:
    * It is in the 2NF.
    * It does not have Transitive Dependency.

When considering and studying the above ER diagram, it can be argued that all tables here are in 3NF, since they meet all the requirements. Each table has a primary key. The diagram shows all foreign keys and the relationship between them.

[Back to table of contents](#table-of-contents)

# Potential future upgrades
This project can already be used, but like any other project, it can be improved. I think that in the future it will be advisable to add support for other languages, which will allow storing information in several languages. In addition, you can add the ability to create blog posts in which you can write about interesting events that happened at the school. It will also be possible to add the ability to create a calendar of upcoming events, which will be very useful. It will also be possible to realize the opportunity for incoming sixth graders to apply to study at the school. In general, this project can still grow and improve a lot.

[Back to table of contents](#table-of-contents)

# Conclusion
It was a very interesting and, above all, useful project. As a result of the work done, we have a database that provides the school with the ability to register a personal account for each user. Each user can add information about themselves, such as name, date of birth, gender, place of residence, cell phone number, etc. In addition, the database allows you to store student achievements and get immediate access to them, with the ability to filter and sort the data. For each competition, its name, description, city and date of the event, as well as the scale of the competition, for example, international or republican, etc., are stored. Thanks to this, teachers will have less workload and, accordingly, they will be able to devote more time to teaching students than to paperwork. Now students can follow the schedules of lessons and club meetings, and see the members of each of the clubs. Students have the opportunity to view the books available in the library and, if they wish, take it for a while to read. It is also worth noting that teachers can add information that applies only to them, for example, the date of the beginning of their working career, the subject they teach, their teaching category.

Also, I personally learned a lot of important and valuable experience from this project. I improved my query writing skills and got a better understanding of how to build a database from scratch. I also got acquainted with database normalization and applied 3 normal forms in this project. Of course this is not the limit and there are other normal forms besides the three and I plan to learn how to apply the remaining forms in the future. For this project, I also learned how to create an entity relationship diagram using crow's foot notation. At first glance it seems difficult, but with a little practice it becomes much easier.

[Back to table of contents](#table-of-contents)

# List of used literature and resources
* Learn SQL (using MySQL) in One Day and Learn It Well. SQL for Beginners with Hands-on Project. The only book you need to start coding in SQL immediately. - By Jamie Chan.
* Learning SQL Generate, Manipulate, and Retrieve Data Third Edition. - By Alan Beaulieu.
* [MariaDB Documentation](https://mariadb.com/kb/en/documentation/)
* [MySQL Documentation](https://dev.mysql.com/doc/)
* [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)

[Back to table of contents](#table-of-contents)

# Queries
1. [Show list of the teachers and lessons that each of them teach](#query-1)
1. [Show list of classes and their classrooms](#query-2)
1. [Show lesson schedule for class with id equal 1](#query-3)

[Back to table of contents](#table-of-contents)

---
## Query 1
Show list of the teachers and lessons that each of them teach

### Query:
```sql
SELECT `user`.`first_name`, `user`.`last_name`, `lesson`.`name`
FROM `user`
INNER JOIN `teacher`
ON `user`.`id` = `teacher`.`user_id`
INNER JOIN `lesson`
ON `teacher`.`lesson_id` = `lesson`.`id`;
```
### Query result:

| first\_name | last\_name | name |
| :--- | :--- | :--- |
| Ashlen | O'Grogane | ICT |
| Levin | MacGiany | Chemistry |
| Pavla | Abrami | Math |
| Caralie | Donaldson | Math |
| Ashien | Sleightholme | World history |
| Patricio | Trowle | English language |
| Harper | Gowdie | Kazakh language |
| Lelah | Ducket | Physical education |
| Tull | Gerrelt | Kazakh literature |
| Domeniga | Leverton | Basic military training |

[Back to query list](#queries)

---
## Query 2
Show list of classes and their classrooms

### Query:
```sql
SELECT `class`.*, `classroom`.`floor`
FROM `class`
INNER JOIN `classroom`
ON `class`.`classroom_id` = `classroom`.`id`;
```
### Query result:

| id | graduate\_year | parallel | classroom\_id | floor |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 2020 | A | 3 | 1 |
| 3 | 2021 | A | 1 | 1 |
| 4 | 2021 | B | 11 | 3 |
| 5 | 2022 | A | 9 | 3 |
| 6 | 2022 | B | 2 | 1 |
| 7 | 2023 | C | 10 | 3 |
| 8 | 2023 | B | 7 | 2 |
| 9 | 2024 | C | 6 | 2 |
| 10 | 2024 | B | 4 | 2 |

[Back to query list](#queries)

---
## Query 3
Show lesson schedule for class with id equal 1

### Query:
```sql
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
```

### Query result:

| name | start\_time | finish\_time | name | id | floor |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Tuesday | 12:50:00 | 13:30:00 | Physics | 11 | 3 |
| Thursday | 09:30:00 | 10:15:00 | Professional business | 8 | 3 |

