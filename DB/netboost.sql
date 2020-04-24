-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2018 at 02:11 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.4-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netboost`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image_url` varchar(150) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `image_url`, `publish_date`, `user_id`, `category_id`, `date_created`) VALUES
(6, 'MY TITLE', 'MY BODY NO PUBLISH DATE', '2v2i6mo.png', NULL, 1, 2, '2018-04-08 00:02:59'),
(7, 'MY TITLE', 'MY BODY NO PUBLISH DATE', '', NULL, 1, 1, '2018-04-08 00:32:23'),
(8, 'Title', 'Body', '', NULL, 1, 1, '2018-04-08 00:32:40'),
(21, 'test', 'I am testing', '', NULL, 1, 1, '2018-04-10 23:12:56'),
(24, 'MY FILE TEST', 'MY FILE TEST', 'pexels.jpeg', '2018-04-13 00:00:00', 1, 2, '2018-04-14 22:04:42'),
(37, 'MY test 2 files', 'My test 2 files', 'photo1.jpg', '2018-04-13 00:00:00', 1, 2, '2018-04-14 23:27:44'),
(38, 'New Article Check after update', 'New Article Body Check', 'pexel2.jpeg', '2018-01-01 00:00:00', 1, 2, '2018-04-15 04:02:31'),
(40, 'MY TEST IN digital ocean', 'body', 'humber_logo2.png', '2017-01-01 00:00:00', 1, 2, '2018-04-23 01:33:02'),
(42, 'THIS ******* ***IGNMENT', 'THIS ****** BODY', 'wallpaper.jpg', NULL, 1, 2, '2018-04-23 09:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'Important'),
(1, 'Public'),
(4, 'Technology'),
(3, 'Urgent');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `subject`, `date_created`, `last_message_id`) VALUES
(3, 'PHP project', '2018-04-20 20:13:21', 24),
(6, 'Checkpoint 3 Mobile Development', '2018-04-21 21:50:24', 18),
(8, 'New Message', '2018-04-23 17:19:40', 19),
(11, 'New Subject', '2018-04-23 17:23:08', 22),
(12, 'adfsdavdf', '2018-04-23 21:35:34', 23);

-- --------------------------------------------------------

--
-- Table structure for table `chat_members`
--

