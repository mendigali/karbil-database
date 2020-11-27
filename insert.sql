-- INSERT DAYS OF THE WEEK
INSERT INTO `day_of_week`(`name`)
VALUES
    ('Monday'),
    ('Tuesday'),
    ('Wednesday'),
    ('Thursday'),
    ('Friday'),
    ('Saturday'),
    ('Sunday');

-- INSERT COMPETITION LEVELS
INSERT INTO `level` (`name`)
VALUES
    ('International'),
    ('Republic'),
    ('Regional'),
    ('City'),
    ('District'),
    ('School');

-- INSERT COMPETITION PRIZES
INSERT INTO `prize` (`name`)
VALUES
    ('Gold'),
    ('Silver'),
    ('Bronze'),
    ('Participant');

-- INSERT CLASS ROLES
INSERT INTO `class_role` (`name`)
VALUES
    ('Teacher'),
    ('Curator'),
    ('Tutor'),
    ('Headman'),
    ('Student');

-- INSERT BOOKS
INSERT INTO `book` (`title`,`author`,`publish_year`,`class`)
VALUES
    ('Algebra', 'Jevon Robson', '2018', '8'),
    ('Algebra', 'Nigel Robertson', '2019', '11'),
    ('Algebra', 'Hubert Hughes', '2014', '10'),
    ('Algebra', 'Danica Clay', '2020', '9'),
    ('Algebra', 'Evelina Mclean', '2020', '7'),
    ('Biology', 'Daniella Montoya', '2017', '10'),
    ('Physics', 'Maxwell Oakley', '2019', '10'),
    ('ICT', 'Bill Gates', '2020', '10'),
    ('Geography', 'Roscoe Mckinney', '2006', '10'),
    ('English', 'Donald Trump', '2013', '10'),
    ('Crime and Punishment', 'Fyodor Dostoyevsky', '1866', NULL),
    ('War and Peace', 'Leo Tolstoy', '1869', NULL),
    ('Nineteen Eighty-Four', 'George Orwell', '1949', NULL),
    ('The Great Gatsby', 'F. Scott Fitzgerald', '1925', NULL),
    ('One Hundred Years of Solitude', 'Gabriel García MárquezDuran', '1967', NULL);

-- INSERT COUNTRIES
INSERT INTO `country` (`name`)
VALUES
    ('Kazakhstan'),
    ('USA'),
    ('Russian'),
    ('Ukraine'),
    ('China'),
    ('Belarus'),
    ('Denmark'),
    ('Germany'),
    ('France'),
    ('Italy'),
    ('Spain'),
    ('Norway'),
    ('England'),
    ('Canada'),
    ('Singapore');

-- INSERT CITIES
INSERT INTO `city` (`country_id`,`name`)
VALUES
    (1, 'Nur-Sultan'),
    (2, 'Washington'),
    (3, 'Moscow'),
    (4, 'Kyiv'),
    (5, 'Beijing'),
    (6, 'Minsk'),
    (7, 'Copenhagen'),
    (8, 'Berlin'),
    (9, 'Paris'),
    (10, 'Rome'),
    (11, 'Madrid'),
    (12, 'Oslo'),
    (13, 'London'),
    (14, 'Ottawa'),
    (15, 'Singapore'),
    (1, 'Almaty'),
    (1, 'Karagandy'),
    (1, 'Shymkent'),
    (1, 'Kyzylorda'),
    (1, 'Baikonur');

-- INSERT LESSONS
INSERT INTO `lesson` (`name`)
VALUES
    ('ICT'),
    ('Chemistry'),
    ('Physics'),
    ('Biology'),
    ('Math'),
    ('Geography'),
    ('History of Kazakhstan'),
    ('World history'),
    ('English language'),
    ('Russian language'),
    ('Kazakh language'),
    ('German language'),
    ('Human. Society. Right'),
    ('Abaytanu'),
    ('Physical education'),
    ('Kazakh literature'),
    ('Russian literature'),
    ('Basic military training'),
    ('Turkish language'),
    ('Religious studies'),
    ('Self-knowledge'),
    ('Professional business');

