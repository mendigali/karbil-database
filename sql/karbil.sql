-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 04:36 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karbil`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `medal` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `year`, `scope`, `name`, `medal`, `subject`, `teacher`, `grade`, `location`) VALUES
(1, 'Katev Bilim Olympiad (KBO)', '2015', 'Республиканская', 'Нурпеисов Олжас Сайранович', 'Бронза', 'Химия', NULL, '10', 'Казахстан'),
(2, 'Олимпиада по общеобразовательным предметам', '2016', 'Областная', 'Нурпеисов Олжас Сайранович', 'Серебро', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(3, 'Олимпиада по общеобразовательным предметам', '2016', 'Республиканская', 'Нурпеисов Олжас Сайранович', 'участник', 'Химия', NULL, '10', 'Казахстан'),
(4, 'Katev Bilim Olympiad (KBO)', '2016', 'Республиканская', 'Нурпеисов Олжас Сайранович', 'Серебро', 'Химия', NULL, '10', 'Казахстан'),
(5, 'Международная олимпиада по химии имени К.Сатпаева', '2016', 'Международная', 'Нурпеисов Олжас Сайранович', 'Бронза', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(6, 'Олимпиада по общеобразовательным предметам', '2017', 'Областная', 'Нурпеисов Олжас Сайранович', 'Золото', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(7, 'Олимпиада по общеобразовательным предметам', '2017', 'Республиканская', 'Нурпеисов Олжас Сайранович', 'Золото', 'Химия', NULL, '10', 'Казахстан'),
(8, 'Международная олимпиада по химии имени Бектурова', '2017', 'Международная', 'Нурпеисов Олжас Сайранович', 'Бронза', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(9, 'Международная олимпиада по химии “Tuymaada”', '2017', 'Международная', 'Нурпеисов Олжас Сайранович', 'Серебро', 'Химия', NULL, '10', NULL),
(10, 'Олимпиада по общеобразовательным предметам', '2018', 'Областная', 'Нурпеисов Олжас Сайранович', 'Золото', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(11, 'Олимпиада по общеобразовательным предметам', '2018', 'Республиканская', 'Нурпеисов Олжас Сайранович', 'Золото', 'Химия', NULL, '10', 'Казахстан'),
(12, 'Международная олимпиада по химии имени Бектурова', '2018', 'Международная', 'Нурпеисов Олжас Сайранович', 'Серебро', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(13, '52 Международная Менделеевская олимпиада по химии', '2018', 'Международная', 'Нурпеисов Олжас Сайранович', 'Бронза', 'Химия', NULL, '10', 'Беларусь, Минск'),
(14, 'Олимпиада по общеобразовательным предметам', '2016', 'Областная', 'Абабаев Ерслан Еркосаевич', 'Бронза', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(15, 'Katev Bilim Olympiad (KBO)', '2016', 'Республиканская', 'Абабаев Ерслан Еркосаевич', 'Золото', 'Химия', NULL, '10', 'Казахстан'),
(16, 'Международная олимпиада по химии имени К.Сатпаева', '2016', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Участник', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(17, 'Интернет-олимпиада «Foxford»', '2016', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Серебро', 'Химия', NULL, '10', NULL),
(18, 'Олимпиада по общеобразовательным предметам', '2017', 'Областная', 'Абабаев Ерслан Еркосаевич', 'Серебро', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(19, 'Олимпиада по общеобразовательным предметам', '2017', 'Республиканская', 'Абабаев Ерслан Еркосаевич', 'Бронза', 'Химия', NULL, '10', 'Казахстан'),
(20, 'Международная олимпиада по химии имени Бектурова', '2017', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Участник', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(21, 'Интернет-олимпиада «Foxford»', '2017', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Бронза', 'Химия', NULL, '10', NULL),
(22, 'Международная олимпиада по химии “Tuymaada”', '2017', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Бронза', 'Химия', NULL, '10', NULL),
(23, 'Олимпиада по общеобразовательным предметам', '2018', 'Областная', 'Абабаев Ерслан Еркосаевич', 'Золото', 'Химия', NULL, '10', 'Казахстан, Караганда'),
(24, 'Олимпиада по общеобразовательным предметам', '2018', 'Республиканская', 'Абабаев Ерслан Еркосаевич', 'Серебро', 'Химия', NULL, '10', 'Казахстан'),
(25, 'Международная олимпиада по химии имени Бектурова', '2018', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Серебро', 'Химия', NULL, '10', 'Казахстан, Павлодар'),
(26, '52 Международная Менделеевская олимпиада по химии', '2018', 'Международная', 'Абабаев Ерслан Еркосаевич', 'Участник', 'Химия', NULL, '10', 'Беларусь, Минск'),
(27, 'Международное соревнование по компьютерным проектам \r\n(информатика) «INFOMATRIX - ASIA»', '2018', 'Международная', 'Кайсар Куанышев', 'Золото', 'Физика', NULL, NULL, 'Казахстан, Алматы'),
(28, 'Международное соревнование по компьютерным проектам \r\n(информатика) «INFOMATRIX - ASIA»', '2018', 'Международная', 'Ержуманов Ердан', 'Золото', 'Английский/География', NULL, NULL, 'Казахстан, Алматы'),
(29, 'Международное соревнование по компьютерным проектам \r\n(информатика) «INFOMATRIX - ASIA»', '2018', 'Международная', 'Смагулов Алишер', 'Золото', 'Физика', NULL, NULL, 'Казахстан, Алматы');

-- --------------------------------------------------------

--
-- Table structure for table `achievement_template`
--

CREATE TABLE `achievement_template` (
  `id` int(11) NOT NULL,
  `ru` varchar(200) DEFAULT NULL,
  `kz` varchar(200) DEFAULT NULL,
  `en` varchar(200) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `administration_roles`
--

CREATE TABLE `administration_roles` (
  `id` int(11) NOT NULL,
  `en` varchar(50) NOT NULL,
  `ru` varchar(50) NOT NULL,
  `kz` varchar(50) NOT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administration_roles`