CREATE TABLE `chat_members` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_members`
--

INSERT INTO `chat_members` (`id`, `chat_id`, `user_id`) VALUES
(1, 3, 4),
(2, 3, 8),
(6, 6, 8),
(7, 6, 5),
(8, 8, 7),
(9, 11, 53),
(10, 11, 8),
(11, 12, 3),
(12, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `contact_fname` varchar(50) NOT NULL,
  `contact_lname` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `user_id`, `contact_email`, `contact_fname`, `contact_lname`, `website`, `bio`) VALUES
(1, 'IBM', 9, 'contact@ibm.com', 'John', 'Doe', 'ibm.com', 'Really old and huge company'),
(2, 'Tribal Scale', 10, 'contact@tribalscale.ca', 'Jane', 'Smith', 'www.tribalscale.com', 'WE ARE AN AWESOME COMPANY!!! WE INVITE EVERYONE TO TRY TO BE A PART OF THIS AMAZING AGENCY.'),
(3, 'Capgemini', 2, 'liza23@gmail.com', 'Elizabeth', 'Reji', 'www.capgemini.com', 'Insurance Company'),
(9, 'NetBoost', 3, 'liz@netboost.ca', 'Liz', 'K', 'www.netboost.ca', 'Net Boost is a platform for students and companies to connect and mutually benefit.'),
(14, 'Amazon', 64, 'princyM@amazon.ca', 'Princy', 'M', 'www.amazon.ca', 'Online shopping website');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `sender_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_id`, `body`, `sender_id`, `date`) VALUES
(1, 1, 'PHP project is due Tuesday. Start chat', 3, '2018-04-20 19:56:13'),
(2, 3, 'PHP project due Tuesday', 4, '2018-04-20 20:14:34'),
(3, 3, 'Are you sure? I thought it is due Wednesday!!', 8, '2018-04-20 20:44:54'),
(4, 6, 'Checkpoint 3 needs to be submitted next week!', 8, '2018-04-21 21:51:36'),
(5, 6, 'Yes, I heard about that', 5, '2018-04-22 06:39:37'),
(7, 3, 'Hey anybody here?', 4, '2018-04-23 03:01:47'),
(10, 3, 'Yes, I\'m here. ', 8, '2018-04-23 16:06:47'),
(11, 3, 'Yes, I\'m here. ', 8, '2018-04-23 16:08:53'),
(12, 3, 'Helloooo', 8, '2018-04-23 16:09:33'),
(13, 3, 'sgdfbgf', 8, '2018-04-23 16:12:19'),
(14, 3, 'znfrss', 8, '2018-04-23 16:17:03'),
(15, 3, 'Hiii', 8, '2018-04-23 16:19:54'),
(16, 3, 'Hiii', 8, '2018-04-23 16:20:12'),
(17, 3, 'zdfsndfxd', 8, '2018-04-23 16:20:16'),
(18, 6, 'Okay then', 8, '2018-04-23 16:21:20'),
(19, 8, 'New Message', 8, '2018-04-23 17:19:40'),
(20, 11, 'New Message', 8, '2018-04-23 17:23:08'),
(21, 11, 'What do you mean?', 53, '2018-04-23 17:25:10'),
(22, 11, 'Um, sorry, wrong person', 8, '2018-04-23 17:26:03'),
(23, 12, 'sgsfvds', 8, '2018-04-23 21:35:34'),
(24, 3, 'What does that mean?', 8, '2018-04-24 01:10:59');

--
-- Triggers `messages`
--
DELIMITER $$
CREATE TRIGGER `new_message_notification` AFTER INSERT ON `messages` FOR EACH ROW BEGIN
DECLARE notifyUserId integer;
SELECT user_id INTO notifyUserId from `chat_members` where chat_id = NEW.chat_id AND user_id <> NEW.sender_id;
INSERT INTO notifications(event, user_id, seen) VALUES('new_message', notifyUserId, false);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_last_message` AFTER INSERT ON `messages` FOR EACH ROW BEGIN
UPDATE chats SET last_message_id = NEW.id
WHERE id = NEW.chat_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentage` decimal(10,0) NOT NULL,
  `creator` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `project_id`, `name`, `percentage`, `creator`, `date_created`, `due_date`) VALUES
(2, 1, 'get database operational', '25', 1, '2018-04-22 01:00:17', '2018-04-27'),
(3, 1, 'complete CSS using bootstrap', '10', 1, '2018-04-22 01:00:25', '2018-04-24'),
(14, 1, 'For Andrei', '45', 1, '2018-04-23 18:36:33', '2018-04-28'),
(15, 4, 'more data', '25', 6, '2018-04-23 20:38:13', '2018-04-28'),
(16, 4, 'more testing ', '10', 6, '2018-04-23 20:38:42', '2018-04-30'),
(17, 4, 'testing', '30', 6, '2018-04-23 20:39:06', '2018-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `event` enum('new_project_request','new_message') NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `event`, `created_date`, `user_id`, `seen`) VALUES
(1, 'new_project_request', '2018-04-20 00:46:48', 68, 0),
(27, 'new_project_request', '2018-04-22 16:55:30', 65, 1),
(28, 'new_project_request', '2018-04-22 23:02:42', 7, 1),
(29, 'new_project_request', '2018-04-23 01:03:08', 63, 0),
(30, 'new_project_request', '2018-04-23 01:03:24', 8, 1),
(31, 'new_project_request', '2018-04-23 01:03:34', 7, 1),
(32, 'new_message', '2018-04-23 03:01:47', 8, 1),
(33, 'new_message', '2018-04-23 16:06:47', 4, 0),
(34, 'new_message', '2018-04-23 16:08:53', 4, 0),
(35, 'new_message', '2018-04-23 16:09:33', 4, 0),
(36, 'new_message', '2018-04-23 16:12:19', 4, 0),
(37, 'new_message', '2018-04-23 16:17:03', 4, 0),
(38, 'new_message', '2018-04-23 16:19:54', 4, 0),
(39, 'new_message', '2018-04-23 16:20:12', 4, 0),
(40, 'new_message', '2018-04-23 16:20:16', 4, 0),
(41, 'new_message', '2018-04-23 16:21:20', 5, 0),
(42, 'new_message', '2018-04-23 17:19:40', 7, 1),
(43, 'new_message', '2018-04-23 17:23:08', 53, 1),
(44, 'new_message', '2018-04-23 17:25:10', 8, 1),
(45, 'new_message', '2018-04-23 17:26:03', 53, 1),
(46, 'new_project_request', '2018-04-23 18:20:01', 65, 1),
(47, 'new_message', '2018-04-23 21:35:34', 3, 0),
(48, 'new_message', '2018-04-24 01:10:59', 4, 0),
(49, 'new_project_request', '2018-04-24 02:03:54', 63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `outlines`
--

CREATE TABLE `outlines` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `technologies` varchar(250) NOT NULL,
  `course` varchar(150) NOT NULL,
  `min_members` int(11) NOT NULL,
  `max_members` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `closed` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outlines`