-- INSERT CLUBS
INSERT INTO `club` (`name`, `description`)
VALUES
    ('Robotics club', 'Nulla ut magna ex. Nullam et sapien et quam varius.'),
    ('Intellectum club', 'Praesent est arcu, pulvinar bibendum semper quis, malesuada nec quam.'),
    ('Speed reading club', NULL),
    ('Media club', 'Nunc in massa ipsum. Nulla consectetur ullamcorper tristique. In ut.'),
    ('Debate club', NULL),
    ('Music club', 'Suspendisse non velit fermentum, efficitur nibh ac, pellentesque metus. Donec.'),
    ('Sport club', NULL),
    ('Volunteer club', 'Aliquam in scelerisque eros. Vivamus gravida posuere congue. Cras non.'),
    ('Cybersport club', 'Proin pharetra urna sapien, quis iaculis tellus facilisis eu. Phasellus.'),
    ('Charity club', NULL);

-- INSERT CLUB ROLES
INSERT INTO `club_role` (`club_id`, `name`)
VALUES
    (1 , 'Lego'),
    (1 , 'Arduino'),
    (1 , 'VEX'),
    (2 , 'Participant'),
    (3 , 'Participant'),
    (4 , 'Photographer'),
    (4 , 'Video editor'),
    (5 , 'Participant'),
    (6 , 'Guitar player'),
    (6 , 'Dombra player'),
    (6 , 'Vocal'),
    (6 , 'Sound producer'),
    (7 , 'Boxer'),
    (7 , 'Football player'),
    (7 , 'Basketball player'),
    (7 , 'Gymnast'),
    (8 , 'Participant'),
    (9 , 'CS:GO player'),
    (9 , 'DOTA 2 player'),
    (9 , 'Fortnite player'),
    (9 , 'Valorant player'),
    (10 , 'Participant');

-- INSERT TEACHER CATEGORIES
INSERT INTO `teacher_category` (`name`)
VALUES
    ('Without category'),
    ('Highest'),
    ('Teacher-researcher'),
    ('Teacher-expert'),
    ('Teacher-moderator'),
    ('Teacher-master');

-- INSERT CLASSROOMS
INSERT INTO `classroom` (`floor`, `capacity`, `has_camera`)
VALUES
    (1, 20, true),
    (1, 14, true),
    (2, 32, true),
    (2, 28, false),
    (2, 26, true),
    (2, 26, true),
    (3, 30, false),
    (3, 28, true),
    (3, 34, false),
    (3, 32, true);

-- INSERT CLUB SCHEDULE
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (4, '13:45', '15:00', 7);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (6, '16:00', '17:45', 1);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (5, '12:45', '13:30', 2);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (1, '9:30', '10:10', 6);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (6, '11:45', '12:25', 4);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (2, '16:30', '17:00', 2);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (4, '17:45', '19:00', 6);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (6, '8:30', '9:30', 4);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (4, '13:30', '14:30', 1);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (7, '17:00', '17:30', 3);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (3, '18:00', '19:00', 4);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (4, '9:45', '11:00', 5);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (2, '8:50', '10:50', 7);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (5, '12:15', '13:45', 4);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (2, '10:20', '11:00', 6);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (1, '19:30', '20:00', 1);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (5, '19:20', '19:50', 5);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (5, '18:50', '19:20', 5);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (9, '11:40', '12:30', 3);
insert into club_schedule (club_id, start_time, finish_time, day_of_week_id) values (10, '9:40', '10:20', 4);

-- INSERT CLASSES
INSERT INTO `class` (`graduate_year`, `parallel`, `classroom_id`)
VALUES
    (2020, 'A', 3),
    (2020, 'B', 5),
    (2021, 'A', 1),
    (2021, 'B', 11),
    (2022, 'A', 9),
    (2022, 'B', 2),
    (2023, 'A', 10),
    (2023, 'B', 7),
    (2024, 'A', 6),
    (2024, 'B', 4);