--

INSERT INTO `administration_roles` (`id`, `en`, `ru`, `kz`, `la`) VALUES
(1, 'Director', 'Директор', 'Директор', ''),
(2, 'Deputy Director', 'Заместитель директора', 'Директордың орынбасары', ''),
(3, 'Dormitory manager', 'Заведующий интернатом', 'Интернат меңгерушісі', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubdate` date NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `text`, `pubdate`, `likes`, `views`, `image`) VALUES
(1, 'first article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas dui id ornare arcu odio ut sem. Ut tortor pretium viverra suspendisse potenti. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Sed augue lacus viverra vitae congue eu consequat ac felis. Tortor posuere ac ut consequat semper viverra nam. Non arcu risus quis varius quam. Pellentesque adipiscing commodo elit at imperdiet dui. Turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Etiam tempor orci eu lobortis elementum nibh. Elementum pulvinar etiam non quam lacus suspendisse. Purus in massa tempor nec feugiat nisl. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Rhoncus dolor purus non enim praesent elementum facilisis leo. Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Malesuada fames ac turpis egestas sed tempus urna.\r\n</br></br>\r\nJusto eget magna fermentum iaculis eu non diam. Imperdiet massa tincidunt nunc pulvinar sapien. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. A diam maecenas sed enim ut sem viverra aliquet. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Nisl purus in mollis nunc sed. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue. Aliquam nulla facilisi cras fermentum odio eu feugiat. Ac odio tempor orci dapibus ultrices in iaculis nunc sed.', '2019-11-27', 12, 4567, 'post1.jpg'),
(2, 'second article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquet lectus proin nibh nisl condimentum. Elit at imperdiet dui accumsan sit amet. Aliquam id diam maecenas ultricies. Lorem dolor sed viverra ipsum nunc aliquet. Gravida neque convallis a cras semper auctor neque vitae. Fermentum et sollicitudin ac orci phasellus. Nulla malesuada pellentesque elit eget gravida cum sociis. Id velit ut tortor pretium viverra suspendisse potenti nullam ac. Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque.\r\n</br></br>\r\nDui nunc mattis enim ut tellus elementum sagittis vitae et. Tincidunt id aliquet risus feugiat in ante metus. Dolor sit amet consectetur adipiscing elit pellentesque. Convallis a cras semper auctor neque vitae tempus. Mauris sit amet massa vitae tortor condimentum. Molestie at elementum eu facilisis sed. Dictum sit amet justo donec enim diam vulputate. Sit amet aliquam id diam maecenas ultricies mi eget. Et tortor at risus viverra adipiscing at in tellus integer. Posuere morbi leo urna molestie. Habitant morbi tristique senectus et netus et malesuada fames. Malesuada fames ac turpis egestas sed.', '2019-11-24', 123, 45, 'post2.jpg'),
(3, 'third article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam etiam erat velit scelerisque in dictum non consectetur. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum. Semper viverra nam libero justo. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. Quis hendrerit dolor magna eget est lorem. Odio tempor orci dapibus ultrices in iaculis nunc sed. Eu feugiat pretium nibh ipsum consequat nisl vel. Sociis natoque penatibus et magnis dis parturient montes. Cursus euismod quis viverra nibh cras pulvinar. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Neque vitae tempus quam pellentesque nec nam aliquam sem et. Risus nec feugiat in fermentum posuere. Odio eu feugiat pretium nibh ipsum consequat nisl vel pretium. Lorem donec massa sapien faucibus. Et malesuada fames ac turpis egestas maecenas pharetra convallis. In fermentum posuere urna nec tincidunt. Vivamus arcu felis bibendum ut tristique et egestas quis ipsum. Penatibus et magnis dis parturient montes nascetur ridiculus.\r\n</br></br>\r\nLorem dolor sed viverra ipsum. Mi quis hendrerit dolor magna eget est. Egestas diam in arcu cursus euismod quis viverra nibh. In ante metus dictum at tempor. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Ridiculus mus mauris vitae ultricies leo. Lectus magna fringilla urna porttitor rhoncus. Urna condimentum mattis pellentesque id nibh. Eu lobortis elementum nibh tellus molestie nunc. Tellus at urna condimentum mattis pellentesque id nibh. Nisi est sit amet facilisis magna etiam.', '2019-11-18', 1234, 456, 'post3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `ru` varchar(255) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `finish` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `mezun_year` year(4) NOT NULL,
  `parallel` varchar(1) NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `curator_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `ru` varchar(50) DEFAULT NULL,
  `kz` varchar(50) DEFAULT NULL,
  `en` varchar(50) DEFAULT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `ru`, `kz`, `en`, `la`) VALUES
