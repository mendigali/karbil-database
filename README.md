# School management system

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

# Introduction
As we all know, today the state program Digital Kazakhstan is being implemented, the purpose of which is to improve the quality of life of the population through the use of digital technologies. One of the areas of this program is the digitalization of education, in particular the digitalization of educational institutions. For this reason, I decide to choose this topic.

I decided to implement this global project locally, in the territory of my former school. So, the goal of my project is to create a database which will store information about school, its students, teachers and alumnees.

The Database Management System is practical because users can access it from various platforms at any time. Also, a digital database eliminates the need to store a huge amount of paper documentation, and more importantly, speeds up the processing of information at times.

# Purpose of the project
My goal is to create database for Karagandy “Bilim-Innovation” lyceum #1. Teachers at the school have been collecting student achievements in paper version for many years. Using the data in this form is not very convenient and for this reason, later they have begun transferring these papers into digital format, in the form of Microsoft Excel and Word files. But this option also has its drawbacks, because in order to access the data you need to transfer it from one computer to another in various ways, for example, via a USB flash drive. So therefore, I believe that transferring all this information to a database management system will be a very correct, relevant and logical solution of this problem.

The school keeps track of students, teachers, graduates, tutors and other staff. All these users will be able to register a personal account. The school has around 250 students, 40 teachers and administrators, 10 tutors. There are nearly 30 classrooms, 10 classes, each class has its own curator, tutor, classroom teacher, 25 subjects, 10 clubs. The database will need to contain their information, such as name, surname, birthday, class, his contacts, the clubs that the student is a member of, the subject in which he participates in the Olympiads, and it is also necessary to save the achievements of students at these Olympiads and competitions. Olympiads will contain following attributes name of the Olympiad/competition, a result (medal, certificate), place and date of the event. At the same time, the teachers will keep the subject they teach, their experience, qualifications, education, and more. Moreover, there will be other features such as: upcoming events calendar, lessons schedule, news feed, tracking of books from library, school canteen menu etc.

<!-- List of all the entities that are used in database -->
# Entities
1. Student
1. Teacher
1. Curator
1. Tutor
1. Abiturient
1. Graduate
1. Parent
1. Lesson
1. Club
1. Class
1. Classroom
1. Book
1. Schedule
1. Attendance
1. Blog post

<!-- Detailed information about student entity including all of its attributes -->
# Student

## Attributes:
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
CREATE TABLE `student` (
    `id` SERIAL,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `middle_name` VARCHAR(50),
    `date_of_birth` DATE,
    `gender` BOOLEAN,
    `preferred_language` VARCHAR(3),
    PRIMARY KEY(`id`),
);
```

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