-- INSERT ADDRESSES
insert into address (city_id, street_name, house_number) values (16, 'Loomis Pass', 104);
insert into address (city_id, street_name, house_number) values (12, 'Ryan Pass', 249);
insert into address (city_id, street_name, house_number) values (14, 'Sage Trail', 216);
insert into address (city_id, street_name, house_number) values (13, 'Mifflin Circle', 297);
insert into address (city_id, street_name, house_number) values (18, 'Stone Corner Point', 133);
insert into address (city_id, street_name, house_number) values (4, 'Moland Junction', 257);
insert into address (city_id, street_name, house_number) values (13, 'Parkside Court', 170);
insert into address (city_id, street_name, house_number) values (6, 'Carey Pass', 139);
insert into address (city_id, street_name, house_number) values (4, 'Butternut Avenue', 92);
insert into address (city_id, street_name, house_number) values (6, 'North Place', 167);
insert into address (city_id, street_name, house_number) values (16, 'Mayer Hill', 141);
insert into address (city_id, street_name, house_number) values (10, 'Blaine Lane', 260);
insert into address (city_id, street_name, house_number) values (18, 'Shoshone Trail', 102);
insert into address (city_id, street_name, house_number) values (4, 'Manley Terrace', 174);
insert into address (city_id, street_name, house_number) values (3, 'Sherman Junction', 105);
insert into address (city_id, street_name, house_number) values (7, 'Monterey Place', 266);
insert into address (city_id, street_name, house_number) values (9, 'Montana Road', 175);
insert into address (city_id, street_name, house_number) values (3, 'Shopko Crossing', 130);
insert into address (city_id, street_name, house_number) values (8, 'Mccormick Hill', 4);
insert into address (city_id, street_name, house_number) values (9, 'Village Green Court', 90);
insert into address (city_id, street_name, house_number) values (1, 'Waxwing', 178);
insert into address (city_id, street_name, house_number) values (18, 'Vermont', 119);
insert into address (city_id, street_name, house_number) values (9, 'Nelson', 36);
insert into address (city_id, street_name, house_number) values (5, 'Sutteridge', 13);
insert into address (city_id, street_name, house_number) values (19, 'Tennessee', 95);
insert into address (city_id, street_name, house_number) values (18, 'Jay', 63);
insert into address (city_id, street_name, house_number) values (17, 'Warbler', 191);
insert into address (city_id, street_name, house_number) values (4, 'Forest', 19);
insert into address (city_id, street_name, house_number) values (11, 'Schmedeman', 48);
insert into address (city_id, street_name, house_number) values (7, 'Bunting', 67);
insert into address (city_id, street_name, house_number) values (19, 'Scoville', 199);
insert into address (city_id, street_name, house_number) values (8, 'Huxley', 76);
insert into address (city_id, street_name, house_number) values (8, 'Little Fleur', 80);
insert into address (city_id, street_name, house_number) values (16, 'Holmberg', 82);
insert into address (city_id, street_name, house_number) values (12, 'Logan', 9);
insert into address (city_id, street_name, house_number) values (17, 'Jenna', 199);
insert into address (city_id, street_name, house_number) values (10, 'Lakeland', 13);
insert into address (city_id, street_name, house_number) values (1, 'Saint Paul', 158);
insert into address (city_id, street_name, house_number) values (10, 'Knutson', 58);
insert into address (city_id, street_name, house_number) values (1, 'Express', 165);