(1, 'Клуб робототехники', 'Робототехника клубы', 'Robotics club', NULL),
(2, 'Intellectum club', 'Intellectum club', 'Intellectum club', NULL),
(3, 'Клуб скорочтения', 'Жылдам оқу клубы', 'Speed reading club', NULL),
(4, 'Media club', 'Media club', 'Media club', NULL),
(5, 'Клуб дебатов', 'Пікірталас клубы', 'Debate club', NULL),
(6, 'Музыкальный клуб', 'Музыкалық клубы', 'Music club', NULL),
(7, 'Спорт клуб', 'Спорт клубы', 'Sport club', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diplomas`
--

CREATE TABLE `diplomas` (
  `id` int(11) NOT NULL,
  `en` varchar(50) NOT NULL,
  `ru` varchar(50) NOT NULL,
  `kz` varchar(50) NOT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diplomas`
--

INSERT INTO `diplomas` (`id`, `en`, `ru`, `kz`, `la`) VALUES
(1, 'First degree diploma', 'Диплом первой степени', 'Бірінші дәрежелі диплом', ''),
(2, 'Second degree diploma', 'Диплом второй степени', 'Екінші дәрежелі диплом', ''),
(3, 'Third degree diploma', 'Диплом третьей степени', 'Үшінші дәрежелі диплом', ''),
(4, 'Certificate of participation', 'Сертификат за участие', 'Қатысқаны туралы сертификат', '');

-- --------------------------------------------------------

--
-- Table structure for table `enrolees`
--

CREATE TABLE `enrolees` (
  `id` int(11) NOT NULL,
  `current_school` varchar(200) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `pubdate` date NOT NULL DEFAULT current_timestamp(),
  `event_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `text`, `image`, `pubdate`, `event_date`) VALUES
(1, 'Соревнования по баскетболу', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fermentum odio eu feugiat pretium. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Netus et malesuada fames ac turpis. Proin libero nunc consequat interdum varius. Vitae auctor eu augue ut lectus arcu bibendum at varius. Nibh praesent tristique magna sit amet. Ultrices eros in cursus turpis massa. Enim nunc faucibus a pellentesque. Fermentum odio eu feugiat pretium nibh. Maecenas ultricies mi eget mauris. Id neque aliquam vestibulum morbi blandit. Turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet. A diam sollicitudin tempor id eu. Tristique senectus et netus et malesuada. Tristique senectus et netus et malesuada fames ac turpis. Non odio euismod lacinia at quis risus sed. Blandit libero volutpat sed cras. Lacus luctus accumsan tortor posuere.\r\n\r\nAt ultrices mi tempus imperdiet nulla. Tortor at auctor urna nunc id cursus metus. Donec adipiscing tristique risus nec feugiat in fermentum. Malesuada nunc vel risus commodo viverra maecenas. Arcu non sodales neque sodales ut etiam. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Turpis nunc eget lorem dolor. Vitae justo eget magna fermentum iaculis. In ornare quam viverra orci sagittis eu volutpat. Porttitor eget dolor morbi non arcu risus quis varius quam. Mi proin sed libero enim sed faucibus turpis in eu. Enim tortor at auctor urna nunc. Vitae tortor condimentum lacinia quis vel eros donec. Suspendisse faucibus interdum posuere lorem ipsum dolor sit.', 'basketball.jpg', '2020-01-12', '2020-01-19'),
(2, 'Соревнования по шахматам', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fermentum odio eu feugiat pretium. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Netus et malesuada fames ac turpis. Proin libero nunc consequat interdum varius. Vitae auctor eu augue ut lectus arcu bibendum at varius. Nibh praesent tristique magna sit amet. Ultrices eros in cursus turpis massa. Enim nunc faucibus a pellentesque. Fermentum odio eu feugiat pretium nibh. Maecenas ultricies mi eget mauris. Id neque aliquam vestibulum morbi blandit. Turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet. A diam sollicitudin tempor id eu. Tristique senectus et netus et malesuada. Tristique senectus et netus et malesuada fames ac turpis. Non odio euismod lacinia at quis risus sed. Blandit libero volutpat sed cras. Lacus luctus accumsan tortor posuere.\r\n\r\nAt ultrices mi tempus imperdiet nulla. Tortor at auctor urna nunc id cursus metus. Donec adipiscing tristique risus nec feugiat in fermentum. Malesuada nunc vel risus commodo viverra maecenas. Arcu non sodales neque sodales ut etiam. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Turpis nunc eget lorem dolor. Vitae justo eget magna fermentum iaculis. In ornare quam viverra orci sagittis eu volutpat. Porttitor eget dolor morbi non arcu risus quis varius quam. Mi proin sed libero enim sed faucibus turpis in eu. Enim tortor at auctor urna nunc. Vitae tortor condimentum lacinia quis vel eros donec. Suspendisse faucibus interdum posuere lorem ipsum dolor sit.', 'chess.jpg', '2020-01-11', '2020-01-22'),
(3, 'Концерт на день независимости', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fermentum odio eu feugiat pretium. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Netus et malesuada fames ac turpis. Proin libero nunc consequat interdum varius. Vitae auctor eu augue ut lectus arcu bibendum at varius. Nibh praesent tristique magna sit amet. Ultrices eros in cursus turpis massa. Enim nunc faucibus a pellentesque. Fermentum odio eu feugiat pretium nibh. Maecenas ultricies mi eget mauris. Id neque aliquam vestibulum morbi blandit. Turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet. A diam sollicitudin tempor id eu. Tristique senectus et netus et malesuada. Tristique senectus et netus et malesuada fames ac turpis. Non odio euismod lacinia at quis risus sed. Blandit libero volutpat sed cras. Lacus luctus accumsan tortor posuere.\r\n\r\nAt ultrices mi tempus imperdiet nulla. Tortor at auctor urna nunc id cursus metus. Donec adipiscing tristique risus nec feugiat in fermentum. Malesuada nunc vel risus commodo viverra maecenas. Arcu non sodales neque sodales ut etiam. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Turpis nunc eget lorem dolor. Vitae justo eget magna fermentum iaculis. In ornare quam viverra orci sagittis eu volutpat. Porttitor eget dolor morbi non arcu risus quis varius quam. Mi proin sed libero enim sed faucibus turpis in eu. Enim tortor at auctor urna nunc. Vitae tortor condimentum lacinia quis vel eros donec. Suspendisse faucibus interdum posuere lorem ipsum dolor sit.', 'independent.jpg', '2020-01-10', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `interface`
--

CREATE TABLE `interface` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ru` text NOT NULL,
  `kz` text NOT NULL,
  `en` text NOT NULL,
  `la` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interface`
--

INSERT INTO `interface` (`id`, `name`, `ru`, `kz`, `en`, `la`) VALUES
(29, 'index_title', 'БИЛ', 'БИЛ', 'BIL', ''),
(30, 'header_about', 'О нас', 'Біз туралы', 'About us', ''),
(31, 'header_advantage', 'Преимущества', 'Преимущества', 'Advantages', ''),
(32, 'header_admission', 'Поступающим', 'Түсушілерге', 'Admissions', ''),
(33, 'header_rating', 'Наша гордость', 'Бізің мақтанышымыз', 'Our honor', ''),
(34, 'header_event', 'Ближайшие события', 'Ближайшие события', 'Upcoming events', ''),
(35, 'header_blog', 'Блог', 'Блог', 'Blog', ''),
(36, 'intro_title', '\"Білім-инновация\" лицей', '\"Білім-инновация\" лицей', '\"Bilim-innovation\" lyceum', ''),
(37, 'intro_btn', 'Узнать больше', 'Көбірек біліңіз', 'More information', ''),
(38, 'about_head_title', 'О нас', 'Біз туралы', 'About us', ''),
(39, 'about_title', 'Лицей-интернат \"Білім-инновация\" №1', 'Лицей-интернат \"Білім-инновация\" №1', '\"Bilim-innovation\" boarding school №1', ''),
(40, 'about_text', 'Впервые в Казахстане \"Казахско-турецкие\" лицеи открылись в 1992 году,\r\n		решением президентов двух стран, Казахстана и Турции, в городах\r\n		Туркистан и Кокшетау. А в нашем городе он был	 открыт в 1993 году.\r\n		В 2017 году название лицея поменялось на Лицей-интернат \"Білім-инновация\" №1.', 'Впервые в Казахстане \"Казахско-турецкие\" лицеи открылись в 1992 году,\r\n		решением президентов двух стран, Казахстана и Турции, в городах\r\n		Туркистан и Кокшетау. А в нашем городе он был	 открыт в 1993 году.\r\n		В 2017 году название лицея поменялось на Лицей-интернат \"Білім-инновация\" №1.', 'For the first time \"Kazakh-turkish\" lyceums opened in 1992, by decisions of two, Kazakhstan and Turkey, in the cities of Turkestan and Kokshetau. And in our city it was opened in 1993. In 2017 the name of lyceum was changed to \"Bilim-innovation\" boarding school №1', ''),
(41, 'advantage_head_subtitle', 'Чем мы отличаемся', 'Чем мы отличаемся', 'What makes us different', ''),
(42, 'advantage_head_title', 'Преимущества', 'Преимущества', 'Advantages', ''),
(43, 'advantage_post_title_1', 'Учителя', 'Мұғалімдер', 'Teachers', ''),
(44, 'advantage_post_text_1', 'Наши ученики получают знание только от высококвалифицированных учителей.', 'Наши ученики получают знание только от высококвалифицированных учителей.', 'Our students gain knowledge only from qualified teachers.', ''),
(45, 'advantage_post_title_2', 'Выпускники', 'Выпускники', 'Graduate', ''),
(46, 'advantage_post_text_2', 'Выпускники нашего лицея учатся в топовых университетах не только в нашей\r\n		стране, но и за границей.', 'Выпускники нашего лицея учатся в топовых университетах не только в нашей\r\n		стране, но и за границей.', 'Graduates of our lyceum continue studying at the best universities of Kazakhstan as well as abroad.', ''),
(47, 'advantage_post_title_3', 'Воспитание', 'Тәрбие', 'Upbringing', ''),
(48, 'advantage_post_text_3', 'Обучение и  воспитание стоят на одном уровне.В этом заслуга наших учителей и воспитателей.', 'Обучение и  воспитание стоят на одном уровне.В этом заслуга наших учителей и воспитателей.', 'Education and upbringing are both at the equally high level thanks to our teachers and tutors.', ''),
(49, 'advantage_post_title_4', 'Обучение на разных языках', 'Көп тілде білім беру', 'Multi-language education', ''),
(50, 'advantage_post_text_4', 'В лицее - обучение   предметов естественно-математического направления на\r\n		английском языке.', 'В лицее - обучение   предметов естественно-математического направления на\r\n		английском языке.', 'At our lyceum natural sciences are taught in english.', ''),
(51, 'advantage_post_title_5', 'Награды', 'Жетістіктер', 'Achievements', ''),
(52, 'advantage_post_text_5', 'Многие ученики нашего лицея призеры олимпиад разного уровня.', 'Многие ученики нашего лицея призеры олимпиад разного уровня.', 'Many students of our lyceum are champions of prestigious competitions.', ''),
(53, 'advantage_post_title_6', 'Общежитие', 'Жатақхана', 'Dormitary', ''),
(54, 'advantage_post_text_6', 'Также у нас все учащиеся проживают в общежитии. Проживание в нем\r\n		является обязательным.', 'Также у нас все учащиеся проживают в общежитии. Проживание в нем\r\n		является обязательным.', 'Our students have an opportunity to live at the school dormitary if it is needed.', ''),
(55, 'admission_head_subtitle', 'Хотите здесь учиться?', 'Бұл жерде оқығыныз келе ме?', 'Do you want to study here?', ''),
(56, 'admission_head_title', 'Поступление', 'Оқуға түсу', 'Admission', ''),
(57, 'admission_item_element_text_1', '1.Документы', '1.Құжаттар', '1.Documents', ''),
(58, 'admission_item_element_text_2', '2.Конкурс', '2.Конкурс', '2.Competition', ''),
(59, 'admission_item_element_text_3', '3.Учеба', '3.Оқу', '3.Study', ''),
(60, 'documents_head_title', '01.Документы', '01.Құжаттар', '01.Documents', ''),
(61, 'documents_item_title_1', 'I этап', 'I кезең', 'I stage', ''),
(62, 'documents_item_inner_1', 'Заявление на участие в конкурсе', 'Конкурсқа қатысу үшін өтініш', 'Application for participating in a competition', ''),
(63, 'documents_item_inner_2', 'Свидетельство о рождении, ИИН', 'Туу туралы куәлік, ЖИН', 'Birth certificate, IIN', ''),
(64, 'documents_item_inner_3', 'Фото 3х4 (2шт.)', 'Фото 3х4 (2 дана)', 'Photo 3х4 (2 pcs.)', ''),
(65, 'documents_item_title_2', 'II этап', 'II кезең', 'II stage', ''),
(66, 'documents_item_inner_11', 'Справка с места учебы', 'Оқу орнынан анықтама', 'Certificate from your current school', ''),
(67, 'competition_head_title', '02.Конкурс', '02.Конкурс', '02.Competition', ''),
(68, 'competition_item_title', 'I этап', 'I кезең', 'I stage', ''),
(69, 'competition_inner_title', 'Задания первого тура состоят из 75 вопросов.', 'Бірінші кезең 60 сұрақтан тұрады.', 'First round includes 75 question', ''),
(70, 'competition_inner_title_1', 'Математика и логика – 40 вопросов', 'Математика мен логика – 40 сұрақ', 'Math and critical thinking – 40 questions', ''),
(71, 'competition_inner_title_2', 'Казахский язык – 10 вопросов', 'Қазақ тілі – 10 сұрақ', 'Kazakh language – 10 questions', ''),
(72, 'competition_inner_title_3', 'История Казахстана – 10 вопросов', 'Қазақстан тарихы – 10 сұрақ', 'History of Kazakhstan – 10 вопросов', ''),
(73, 'competition_item_title_2', 'II этап', 'II кезең', 'II stage', ''),
(74, 'competition_inner_title_22', 'Задания второго тура состоят из 75 вопросов.', 'Бірінші кезең 75 сұрақтан тұрады.', 'Second round includes 75 questions.', ''),
(75, 'competition_inner_title_31', 'Математика и логика – 55 вопросов', 'Математика и логика – 55 сұрақ', 'Math and critical thinking – 55 questions', ''),
(76, 'competition_inner_title_32', 'Казахский язык – 10 вопросов', 'Қазақ тілі – 10 сұрақ', 'Kazakh language – 10 questions', ''),
(77, 'competition_inner_title_33', 'История Казахстана – 10 вопросов', 'Қазақстан тарихы – 10 сұрақ', 'History of Kazakhstan – 10 questions', ''),
(78, 'map_link', 'Открыть карту', 'Картаны ашу', 'View on map', ''),
(79, 'rating_head_subtitle', 'Лучшие из лучших', 'Лучшие из лучших', 'The best of the best', ''),
(80, 'rating_head_title', 'Наши ученики', 'Біздің оқушылар', 'Our students', ''),
(81, 'rating_header_archive_btn', 'Архив достижений', 'Жетістіктер', 'Archive of achievements', ''),
(82, 'event_head_subtitle', 'Что намечается', 'Не болғалы жатыр', 'Will be soon', ''),
(83, 'event_head_title', 'Ближайшие события', 'Ближайшие события', 'Upcoming events', ''),
(84, 'event_button', 'Узнать больше', 'Узнать больше', 'See more', ''),
(85, 'blog_head_subtitle', 'Наши истории', 'Біздің оқиғалар', 'Our stories', ''),
(86, 'blog_head_title', 'Последние статьи', 'Последние статьи', 'Latest posts', ''),
(87, 'footer_logo_name', 'БИЛ', 'БИЛ', 'BIL', ''),
(88, 'footer_item_header_1', 'Контакты', 'Байланыс мәліметтері', 'Contacts', ''),
(89, 'footer_item_header_2', 'Местоположение', 'Орналасуы', 'Location', ''),
(90, 'footer_map_content', 'г.Караганда, Актюбинская 1А.', 'Қараганды қ., Актюбинская 1А.', 'Karagandy, Aktubinskaya 1A.', ''),
(91, 'footer_item_header', 'Мы в соц.сетях', 'Мы в соц.сетях', 'Our social media', ''),
(92, 'footer_footer', '\"Білім-инновация\" лицей-интернат', '\"Білім-инновация\" лицей-интернат', '\"Bilim-innovation\" boarding school', ''),
(93, 'rus', 'Русский', 'Орысша', 'Russian', ''),
(94, 'eng', 'Английский', 'Ағылшынша', 'English', ''),
(95, 'kaz', 'Казахский', 'Қазақша', 'Kazakh', ''),
(96, 'latn', 'Латиница', 'Латын', 'Latin', ''),
(97, 'table_title', 'Архив достижений', 'Жетістіктер', 'Archive of achievements', ''),
(98, 'table_column1', 'Название', 'Аты', 'Title', ''),
(99, 'table_column2', 'Год', 'Жылы', 'Year', ''),
(100, 'table_column3', 'Масштаб', 'Масштаб', 'Level', ''),
(101, 'table_column4', 'Имя', 'Қатысушуның аты-жөні', 'Name', ''),
(102, 'table_column5', 'Медаль', 'Медаль', 'Medal', ''),
(103, 'table_column6', 'Предмет', 'Пән', 'Subject', ''),
(104, 'table_column7', 'Предмет', 'Сыныбы', 'Class', ''),
(105, 'table_column8', 'Место проведения', 'Өткізу орны', 'Location', ''),
(106, 'login_title', 'Вход', 'Кіру', 'Login', ''),
(107, 'login_pass_recovery', 'Забыли пароль?', 'Құпия сөзді ұмыттыныз ба?', 'Forgot password?', ''),
(108, 'login_signup', 'Зарегистрируйтесь', 'Тіркелініз', 'Sign up', ''),
(109, 'login_enter', 'Войти', 'Кірініз', 'Login', ''),
(110, 'login_ph_login', 'Логин', 'Логин', 'Login', ''),
(111, 'login_ph_pass', 'Пароль', 'Пароль', 'Password', ''),
(112, 'event_title', 'Блог', 'Блог', 'Blog', ''),
(113, 'main_title', 'Регистрация', 'Тіркелу', 'Registration', ''),
(114, 'main_type', 'Тип пользователя', 'Пайдаланушының түрі', 'User type', ''),
(115, 'main_teacher', 'Учитель', 'Оқушы', 'Teacher', ''),
(116, 'main_student', 'Ученик', 'Мұғалім', 'Student', ''),
(117, 'main_continue', 'Продолжить', 'Жалғастыру', 'Continue', '');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `kz` varchar(50) DEFAULT NULL,
  `la` varchar(50) DEFAULT NULL,
  `ru` varchar(50) DEFAULT NULL,
  `en` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `kz`, `la`, `ru`, `en`) VALUES
(1, 'Информатика', NULL, 'Информатика', 'ICT'),
(2, 'Химия', NULL, 'Химия', 'Chemistry'),
(3, 'Физика', NULL, 'Физика', 'Physics'),
(4, 'Биология', NULL, 'Биология', 'Biology'),
(5, 'Математика', NULL, 'Математика', 'Math'),
(6, 'География', NULL, 'География', 'Geography'),
(7, 'Қазақстан тарихы', NULL, 'История Казахстана', 'History of Kazakhstan'),
(8, 'Дүниежүзі тарихы', NULL, 'Всемирная история', 'World history'),
(9, 'Ағылшын тілі', NULL, 'Английский язык', 'English language'),
(10, 'Орыс тілі', NULL, 'Русский язык', 'Russian language'),
(11, 'Қазақ тілі', NULL, 'Казахский язык', 'Kazakh language'),
(12, 'Неміс тілі', NULL, 'Немецкий язык', 'German language'),
(13, 'Адам. Қоғам. Құқық', NULL, 'Человек. Общество. Право', 'Human. Society. Right'),
(14, 'Абайтану', NULL, 'Абайтану', 'Abaytanu'),
(15, 'Дене шынықтыру', NULL, 'Физическая культура', 'Physical education'),
(16, 'Қазақ әдебиеті', NULL, 'Казахская литература', 'Kazakh literature'),
(17, 'Орыс әдебиеті', NULL, 'Русская литература', 'Russian literature'),
(18, 'Алғашқы әскери дайындық', NULL, 'Начальная военная подготовка', 'Basic military training'),
(19, 'Түрік тілі', NULL, 'Турецкий язык', 'Turkish language'),
(20, 'Дінтану', NULL, 'Религоведение', 'Religious studies'),
(21, 'Өзін өзі тану', NULL, 'Самопознание', 'Self-knowledge'),
(22, 'Эссе', NULL, 'Эссе', 'Essay'),
(23, 'PBL', NULL, 'PBL', 'PBL'),
(24, 'Кәсіби бизнес', NULL, 'Профессиональный бизнес', 'Professional business');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `ru` varchar(50) DEFAULT NULL,
  `kz` varchar(50) DEFAULT NULL,
  `en` varchar(50) DEFAULT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `ru`, `kz`, `en`, `la`) VALUES
(1, 'Международный', 'Халықаралық', 'International', ''),
(2, 'Республиканский', 'Республикалық', 'Republican', ''),
(3, 'Областной', 'Аймақтық', 'Regional', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `olympiad_id` int(11) NOT NULL DEFAULT 0,
  `joined_karbil` date NOT NULL,
  `left_karbil` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `user_id` int(11) NOT NULL,
  `career_start` date DEFAULT NULL,
  `karbil_start` date DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_categories`
--

CREATE TABLE `teacher_categories` (
  `id` int(11) NOT NULL,
  `en` varchar(50) DEFAULT NULL,
  `ru` varchar(50) DEFAULT NULL,
  `kz` varchar(50) DEFAULT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_categories`
--

INSERT INTO `teacher_categories` (`id`, `en`, `ru`, `kz`, `la`) VALUES
(1, 'Without category', 'Без категории', 'Санатсыз', ''),
(2, 'Highest', 'Высшая', 'Жоғары', ''),
(3, 'Teacher-researcher', 'Педагог-исследователь', 'Педагог-зерттеуші', ''),
(4, 'Teacher-expert', 'Педагог-эксперт', 'Педагог-сарапшы', ''),
(5, 'Teacher-moderator', 'Педагог-модератор', 'Педагог-модератор', ''),
(6, 'Teacher-master', 'Педагог-мастер', 'Педагог-мастер', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `preferred_language` varchar(2) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type_id`, `email`, `password`, `first_name`, `last_name`, `middle_name`, `gender`, `birthday`, `preferred_language`, `register_date`, `last_seen`) VALUES
(1, 1, 'test@gmail.com', 'qwerty123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_club`
--

CREATE TABLE `user_club` (
  `user_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_lesson`
--

CREATE TABLE `user_lesson` (
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `ru` varchar(50) DEFAULT NULL,
  `kz` varchar(50) DEFAULT NULL,
  `en` varchar(50) DEFAULT NULL,
  `la` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievement_template`
--
ALTER TABLE `achievement_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_roles`
--
ALTER TABLE `administration_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diplomas`
--
ALTER TABLE `diplomas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolees`
--
ALTER TABLE `enrolees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interface`
--
ALTER TABLE `interface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `teacher_categories`
--
ALTER TABLE `teacher_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_club`
--
ALTER TABLE `user_club`
  ADD PRIMARY KEY (`user_id`,`club_id`);

--
-- Indexes for table `user_lesson`
--
ALTER TABLE `user_lesson`
  ADD PRIMARY KEY (`user_id`,`lesson_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `achievement_template`
--
ALTER TABLE `achievement_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administration_roles`
--
ALTER TABLE `administration_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diplomas`
--
ALTER TABLE `diplomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrolees`
--
ALTER TABLE `enrolees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interface`
--
ALTER TABLE `interface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_categories`
--
ALTER TABLE `teacher_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
