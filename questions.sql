-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2014 at 07:44 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `code_tri`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(4) NOT NULL,
  `question` varchar(140) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `correct_ans` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`) VALUES
(1, 'The advantage of declaring a virtual function as pure is', ' you can avoid making the class an abstract class', 'you force any derived class to define its own impl', 'programs runs faster', 'early binding can be achieved', 'a'),
(2, 'A structure that refers to itself is a', ' nested structure', 'recursive structure', 'self-referential structure', 'none of the above', 'c'),
(3, '  Destructors are called', 'in the same order of constructor calls', 'in the reverse order of constructor calls', 'in any random order', 'none of the above', 'b'),
(4, 'Which of the following statements regarding constructor is false?', 'A constructor may be defined static', ' Constructor can have default arguments', 'Member functions may be invoked from within a cons', 'None of the above', 'a'),
(5, 'Which of the following statement is correct regarding destructor of base class?', ' Destructor of base class should always be static.', 'Destructor of base class should always be virtual.', 'Destructor of base class should not be virtual.', 'Destructor of base class should always be private.', 'b'),
(6, 'Which of the following function prototype is perfectly acceptable?', 'int Function(int Tmp = Show());', 'float Function(int Tmp = Show(int, float));', 'Both A and B.', 'float = Show(int, float) Function(Tmp);', 'a'),
(7, 'Which of the following keywords are used to control access to a class member?', 'default', 'break', 'protected ', 'goto', 'c'),
(8, 'A function that changes the state of the cout object is called a(n) _____', 'member ', 'adjuster', 'manipulator', 'operator', 'c'),
(9, 'External documentation includes', 'a printout of the program''s code', 'flowcharts', ' IPO charts', 'All of the above', 'a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
