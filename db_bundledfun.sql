-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2012 at 11:49 AM
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
  `description` text NOT NULL,
  `banner` text NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_groups`
--

INSERT INTO `tbl_groups` (`id`, `name`, `description`, `banner`, `date_added`) VALUES
(0, 'God', 'This is an untouchable group. Only devs can see this.', '', '2012-09-29'),
(1, 'Default', 'This is the group by the developers of BundledFun.', '', '2012-09-29'),
(10, 'notredame', 'This group is private and exclusively for Notre Dame Students only.', '', '0000-00-00'),
(27, 'thegleeclub', 'Learn to familiarize more music.', '', '0000-00-00'),
(28, 'movies', 'Take the best quiz about movies.', '', '0000-00-00'),
(29, 'sti', 'This is an STI Group', '', '0000-00-00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `group_id`, `text`, `difficulty`, `answer`, `choice_a`, `choice_b`, `choice_c`, `file`, `type`, `points`, `timer`) VALUES
(3, 9, ' Part of speech that expresses an action word.', 'hard', 'Verb', 'Adverb', 'Verb', 'Adjective', '', 'text', 1, 60),
(4, 1, 'It is the process of exchanging ideas as to transmit message from one person to\r\nanother.', 'easy', 'communication', 'opinion', 'conclusion', 'communication', '', 'text', 1, 60),
(6, 1, ' It is a word or group of words that expresses a complete thought', 'easy', ' sentence', ' word', ' sentence', ' phrase', '', 'text', 1, 60),
(7, 1, ' It is a figure of speech that gives human qualities to an object, animals and ideas', 'easy', ' personification', ' simile', ' metaphor', ' personification', '', 'text', 1, 60),
(8, 1, ' It makes a direct comparison of two unlike object that have something in common', 'easy', ' metaphor', ' metaphor', ' personification', ' irony', '', 'text', 1, 60),
(9, 1, ' Part of Speech that describe a noun or a pronoun.', 'easy', ' Adjective', ' Verb', ' Adjective', ' Preposition', '', 'text', 1, 60),
(10, 1, ' It is aName of person, place or thing, it is also a part of speech', 'easy', ' noun', ' .noun', ' pronoun', ' verb', '', 'text', 1, 60),
(11, 1, ' it is a part of speech that substitutes a noun', 'easy', ' pronoun', ' noun', ' pronoun', ' adjective', '', 'text', 1, 60),
(12, 1, ' Who is the author of the Romeo and Juliet?', 'easy', ' William Shakespeare', 'Leonardo da vinci', ' William Shakespeare', ' Picasso', '', 'text', 1, 60),
(13, 1, ' What is the Square Root of 49?', 'easy', ' 7', ' 8', ' 7', ' 9', '', 'text', 1, 60),
(14, 1, ' If 8x = 56 . What is x?', 'easy', '7', '6', '9', '7', '', 'text', 1, 60),
(15, 1, ' What is the half of 1/2?', 'easy', ' 1/4', '1/3 ', '1/1 ', '.75', '', 'text', 1, 60),
(16, 1, ' 1 divided by 5 is equal to _?', '1', ' 5', ' 4', ' 5', ' 1', '', 'text', 1, 60),
(17, 1, ' These are common beliefs without scientific basis.', 'easy', ' superstitious beliefs', ' scientific study', ' B scientific method', ' superstitious beliefs', '', 'text', 1, 60),
(18, 1, ' It is the amount of matter that an object contains.', 'easy', ' mass', ' mass', ' weight', ' volume', '', 'text', 1, 60),
(19, 1, ' It is the amount of matter in a given object.', 'easy', ' density', ' mass', ' density', ' weight', '', 'text', 1, 60),
(20, 1, ' It is a thin glass tube filled with either alcohol or mercury.', 'easy', ' thermometer', ' binocular', ' microscope', ' thermometer', '', 'text', 1, 60),
(21, 1, ' It is the rate at which velocity changes as an object speeds up , slow down, or\r\nchanges in direction.', 'easy', ' Acceleration', ' Acceleration', ' Density', ' Velocity', '', 'text', 1, 60),
(22, 1, ' It refers to the speed and direction of an object.', 'easy', ' velocity', ' acceleration', ' velocity', ' speed', '', 'text', 1, 60),
(23, 1, ' The first law of motion is also known as .', 'easy', ' inertia', ' object', 'balance', ' inertia', '', 'text', 1, 60),
(24, 1, ' It is the force that always opposes motion between two surfaces that are in contact with each\r\nother.', 'easy', 'friction', ' friction', ' weight', ' gravity', '', 'text', 1, 60),
(25, 1, ' It is the force by which a magnetic source attract or repels other magnetic substance', '1', ' magnetic force', ' centripetal force', ' magnetic force', ' nuclear force', 'britney.mp4', 'text', 1, 60),
(31, 1, 'Is the 44th and current President of the United States. He is the first African American to hold the office. Obama served as a U.S. Senator representing the state of Illinois from January 2005 to November 2008, when he resigned following his victory in the 2008 presidential election.', 'easy', ' Barrack Obama', ' Bill Clinton', ' John Adams', '  Barrack Obama', 'barrack_obama.jpg', 'image', 1, 60),
(32, 1, 'Is a Filipino professional boxer and politician. He is the first eight-division world champion,[5] in which he has won ten world titles, as well as the first to win the Lineal Championship in four different weight classes.', 'easy', 'Manny Pacquiao', ' Manny Pacquiao', ' AJ Banal', ' Bobby Pacquiao', 'manny_pacquiao.jpg', 'image', 1, 60),
(33, 1, 'Is a white marble mausoleum located in Agra, India. It was built by Mughal emperor Shah Jahan in memory of his third wife, Mumtaz Mahal. The Taj Mahal is widely recognized as "the jewel of Muslim art in India and one of the universally admired masterpieces of the world''s heritage".', 'easy', ' Taj Mahal', ' Great Wall of China', '  Taj Mahal', ' The Ruins', 'taj_mahal.jpg', 'image', 1, 60),
(34, 1, 'Is a German-born American actor, producer, and musician. His career began in television in the 1980s and has continued both in television and film since, including comedic, dramatic, and action roles. He is well known for the role of John McClane in the Die Hard series.', 'easy', ' Bruce Willis', ' Will Smith', ' Bruce Willis', ' Brad Pitt', 'bruce_willis.jpg', 'image', 1, 60),
(35, 1, 'Are reptiles of the order Testudines characterised by a special bony or cartilaginous shell developed from their ribs that acts as a shield.', 'easy', ' Turtle', ' Snake', ' Frog', '  Turtle', 'turtle.jpg', 'image', 1, 60),
(41, 1, 'Is an American multinational computer software company founded in 1982 and headquartered in San Jose, California, United States.', 'easy', 'Adobe Systems', 'Gimp', 'Microsoft', 'Adobe Systems', 'adobe.png', 'image', 1, 60),
(42, 1, ' Is an American multinational semiconductor company based in Sunnyvale, California, that develops computer processors and related technologies for commercial and consumer markets.', 'easy', 'AMD', 'Intel', 'Samsung', 'AMD', 'adobe.png', 'image', 1, 60),
(43, 1, 'Is a Linux-based operating system for mobile devices such as smartphones and tablet computers. It is developed by the Open Handset Alliance, led by Google.', 'easy', 'Android', 'Ubuntu', 'Firefox OS', 'Android', 'android.png', 'image', 1, 60),
(44, 1, 'Is a German multinational and family owned antivirus software company.', 'easy', 'Avira', 'AVG', 'Avira', 'Norton', 'avira.png', 'image', 1, 60),
(45, 1, 'Is a blog-publishing service that allows private or multi-user blogs with time-stamped entries. It was created by Pyra Labs, which was bought by Google in 2003.', 'easy', 'Blogger', 'Wordpress', 'Blogger', 'Joomla', 'blogger.png', 'image', 1, 60),
(46, 1, 'Is the open source web browser project from which Google Chrome draws its source code.', 'easy', 'Chromium Browser', 'Internet Explorer', 'Google Chrome', 'Firefox', 'chromium.png', 'image', 1, 60),
(47, 1, 'Is an American multinational automaker headquartered in Dearborn, Michigan, a suburb of Detroit.', 'easy', 'Ford', 'Mazda', 'Ferrari', 'Ford', 'ford.png', 'image', 1, 60),
(48, 1, 'Is a Japanese public multinational corporation primarily known as a manufacturer of automobiles and motorcycles.', 'easy', 'Honda', 'Suzuki', 'Honda', 'Isuzu', 'honda.png', 'image', 1, 60),
(49, 1, 'Is a media player computer program used for playing, downloading, saving, and organizing digital Songs and Trailers files on desktop or laptop personal computers.', 'easy', 'iTunes', 'VLC Player', 'iTunes', 'Windows Media Player', 'itunes.png', 'image', 1, 60),
(50, 1, 'Is a programming language originally developed by James Gosling at Sun Microsystems (which has since merged into Oracle Corporation) and released in 1995 as a core component of Sun Microsystems'' Java platform.', 'easy', 'Java', 'Javascript', 'Java', 'C++', 'java.png', 'image', 1, 60),
(51, 1, 'Is a non-free commercial spreadsheet application written and distributed by Microsoft for Microsoft Windows and Mac OS X.', 'easy', 'Microsoft Excel', 'Microsoft Word', 'Microsoft Excel', 'Microsoft Powerpoint', 'msexcel.png', 'image', 1, 60),
(52, 1, 'Is the name of a proprietary commercial software presentation program developed by Microsoft.', 'easy', 'Microsoft PowerPoint', 'Microsoft Word', 'Microsoft OneNote', 'Microsoft PowerPoint', 'mspowerpoint.png', 'image', 1, 60),
(53, 1, 'Is a mobile operating system based on a Linux kernel, initially developed by Palm, which was later acquired by Hewlett-Packard.', 'easy', 'WebOS', 'WebOS', 'Symbian', 'Windows Phone', 'webos.png', 'image', 1, 60),
(54, 1, 'Is a Swedish Songs streaming service offering digitally restricted streaming of selected Songs from a range of major and independent record labels, including Sony, EMI, Warner Songs Group, and Universal.', 'easy', 'Spotify', 'Mog', 'Spotify', 'Rdio', 'spotify.png', 'image', 1, 60),
(55, 1, 'Is a mobile operating system developed by Microsoft, and is the successor to its Windows Mobile platform.', 'easy', 'Windows Phone', 'Android', 'WebOS', 'Windows Phone', 'windows_phone.png', 'image', 1, 60),
(56, 1, 'It is the fifth and the latest revision of the HTML standard.', 'easy', 'HTML5', 'HTML4', 'HTML5', 'HTML6', 'html5.png', 'image', 1, 60),
(61, 1, 'The film''s story is set three years after the events of the second Transformers film', 'easy', 'Dark of the Moon', 'Revenge of the Fallen', 'Megatron Returns', 'Dark of the Moon', 'dark-of-the-moon.mp4', 'video', 1, 60),
(62, 1, 'Is the lead single by Akon from his fourth studio album, Stadium. The song was written by Akon, David Guetta and Sandy Wilhelm, and produced by David Guetta and Sandy Vee.', 'easy', 'Angel', 'Lonely', 'Angel', 'Don''t Matter', 'angel.mp3', 'audio', 1, 60),
(63, 1, 'Is the fourth studio album by American singer-songwriter David Archuleta. The album is composed of covers of Filipino songs and was released on March 26, 2012[2] exclusively in the Philippines.', 'hard', 'Forevermore', 'Forever', 'Forevermore', 'Crush', 'forevermore.mp3', 'audio', 100, 60),
(64, 1, 'Is a debut single by American singer-songwriter Bruno Mars, and is the lead single from his debut studio album, Doo-Wops & Hooligans.', 'hard', 'Just the Way You Are', 'The Lazy Song', 'Nothing On You', 'Just the Way You Are', 'just.mp3', 'audio', 1, 60),
(67, 1, 'Served as the first single from Irish singer/songwriter Ronan Keating''s second studio album, Destination.', 'hard', 'If Tomorrow Never Comes', 'If Tomorrow Never Comes', 'If Yesterday Never Comes', 'If The Year Never Comes', 'if-tomorrow.mp3', 'audio', 1, 60),
(68, 1, 'Is a song by English singer-songwriter Jessie J, featuring American rapper B.o.B.', 'hard', 'Price Tag', 'Domino', 'Price Tag', 'Dominoes', 'price-tag.mp3', 'audio', 1, 60),
(69, 1, 'A song by goteye.', 'hard', 'Somebody That I Used to Know', 'Somebody That You Used to Know', 'Somebody That We Used to Know', 'Somebody That I Used to Know', 'somebody-that-i-used-to-know.mp3', 'audio', 1, 60),
(71, 8, 'XXXXXXXXXX', '1', 'xxxxxxxxxxx', '232323', 'asdasd', '232323', '', 'text', 234, 34),
(72, 9, 'XXXXXXXXX', 'hard', 'xxxxx', 'xxxxx', 'ssss', 'dddddd', 'IMG_000004041.jpg', 'image', 23, 23),
(73, 10, 'Part of speech that expresses an action word.', 'easy', 'verb', 'verb', 'noun', 'pronoun', '', 'text', 1, 20),
(74, 10, 'It is the process of exchanging ideas as to transmit message from one person to another.', 'easy', 'communication', 'conclusion', 'opinion', 'communication', '', 'text', 1, 20),
(75, 10, 'It is a word or group of words that expresses a complete thought', 'easy', 'sentence', 'phrase', 'paragraph', 'sentence', '', 'text', 1, 20),
(76, 10, 'It is a figure of speech that gives human qualities to an object, animals and ideas', 'easy', 'personification', 'irony', 'personification', 'metaphor', '', 'text', 1, 20),
(77, 10, 'It makes a direct comparison of two unlike object that have something in common', 'easy', 'metaphor', 'irony', 'simile', 'metaphor', '', 'text', 1, 20),
(78, 10, '* Part of Speech that describe a noun or a pronoun.', 'easy', 'Adjective', 'Adjective', 'Verbconjunction', 'Preposition', '', 'text', 1, 20),
(79, 10, 'It is aName of person, place or thing, it is also a part of speech', 'easy', 'noun', 'noun', 'pronoun', 'verb', '', 'text', 1, 20),
(80, 10, '* it is a part of speech that substitutes a noun', 'easy', 'pronoun', 'noun', 'adjective', 'pronoun', '', 'text', 1, 20),
(81, 10, 'Who is the author of the Romeo and Juliet?', 'easy', 'William Shakespeare', 'Jose Rizal', 'Picasso', 'William Shakespeare', '', 'text', 1, 20),
(82, 10, 'What is the Square Root of 49?', 'easy', '7', '6', '7', '9', '', 'text', 1, 20),
(83, 10, 'If 8x = 56 . What is x?', 'easy', '7', '5', '4', '7', '', 'text', 1, 20),
(84, 10, 'What is the half of Â½?', 'easy', '1/4', '1/3', '1/4', '1/5', '', 'text', 1, 20),
(85, 10, 'What is the cube root of  125?', 'easy', '5', '1', '2', '5', '', 'text', 1, 20),
(87, 10, 'These are common beliefs without scientific basis.', 'easy', 'superstitious beliefs', 'science', 'superstitious beliefs', 'scientific method', '', 'text', 1, 20),
(88, 10, 'It is the amount of  matter that an object contains.', 'easy', 'mass', 'weight', 'mass', 'volume', '', 'text', 1, 20),
(89, 10, 'It is the amount of matter in a given object.', 'easy', 'density', 'density', 'volume', 'weight', '', 'text', 1, 20),
(90, 10, 'It is a thin glass tube filled with either alcohol or mercury.', 'easy', 'thermometer', 'binocular', 'microscope', 'thermometer', '', 'text', 1, 20),
(91, 10, 'It is the rate at which velocity changes as an object speeds up , slow down, or changes in direction.', 'easy', 'Acceleration', 'Speed', 'Velocity', 'Acceleration', '', 'text', 1, 20),
(92, 10, 'It refers to the speed and direction of an object.', 'easy', 'velocity', 'acceleration', 'velocity', 'density', '', 'text', 1, 20),
(93, 10, 'The first law of motion is also known as .', 'easy', 'inertia', 'inertia', 'static', 'object', '', 'text', 1, 20),
(94, 10, 'It is the force that always opposes motion between two surfaces that are in contact with each other.', 'easy', 'friction', 'gravity', 'friction', 'tension ', '', 'text', 1, 20),
(95, 10, 'It is the force by which a magnetic source attract or repels other magnetic substance', 'easy', ' magnetic force', ' magnetic force', 'nuclear force', 'gravitational force', '', 'text', 1, 20),
(96, 10, 'It is the force that acts on an object moving circle.', 'easy', 'centripetal force', 'gravitational force', 'centripetal force', 'nuclear force', '', 'text', 1, 20),
(97, 10, 'It comes the latin word scientia meaning knowledge.', 'easy', 'science', 'sentence', 'superstitious', 'science', '', 'text', 10, 20),
(98, 10, 'What is the meaning of â€œbioâ€?', 'easy', 'life', 'water', 'earth', 'life', '', 'text', 1, 20),
(99, 10, 'Who is the father of medicine?', 'easy', 'Hippocrates', 'Euclid', 'Aristotle', 'Hippocrates', '', 'text', 1, 20),
(100, 10, 'What is the meaning of word  â€œGeoâ€?', 'easy', 'Earth', 'Water', 'Earth', 'Fire', '', 'text', 1, 20),
(101, 10, 'It is a branch of science that deals with the study of heavily bodies.', 'easy', 'Astronomy', 'Astronomy', 'Anthology', 'Anatomy', '', 'text', 1, 20),
(102, 10, 'It is a branch of science that deals with the study of Plants.', 'easy', 'Botany', 'Biology', 'Botany', 'Biometry', '', 'text', 1, 20),
(103, 10, 'It is a branch of science that deals with study of  animals.', 'easy', 'Zoology', 'Zoology', 'Sociology', 'Virology', '', 'text', 1, 20),
(104, 10, 'What is the study of human behaviour?', 'easy', 'Psychology', 'Radiology', 'Psychology', 'Optics', '', 'text', 1, 20),
(105, 10, 'It is the capacity to do work.', 'easy', 'energy', 'speed', 'science', 'energy', '', 'text', 1, 20),
(106, 10, 'It is the process of changing liquids to gas.', 'easy', 'evaporation', 'evaporation', 'condensation', 'fusion', '', 'text', 1, 20),
(107, 10, ' The Land of the Sleeping Giant is?', 'easy', 'China', 'China', 'Singapore', 'Malaysia', '', 'text', 1, 20),
(108, 10, 'The capital of America is?', 'easy', 'Washington DC', 'Washington DC', 'Canada', 'Norway', '', 'text', 1, 20),
(109, 10, 'What country is the Pearl of the Orient Sea?', 'easy', 'Philippines', 'Philippines', 'Japan', 'Korea', '', 'text', 1, 20),
(110, 10, 'Kuala Lumpur is the Capital of ?', 'easy', 'Malaysia', 'Brazil', 'Greece', 'Spain', '', 'text', 1, 20),
(111, 10, 'The Pyramid of Giza is located in?', 'easy', 'Egypt', 'Egypt', 'France', 'Rome', '', 'text', 1, 20),
(112, 10, ' When light bends as it enters a different medium the process is known as what?', 'hard', 'Refraction', 'Refraction', 'Reflection', 'Deflection', '', 'text', 5, 10),
(113, 10, 'Caracas is the capital of', 'easy', 'Venezuela', 'Afghanistan', 'Venezuela', 'Brazil', '', 'text', 1, 20),
(114, 10, 'Madrid is the capital of what country?', 'easy', 'Spain', 'Spain', 'Brazil', 'Kosovo', '', 'text', 1, 20),
(115, 10, 'The famous Vatican City is located in?', 'easy', 'Rome', 'Rome', 'Mongolia', 'Venezuela', '', 'text', 1, 20),
(116, 10, 'The Eiffel tower is located in ?', 'easy', 'France', 'France', 'Canada', 'London', '', 'text', 1, 20),
(117, 10, 'A magnifying glass is what type of lens?', 'hard', 'Convex', 'Concave', 'Convex', 'meniscus', '', 'text', 5, 10),
(118, 10, 'New Delhi is the capital of what country?', 'easy', 'India', ' Saipan', 'India', 'Guam', '', 'text', 1, 20),
(119, 10, ' Electric resistance is typically measured in what units?', 'hard', 'Ohms', 'Watts', 'Joules', 'Ohms', '', 'text', 5, 10),
(120, 10, 'A person who studies physics is known as a?', 'hard', 'Physicist', 'Psychiatrist', 'Physicist', 'Philosophist', '', 'text', 5, 10),
(121, 10, 'Metals expand when heated and do what when cooled?', 'hard', '', 'Contract', 'Compress', 'Freeze', '', 'text', 5, 10),
(122, 10, 'What is the first name of the famous scientist who gave us Newtonâ€™s three laws of motion?', 'hard', 'Isaac', 'James', 'Fred', 'Isaac', '', 'text', 5, 10),
(123, 10, 'It is the oldest university in the philippines and in asia.', 'hard', 'University of Sto. Tomas', 'University of The Philippines', 'University of Sto. Tomas', 'De La Salle Univerity', '', 'text', 5, 10),
(124, 10, 'The Hubble Space Telescope is named after which American astronomer?', 'hard', 'Edwin Hubble', 'Edwin Hubble', 'Edward Hubble', 'Eric Hubble', '', 'text', 5, 10),
(125, 10, 'Who is the first female President in Asia?', 'medium', 'Cory Aquino', 'Miriam Defensor Santiago', 'Gloria Macapagal Arroyo', 'Cory Aquino', '', 'text', 3, 15),
(126, 10, 'The technologically advanced humanoid robot ASIMO is made by which car company?', 'hard', 'Honda', 'Honda', 'Mitsubishi', 'Kawasaki', '', 'text', 5, 10),
(127, 10, 'Who is the first filipina who have more 1 million followers in twitter?', 'medium', 'Anne Curtis', 'Anne Curtis', 'Kim Chui', 'Angel Locsin', '', 'text', 3, 15),
(128, 10, 'He was an English mathematician, philosopher, inventor and mechanical engineer who originated the concept of a programmable computer. Considered as the "father of the computer"', 'hard', 'Charles Babbage', 'Charles Babbage', 'Rene Decartes', 'HIppocrates', '', 'text', 5, 20),
(129, 10, 'It is a social networking website that is  originally designed for college students and now open to anyone. Its founder is Mark Zuckerburg an American computer programmer and Internet Enterprenuer', 'medium', 'Facebook', 'Twitter', 'Facebook', 'Google+', '', 'text', 3, 15),
(130, 10, 'He was the Presidents of The United States of America Serving from 1961 until in his assassination 1963. ', 'easy', 'John F Kenedy', 'John F Kenedy', 'George Washington', ' Abraham Lincoln', '', 'text', 5, 20),
(131, 10, 'What kind of bridge is the Golden Gate Bridge in San Francisco?', 'hard', 'Suspension Bridge', 'Suspension Bridge', 'Arch Bridge', 'Beam Bridge', '', 'text', 5, 10),
(132, 10, 'historically known as manic-depressive disorder, is a psychiatric diagnosis that describes a category of mood disorders defined by the presence of one or more episodes of abnormally elevated energy le', 'hard', 'Bipolar Disorder', 'Multiple Personality Disorder', 'schizophrenia', 'Bipolar Disorder', '', 'text', 5, 20),
(133, 10, 'In electricity, voltage is measured in volts while current is measured in â€¦â€¦.?', 'hard', 'Amperes', 'Watts', 'Joules', 'Amperes', '', 'text', 5, 10),
(134, 10, ' Is the process exchange of thoughts, messages, or information, as by speech, visuals, signals, writing, or behavior. Derived from the Latin word "communis", meaning to share.', 'medium', 'Communication', 'Speaking', 'Talking', 'Communication', '', 'text', 3, 20),
(135, 10, 'Who was the wife of Willlian Shakespears?', 'hard', 'Anne Hathaway', 'Natalie Portman', 'Anne Hathaway', 'Cameron Diaz', '', 'text', 5, 15),
(136, 10, 'Romeo and Juliet belongs to a tradition of tragic romances stretching back to antiquity. Its plot is based on an Italian tale. Who was the author of this book?', 'medium', 'William Shakespears', 'Micheal Angelo', 'William Shakespears', 'Leonardo de Vinci', '', 'text', 3, 20),
(137, 10, 'The first Olymipics was first held in what country?', 'hard', 'Greece', 'Egypt', 'Japan', 'Greece', '', 'text', 5, 10),
(138, 10, 'Who was the first Filipino Saint ?', 'hard', 'St. Lorenzo Ruiz', 'St. Francis Of Asisi', 'St. Lorenzo Ruiz', 'St. John The Baptist', '', 'text', 5, 10),
(139, 10, 'He was a Soviet pilot and cosmonaut. He was the first human to journey into outer space, when his Vostok spacecraft completed an orbit of the Earth on 12 April 1961.', 'hard', 'Yuri Gagarin', 'Neil Armstrong', 'Edward Thorndike', 'Yuri Gagarin', '', 'text', 5, 20),
(140, 10, 'He  is an American former NASA astronaut, test pilot, aerospace engineer, university professor, United States Naval Aviator, and the first person to set foot upon the Moon.', 'hard', 'Neil Armstrong', 'Yuri Gagarin', 'Neil Armstrong', 'Edward Thorndike', '', 'text', 5, 20),
(141, 10, 'Santiago, Victoria, Antonio, Conception and _______? are the ships og Ferdinand Magellan', 'hard', 'Trinidad', 'Katrina', 'Trinidad', 'San Jose', '', 'text', 5, 20),
(142, 10, 'A light year is a unit of:', 'hard', 'Distance', 'Speed', 'Distance', 'Time', '', 'text', 5, 10),
(143, 10, 'The land Of the Rising Sun is?', 'medium', 'Japan', 'Japan', 'Indonesia', 'China', '', 'text', 3, 10),
(144, 10, 'If the frequency of sound is doubled, the wavelength:', 'hard', 'halves the speed and remains unchanged.', 'halves the speed and remains unchanged.', 'doubles and the speed remains unchanged.', 'the wavelength halves and the speed halves', '', 'text', 5, 10),
(145, 10, 'The Pearl Of The Orient Seas is?', 'medium', 'Philippines', 'Korea', 'Thailand', 'Philippines', '', 'text', 3, 15),
(146, 10, 'When the velocity of a moving object is doubled, its _____ is also doubled.', 'hard', 'Momentum', 'Acceleration', 'Kinetic Energy', 'Momentum', '', 'text', 5, 10),
(147, 10, ' The capital of the Democratic People''s Republic of Korea, commonly known as North Korea is?', 'hard', 'Pyongyang', 'Seoul', 'Pyongyang', 'Tokyo', '', 'text', 5, 15),
(148, 10, 'When metal rod 1 is placed in contact with metal rod 2, thermal energy flows from 1 to 2. A possible explanation is that 1 has a higher ____ than 2.', 'hard', 'Temperature', 'Mass', 'Specific Heat', 'Temperature', '', 'text', 5, 10),
(149, 10, 'The Taj Mahal is a white marble mausoleum located in Agra, India. It was built by Mughal emperor Shah Jahan in memory of his third wife. Who was his third wife?', 'hard', 'Mumtaz Mahal', 'Mantiz Mahal', 'Frantuz mahal', 'Mumtaz Mahal', '', 'text', 5, 20),
(150, 9, 'LOCATION TEST', 'hard', '35.101934, -79.509705', '35.101934, -79.509705', '35.101934, -79.509705', '35.101934, -79.509705', '', 'location', 100, 100),
(151, 9, 'BACOLOD', 'hard', '10.646437,122.967859', '', '', '', '', 'location', 100, 100),
(156, 10, 'The cube root of .000216 is:\n', 'hard', '0.06 ', '0.6 ', '0.06 ', '0.16 ', '', 'text', 1, 20),
(157, 10, 'The least perfect square, which is divisible by each of 21, 36 and 66 is:\n', 'hard', '213444 ', '213444 ', '213424 ', '213445 ', '', 'text', 1, 200),
(158, 10, 'Square root of 1.5625 is:\n', 'hard', '1.25 ', '2.51 ', '5.12 ', '1.25 ', '', 'text', 1, 200),
(159, 10, 'If square root of 35 + square root 125 = 17.88, then what will be the value of square root of  80 + 6 square root of 5 ?\n', 'hard', '22.35 ', '22.35 ', '20.4 ', '22.35 ', '', 'text', 1, 200),
(160, 10, 'A group of students decided to collect as many paise from each member of group as is the number of members. If the total collection amounts to Rs. 59.29, the number of the member is the group is:\n', 'hard', '77 ', '79 ', '77 ', '76 ', '', 'text', 1, 200),
(161, 10, 'square root of 0.0169 * x = 1.3 what is the value of x:\n', 'hard', '100 ', '1000 ', '10', '100 ', '', 'text', 1, 200),
(162, 10, 'How many two-digit numbers satisfy this property.: The last digit (unit''s digit) of the square of the two-digit number is 8 ?\n', 'hard', 'NONE OF THIS ', '1023 ', '1111 ', 'NONE OF THIS ', '', 'text', 1, 200),
(163, 10, 'The square root of 64009 is:\n', 'hard', '253 ', '223 ', '253 ', '251 ', '', 'text', 1, 200),
(164, 10, 'The probability that an electronic device produced by a company does not function properly is equal to 0.1. If 10 devices are bought, then the probability, to the nearest thousandth, that 7 devices fu', 'hard', '0.057 ', '0.066 ', '0.057 ', '0.125 ', '', 'text', 1, 200),
(165, 10, 'The period of 2 sin x cos x is \n', 'hard', 'pi ', 'pi ', '2pi squared ', '4pi ', '', 'text', 1, 200),
(166, 10, 'When a metallic ball bearing is placed inside a cylindrical container, of radius 2 cm, the height of the water, inside the container, increases by 0.6 cm. The radius, to the nearest tenth of a centime', 'hard', ' 1.2 cm  ', '1.5 cm ', '1.3 cm ', ' 1.2 cm  ', '', 'text', 1, 200),
(167, 10, 'The period of | sin (3x) | is \n', 'hard', 'pi / 3  ', 'pi / 3  ', '2pi / 3 ', '2pi ', '', 'text', 1, 200),
(168, 10, 'If f(x) is an odd function, then | f(x) | is \n', 'hard', 'an even function  ', 'both odd and even function ', 'an odd function ', 'an even function  ', '', 'text', 1, 200),
(169, 10, 'The exam scores of all 500 students were recorded and it was determined that these scores were normally distributed. If Jane''s score is 0.8 standard deviation above the mean, then how many, to the nea', 'hard', '106 ', '250 ', '106 ', '410 ', '', 'text', 1, 200),
(170, 10, 'Five different books (A, B, C, D and E) are to be arranged on a shelf. Books C and D are to be arranged first and second starting from the right of the shelf. The number of different orders in which b', 'hard', '3! ', '3! ', '5! ', '2! ', '', 'text', 1, 200),
(171, 10, 'A school committee consists of 2 teachers and 4 students. The number of different committees that can be formed from 5 teachers and 10 students is\n', 'hard', '2100 ', '2100 ', '3100 ', '4100 ', '', 'text', 1, 200),
(172, 10, 'If Log 4 (x) = 12, then log 2 (x / 4) is equal to \n', 'hard', '-12 ', '12 ', '-12 ', 'none of this ', '', 'text', 1, 200),
(173, 10, '20 % of 2 is equal to\n', 'hard', '0.4 ', '0.004 ', '0.04 ', '0.4 ', '', 'text', 1, 200),
(174, 10, 'If Logx (1 / 8) = - 3 / 2, then x is equal to \n', 'hard', '4 ', '0.12 ', '4 ', '8 ', '', 'text', 1, 200),
(175, 10, 'Log of 4 65 =\n', 'hard', '3.01 ', '3.01 ', '3.11 ', '3.001 ', '', 'text', 1, 200),
(176, 10, 'The quadratic equation whose roots are at x = 3 and x = - 5 is given by \n', 'hard', 'x squared - 8x = -15 ', '(x + 3)(x + 5) - 9 = (x + 3)(x + 5) - 25', '(x squared - 3)(x - 5) = 1  ', 'x squared - 8x = -15 ', '', 'text', 1, 200),
(177, 10, 'If x is an angle in standard position with point A(-3 , 4) on the terminal side, then sec(x) = \n', 'hard', '-5 / 3  ', '-5 / 3  ', '5 / 3  ', '3 / 5 ', '', 'text', 1, 200),
(178, 27, 'What is the title of this Song?\n', 'easy', 'Just the Way You Are', 'I know, I know', 'Just the Way You Are', 'When I see Your Smile', 'justtheway.mp3', 'audio', 1, 30),
(179, 27, 'What is the title Of This Song?', 'easy', 'Boyfriend', 'Boyfriend', 'Girlfriend', 'BestFriend', 'boyfriend.mp3', 'audio', 1, 30),
(180, 27, 'Who was the singer that was Featured in this Song?', 'easy', 'Pitbul', 'Jennifer Lopez', 'Pitbul', 'Justin Bieber', 'dance-again.mp3', 'audio', 1, 30),
(181, 27, 'Who was the singer that was featured in this Song?\n ', 'easy', 'David Guetta', 'Jesse', 'Justin Bieber', 'David Guetta', 'laserlight.mp3', 'audio', 1, 30),
(182, 27, 'What is the Title of this song?\n', 'easy', 'Marry You', 'Marry You', 'marry Your Daughter', 'Marry Me', 'Marry-you.mp3', 'audio', 1, 30),
(183, 27, 'The singer of this song won in what competition?', 'easy', 'X Factor', 'American Idol', 'X Factor', 'The Voice', 'whatmakesyoubeautiful.mp3', 'audio', 1, 30),
(185, 27, 'This Rolling in the Deep was featured in what Movie?\n', 'easy', 'I am Number 4', '127 Hours', 'I am Number 4', 'Diary of Wimpy Kid', 'Rolling-in-the-deep.mp3', 'audio', 1, 30),
(186, 27, 'Who is the signer of this song?', 'easy', 'The Script', 'Maroon 5', 'The Script', 'MLTR', 'The-man-who-cant-be-move.mp3', 'audio', 1, 30),
(188, 27, 'What is the title of this Song?', 'easy', 'Hey Soul Sister', 'On The Radio', 'Hey Soul Sister', 'Ain''t that Mister Mr.', 'hey-soul-sister.mp3', 'audio', 1, 30),
(189, 27, 'What is the title of this song?', 'easy', 'Keep Holding On', 'Cause you wanna make it through', 'There''s Nothing You can Say', 'Keep Holding On', 'keep-holding-on.mp3', 'audio', 1, 30),
(190, 27, 'Who is The Singer of this Song?\n', 'easy', 'Chris Brown', 'David Archileta', 'Chris Brown', 'Adam Lavign', 'next-to-you.mp3', 'audio', 1, 30),
(193, 28, 'What is the title of this song?', 'easy', 'call me maybe', 'call me maybe', 'hey!', 'crazy!', 'barracksdubs-call me-maybe.mp4', 'video', 1, 60),
(194, 28, 'When this movie was released?', 'easy', 'summer 2011', 'summer 2012', 'summer 2011', 'summer 2010', 'Cowboys-and-Aliens.mp4', 'video', 1, 60),
(195, 28, 'What is the title of this movie?', 'easy', 'devil inside', 'devil inside', 'devil outside', 'devil rightside', 'Devil-Inside.mp4', 'video', 1, 60),
(196, 28, 'It was realeased on what day and year?', 'easy', 'may 3 2011', 'may 3 2011', 'june 2 2010', 'april 5 2009', 'Fast-Five.mp4', 'video', 1, 60),
(197, 28, 'What is the color of the suit of the important character?', 'easy', 'green', 'green ', 'yellow green', 'blue green', 'Green-Lantern.mp4', 'video', 1, 60),
(198, 28, 'what is the title of this movie?', 'easy', 'ice age', 'ice water', 'cold age', 'ice age', 'Ice-Age-4.mp4', 'video', 1, 60),
(199, 28, 'whats the name of the important character?', 'easy', 'john carter', 'john carter', 'john cart', 'bruce carter', 'John-Carter.mp4', 'video', 1, 60),
(200, 28, 'who played the character of J in this movie?', 'easy', 'will smith', 'will smith', 'jaden yap', 'rayden mart', 'John-Carter.mp4', 'video', 1, 60),
(201, 28, 'this movie was the______ franchise of pirates of the caribbean.', 'easy', '4', '4', '3', '1', 'Pirates-of-the-Caribbean-4.mp4', 'video', 1, 60),
(202, 28, 'who is the creator of spider-man?', 'easy', 'stan lee ', 'stan lee', 'james cameron', 'steven spielberg', 'The-Amazing-Spider-Man.mp4', 'text', 1, 60),
(203, 28, 'Who''s the main antagonist of this movie?', 'easy', 'loki', 'loki', ' red skull', 'magneto', 'THE-AVENGERS.mp4', 'video', 1, 60),
(204, 29, 'who is the father of the father of computing?', 'easy', 'Benjamin Babbage', 'Alexander Babbage', 'Oliver Babbage', 'Benjamin Babbage', '', 'text', 2, 60),
(205, 29, 'WHo is the singer of this song?', 'hard', 'JLO', 'justin bieber', 'JLO', 'f4', 'whenyoulook.mp3', 'audio', 2, 60),
(206, 29, 'Who is the main character in this movie?\n', 'hard', 'Jack Sparrow', 'Wendell Raven', 'Jack Sparrow', 'Oliver Crow', 'Pirates-of-the-Caribbean-4.mp4', 'video', 2, 60),
(207, 29, 'What is this logo?', 'hard', 'BUndled Fun', 'id pic', 'BUndled Fun', 'Grad pic', 'bundled_fun_logo.png', 'image', 2, 60),
(210, 29, '2222222', 'hard', '111111111', '111111111', '111111111', '111111111', '', 'text', 100, 39);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scores`
--

