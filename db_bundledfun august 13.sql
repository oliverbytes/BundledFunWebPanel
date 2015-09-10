-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2012 at 09:10 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_bundledfun`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_groups` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_groups`
--

INSERT INTO `tbl_groups` (`id`, `name`, `username`, `password`) VALUES
(0, 'Default', 'default', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(30) NOT NULL,
  `text` text NOT NULL,
  `difficulty` text NOT NULL,
  `answer` text NOT NULL,
  `choice_a` text NOT NULL,
  `choice_b` text NOT NULL,
  `choice_c` text NOT NULL,
  `file` text NOT NULL,
  `type` text NOT NULL,
  `points` int(30) NOT NULL,
  `timer` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `group_id`, `text`, `difficulty`, `answer`, `choice_a`, `choice_b`, `choice_c`, `file`, `type`, `points`, `timer`) VALUES
(3, 0, ' Part of speech that expresses an action word.', 'easy', 'Verb', 'Adverb', 'Verb', 'Adjective', '', 'text', 10, 10),
(4, 0, 'It is the process of exchanging ideas as to transmit message from one person to\r\nanother.', 'easy', 'communication', 'opinion', 'conclusion', 'communication', '', 'text', 20, 20),
(6, 0, ' It is a word or group of words that expresses a complete thought', 'easy', ' sentence', ' word', ' sentence', ' phrase', '', 'text', 50, 10),
(7, 0, ' It is a figure of speech that gives human qualities to an object, animals and ideas', 'easy', ' personification', ' simile', ' metaphor', ' personification', '', 'text', 30, 10),
(8, 0, ' It makes a direct comparison of two unlike object that have something in common', 'easy', ' metaphor', ' metaphor', ' personification', ' irony', '', 'text', 20, 20),
(9, 0, ' Part of Speech that describe a noun or a pronoun.', 'easy', ' Adjective', ' Verb', ' Adjective', ' Preposition', '', 'text', 10, 20),
(10, 0, ' It is aName of person, place or thing, it is also a part of speech', 'easy', ' noun', ' .noun', ' pronoun', ' verb', '', 'text', 20, 20),
(11, 0, ' it is a part of speech that substitutes a noun', 'easy', ' pronoun', ' noun', ' pronoun', ' adjective', '', 'text', 20, 10),
(12, 0, ' Who is the author of the Romeo and Juliet?', 'easy', ' William Shakespeare', 'Leonardo da vinci', ' William Shakespeare', ' Picasso', '', 'text', 30, 20),
(13, 0, ' What is the Square Root of 49?', 'easy', ' 7', ' 8', ' 6', ' 9', '', 'text', 10, 10),
(14, 0, ' If 8x = 56 . What is x?', 'easy', '7', '6', '9', '7', '', 'text', 20, 10),
(15, 0, ' What is the half of 1/2?', 'easy', ' 1/4', '1/3 ', '1/1 ', '.75', '', 'text', 40, 10),
(16, 0, ' 1 divided by 5 is equal to _?', 'easy', ' 5', ' 4', ' 5', ' 1', '', 'text', 13, 25),
(17, 0, ' These are common beliefs without scientific basis.', 'easy', ' superstitious beliefs', ' scientific study', ' B scientific method', ' superstitious beliefs', '', 'text', 50, 20),
(18, 0, ' It is the amount of matter that an object contains.', 'easy', ' mass', ' mass', ' weight', ' volume', '', 'text', 20, 15),
(19, 0, ' It is the amount of matter in a given object.', 'easy', ' density', ' mass', ' density', ' weight', '', 'text', 50, 7),
(20, 0, ' It is a thin glass tube filled with either alcohol or mercury.', 'easy', ' thermometer', ' binocular', ' microscope', ' thermometer', '', 'text', 20, 10),
(21, 0, ' It is the rate at which velocity changes as an object speeds up , slow down, or\r\nchanges in direction.', 'easy', ' Acceleration', ' Acceleration', ' Density', ' Velocity', '', 'text', 10, 10),
(22, 0, ' It refers to the speed and direction of an object.', 'easy', ' velocity', ' acceleration', ' velocity', ' speed', '', 'text', 50, 10),
(23, 0, ' The first law of motion is also known as .', 'easy', ' inertia', ' object', 'balance', ' inertia', '', 'text', 60, 20),
(24, 0, ' It is the force that always opposes motion between two surfaces that are in contact with each\r\nother.', 'easy', 'friction', ' friction', ' weight', ' gravity', '', 'text', 30, 20),
(25, 0, ' It is the force by which a magnetic source attract or repels other magnetic substance', 'easy', ' magnetic force', ' centripetal force', ' magnetic force', ' nuclear force', '', 'text', 50, 10),
(26, 0, 'Is an American recording artist and entertainer. Born in McComb, Mississippi, and raised in Kentwood, Louisiana, Spears began performing as a child, landing acting roles in stage productions and television shows. ', 'easy', 'Britney Spears', ' Hillary Duff', 'Britney Spears', ' Katy Perry', 'britney.mp4', 'video', 40, 22),
(27, 0, ' is a 2009 Indian comedy film directed by Rajkumar Hirani, with a screenplay by Abhijat Joshi, and produced by Vidhu Vinod Chopra. It was loosely adapted from the novel Five Point Someone by Chetan Bhagat. 3 Idiots stars Aamir Khan, Kareena Kapoor, R. Madhavan, Sharman Joshi, Omi Vaidya, Parikshit Sahni and Boman Irani.', 'easy', ' 3 Idiots', ' My Name is Khan', 'Every Child is Special ', '  3 Idiots', '3idiots.mp4', 'video', 40, 28),
(28, 0, 'Were a series of four suicide attacks that were committed in the United States on September 11, 2001, coordinated to strike the areas of New York City and Washington, D.C.', 'easy', ' 9/11 Attack', ' World War 2', ' World War 3', '  9/11 Attack', '911_attack.mp4', 'video', 30, 20),
(29, 0, 'Is an American business magnate, computer programmer and philanthropist. Gates is the former chief executive and current chairman of Microsoft, the world’s largest personal-computer software company.', 'easy', ' Bill Gates', ' Steve Jobs', '  Bill Gates', ' Steve Ballmer', 'bill_gates.mp4', 'video', 100, 13),
(30, 0, '  is a line of tablet computers designed and marketed by Apple Inc., primarily as a platform for audio-visual media including books, periodicals, movies, music, games, apps and web content.', 'easy', ' iPad', 'Nexus 7 ', 'Transformer Prime ', 'Samsung Galaxy Tab ', 'ipad.mp4', 'video', 50, 29),
(31, 0, 'Is the 44th and current President of the United States. He is the first African American to hold the office. Obama served as a U.S. Senator representing the state of Illinois from January 2005 to November 2008, when he resigned following his victory in the 2008 presidential election.', 'easy', ' Barrack Obama', ' Bill Clinton', ' John Adams', '  Barrack Obama', 'barrack_obama.jpg', 'image', 40, 10),
(32, 0, 'Is a Filipino professional boxer and politician. He is the first eight-division world champion,[5] in which he has won ten world titles, as well as the first to win the Lineal Championship in four different weight classes.', 'easy', 'Manny Pacquiao', ' Manny Pacquiao', ' AJ Banal', ' Bobby Pacquiao', 'manny_pacquiao.jpg', 'image', 30, 14),
(33, 0, 'Is a white marble mausoleum located in Agra, India. It was built by Mughal emperor Shah Jahan in memory of his third wife, Mumtaz Mahal. The Taj Mahal is widely recognized as "the jewel of Muslim art in India and one of the universally admired masterpieces of the world''s heritage".', 'easy', ' Taj Mahal', ' Great Wall of China', '  Taj Mahal', ' The Ruins', 'taj_mahal.jpg', 'image', 20, 10),
(34, 0, 'Is a German-born American actor, producer, and musician. His career began in television in the 1980s and has continued both in television and film since, including comedic, dramatic, and action roles. He is well known for the role of John McClane in the Die Hard series.', 'easy', ' Bruce Willis', ' Will Smith', ' Bruce Willis', ' Brad Pitt', 'bruce_willis.jpg', 'image', 30, 10),
(35, 0, 'Are reptiles of the order Testudines characterised by a special bony or cartilaginous shell developed from their ribs that acts as a shield.', 'easy', ' Turtle', ' Snake', ' Frog', '  Turtle', 'turtle.jpg', 'image', 20, 10),
(36, 0, 'Is a subspecies of the gray wolf (Canis lupus), a member of the Canidae family of the mammilian order Carnivora. The term "domestic dog" is generally used for both domesticated and feral varieties.', 'easy', ' Dog', 'Wolf ', 'Bear ', 'Dog ', 'dog.mp3', 'audio', 30, 10),
(37, 0, 'Is a primate of the Haplorrhini suborder and simian infraorder, either an Old World monkey or a New World monkey, but excluding apes. ', 'easy', ' Monkey', 'Horse ', 'Tarsier ', 'Monkey ', 'monkey.mp3', 'audio', 10, 10),
(38, 0, 'Mayon Volcano, also known as Mount Mayon, is an active volcano in the province of Albay, on the island of Luzon in the Philippines. Renowned as the "perfect cone" because of its almost symmetric conical shape, Mayon forms the northern boundary of Legazpi City, the largest city in terms of population in the Bicol Region. The mountain is a national park and a protected landscape in the country proclaimed as Mayon Volcano Natural Park in the year 2000.', 'easy', '13.264675,123.692322', '', ' ', ' ', '', 'location', 10, 30),
(39, 0, ' The Ruins in Talisay City, Negros Occidental is what remained of the grand mansion that Don Mariano Lacson built, following the death of his first wife, Maria Braga.\r\nBuilt in memory of Maria Braga, the mansion became the residence of Don Mariano and his unmarried children.\r\nToday, it is a tourist attraction for its romantic, yet strong structures. Many interesting tales and facts lie within the walls and posts that remained of the Ruins.', 'easy', '10.710707,122.982845', ' ', ' ', ' ', '', 'location', 50, 30),
(40, 0, ' Rizal Park, also known as Luneta Park or colloquially Luneta, is a historical urban park located in the heart of the city of Manila, Philippines, adjacent to the old walled city of Manila, now Intramuros. Since the Spanish Colonial Era, the park has been a favorite spot for unwinding, socializing, an urban oasis for family picnics on Sundays and holidays. It is one of the major tourist attractions of Manila', 'easy', '14.583459,120.978291', ' ', ' ', ' ', '', 'location', 60, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(30) NOT NULL,
  `user_id` text NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` text NOT NULL,
  `picture` text NOT NULL,
  `high_score` int(30) NOT NULL,
  `time_elapsed` text NOT NULL,
  `correct_answers` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `group_id`, `user_id`, `password`, `name`, `picture`, `high_score`, `time_elapsed`, `correct_answers`) VALUES
(1, 0, 'admin', 'admin', 'Administrator', 'id_admin.jpg', 0, '', 0),
(9, 0, '017-2010-0086', 'oliver', 'Oliver Martinez', 'id_oliver.jpg', 0, '', 0),
(10, 0, '017-2010-0087', 'reyden', 'Reyden Lamig', 'id_reyden.jpg', 0, '', 0),
(11, 0, '017-2010-0088', 'arjay', 'Arjay Valladarez', 'id_arjay.jpg', 0, '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