-- INSERT COMPETITIONS
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('quisque', 'sociis natoque penatibus et magnis', 2, 11, '2010-04-05', '2010-04-07');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('magna vestibulum aliquet', 'sit amet erat nulla tempus vivamus in felis', 2, 4, '2011-10-10', '2011-10-19');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('turpis', 'semper porta volutpat quam pede', 6, 4, '2015-10-21', NULL);
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('odio porttitor id', 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 3, 16, '2011-01-08', '2011-01-12');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('sapien in', 'nunc commodo placerat praesent blandit nam nulla integer pede', 4, 12, '2013-10-17', '2013-10-20');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('cras pellentesque', 'lorem ipsum dolor sit amet', 6, 19, '2016-12-29', '2016-12-30');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('quis', 'id ligula suspendisse ornare', 4, 1, '2014-11-28', '2014-11-29');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('leo odio condimentum', 'morbi odio odio elementum eu interdum', 4, 12, '2014-11-10', NULL);
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('tellus nisi', 'suscipit ligula in lacus', 4, 10, '2015-01-07', '2015-01-10');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('nulla ultrices', 'feugiat et eros vestibulum ac', 4, 3, '2008-03-25', '2008-03-29');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('porttitor pede justo', 'phasellus id sapien in sapien iaculis congue vivamus metus', 5, 13, '2018-08-12', '2018-08-30');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('ac neque', 'consequat metus sapien ut nunc vestibulum ante', 6, 6, '2017-07-16', '2017-07-18');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('magna bibendum', 'purus sit amet nulla quisque arcu libero', 1, 16, '2016-08-12', '2016-08-22');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('curae', 'nulla ultrices aliquet maecenas leo', 4, 6, '2009-11-04', '2009-11-08');
insert into competition (title, description, level_id, city_id, start_date, finish_date) values ('in hac habitasse', 'est quam pharetra magna ac consequat metus', 4, 8, '2007-11-21', NULL);