CREATE TABLE IF NOT EXISTS `tbl_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `time_elapsed` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_scores`
--

INSERT INTO `tbl_scores` (`id`, `user_id`, `score`, `time_elapsed`, `correct_answers`, `date`) VALUES
(24, 34, 23, 100, 100, '2012-10-06'),
(25, 34, 82, 100, 100, '2012-10-06'),
(31, 34, 1, 1, 26, '2012-10-06'),
(32, 34, 12, 95, 12, '2012-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(30) NOT NULL,
  `username` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL,
  `name` text NOT NULL,
  `picture` text NOT NULL,
  `access_token` text NOT NULL,
  `email` text NOT NULL,
  `access` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `group_id`, `username`, `level`, `password`, `name`, `picture`, `access_token`, `email`, `access`) VALUES
(9, 0, 'admin', 0, 'admin', 'Oliver Martinez', 'default.png', 'super_admin_access', 'admin@bundledfun.com', 1),
(12, 1, 'wendell', 1, 'wendell', 'Wendell Francisco', '', 'f4a3a2a91a5b5215602335659f22b644', 'xxxxx@gmail.com', 0),
(13, 1, 'reyden', 2, 'reyden', 'Reyden Lamig', '', 'aee983db8ad7c3cafd7eae504a2467ed', 'nemoryoliver@facebook.com', 1),
(14, 1, 'arjay', 2, 'arjay', 'Arjay Valladarez', 'IMG_00000023.jpg', 'cf5f20afaaa67bad87f3b35349a2b313', 'nemoryoliver@gmail.com', 1),
(15, 1, 'default', 1, 'default', 'Default User', 'default.png', 'acae273a5a5c88b46b36d65a25f5f435', 'nemoryoliver@outlook.com', 1),
(21, 10, 'notredame', 1, 'notredame', 'Notre Dame', '', '62e3630e3ce526144663cfa14fa7ac81', 'notredame@gmail.com', 1),
(24, 10, 'oliver1', 2, 'oliver', '', 'default.png', '5a6e76d426dbf0d54218af925ef6e5cd', 'test@test.com', 1),
(31, 1, 'jade', 2, 'jade', 'jade omangayon', '', 'bf17e568257ec4f32a1128167e882312', 'jade@yahoo.com', 1),
(32, 27, 'glee', 1, 'gleeclub', '', '', '0f5c79238d3049f11898c46b4f8fc06b', 'glee@gmail.com', 1),
(33, 28, 'movies', 1, 'movies', '', '', '55ba44c548d3ebafd9f70e64a7f232b0', 'movies@movies.com', 1),
(34, 29, 'sti', 1, '123456', 'STI Admin', 'devs.png', 'b7aef64988587ef8b7f78424efcff23c', 'sti@gmail.com', 1),
(35, 29, 'stiuser', 2, 'stiuser', 'stiuser', '', 'db560c2e1a2785c074028452a21c1f32', 'stiuser@gmail.com', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