--

INSERT INTO `outlines` (`id`, `teacher_id`, `name`, `description`, `technologies`, `course`, `min_members`, `max_members`, `start_date`, `due_date`, `published`, `completed`, `closed`) VALUES
(2, 2, 'JavaScript Outline', 'This will be a simple web interface. Most of the work will be in vanilla javascript (jquery will also be available), html and css. The students won\'t be able to use external libraries or frameworks or api\'s.', 'vanilla javascript, jquery, css and html.', 'Web Programming', 3, 3, '2018-02-01', '2018-05-24', 1, 0, 0),
(23, 5, 'XML Outline ', 'This course is an introduction to XML and web services. Students will learn the extensible markup language (XML), including how to write documents, validate documents, and parse and manipulate documents. \r\n', 'XML, XSLT, Document Type Definitions ', 'XML & Web Services', 3, 6, '2018-04-27', '2018-06-30', 1, 0, 0),
(24, 1, 'Information Architecture Outline', 'Working in teams students will map out a plan of action to build and launch a complex database\r\ndriven Web site. Incorporated into this plan will be a requirements document or blueprint that will\r\nspell out how the Web site will be built.\r\n\r\nDatabase-driven websites have a lot of content to manage. At the same time these websites\r\nhave to have a means of allowing users to go through the content. The basis of this is\r\ninformation architecture. Students in this course will create content plans that sort, categorize,\r\nand make available large amounts of content. In this course students will learn about and create\r\nnavigation and way-finding systems that will allow the website to work to specifications.', 'Site Flows, Wireframes, Mock-ups', 'Web Information Architecture', 4, 7, '2018-04-27', '2018-05-31', 1, 0, 0),
(25, 4, 'Mobile Development Outline', 'This course will go over full stack development using .NET MVC, a\r\nframework for developing web sites. Although not a complete continuation, or even a continuation at\r\nall, of Web Forms this course does require adequate knowledge of C# concepts and basic principles, in\r\nparticular C# classes. In other words, if you struggled with Web Forms you can still be successful in this\r\ncourse with .NET MVC. The goal of this course is to continue interacting with Visual Studio with .NET\r\nMVC to produce a data-driven website', 'MVC Frameworks, ASP.Net, C#', 'Mobile Development', 4, 6, '2018-04-27', '2018-05-31', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `outline_assists`
--

CREATE TABLE `outline_assists` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `outline_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outline_assists`
--

INSERT INTO `outline_assists` (`id`, `student_id`, `outline_id`) VALUES
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 5, 1),
(12, 6, 1),
(15, 4, 1),
(16, 1, 1),
(17, 3, 1),
(18, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `picks`
--

CREATE TABLE `picks` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `rating` decimal(10,0) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'unranked',
  `assign` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `picks`
--

INSERT INTO `picks` (`id`, `project_id`, `student_id`, `rating`, `status`, `assign`) VALUES
(1, 3, 1, '5', 'ranked', 0),
(2, 4, 1, '2', 'ranked', 1),
(3, 4, 5, '1', 'ranked', 1),
(4, 1, 1, '3', 'ranked', 0),
(5, 1, 2, '2', 'ranked', 1),
(6, 1, 3, '0', 'unranked', 1),
(7, 1, 4, '0', 'unranked', 1),
(8, 1, 5, '0', 'unranked', 1),
(14, 4, 6, '5', 'ranked', 1),
(15, 4, 7, '5', 'ranked', 1),
(16, 4, 8, '5', 'ranked', 1),
(17, 4, 9, '5', 'ranked', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `outline_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `company_id`, `outline_id`, `status`, `date_created`, `name`, `description`) VALUES
(1, 1, 2, 'Sent', '2018-03-31 18:17:30', 'IBM Documentation Project', 'This project is the documentation for a new amazing project we will start developing on 3Q18, so we need to start building the documentation for it ASAP. The product that the students come up with will be used as base to a real project documentation.\r\n\r\nWe will need mockups, dataflows, tables between other elements.'),
(3, 1, 2, 'Accepted', '2018-03-31 18:19:41', 'IBM Super Website', 'website in js html and css'),
(4, 2, 23, 'Sent', '2018-03-31 18:19:41', 'Tribal Scale website', 'A SUPER NEW WEBSITE THAT WILL AMAZE THE WORLD! we need it to be in jquery mainly.'),
(5, 1, 2, 'Declined', '2018-04-20 00:34:41', 'Sample', 'This project is amazing'),
(46, 14, 24, 'Sent', '2018-04-22 23:02:42', 'Javascript Project', 'We need 3 students to work on this.'),
(51, 1, 23, 'Sent', '2018-04-23 18:20:01', 'sending a request', 'hello'),
(52, 1, 25, 'Sent', '2018-04-24 02:03:54', 'sending a request to this outline', 'we are interested');

--
-- Triggers `projects`
--
DELIMITER $$
CREATE TRIGGER `new_project_notification` AFTER INSERT ON `projects` FOR EACH ROW BEGIN
DECLARE notifyUserId integer;
SELECT user_id INTO notifyUserId from `teachers` where id = (SELECT teacher_id from `outlines` where id = NEW.outline_id);
INSERT INTO notifications(event, user_id, seen) VALUES('new_project_request', notifyUserId, false);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `rater_user_id` int(11) NOT NULL,
  `rated_user_id` int(11) NOT NULL,
  `score` decimal(10,0) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rater_user_id`, `rated_user_id`, `score`, `date_created`, `rating_item_id`) VALUES
(1, 1, 9, '1', '2018-04-11 04:17:54', 1),
(10, 3, 9, '2', '2018-04-11 04:24:23', 3),
(14, 1, 3, '5', '2018-04-14 22:52:13', 1),
(15, 2, 3, '4', '2018-04-14 22:52:14', 2),
(16, 3, 3, '4', '2018-04-14 22:52:14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rating_items`
--

CREATE TABLE `rating_items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_items`
--

INSERT INTO `rating_items` (`id`, `name`, `role_id`) VALUES
(1, 'General', NULL),
(2, 'Response Time', NULL),
(3, 'Communication', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(3, 'company'),
(2, 'student'),
(4, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`) VALUES
(1, 'Humber College'),
(2, 'Univeristy of Toronto');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  `portfolio_link` varchar(100) NOT NULL,
  `certifications` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `school_id`, `user_id`, `email`, `bio`, `portfolio_link`, `certifications`) VALUES
(1, 'Emilia', 'Moncada', 1, 2, 'dfmoncada@gmail.com', 'Web developer and Industrial Engineer.', 'diegofma.ca', 'Web Development Certificate - Humber CollegeIT Diploma - PUC ChileCivil Engineer - PUC Chile'),
(2, 'Diego', 'Moncada', 1, 3, 'dfmoncada1@gmail.com', 'Web developer and Industrial Engineer.', 'diegofma', 'Web Development Certificate - Humber CollegeIT Diploma - PUC ChileCivil Engineer - PUC Chile'),
(3, 'Liz', 'Kovalchuk', 1, 4, 'liz.kovalchuk@gmail.com', 'Web developer and professional chellist interpreter', 'lizkovalchuk.ca', 'Web Development Certificate - Humber College\r\nMasters Chello - Chicago University of Music'),
(4, 'Princy', 'Mascarenhas', 1, 5, 'prinna.pm@gmail.com', 'I\'m a web developer and a computers scientist.', 'princypm.ca', 'Web Development Certificate - Humber College\r\nComputer Science - India.'),
(5, 'Elizabeth', 'Reji', 1, 6, 'lizareji23@gmail.com', 'My Personal Super Bio.', 'lizreji.ca', 'Web Development Certificate - Humber College'),
(6, 'Rob', 'Harold', 2, 3, 'rob@humber.ca', 'Learner', 'www.robharold.ca', 'Oracle certified Java Programmer'),
(7, 'Raj', 'Chudasam', 1, 60, 'raj@humber.ca', '', 'www.raj.com', 'Java certified'),
(8, 'Laura', 'Thomas', 1, 63, 'abc@gmail.com', 'I am learning web development.', 'www.laurathomas.com', 'Adobe certification'),
(9, 'John', 'Smith', 2, 72, 'johnsmith@gmail.com', 'Student who loves to learn', 'johnsmith.com', 'Web Development'),
(10, 'Suma', 'Reji', 1, 75, 'liza24@gmail.com', 'I am a student at humber', 'www.sumareji.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `due_date` date DEFAULT NULL,
  `length_hours` int(11) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `name`, `status`, `date_created`, `due_date`, `length_hours`, `notes`, `creator`) VALUES
(3, 3, 'Finish Documentation', 'In-review', '2018-04-20 20:23:44', '2018-04-09', 3, 'I want to try updating', 1),
(4, 3, 'MORE TESTING', 'In-progress', '2018-04-20 22:43:55', '2018-04-12', 4, 'HARDER BHIO', 1),
(5, 3, 'TASTING', 'In-progress', '2018-04-20 20:18:40', '2018-04-11', 4, 'update update 3', 1),
(6, 3, 'NEW TASK FINAL', 'In-progress', '2018-04-08 19:18:37', '2018-05-01', 9, 'MY NOTE FOR THIS', 1),
(9, 3, 'hwkjehwajeha', 'complete', '2018-04-20 20:18:10', '2018-04-27', 3, 'updating as much as I can', 1),
(13, 3, 'Showing mommy', 'In-progress', '2018-04-20 20:31:11', '2018-04-19', 5, 'TOTOTOTOTOOT', 1),
(15, 4, 'task test 1', 'complete', '2018-04-23 22:27:25', '2018-04-25', 5, 'here are notes', 6),
(16, 4, 'task test 2', 'complete', '2018-04-23 22:28:01', '2018-04-28', 7, 'here are notes', 6),
(17, 4, 'NOOOOO!!!!!!!', 'complete', '2018-04-24 00:03:42', '2018-04-27', 7, '', 6),
(18, 3, 'Task new ', 'In-progress', '2018-04-23 22:48:32', '2018-05-05', 6, '', 1),
(19, 3, 'Testing testing', 'In-progress', '2018-04-24 01:17:48', '2018-04-28', 5, 'Testing Testing 4', 1),
(20, 1, 'NAME', 'In-progress', '2018-04-24 01:35:25', '2017-12-31', 1, 'NOTE', 2),
(21, 1, 'TASK 2', 'in-review', '2018-04-24 01:37:44', '2016-10-30', 2, 'BLA BLAS', 2),
(22, 1, 'Third and last', 'In-progress', '2018-04-24 01:38:35', '2016-12-31', 4, 'LAST ONE!', 2);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `school_id`, `user_id`, `email`, `bio`, `title`) VALUES
(1, 'Bernie', 'Monnette', 1, 7, 'bernie.monnette@humbermail.ca', 'I have 15 years on the tech field and have worked on as program coordinator of Web Development for 10 years.', 'Program Co-ordinator'),
(2, 'Sean', 'Doyle', 1, 8, 'sean.doyle@humbermail.ca', 'Full time teacher of Web Development program. Was a part time teacher for 1 year before becoming a full time professor.', 'Professor'),
(3, 'Nithya', 'Thayananthan', 1, 53, 'nithya@humber.ca', 'Teaches PHP', 'Teacher'),
(4, 'Giya', 'Paul', 2, 63, 'giya@humber.ca', 'Teaching ASP.NET MVC', 'Professor'),
(5, 'Joanna', 'Kommala', 1, 65, 'joanna@humber.ca', 'Teaching XML and JSON', 'Professor'),
(6, 'liz', 'kovalchuk', 1, 67, 'liz@liz.com', '', 'teacher'),
(7, 'liztwo', 'liztwo', 1, 68, 'liz2@liz2.com', 'sldkfjsldkfjlds', 'teacher'),
(8, 'lizthree', 'lizthree', 1, 69, 'liz3@liz.com', 'sdl;kfjlsdkfj', 'teacher'),
(9, 'Robby', 'Harold', 1, 71, 'rob@humber.ca', 'kusydglkujns', 'Professor'),
(10, 'Ted', 'Rojers', 1, 72, 'ted@humber.ca', 'I teach PHP', 'Assistant Professor'),
(11, 'Diana', 'William', 1, 73, 'diana@humber.ca', 'I teach ASP.NET MVC', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `password_reset_token`, `is_active`) VALUES
(1, 'diego', 'moncada', NULL, 1),
(2, 'student1', 'student1', '5ade4a5d0a2fd', 1),
(3, 'student2', 'student2', NULL, 1),
(4, 'student3', 'student3', NULL, 1),
(5, 'student4', 'student4', NULL, 1),
(6, 'student5', 'Check1234', NULL, 1),
(7, 'teacher3', 'teacher3', NULL, 1),
(8, 'teacher4', 'teacher4', NULL, 1),
(9, 'company1', 'company1', NULL, 1),
(10, 'company2', 'company2', NULL, 1),
(13, 'ryan_thomas', 'password', NULL, 1),
(24, 'abc', 'abc', NULL, 1),
(46, 'reya_sijo', 'Please@1234', NULL, 1),
(47, 'afsdfjk', 'qwertY23', NULL, 1),
(48, 'elizabethreji', 'Asdfg@123', NULL, 1),
(49, 'reji', 'Qwerty@123', NULL, 1),
(50, 'sonnykr', 'Qwer@123', NULL, 1),
(51, 'rob_harold', 'Asdf@123', NULL, 1),
(53, 'teacher', 'jdfdcs', NULL, 1),
(54, 'jhvbmn', 'Qwerty1234', NULL, 1),
(57, 'sonny_raju', 'Password1', NULL, 1),
(58, 'giya', 'Poiu@123', NULL, 1),
(59, 'reya', 'Abcd@123', NULL, 1),
(60, 'raj', 'Abcd@234', NULL, 1),
(63, 'student_1', 'Student1', NULL, 1),
(64, 'company_1', 'Company1', NULL, 1),
(65, 'teacher_1', 'Teacher1', NULL, 1),
(66, 'thomas', 'Thomas21', NULL, 1),
(67, 'liz', 'Lifeis2hard', NULL, 1),
(68, 'liz2', 'Lifeis2hard', NULL, 1),
(69, 'liz3', 'Lifeis2hard', NULL, 1),
(70, 'admin', 'admin', NULL, 1),
(71, 'rob_harold1', 'RobHarold@123', NULL, 1),
(72, 'ted_rojers', 'Ted12345', NULL, 1),
(73, 'diana_william', 'Diana123', NULL, 1),
(74, 'allianz_inc', 'Allianz123', NULL, 1),
(75, 'suma_reji', 'Suma@1234', NULL, 1),
(76, 'fdelrio', 'Lalala123!', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 4),
(8, 8, 4),
(9, 9, 3),
(10, 10, 3),
(11, 13, 2),
(12, 27, 4),
(13, 28, 2),
(14, 30, 2),
(15, 34, 4),
(16, 36, 2),
(17, 37, 2),
(18, 38, 2),
(19, 39, 3),
(21, 41, 2),
(26, 46, 4),
(27, 47, 2),
(28, 48, 2),
(29, 49, 3),
(31, 50, 3),
(32, 51, 2),
(33, 53, 4),
(34, 54, 4),
(35, 57, 2),
(36, 58, 4),
(37, 59, 3),
(38, 60, 2),
(39, 63, 2),
(40, 64, 3),
(41, 65, 4),
(42, 66, 2),
(43, 67, 4),
(44, 68, 4),
(45, 69, 4),
(46, 71, 4),
(47, 72, 4),
(48, 73, 4),
(49, 74, 3),
(50, 75, 2),
(51, 76, 3),
(52, 70, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_name_unique` (`subject`);

--
-- Indexes for table `chat_members`
--
ALTER TABLE `chat_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `website_unique` (`website`),
  ADD UNIQUE KEY `contact_email` (`contact_email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlines`
--
ALTER TABLE `outlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outline_assists`
--
ALTER TABLE `outline_assists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picks`
--
ALTER TABLE `picks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_yourtablename` (`project_id`,`student_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rater_user_id` (`rater_user_id`,`rated_user_id`,`rating_item_id`);

--
-- Indexes for table `rating_items`
--
ALTER TABLE `rating_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_name_unique` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_unique` (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chat_members`
--
ALTER TABLE `chat_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `outlines`
--
ALTER TABLE `outlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `outline_assists`
--
ALTER TABLE `outline_assists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `picks`
--
ALTER TABLE `picks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `rating_items`
--
ALTER TABLE `rating_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