-- INSERT USERS
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('xlowndsbrough0@networkadvertising.org', '5f8c252f85090cb3de21fb0852696ff9', 'Xever', 'Mars', 'Lowndsbrough', false, '2004-07-01', '150-268-4338', 1);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('kgiabucci1@goodreads.com', '99287a1f0bc0bb9d163e4cdf96438eab', 'Kizzie', 'Kembrey', 'Giabucci', true, '2003-03-06', '311-432-1226', 2);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('cchallender2@guardian.co.uk', '7f022c6a9296d57c1f3c8d70dfbeb298', 'Ceciley', 'Pantone', 'Challender', false, '2005-03-04', '523-342-9472', 3);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('rglaisner3@people.com.cn', 'a327ab1a690eb7f7cc6b1ad811c97335', 'Renault', 'Hebbard', 'Glaisner', true, '2000-07-10', '893-930-1915', 4);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('juphill4@huffingtonpost.com', '831a6cb7f0890e27da49e1549660ecb5', 'Joyous', 'Ramalhete', null, true, '2005-08-12', '698-846-8677', 5);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('uretallick5@buzzfeed.com', '3b962f93922ab6b5034bc88e5537d7b0', 'Uta', 'Lloyd-Williams', null, false, '2002-05-09', '599-293-1984', 6);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('bmorland6@cam.ac.uk', '3b5fa061df41a8b2e393afbd7ba7af6c', 'Boone', 'Salatino', 'Morland', false, '2001-08-30', '893-374-1394', 7);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('rgherardini7@smh.com.au', '9f7864d57a17173c4cbc89b47d444008', 'Rina', 'Uppett', 'Gherardini', true, '2001-05-17', '972-120-8839', 8);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('mpemberton8@blogger.com', 'a30fb6fd415e75490367b74ef93cefae', 'Mari', 'Busse', 'Pemberton', true, '2002-07-07', '282-515-6172', 9);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('achallener9@pinterest.com', '1ddd0eb2997ae0cabd69bb3e163cf4dc', 'Aloysius', 'Elener', 'Challener', false, '2004-11-19', '365-632-5592', 10);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('bbratchera@oakley.com', '20e553d1da7838f5003397190dc91090', 'Bastian', 'Papachristophorou', 'Bratcher', true, '2004-05-06', '795-540-1040', 11);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('rchupinb@feedburner.com', '502e29d797e0e5eca89115c2be04c59e', 'Roda', 'Botger', 'Chupin', false, '2002-11-10', '968-212-6747', 12);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('npriterc@tuttocitta.it', '9056ba399a855654079fddf78c47d4da', 'Nydia', 'Clues', 'Priter', true, '2004-08-09', '566-986-9390', 13);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('pslymand@google.ru', 'f5c86922890f2f23e67e93c7d186931b', 'Pace', 'Vanns', 'Slyman', false, '2005-08-25', '219-830-2039', 14);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('iberryanne@businessweek.com', 'a4fb6268080fce9cef900c050dba103a', 'Isaak', 'Stockwell', 'Berryann', false, '2005-05-14', '703-525-6426', 15);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('hnatwickf@1688.com', '6016de2235e32175f1ba3072f9802d12', 'Hamnet', 'Tampling', 'Natwick', true, '2001-11-15', '908-304-7736', 16);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('nglynng@comsenz.com', 'e1be3e9943c9aaa7096d37b7906eb7a9', 'Nicolina', 'Thickens', 'Glynn', true, '2000-10-31', '876-205-7077', 17);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('evanth@mail.ru', '95890d5ef52537d74631de67d8cd49da', 'Eada', 'Hopfer', 'Vant', true, '2004-12-22', '392-800-8422', 18);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('mridderi@ning.com', 'b750a75e4307caa6f5785f683c674407', 'Maurizio', 'Puttergill', 'Ridder', true, '2002-10-20', '989-893-5046', 19);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('ojohannessonj@yellowbook.com', '247dac49aab4bc709ac273370d389a29', 'Orren', 'Arrault', 'Johannesson', false, '2005-09-15', '290-104-1974', 20);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('abandiera0@whitehouse.gov', 'f4c85755330e82529c6a60de0f0e48fe', 'Alick', 'Craster', 'Bandiera', false, '1996-09-19', '982-442-7661', 21);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('rgoalley1@cmu.edu', '6ea1a2aaf7d2b1fa364ac62e55c45e69', 'Rosemarie', 'Stanistreet', 'Goalley', true, '1982-04-04', '314-268-7841', 22);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('livanichev2@slate.com', 'c856029b5323cd304c47c4146a3bfe22', 'Lillis', 'Jeffryes', 'Ivanichev', false, '1995-01-01', '162-394-0325', 23);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('cvalentinetti3@odnoklassniki.ru', 'b12089a19da66542dcf46c06babcb691', 'Christy', 'Lydden', 'Valentinetti', false, '1981-04-26', '493-978-3899', 24);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('elindborg4@twitpic.com', '5d9de2a513a986a369b42b2bdc5a24f7', 'Eadie', 'Iliffe', 'Lindborg', true, '1980-08-26', '417-706-0875', 25);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('pcracker5@virginia.edu', '09dcda7bf115d1a59ce2d921b9319c6b', 'Pamella', 'Cressey', 'Cracker', false, '1982-01-08', '188-184-2321', 26);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('cscopes6@howstuffworks.com', '2871ec643f8897b34c5ee45eb81f44b4', 'Corabel', 'Simonett', 'Scopes', false, '1983-06-11', '186-515-4843', 27);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('tcurd7@tumblr.com', '669915ae9ee8aa031c39e90a60a9b315', 'Tab', 'Abrahamovitz', 'Curd', false, '1987-01-02', '577-572-1104', 28);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('aharvard8@people.com.cn', '86aeb8d4ae6a6b51efeb291c3798f433', 'Allistir', 'Ferrotti', 'Harvard', false, '1996-09-16', '244-649-5529', 29);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('chalfpenny9@vinaora.com', 'ed57bbc3715b74450f16961998cbc2ec', 'Carmelina', 'Espadater', 'Halfpenny', true, '1999-12-04', '244-757-6416', 30);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('acastagnet0@opera.com', 'f5d24a5d164bbbb3a8d99cae84168288', 'Ashien', 'Sleightholme', 'Castagnet', false, '1966-12-17', '325-234-1881', 31);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('pscorton1@arstechnica.com', 'e585afbb79937e2953514499781d3e2b', 'Pavla', 'Abrami', 'Scorton', false, '1966-07-08', '803-677-3380', 32);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('llambrick2@theglobeandmail.com', 'd1cb5c77f09674b318129b8ceddc00b0', 'Lelah', 'Ducket', 'Lambrick', true, '1966-12-05', '204-113-5326', 33);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('aattenborrow3@alexa.com', '04fd541c038f9599fe6fbd339ff79451', 'Ashlen', 'O''Grogane', 'Attenborrow', true, '1978-10-22', '953-664-6795', 34);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('cwetherhead4@newyorker.com', 'cc666fe335f78090d11ea5a2b7e880b8', 'Caralie', 'Donaldson', 'Wetherhead', false, '1963-12-13', '954-831-7492', 35);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('lsancho5@wordpress.org', 'd1cf3952689f7f3a6c3b605d5f9ed942', 'Levin', 'MacGiany', null, false, '1968-04-24', '884-984-3345', 36);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('hminerdo6@de.vu', '95b2b2bc9b1d30f9c6457462100d1cfc', 'Harper', 'Gowdie', null, false, '1978-06-15', '975-596-5490', 37);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('dgoodbody7@wired.com', 'e49c34e26a838a7d490ae831b870b68d', 'Domeniga', 'Leverton', 'Goodbody', false, '1979-07-13', '758-647-9495', 38);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('pkirtley8@abc.net.au', '3633c7f1cb4aa964431407e9c3d874f5', 'Patricio', 'Trowle', 'Kirtley', false, '1974-02-25', '661-452-3500', 39);
insert into user (email, password, first_name, last_name, middle_name, gender, birth_date, phone, address_id) values ('tgorvette9@uiuc.edu', 'ff53a74f633773d25e1cb9909861cb7c', 'Tull', 'Gerrelt', 'Gorvette', true, '1973-10-15', '316-982-8089', 40);


-- INSERT USER CLASSES (students)
insert into user_class (user_id, class_id, role_id) values (1, 1, 5);
insert into user_class (user_id, class_id, role_id) values (2, 1, 5);
insert into user_class (user_id, class_id, role_id) values (3, 1, 5);
insert into user_class (user_id, class_id, role_id) values (4, 1, 5);
insert into user_class (user_id, class_id, role_id) values (5, 1, 5);
insert into user_class (user_id, class_id, role_id) values (6, 2, 5);
insert into user_class (user_id, class_id, role_id) values (7, 2, 5);
insert into user_class (user_id, class_id, role_id) values (8, 2, 5);
insert into user_class (user_id, class_id, role_id) values (9, 2, 5);
insert into user_class (user_id, class_id, role_id) values (10, 2, 5);
insert into user_class (user_id, class_id, role_id) values (11, 3, 5);
insert into user_class (user_id, class_id, role_id) values (12, 3, 5);
insert into user_class (user_id, class_id, role_id) values (13, 3, 5);
insert into user_class (user_id, class_id, role_id) values (14, 3, 5);
insert into user_class (user_id, class_id, role_id) values (15, 3, 5);
insert into user_class (user_id, class_id, role_id) values (16, 4, 5);
insert into user_class (user_id, class_id, role_id) values (17, 4, 5);
insert into user_class (user_id, class_id, role_id) values (18, 4, 5);
insert into user_class (user_id, class_id, role_id) values (19, 4, 5);
insert into user_class (user_id, class_id, role_id) values (20, 4, 5);

-- INSERT USER CLASSES (curators)
insert into user_class (user_id, class_id, role_id) values (21, 1, 2);
insert into user_class (user_id, class_id, role_id) values (22, 2, 2);
insert into user_class (user_id, class_id, role_id) values (23, 3, 2);
insert into user_class (user_id, class_id, role_id) values (24, 4, 2);

-- INSERT USER CLASSES (curators)
insert into user_class (user_id, class_id, role_id) values (25, 1, 3);
insert into user_class (user_id, class_id, role_id) values (26, 2, 3);
insert into user_class (user_id, class_id, role_id) values (27, 3, 3);
insert into user_class (user_id, class_id, role_id) values (28, 4, 3);

-- INSERT USER CLASSES (teachers)
insert into user_class (user_id, class_id, role_id) values (30, 1, 1);
insert into user_class (user_id, class_id, role_id) values (31, 2, 1);
insert into user_class (user_id, class_id, role_id) values (32, 3, 1);
insert into user_class (user_id, class_id, role_id) values (33, 4, 1);

-- INSERT USER CLASES (headmans)
insert into user_class (user_id, class_id, role_id) values (1, 1, 4);
insert into user_class (user_id, class_id, role_id) values (6, 2, 4);
insert into user_class (user_id, class_id, role_id) values (11, 3, 4);
insert into user_class (user_id, class_id, role_id) values (16, 4, 4);

-- INSERT CLUB PARTICIPANTS
insert into user_club_role (user_id, role_id) values (1, 20);
insert into user_club_role (user_id, role_id) values (2, 19);
insert into user_club_role (user_id, role_id) values (3, 18);
insert into user_club_role (user_id, role_id) values (4, 17);
insert into user_club_role (user_id, role_id) values (5, 16);
insert into user_club_role (user_id, role_id) values (6, 15);
insert into user_club_role (user_id, role_id) values (7, 14);
insert into user_club_role (user_id, role_id) values (8, 13);
insert into user_club_role (user_id, role_id) values (9, 12);
insert into user_club_role (user_id, role_id) values (10, 11);
insert into user_club_role (user_id, role_id) values (11, 10);
insert into user_club_role (user_id, role_id) values (12, 9);
insert into user_club_role (user_id, role_id) values (13, 8);
insert into user_club_role (user_id, role_id) values (14, 7);
insert into user_club_role (user_id, role_id) values (15, 6);
insert into user_club_role (user_id, role_id) values (16, 5);
insert into user_club_role (user_id, role_id) values (17, 4);
insert into user_club_role (user_id, role_id) values (18, 3);
insert into user_club_role (user_id, role_id) values (19, 2);
insert into user_club_role (user_id, role_id) values (20, 1);

-- INSERT USER BOOK
insert into user_book (user_id, book_id, rent_date) values (11, 11, '2020-09-20');
insert into user_book (user_id, book_id, rent_date) values (20, 12, '2020-09-03');
insert into user_book (user_id, book_id, rent_date) values (13, 13, '2020-09-17');
insert into user_book (user_id, book_id, rent_date) values (2, 14, '2020-10-02');
insert into user_book (user_id, book_id, rent_date) values (1, 15, '2020-09-25');

-- INSERT USER COMPETITION
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (6, 1, 19, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (7, 2, 16, 2);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (8, 3, 3, 3);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (9, 4, 4, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (10, 5, 8, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (11, 6, 20, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (12, 7, 1, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (13, 8, 5, 2);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (14, 9, 17, 4);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (15, 10, 19, 2);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (16, 11, 19, 3);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (17, 12, 19, 3);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (18, 13, 22, 1);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (19, 14, 20, 1);
insert into user_competition (user_id, competition_id, lesson_id, prize_id) values (20, 15, 18, 3);

-- INSERT LESSON SCHEDULE
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (13, 3, 35, 6, 8, '10:00', '10:45');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (10, 4, 31, 7, 7, '14:40', '15:25');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (22, 1, 31, 4, 8, '9:30', '10:15');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (3, 2, 40, 6, 11, '9:10', '17:39');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (10, 4, 40, 1, 3, '11:50', '12:35');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (12, 4, 38, 4, 9, '10:30', '12:00');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (18, 4, 38, 6, 9, '16:45', '17:30');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (19, 1, 35, 3, 5, '15:50', '16:40');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (2, 3, 34, 2, 10, '15:30', '16:10');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (12, 2, 38, 4, 10, '9:10', '10:30');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (3, 1, 40, 2, 11, '12:50', '13:30');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (16, 4, 39, 7, 11, '13:30', '14:10');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (21, 4, 32, 4, 6, '9:00', '10:30');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (9, 2, 40, 7, 11, '14:50', '15:40');
insert into lesson_schedule (lesson_id, class_id, teacher_id, day_of_week_id, classroom_id, start_time, finish_time) values (1, 4, 30, 3, 2, '9:15', '10:00');

-- INSERT DETAILED INFO ABOUT TEACHERS
insert into teacher (user_id, lesson_id, carier_start, category_id) values (31, 8, '1980-04-06', 3);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (32, 14, '1985-10-28', 1);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (33, 15, '1980-05-24', 2);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (34, 1, '1987-09-24', 3);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (35, 5, '1986-02-28', 3);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (36, 1, '1989-09-19', 5);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (37, 14, '1994-10-01', 5);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (38, 18, '1996-02-07', 1);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (39, 9, '1995-06-22', 6);
insert into teacher (user_id, lesson_id, carier_start, category_id) values (40, 16, '1983-01-12', 4);
