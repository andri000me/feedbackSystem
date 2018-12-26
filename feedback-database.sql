-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 21, 2018 at 07:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--
CREATE DATABASE IF NOT EXISTS `feedback` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `feedback`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `usn` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `year_of_grad` int(4) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`usn`, `pass`, `firstname`, `lastname`, `email`, `year_of_grad`, `address`, `dname`) VALUES
('1BM12IS061', 'lego', 'Rahul', 'Sharma', 'rs@gmail.com', 2016, 'hyderabad', 'ISE'),
('1BM12ME007', 'adipooja', 'Aditya', 'Chadha', 'adichadha@gmail.com', 2017, 'Bhavnagar', 'MECH');

-- --------------------------------------------------------

--
-- Table structure for table `alumnifeedback`
--

CREATE TABLE `alumnifeedback` (
  `qid` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumnifeedback`
--

INSERT INTO `alumnifeedback` (`qid`, `usn`, `answer`) VALUES
(1, '1BM12IS061', '5'),
(1, '1BM12ME007', '5'),
(2, '1BM12IS061', '5'),
(2, '1BM12ME007', '5'),
(3, '1BM12IS061', '5'),
(3, '1BM12ME007', '5'),
(4, '1BM12IS061', '5'),
(4, '1BM12ME007', '5'),
(5, '1BM12IS061', '5'),
(5, '1BM12ME007', '5'),
(6, '1BM12IS061', '5'),
(6, '1BM12ME007', '5'),
(7, '1BM12IS061', '2'),
(7, '1BM12ME007', '5'),
(8, '1BM12IS061', '1'),
(8, '1BM12ME007', '5'),
(9, '1BM12IS061', '3'),
(9, '1BM12ME007', '5');

-- --------------------------------------------------------

--
-- Table structure for table `alumniquestion`
--

CREATE TABLE `alumniquestion` (
  `qid` int(11) NOT NULL,
  `question` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alumniquestion`
--

INSERT INTO `alumniquestion` (`qid`, `question`) VALUES
(1, 'Are you generally satisfied with your present career/academic situation?'),
(2, 'How satisfied are you with the overall educational experience you had at BMSCE?'),
(3, 'How would you recommend BMSCE to others?'),
(4, 'To what extent did your experience at BMSCE contribute to your knowledge, skills,\r\nand personal development in Writing\r\nClearly/Effectively?'),
(5, 'To what extent do you feel connected to BMSCE?'),
(6, 'To what extent did your experience at BMSCE contribute to your knowledge, skills,\r\nand personal development in Solving Numerical Problems?'),
(7, 'To what extent did your experience at BMSCE contribute to your knowledge, skills,\r\nand personal development in working well with other?'),
(8, 'To what extent did your experience at BMSCE contribute to your knowledge, skills,\r\nand personal development in Using Computer Technology?'),
(9, 'To what extent did your experience at BMSCE contribute to your knowledge, skills,\r\nand personal development in Working Well with Others?');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cname` varchar(50) NOT NULL,
  `caddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cname`, `caddress`) VALUES
('Google', 'Hyderabad'),
('Intuit', 'Bangalore'),
('Wipro', 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` varchar(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `dname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `cname`, `semester`, `dname`) VALUES
('09CI3GCCOA', 'COMPUTER ORGANIZATION AND ARCHITECTURE', 3, NULL),
('09CI3GCDSL', 'DATA STRUCTURES', 3, NULL),
('09CI3GCMPL', 'MICROPROCESSORS', 3, NULL),
('09CI4GCADA ', 'ANALYSIS AND DESIGN OF ALGORITHMS', 4, NULL),
('09CI4GCOOP', 'OBJECT ORIENTED PROGRAMMING WITH C++', 4, NULL),
('09CI4GCTOF ', 'THEORETICAL FOUNDATIONS OF COMPUTATION', 4, NULL),
('09CI4GCUNX', 'UNIX SYSTEM PROGRAMMING', 4, NULL),
('10CI5GCDBM', 'DATABASE MANAGEMENT SYSTEM', 5, NULL),
('10CI5GCDCN', 'DATA COMMUNICATIONS', 5, NULL),
('10CI5GCJAV', 'JAVA PROGRAMMING', 5, NULL),
('10CI5GCOPS', 'OPERATING SYSTEM', 5, NULL),
('10CI5GCUNX', 'UNIX SYSTEM PROGRAMMING', 5, NULL),
('10CI6GCCON', 'COMPUTER NETWORKS', 6, NULL),
('10CI6GCOOM', 'OBJECT ORIENTED MODELING & DESIGN PATTERNS', 6, NULL),
('10CI6GCSWE', 'SOFTWARE ENGINEERING', 6, NULL),
('10CI6GECCT', 'CLOUD COMPUTING', 6, NULL),
('11CI7GCEAM', 'ENTREPRENEURSHIP & MANAGEMENT', 7, NULL),
('11CI7GECDN', 'C# AND .NET PROGRAMMING', 7, NULL),
('11CI7GECGH ', 'COMPUTER GRAPHICS', 7, NULL),
('11CI7GECNS', 'CRYPTOGRAPHY AND NETWORK SECURITY', 7, NULL),
('11CI7GEDMG', 'DATA MINING', 7, NULL),
('11CI8GCPPT', 'PROJECT PHASE I', 7, NULL),
('11CS1ICCCP', 'COMPUTER CONCEPTS & PROGRAMMING', 1, NULL),
('11IS7DEMAD', 'MOBILE APPLICATION DEVELOPMENT', 7, NULL),
('11IS7DEMIS', 'MANAGEMENT INFORMATION SYSTEMS', 7, NULL),
('CI3GCLDL', 'LOGIC DESIGN', 3, NULL),
('CI6GCPSQ', 'PROBABILITY STATISTICS AND QUEUING', 6, NULL),
('CI6GCWEP', 'WEB PROGRAMMING', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coursefeedback`
--

CREATE TABLE `coursefeedback` (
  `qid` int(11) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coursefeedback`
--

INSERT INTO `coursefeedback` (`qid`, `cid`, `usn`, `answer`) VALUES
(1, '09CI3GCCOA', '1BM16IS034', '5'),
(1, '09CI3GCCOA', '1BM16IS062', '4'),
(1, '09CI3GCCOA', '1BM16IS064', '4'),
(1, '09CI3GCDSL', '1BM16IS064', '5'),
(1, '09CI3GCMPL', '1BM16IS064', '5'),
(1, '09CI4GCOOP', '1BM16IS034', '3'),
(1, '10CI5GCOPS', '1BM16IS034', '5'),
(1, '11CS1ICCCP', '1BM16IS064', '5'),
(1, 'CI3GCLDL', '1BM16IS034', '2'),
(2, '09CI3GCCOA', '1BM16IS034', '5'),
(2, '09CI3GCCOA', '1BM16IS062', '4'),
(2, '09CI3GCCOA', '1BM16IS064', '3'),
(2, '09CI3GCDSL', '1BM16IS064', '5'),
(2, '09CI3GCMPL', '1BM16IS064', '5'),
(2, '09CI4GCOOP', '1BM16IS034', '2'),
(2, '10CI5GCOPS', '1BM16IS034', '5'),
(2, '11CS1ICCCP', '1BM16IS064', '5'),
(2, 'CI3GCLDL', '1BM16IS034', '2'),
(3, '09CI3GCCOA', '1BM16IS034', '5'),
(3, '09CI3GCCOA', '1BM16IS062', '4'),
(3, '09CI3GCCOA', '1BM16IS064', '3'),
(3, '09CI3GCDSL', '1BM16IS064', '5'),
(3, '09CI3GCMPL', '1BM16IS064', '5'),
(3, '09CI4GCOOP', '1BM16IS034', '3'),
(3, '10CI5GCOPS', '1BM16IS034', '5'),
(3, '11CS1ICCCP', '1BM16IS064', '5'),
(3, 'CI3GCLDL', '1BM16IS034', '3'),
(4, '09CI3GCCOA', '1BM16IS034', '5'),
(4, '09CI3GCCOA', '1BM16IS062', '4'),
(4, '09CI3GCCOA', '1BM16IS064', '4'),
(4, '09CI3GCDSL', '1BM16IS064', '2'),
(4, '09CI3GCMPL', '1BM16IS064', '5'),
(4, '09CI4GCOOP', '1BM16IS034', '4'),
(4, '10CI5GCOPS', '1BM16IS034', '5'),
(4, '11CS1ICCCP', '1BM16IS064', '5'),
(4, 'CI3GCLDL', '1BM16IS034', '2'),
(5, '09CI3GCCOA', '1BM16IS034', '5'),
(5, '09CI3GCCOA', '1BM16IS062', '4'),
(5, '09CI3GCCOA', '1BM16IS064', '3'),
(5, '09CI3GCDSL', '1BM16IS064', '2'),
(5, '09CI3GCMPL', '1BM16IS064', '5'),
(5, '09CI4GCOOP', '1BM16IS034', '4'),
(5, '10CI5GCOPS', '1BM16IS034', '5'),
(5, '11CS1ICCCP', '1BM16IS064', '5'),
(5, 'CI3GCLDL', '1BM16IS034', '3'),
(6, '09CI3GCCOA', '1BM16IS034', '5'),
(6, '09CI3GCCOA', '1BM16IS062', '4'),
(6, '09CI3GCCOA', '1BM16IS064', '2'),
(6, '09CI3GCDSL', '1BM16IS064', '4'),
(6, '09CI3GCMPL', '1BM16IS064', '5'),
(6, '09CI4GCOOP', '1BM16IS034', '3'),
(6, '10CI5GCOPS', '1BM16IS034', '5'),
(6, '11CS1ICCCP', '1BM16IS064', '5'),
(6, 'CI3GCLDL', '1BM16IS034', '3'),
(7, '09CI3GCCOA', '1BM16IS034', '5'),
(7, '09CI3GCCOA', '1BM16IS062', '4'),
(7, '09CI3GCCOA', '1BM16IS064', '4'),
(7, '09CI3GCDSL', '1BM16IS064', '3'),
(7, '09CI3GCMPL', '1BM16IS064', '5'),
(7, '09CI4GCOOP', '1BM16IS034', '5'),
(7, '10CI5GCOPS', '1BM16IS034', '5'),
(7, '11CS1ICCCP', '1BM16IS064', '5'),
(7, 'CI3GCLDL', '1BM16IS034', '4'),
(8, '09CI3GCCOA', '1BM16IS034', '5'),
(8, '09CI3GCCOA', '1BM16IS062', '4'),
(8, '09CI3GCCOA', '1BM16IS064', '3'),
(8, '09CI3GCDSL', '1BM16IS064', '4'),
(8, '09CI3GCMPL', '1BM16IS064', '5'),
(8, '09CI4GCOOP', '1BM16IS034', '4'),
(8, '10CI5GCOPS', '1BM16IS034', '5'),
(8, '11CS1ICCCP', '1BM16IS064', '5'),
(8, 'CI3GCLDL', '1BM16IS034', '1'),
(9, 'CI3GCLDL', '1BM16IS034', '3'),
(10, 'CI3GCLDL', '1BM16IS034', '3');

-- --------------------------------------------------------

--
-- Table structure for table `coursequestion`
--

CREATE TABLE `coursequestion` (
  `qid` int(11) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coursequestion`
--

INSERT INTO `coursequestion` (`qid`, `cid`, `question`, `semester`, `dname`) VALUES
(1, '09CI3GCCOA', 'Were the concepts of Processor structure and instruction sequencing understood?', 3, 'ISE'),
(1, '09CI3GCDSL', 'Where you able to understand the concepts of linked list?', 3, 'ISE'),
(1, '09CI3GCMPL', 'Were you able to understand the 8086 architecture and register set?', 3, 'ISE'),
(1, '09CI4GCADA ', 'Were you able to understand how to design and analyze an algorithm? ', 4, 'ISE'),
(1, '09CI4GCOOP', 'To what extent were you able to implement constructors and Destructors?', 4, 'ISE'),
(1, '09CI4GCTOF', 'Are you able to differentiate between NFA and DFA?', 4, 'ISE'),
(1, '09CI4GCUNX', 'Were you able to understand the basic commands like cal, Printf, echo, date?', 4, 'ISE'),
(1, '10CI5GCDBM', 'Are you able to understand the concept of database?', 5, 'ISE'),
(1, '10CI5GCDCN', 'Were you able to understand concepts of OSI reference model and TCP/IP architecture?', 5, 'ISE'),
(1, '10CI5GCJAV', 'Are you able to define the fundamentals of OOPS concepts?', 5, 'ISE'),
(1, '10CI5GCOPS', 'Are you able to distinguish the types of computing systems, operating system functions?', 5, 'ISE'),
(1, '10CI5GCUNX', 'Were you able to define UNIX/POSIX standards?', 5, 'ISE'),
(1, '10CI6GCCON', 'Were you able to understand different network services and topologies?', 6, 'ISE'),
(1, '10CI6GCOOM', 'Were you able to understand the basic modeling concept?', 6, 'ISE'),
(1, '10CI6GCSWE', 'Are you able to understand professional and ethical responsibility? ', 6, 'ISE'),
(1, '10CI6GECCT', 'Are you able to understand the basic concepts of hardware and software evolution?', 6, 'ISE'),
(1, '11CI7GCEAM', 'Were you able to differentiate between a Manager and Entrepreneur?', 7, 'ISE'),
(1, '11CI7GECDN', 'Are you able to learn the different components in .NET architecture?', 7, 'ISE'),
(1, '11CI7GECGH', 'Are you able to implement the 2D objects in open GL programming?', 7, 'ISE'),
(1, '11CI7GECNS', 'Are you able to solve the mathematical problems used for cryptographic solutions?', 7, 'ISE'),
(1, '11CI7GEDMG', 'Are you able to understand the concepts of data mining?', 7, 'ISE'),
(1, '11CS1ICCCP', 'Rate your proficiency in writing a flowchart?', 1, 'ISE'),
(1, '11IS7DEMIS', 'Were you able to apply various decision making styles in the decision making process?', 7, 'ISE'),
(1, 'CI3GCLDL', 'Were you able to understand digital logic and Concept of logic gates?', 3, 'ISE'),
(1, 'CI6GCPSQ', 'Were you able to solve problems on events, axioms, permutation and combinations?', 6, 'ISE'),
(1, 'CI6GCWEP', 'Were you able to apply XHTML tags and CSS properties to construct the basic structure of webpage?', 6, 'ISE'),
(2, '09CI3GCCOA', 'Given any instruction were you able to identify the kind of addressing mode?', 3, 'ISE'),
(2, '09CI3GCDSL', 'Where you able to demonstrate various applications of linked list?', 3, 'ISE'),
(2, '09CI3GCMPL', 'Were you able to understand 8086 addressing modes, instruction template and memory organization? ', 3, 'ISE'),
(2, '09CI4GCADA ', 'Were you able to understand how to design and analyze an algorithm? ', 4, 'ISE'),
(2, '09CI4GCOOP', 'What is your level of understanding in various features of OOPS?', 4, 'ISE'),
(2, '09CI4GCTOF', 'Are you able to obtain the relation between regular expressions and regular languages?', 4, 'ISE'),
(2, '09CI4GCUNX', 'Were you able to understand file handling commands like wc, rmdir, mkdir, cd, rm?', 4, 'ISE'),
(2, '10CI5GCDBM', 'Rate the level of understanding of the design of E-R models?', 5, 'ISE'),
(2, '10CI5GCDCN', 'Rate your understanding on analog representation and digital representation of data and its conversi', 5, 'ISE'),
(2, '10CI5GCJAV', 'Rate your understanding on the inheritance and abstract classes?', 5, 'ISE'),
(2, '10CI5GCOPS', 'Are you able to understand concept of scheduling, Interprocess communications?', 5, 'ISE'),
(2, '10CI5GCUNX', 'Were you able to implement using UNIX file API’s, different types of files?', 5, 'ISE'),
(2, '10CI6GCCON', 'Are you able to differentiate between different protocols?', 6, 'ISE'),
(2, '10CI6GCOOM', 'Whether you were able to understand the concepts of class modeling and state modeling?', 6, 'ISE'),
(2, '10CI6GCSWE', 'Are you able to understand socio technical systems?', 6, 'ISE'),
(2, '10CI6GECCT', 'Whether you understand the evolution of cloud computing and its components?', 6, 'ISE'),
(2, '11CI7GCEAM', 'Were you able to identify the factors affecting Entrepreneurial growth?', 7, 'ISE'),
(2, '11CI7GECDN', 'Were the syntactical constructs understood for writing programs?', 7, 'ISE'),
(2, '11CI7GECGH', 'Were you able to understand the event-driven input concept?', 7, 'ISE'),
(2, '11CI7GECNS', 'Are you able to understand the security and attacks of cryptography?', 7, 'ISE'),
(2, '11CI7GEDMG', 'Are you able to understand the concepts of data mining?', 7, 'ISE'),
(2, '11CS1ICCCP', 'Are you able to understand various loops (for loop, while, do while loop)?', 1, 'ISE'),
(2, '11IS7DEMIS', 'Were you able to analyze ethical issues of business and evaluate the implications of them?', 7, 'ISE'),
(2, 'CI3GCLDL', 'Were you able to understand the Concepts of SOP, POS, minterm, maxterm and don’t care conditions in ', 3, 'ISE'),
(2, 'CI6GCPSQ', 'Were you able to apply Baye’s rule to problems related to probability?', 6, 'ISE'),
(2, 'CI6GCWEP', 'Were you able to apply XHTML tags and CSS properties to construct the basic structure of webpage?', 6, 'ISE'),
(3, '09CI3GCCOA', 'Were you able to understand the different types of bus structures?', 3, 'ISE'),
(3, '09CI3GCDSL', 'Where you able to understand the basic concepts of files? ', 3, 'ISE'),
(3, '09CI3GCMPL', 'Were you able to understand the instruction sets and assembler directives?', 3, 'ISE'),
(3, '09CI4GCADA ', 'Were you able to understand and solve problems on sorting like merge sort, quick sort, insertion sor', 4, 'ISE'),
(3, '09CI4GCOOP', 'How efficient are you to inherit various features of a class to another class?', 4, 'ISE'),
(3, '09CI4GCTOF', 'Rate your understanding to realize Equivalence and minimization of Automata?', 4, 'ISE'),
(3, '09CI4GCUNX', 'Were you able to understand the communication commands like finger, email?', 4, 'ISE'),
(3, '10CI5GCDBM', 'How do you comprehend relational model concepts? ', 5, 'ISE'),
(3, '10CI5GCDCN', 'Were you able to understand line coding schemes and modulation?					', 5, 'ISE'),
(3, '10CI5GCJAV', 'Are you able to understand packages, Enumeration and generics?', 5, 'ISE'),
(3, '10CI5GCOPS', 'What is your level of understanding on different scheduling algorithms, multithreading models?', 5, 'ISE'),
(3, '10CI5GCUNX', 'Were you able to understand process creation?', 5, 'ISE'),
(3, '10CI6GCCON', 'Are you able to understand different routing algorithms?', 6, 'ISE'),
(3, '10CI6GCOOM', 'Are you able to design state diagrams by applying UML concepts?', 6, 'ISE'),
(3, '10CI6GCSWE', 'Are you able to analyze software and system requirement?', 6, 'ISE'),
(3, '10CI6GECCT', 'Whether you are able to classify the organizations that offer cloud computing solutions?', 6, 'ISE'),
(3, '11CI7GCEAM', 'Were you able to identify various objectives of strategic planning?', 7, 'ISE'),
(3, '11CI7GECDN', 'Were the steps for the design of assemblies clearly understood for the development of projects?', 7, 'ISE'),
(3, '11CI7GECGH', 'Were you able to solve problems to create object using transformations', 7, 'ISE'),
(3, '11CI7GECNS', 'Are you able to understand the various cryptanalytic attacks of cryptography?', 7, 'ISE'),
(3, '11CI7GEDMG', 'Given a problem are you able to classify the data with respect to its classification techniques?', 7, 'ISE'),
(3, '11CS1ICCCP', 'Are you able to understand formatted Input and output function? ', 1, 'ISE'),
(3, '11IS7DEMIS', 'To what extent the various models were utilized in decision making involving many qualitative factor', 7, 'ISE'),
(3, 'CI3GCLDL', 'Were you able to solve problems on prime implicants, prime implicate, minimal sum and minimal produc', 3, 'ISE'),
(3, 'CI6GCPSQ', 'Were you able to solve problems on continuous random variables?', 6, 'ISE'),
(3, 'CI6GCWEP', 'Were you able to develop web pages that content information about graphics & hyperlinks?', 6, 'ISE'),
(4, '09CI3GCCOA', 'Were you able to understand the types of control unit and the architecture?					', 3, 'ISE'),
(4, '09CI3GCDSL', 'Where you able to understand the operations and different types of queues? ', 3, 'ISE'),
(4, '09CI3GCMPL', 'Were you able to apply the instructions and assembler directives learnt in solving problems?  ', 3, 'ISE'),
(4, '09CI4GCADA ', 'Were you able to understand and solve searching problems like binary search, linear search?', 4, 'ISE'),
(4, '09CI4GCOOP', 'How efficient are you in the implementation of operator over loading?', 4, 'ISE'),
(4, '09CI4GCTOF', 'Are you able to apply CFGs to solve given problems?', 4, 'ISE'),
(4, '09CI4GCUNX', 'Were you able to understand the concepts of hardlink, softlink, changing the permissions file owners', 4, 'ISE'),
(4, '10CI5GCDBM', 'Are you able to analyze and design SQL queries?', 5, 'ISE'),
(4, '10CI5GCDCN', 'Rate your proficiency in understanding the concept of spread spectrum?', 5, 'ISE'),
(4, '10CI5GCJAV', 'Are you able to implement multithreading and exception handling programs?', 5, 'ISE'),
(4, '10CI5GCOPS', 'Rate your understanding of critical section problem and synchronization?', 5, 'ISE'),
(4, '10CI5GCUNX', 'Were you able to design and implement problems on process creation?', 5, 'ISE'),
(4, '10CI6GCCON', 'Rate your level of understanding on network management concepts?', 6, 'ISE'),
(4, '10CI6GCOOM', 'Were you able to analyze application model, domain state model with class modeling?', 6, 'ISE'),
(4, '10CI6GCSWE', 'Are you able to understand system models?', 6, 'ISE'),
(4, '10CI6GECCT', 'Are you able to analyze the types of networks used to access the cloud?', 6, 'ISE'),
(4, '11CI7GCEAM', 'How efficient are you in decision making under certainty, uncertainty and at risk?', 7, 'ISE'),
(4, '11CI7GECDN', 'Are the usage value types and reference types studied?', 7, 'ISE'),
(4, '11CI7GECGH', 'Were you able to classify different projections in open GL?', 7, 'ISE'),
(4, '11CI7GECNS', 'Are you able to differentiate the symmetric and asymmetric key cryptography?', 7, 'ISE'),
(4, '11CI7GEDMG', 'Are you able to solve problem on associate technique?', 7, 'ISE'),
(4, '11CS1ICCCP', 'Are you able to implement problems of sorting and searching? ', 1, 'ISE'),
(4, '11IS7DEMIS', 'Were you able to analyze the various system components and properties of Information System for busi', 7, 'ISE'),
(4, 'CI3GCLDL', 'Were you able to understand Quine-McCluskey and MEV method of finding minimal sum and products?', 3, 'ISE'),
(4, 'CI6GCPSQ', 'Were you able to solve problems on discrete random variables?', 6, 'ISE'),
(4, 'CI6GCWEP', 'Were you able to understand the concepts of XML?', 6, 'ISE'),
(5, '09CI3GCCOA', 'Were you able to understand the different I/o handling techniques and Interfaces?', 3, 'ISE'),
(5, '09CI3GCDSL', 'Where you able to implement the stacks? ', 3, 'ISE'),
(5, '09CI3GCMPL', 'Were you able to apply be concepts of stacks, procedures, macros and delay loops?  ', 3, 'ISE'),
(5, '09CI4GCADA ', 'Were you able to understand and solve combinational problems, string related problems, problems on g', 4, 'ISE'),
(5, '09CI4GCOOP', 'What is your level of understanding in the exception handling concepts?', 4, 'ISE'),
(5, '09CI4GCTOF', 'Are you able to design push down Automata? ', 4, 'ISE'),
(5, '09CI4GCUNX', 'Were you able to understand the concept of process creating, listing the process states?', 4, 'ISE'),
(5, '10CI5GCDBM', 'Were you able to decompose normal forms?', 5, 'ISE'),
(5, '10CI5GCDCN', 'What is your ability in understanding SONET frame structure?', 5, 'ISE'),
(5, '10CI5GCJAV', 'Rate your level of understanding of Applet concepts and implementation of Applets?', 5, 'ISE'),
(5, '10CI5GCOPS', 'What is your level of analysis on deadlock prevention, avoidance, detection and recovery? ', 5, 'ISE'),
(5, '10CI5GCUNX', 'Were you able to understand Unix kernel support for files, process?', 5, 'ISE'),
(5, '10CI6GCCON', 'Comprehend the degree of understanding the cryptographic algorithms?', 6, 'ISE'),
(5, '10CI6GCOOM', 'Were you able to implement the modeling in class design?', 6, 'ISE'),
(5, '10CI6GCSWE', 'What is the level of understanding the planning and management of project?', 6, 'ISE'),
(5, '10CI6GECCT', 'Are you able to understand the different services offered by cloud computing?', 6, 'ISE'),
(5, '11CI7GCEAM', 'What is your level of comprehension in differentiating idealism and naturalism between Indian and we', 7, 'ISE'),
(5, '11CI7GECDN', 'What is the level of understanding the object oriented programming in C#?', 7, 'ISE'),
(5, '11CI7GECGH', 'Were you able to apply the concept of lighting and shading to 2D and 3D objects?', 7, 'ISE'),
(5, '11CI7GECNS', 'Are you able to analyze various cryptographic algorithms?', 7, 'ISE'),
(5, '11CI7GEDMG', 'Are you able to implement the applications of data mining in real time?', 7, 'ISE'),
(5, '11CS1ICCCP', 'Are you able to write programs on functions (Various types)? ', 1, 'ISE'),
(5, '11IS7DEMIS', 'Were you able to learn and apply the role of manager in planning for strategic use of Information Sy', 7, 'ISE'),
(5, 'CI3GCLDL', 'Were you able to realize Boolean expressions using NAND and NOR gates only?', 3, 'ISE'),
(5, 'CI6GCPSQ', 'Were you able to formulate random and stochastic process?', 6, 'ISE'),
(5, 'CI6GCWEP', 'Were you able to develop programs for PHP & Perl?', 6, 'ISE'),
(6, '09CI3GCCOA', 'Given an instruction were you able to write the control sequence for that instruction ', 3, 'ISE'),
(6, '09CI3GCDSL', 'Where you able to illustrate the applications of the stacks? ', 3, 'ISE'),
(6, '09CI3GCMPL', 'Were you able to understand digital interfacing concepts, 8255 architecture and control word?', 3, 'ISE'),
(6, '09CI4GCADA ', 'Were you able to understand and apply various design techniques like Brute force, Divide – and- conq', 4, 'ISE'),
(6, '09CI4GCOOP', 'Were you able to apply Data Abstraction features in your program?', 4, 'ISE'),
(6, '09CI4GCTOF', '\r\nAre you able to learn the closure properties of CFGs?\r\n', 4, 'ISE'),
(6, '09CI4GCUNX', 'Were you able to execute simple programs based on Unix commands?', 4, 'ISE'),
(6, '10CI5GCDBM', 'Are you able to implement relational algebra concepts?', 5, 'ISE'),
(6, '10CI5GCDCN', 'Were you able to understand ARQ products clearly?', 5, 'ISE'),
(6, '10CI5GCJAV', 'Are you able to implement the string functions and create your exceptions?', 5, 'ISE'),
(6, '10CI5GCOPS', 'Are you able to understand the memory management, paging and segmentation advantages?', 5, 'ISE'),
(6, '10CI5GCUNX', 'Are you able to employ kernel support for signals?', 5, 'ISE'),
(6, '10CI6GCCON', 'Rate the depth of understanding compression techniques?', 6, 'ISE'),
(6, '10CI6GCOOM', 'To apply the concepts of class modeling in real world problems?', 6, 'ISE'),
(6, '10CI6GCSWE', 'To what degree are you able to analyze the architectural design and styles?', 6, 'ISE'),
(6, '10CI6GECCT', 'Are you able to understand the different connectivity options of the cloud?', 6, 'ISE'),
(6, '11CI7GCEAM', 'What is your ability to understand realism?', 7, 'ISE'),
(6, '11CI7GECDN', 'Do you have knowledge to handle exceptions?', 7, 'ISE'),
(6, '11CI7GECGH', 'Were you able to apply the concept of illumination to 2D and 3D objects?', 7, 'ISE'),
(6, '11CI7GECNS', 'Are you able to implementdifferent cryptosystem algorithms?', 7, 'ISE'),
(6, '11CI7GEDMG', 'Are you able to identify and implement the different data mining tasks?', 7, 'ISE'),
(6, '11CS1ICCCP', 'Are you able to Possible to write programs on structures and unions? ', 1, 'ISE'),
(6, '11IS7DEMIS', 'To what extent were you able to deploy an MSS application?', 7, 'ISE'),
(6, 'CI3GCLDL', 'Were you able to understand the working of Combinatorial circuits like multiplexer, decoders?', 3, 'ISE'),
(6, 'CI6GCPSQ', 'Were you able to classify stochastic process?', 6, 'ISE'),
(6, 'CI6GCWEP', 'Were you able to understand the concepts DOM2 model?', 6, 'ISE'),
(7, '09CI3GCCOA', 'Were you able to design adders multiplication, division and floating point arithmetic unit?', 3, 'ISE'),
(7, '09CI3GCDSL', 'Were you able to apply the concepts of recursion to solve problems?', 3, 'DATA STRUCTURES'),
(7, '09CI3GCMPL', 'Were you able to interface 8086 microprocessor with electro mechanical I/O devices via 8255 PPI?  ', 3, 'MICROPROCESSORS'),
(7, '09CI4GCADA ', 'Were you able to compare algorithms based on their design and complexity?  ', 4, 'ISE'),
(7, '09CI4GCOOP', 'Were you able to apply Data Abstraction features in your program?', 4, 'ISE'),
(7, '09CI4GCTOF', 'What is level of understanding in design of Turing Machines?', 4, 'ISE'),
(7, '09CI4GCUNX', 'Were you able to execute understand the simple filters commands like Sort, Head, Pr, Tail?', 4, 'ISE'),
(7, '10CI5GCDBM', 'Whether you are able to understand the concepts and characteristics of transactions?', 5, 'ISE'),
(7, '10CI5GCDCN', 'What is your ability in understanding HDLC data link control?', 5, 'ISE'),
(7, '10CI5GCJAV', 'Rate your ability to implement the real world problems using java concepts?', 5, 'ISE'),
(7, '10CI5GCOPS', 'Are you able to comprehend to the file system concept and protection?', 5, 'ISE'),
(7, '10CI5GCUNX', 'Were you able to implement signal API’s?', 5, 'ISE'),
(7, '10CI6GCCON', 'Are you able to analyze the concepts of mobile Adhoc networks?', 6, 'ISE'),
(7, '10CI6GCOOM', 'Were you able to understand the concepts of patterns and designs?', 6, 'ISE'),
(7, '10CI6GCSWE', 'Are the methods of testing clearly understood?', 6, 'ISE'),
(7, '10CI6GECCT', 'Are you able to develop simple applications for the cloud?', 6, 'ISE'),
(7, '11CI7GCEAM', 'Were you able to understand what psychological conflicts are and conflict handling mechanism?', 7, 'ISE'),
(7, '11CI7GECDN', 'Were the concepts of object life time and garbage collection learnt?', 7, 'ISE'),
(7, '11CI7GECGH', 'Were you able to implement the clipping algorithm on 2D objects?', 7, 'ISE'),
(7, '11CI7GECNS', 'Are you able to understand the security mechanisms of cryptography?', 7, 'ISE'),
(7, '11CI7GEDMG', 'Given a problem are you able to implement the clustering algorithms?', 7, 'ISE'),
(7, '11CS1ICCCP', 'Were you able to understand Concepts of LAN, WAN and MAN? ', 1, 'ISE'),
(7, '11IS7DEMIS', 'To what level were you able to understand the controls needed for Information Science performance an', 7, 'ISE'),
(7, 'CI3GCLDL', 'Were you able to understand the concepts of flip flops, registers, its types and applications? ', 3, 'ISE'),
(7, 'CI6GCPSQ', 'Were you able to understand queuing models?', 6, 'ISE'),
(7, 'CI6GCWEP', 'Were you able to apply front-end & back-end connectivity?', 6, 'ISE'),
(8, '09CI3GCCOA', 'Were you able to understand the types of memory and memory mapping functions?', 3, 'COMPUTER ORGANIZATION AND ARCHITECTURE'),
(8, '09CI3GCDSL', 'Were you able to construct binary tree and understand operations on binary trees? ', 3, 'DATA STRUCTURES'),
(8, '09CI3GCMPL', 'Were you able to understand assembly language program development tools and assembly language progra', 3, 'MICROPROCESSORS'),
(8, '09CI4GCOOP', 'To what level were you able to implement Generic programming features and file operations?', 4, 'ISE'),
(8, '09CI4GCTOF', 'Are you able to attain equivalence of PDA’s and CFGs?', 4, 'ISE'),
(8, '09CI4GCUNX', 'Were you able to comprehend the shell scripts basics and Programs based on shell scripts?', 4, 'ISE'),
(8, '10CI5GCDBM', 'Were you able to understand concurrency control and recovery techniques?', 5, 'ISE'),
(8, '10CI5GCDCN', 'Rate your proficiency in understanding various networking standards?', 5, 'ISE'),
(8, '10CI5GCJAV', 'Are you able to understand the AWT classes and different graphical methods?', 5, 'ISE'),
(8, '10CI5GCOPS', 'Rate your understanding of protection mechanisms and page replacement algorithm?', 5, 'ISE'),
(8, '10CI5GCUNX', 'Were you able to understand IPC like pipes, FIFOS, manage queues?', 5, 'ISE'),
(8, '10CI6GCCON', 'Comprehend the level of understanding the concepts of wireless sensor networks?', 6, 'ISE'),
(8, '10CI6GCOOM', 'Were you able to understand the concepts of patterns and designs?', 6, 'ISE'),
(8, '10CI6GCSWE', 'Rate the understanding level of differentiating verification and validation?', 6, 'ISE'),
(8, '10CI6GECCT', 'Are you able to differentiate different types of cloud computing?', 6, 'ISE'),
(8, '11CI7GCEAM', 'How efficient are you in understanding leadership styles?', 7, 'ISE'),
(8, '11CI7GECDN', 'Are you able to write interfaces, collections and delegates for c# applications?', 7, 'ISE'),
(8, '11CI7GECGH', 'What is the level of understanding hidden surface removal?', 7, 'ISE'),
(8, '11CI7GECNS', 'Are you able to evaluate the security at the application layer?', 7, 'ISE'),
(8, '11CS1ICCCP', 'Rate your Proficiency in writing Pointer Programs?', 1, 'ISE'),
(8, '11IS7DEMIS', 'To what level were you able to understand the problem of information system performance by managemen', 7, 'ISE'),
(8, 'CI3GCLDL', 'Were you able to understand counters, its types and design counters of various modulus?', 3, 'ISE'),
(8, 'CI6GCPSQ', 'Were you able to solve problems using queuing models?', 6, 'ISE'),
(8, 'CI6GCWEP', 'Were you able to develop a project on web programming?', 6, 'ISE'),
(9, '09CI4GCUNX', 'Were you able to comprehend the shell scripts basics and Programs based on shell scripts?', 4, 'ISE'),
(9, '10CI5GCUNX', 'Were you able to understand sockets?', 5, 'ISE'),
(9, '11CI7GECNS', 'Are you able to give solutions of various cryptography problems?', 7, 'ISE'),
(9, 'CI3GCLDL', 'Were you able to understand the analysis of synchronous and asynchronous Circuits? ', 3, 'ISE'),
(10, 'CI3GCLDL', 'Were you able to solve problems on sequence detection, state reduction techniques and  ASM charts?  ', 3, 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dname` varchar(50) NOT NULL,
  `hod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dname`, `hod`) VALUES
('ISE', 'Radhika'),
('MECH', 'Rajnikanth');

-- --------------------------------------------------------

--
-- Table structure for table `empfeedback`
--

CREATE TABLE `empfeedback` (
  `qid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empfeedback`
--

INSERT INTO `empfeedback` (`qid`, `email`, `answer`) VALUES
(1, 'arul@gmail.com', '4'),
(1, 'naush@live.com', '5'),
(1, 'poojachadha347@gmail.com', '5'),
(1, 'subhu@yahoo.com', '1'),
(1, 'zoya@gmail.com', '3'),
(2, 'arul@gmail.com', '4'),
(2, 'naush@live.com', '5'),
(2, 'poojachadha347@gmail.com', '5'),
(2, 'subhu@yahoo.com', '5'),
(2, 'zoya@gmail.com', '2'),
(3, 'arul@gmail.com', '4'),
(3, 'naush@live.com', '5'),
(3, 'poojachadha347@gmail.com', '5'),
(3, 'subhu@yahoo.com', '4'),
(3, 'zoya@gmail.com', '3'),
(4, 'arul@gmail.com', '4'),
(4, 'naush@live.com', '4'),
(4, 'poojachadha347@gmail.com', '5'),
(4, 'subhu@yahoo.com', '2'),
(4, 'zoya@gmail.com', '2'),
(5, 'arul@gmail.com', '4'),
(5, 'naush@live.com', '4'),
(5, 'poojachadha347@gmail.com', '5'),
(5, 'subhu@yahoo.com', '3'),
(5, 'zoya@gmail.com', '1'),
(6, 'arul@gmail.com', '4'),
(6, 'naush@live.com', '4'),
(6, 'poojachadha347@gmail.com', '5'),
(6, 'subhu@yahoo.com', '1'),
(6, 'zoya@gmail.com', '2'),
(7, 'arul@gmail.com', '4'),
(7, 'naush@live.com', '5'),
(7, 'poojachadha347@gmail.com', '5'),
(7, 'subhu@yahoo.com', '4'),
(7, 'zoya@gmail.com', '3'),
(8, 'arul@gmail.com', '4'),
(8, 'naush@live.com', '5'),
(8, 'poojachadha347@gmail.com', '5'),
(8, 'subhu@yahoo.com', '5'),
(8, 'zoya@gmail.com', '2'),
(9, 'arul@gmail.com', '5'),
(9, 'naush@live.com', '5'),
(9, 'poojachadha347@gmail.com', '5'),
(9, 'subhu@yahoo.com', '3'),
(9, 'zoya@gmail.com', '1'),
(10, 'arul@gmail.com', '4'),
(10, 'naush@live.com', '4'),
(10, 'poojachadha347@gmail.com', '5'),
(10, 'subhu@yahoo.com', '4'),
(10, 'zoya@gmail.com', '5'),
(11, 'arul@gmail.com', '4'),
(11, 'naush@live.com', '4'),
(11, 'poojachadha347@gmail.com', '5'),
(11, 'subhu@yahoo.com', '2'),
(11, 'zoya@gmail.com', '3'),
(12, 'arul@gmail.com', '4'),
(12, 'naush@live.com', '4'),
(12, 'poojachadha347@gmail.com', '5'),
(12, 'subhu@yahoo.com', '5'),
(12, 'zoya@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`email`, `pass`, `firstname`, `lastname`, `cname`) VALUES
('arul@gmail.com', 'lego', 'Arul', 'Raj', 'Wipro'),
('naush@live.com', 'lego', 'Naushaba', '', 'Intuit'),
('poojachadha347@gmail.com', 'lego', 'Pooja', 'Chadha', 'Google'),
('subhu@yahoo.com', 'lego', 'Subhawana', '', 'Wipro'),
('zoya@gmail.com', 'lego', 'Zoya', 'Urooj', 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `empquestion`
--

CREATE TABLE `empquestion` (
  `qid` int(11) NOT NULL,
  `question` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empquestion`
--

INSERT INTO `empquestion` (`qid`, `question`) VALUES
(1, 'What is your general impression of the Bachelors degree program in Information\r\nScience and Engineering\r\n'),
(2, 'How much was the technical knowledge gained in our programme useful?'),
(3, 'How good are our students in programming/Coding?'),
(4, 'How do you rate the communication skills of our students?'),
(5, 'Please rate the ethical standards of our students.'),
(6, 'Please rate the work effectiveness &amp; efficiency of our students.'),
(7, 'How do you rate the team spirit of our students working in various groups?'),
(8, 'Please rate our students in meeting the given deadlines for the work assigned.'),
(9, 'How do you rate our students in taking up responsibilities and challenges?'),
(10, 'Please rate how our students adapt to the changing technical environment.'),
(11, 'Indicate the retention rate of our students in your organization.'),
(12, 'Please rate the contribution of our students towards community service and\r\nsociety.');

-- --------------------------------------------------------

--
-- Table structure for table `exitfeedback`
--

CREATE TABLE `exitfeedback` (
  `qid` int(11) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exitfeedback`
--

INSERT INTO `exitfeedback` (`qid`, `usn`, `answer`) VALUES
(1, '1BM16IS034', '4'),
(2, '1BM16IS034', '4'),
(3, '1BM16IS034', '4'),
(4, '1BM16IS034', '4'),
(5, '1BM16IS034', '4'),
(6, '1BM16IS034', '3'),
(7, '1BM16IS034', '4'),
(8, '1BM16IS034', '4'),
(9, '1BM16IS034', '5'),
(10, '1BM16IS034', '3'),
(11, '1BM16IS034', '5'),
(12, '1BM16IS034', '5'),
(13, '1BM16IS034', '5'),
(14, '1BM16IS034', '5'),
(15, '1BM16IS034', '5'),
(16, '1BM16IS034', '5'),
(17, '1BM16IS034', '5'),
(18, '1BM16IS034', '5'),
(19, '1BM16IS034', '5'),
(20, '1BM16IS034', '5'),
(21, '1BM16IS034', '5'),
(22, '1BM16IS034', '5');

-- --------------------------------------------------------

--
-- Table structure for table `exitquestion`
--

CREATE TABLE `exitquestion` (
  `qid` int(11) NOT NULL,
  `question` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exitquestion`
--

INSERT INTO `exitquestion` (`qid`, `question`) VALUES
(1, 'How would you like to rate the overall ambience of the Campus'),
(2, 'Please Rate the Cleanliness and Hygine of the Canteen'),
(3, 'Please Rate Quality of food served in the canteen'),
(4, 'Maintenance and Adequacy of Laboratory Equipment'),
(5, 'Adequacy of books and Journels in the Library	'),
(6, 'How Do You rate Reading Room facility in the Library'),
(7, 'How would you rate the Class Rooms with respect to Ventilation and Cleanliness'),
(8, 'How would you rate the Class Rooms with respect to Ventilation and Cleanliness'),
(9, 'Banking Facility and its service'),
(10, 'Encouragement for Innovative Research activity (like hobby club)'),
(11, 'Responsiveness and Assistance with regard to Placements'),
(12, 'Responsiveness of people in accouts section'),
(13, 'Responsiveness of people in admission section'),
(14, 'Responsiveness of people in Library staff'),
(15, 'Responsiveness of people in Security'),
(16, 'Opportunity for participating in sports	'),
(17, 'Opportunity for participating in cultural events'),
(18, 'COE Centre- Responsiveness of quires'),
(19, 'COE Centre-Display of information on notice board (exam schedule etc)	'),
(20, 'COE Centre- Issue of admission tickets	'),
(21, 'COE Centre-Declaration of results on time'),
(22, 'COE Centre-Issue of marks cards on time');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `pass`, `firstname`, `lastname`, `semester`, `email`, `address`, `dname`) VALUES
('1BM16IS034', 'lego', 'Gehna', 'Anand', 8, 'gehnaanand@gmail.com', 'Belgaum', 'ISE'),
('1BM16IS062', 'lego', 'Aishwarya', 'Naidu', 8, 'officialaishu@gmail.com', 'Hyderabad, Telangana', 'ISE'),
('1BM16IS064', '1234', 'Pooja', 'Chadha', 5, 'poojachadha347@gmail.com', 'KRISHNA NAGAR,SANTOSHI NAGAR,NR AGRAWAL ZILLI', 'ISE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `dname` (`dname`);

--
-- Indexes for table `alumnifeedback`
--
ALTER TABLE `alumnifeedback`
  ADD PRIMARY KEY (`qid`,`usn`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `alumniquestion`
--
ALTER TABLE `alumniquestion`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `dname` (`dname`);

--
-- Indexes for table `coursefeedback`
--
ALTER TABLE `coursefeedback`
  ADD PRIMARY KEY (`qid`,`cid`,`usn`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `coursequestion`
--
ALTER TABLE `coursequestion`
  ADD PRIMARY KEY (`qid`,`cid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `empfeedback`
--
ALTER TABLE `empfeedback`
  ADD PRIMARY KEY (`qid`,`email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`email`),
  ADD KEY `cname` (`cname`);

--
-- Indexes for table `empquestion`
--
ALTER TABLE `empquestion`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `exitfeedback`
--
ALTER TABLE `exitfeedback`
  ADD PRIMARY KEY (`qid`,`usn`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `exitquestion`
--
ALTER TABLE `exitquestion`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usn`),
  ADD KEY `dname` (`dname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`dname`) REFERENCES `department` (`dname`);

--
-- Constraints for table `alumnifeedback`
--
ALTER TABLE `alumnifeedback`
  ADD CONSTRAINT `alumnifeedback_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `alumniquestion` (`qid`),
  ADD CONSTRAINT `alumnifeedback_ibfk_2` FOREIGN KEY (`usn`) REFERENCES `alumni` (`usn`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dname`) REFERENCES `department` (`dname`);

--
-- Constraints for table `coursefeedback`
--
ALTER TABLE `coursefeedback`
  ADD CONSTRAINT `coursefeedback_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`),
  ADD CONSTRAINT `coursefeedback_ibfk_2` FOREIGN KEY (`qid`,`cid`) REFERENCES `coursequestion` (`qid`, `cid`);

--
-- Constraints for table `coursequestion`
--
ALTER TABLE `coursequestion`
  ADD CONSTRAINT `coursequestion_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`);

--
-- Constraints for table `empfeedback`
--
ALTER TABLE `empfeedback`
  ADD CONSTRAINT `empfeedback_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `empquestion` (`qid`),
  ADD CONSTRAINT `empfeedback_ibfk_2` FOREIGN KEY (`email`) REFERENCES `employer` (`email`);

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`cname`) REFERENCES `company` (`cname`);

--
-- Constraints for table `exitfeedback`
--
ALTER TABLE `exitfeedback`
  ADD CONSTRAINT `exitfeedback_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`),
  ADD CONSTRAINT `exitfeedback_ibfk_2` FOREIGN KEY (`qid`) REFERENCES `exitquestion` (`qid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dname`) REFERENCES `department` (`dname`);
--
-- Database: `lab`
--
CREATE DATABASE IF NOT EXISTS `lab` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lab`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_NUMBER` varchar(15) NOT NULL,
  `BRANCH_NAME` varchar(15) DEFAULT NULL,
  `BALANCE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_NUMBER`, `BRANCH_NAME`, `BALANCE`) VALUES
('101', 'KUMBALAGODU', 10000),
('102', 'KUMBALAGODU', 3000),
('103', 'VIJAYANAGAR', 10000),
('104', 'KUVEMPUNAGAR', 5000),
('105', 'GOKULUM', 10000),
('106', 'JAYANAGAR', 10000),
('107', 'KUMBALAGODU', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AUTHORID` int(5) NOT NULL,
  `ANAME` varchar(15) DEFAULT NULL,
  `ACITY` varchar(15) DEFAULT NULL,
  `ACOUNTRY` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AUTHORID`, `ANAME`, `ACITY`, `ACOUNTRY`) VALUES
(1000, 'MANJUNATH', 'BANGLORE', 'INDIA'),
(2000, 'TONY', 'HAYHOOD ', 'USA'),
(3000, 'TONIER', 'NEWYORK ', 'USA'),
(4000, 'TENNENBAUM', 'LONDON ', 'UK'),
(5000, 'BALGURU ', 'CHENNAI', 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `book_adoption`
--

CREATE TABLE `book_adoption` (
  `COURSE` int(5) NOT NULL,
  `SEM` int(3) NOT NULL,
  `ISBN` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_adoption`
--

INSERT INTO `book_adoption` (`COURSE`, `SEM`, `ISBN`) VALUES
(22, 1, 3388),
(44, 7, 3388),
(11, 5, 4400),
(11, 8, 5566),
(44, 4, 5566),
(11, 3, 7722),
(22, 4, 7722);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `CUSTOMER_NAME` varchar(15) NOT NULL,
  `LOAN_NUMBER` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`CUSTOMER_NAME`, `LOAN_NUMBER`) VALUES
('BHAVYA', 203),
('HARISH ', 202),
('RANI', 205),
('RAVI', 201),
('SRIRAM', 204);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_NAME` varchar(15) NOT NULL,
  `BRANCH_CITY` varchar(15) DEFAULT NULL,
  `ASSETS` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_NAME`, `BRANCH_CITY`, `ASSETS`) VALUES
('GOKULUM', 'MYSORE', 100000),
('JAYANAGAR', 'BANGALORE', 100000),
('KUMBALAGODU', 'BANGALORE', 200000),
('KUVEMPUNAGAR', 'MYSORE', 100000),
('VIJAYANAGAR', 'BANGALORE', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `BOOKID` int(5) NOT NULL,
  `TITLE` varchar(15) DEFAULT NULL,
  `AUTHORID` int(5) DEFAULT NULL,
  `PUBLISHERID` int(5) DEFAULT NULL,
  `CATEGORYID` int(5) DEFAULT NULL,
  `YEAR` int(5) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`BOOKID`, `TITLE`, `AUTHORID`, `PUBLISHERID`, `CATEGORYID`, `YEAR`, `PRICE`) VALUES
(1, 'DSC', 1000, 33, 2, 2000, 209),
(2, 'N/W', 4000, 44, 4, 2002, 365),
(3, 'VB-6', 2000, 11, 2, 2000, 300),
(4, 'SE', 4000, 44, 5, 2002, 500),
(5, 'ADA', 1000, 33, 4, 2000, 220);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORYID` int(5) NOT NULL,
  `DESCRIPTION` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORYID`, `DESCRIPTION`) VALUES
(1, 'OS'),
(2, 'LANGUAGES'),
(3, 'HARDWARE'),
(4, 'ALGORITHMS'),
(5, 'INTERNET');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE` int(4) NOT NULL,
  `CNAME` varchar(14) DEFAULT NULL,
  `DEPT` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE`, `CNAME`, `DEPT`) VALUES
(11, 'DCS', 'CSE'),
(22, 'ADA', 'ISE'),
(33, 'CN', 'ECE'),
(44, 'MUP', 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_NAME` varchar(15) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(15) DEFAULT NULL,
  `CUSTOMER_CITY` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_NAME`, `CUSTOMER_ADDRESS`, `CUSTOMER_CITY`) VALUES
('BHAVYA', 'GANDHI BAZAAR', 'BANGALORE'),
('HARISH ', 'BULL TEMPLE ROA', 'BANGALORE'),
('RANI', 'MG ROAD', ' RANI MG ROAD B'),
('RAVI', 'VIJAYANAGAR', 'BANGALORE'),
('SRIRAM', 'KUMBALAGODU', 'BANGALORE');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `CUSTOMER_NAME` varchar(15) NOT NULL,
  `ACCOUNT_NUMBER` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`CUSTOMER_NAME`, `ACCOUNT_NUMBER`) VALUES
('HARISH ', '102'),
('RAVI', '101'),
('RAVI', '103'),
('RAVI', '105'),
('RAVI', '106'),
('RAVI', '107'),
('SRIRAM', '104');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `REGNO` varchar(10) NOT NULL,
  `COURSE` int(4) NOT NULL,
  `SEM` int(4) NOT NULL,
  `MARKS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`REGNO`, `COURSE`, `SEM`, `MARKS`) VALUES
('1BM01CS006', 33, 6, 78),
('1BM01IS001', 22, 5, 56),
('1BM01IS037', 44, 7, 57),
('1BM01ME004', 11, 6, 55);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LOAN_NUMBER` int(6) NOT NULL,
  `BRANCH_NAME` varchar(15) DEFAULT NULL,
  `AMOUNT` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LOAN_NUMBER`, `BRANCH_NAME`, `AMOUNT`) VALUES
(201, 'KUMBALAGODU', 10000),
(202, 'JAYANAGAR', 20000),
(203, 'VIJAYANAGAR', 30000),
(204, 'KUVEMPUNAGAR', 40000),
(205, 'GOKULUM', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `ORDERNO` int(5) NOT NULL,
  `BOOKID` int(5) NOT NULL,
  `QUANTITY` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ORDERNO`, `BOOKID`, `QUANTITY`) VALUES
(100, 1, 100),
(200, 1, 20),
(300, 2, 20),
(400, 3, 50),
(500, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `PUBLISHERID` int(5) NOT NULL,
  `PNAME` varchar(15) DEFAULT NULL,
  `PCITY` varchar(15) DEFAULT NULL,
  `PCOUNTRY` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PUBLISHERID`, `PNAME`, `PCITY`, `PCOUNTRY`) VALUES
(11, 'WEILY', 'NEWDELHI', 'INDIA'),
(22, 'PHI', 'CALIFORNIA', 'USA'),
(33, 'SAPNA', 'BANGLORE', 'INDIA'),
(44, 'TMH', 'NEWYORK', 'USA'),
(55, 'WROX', 'TEXAS', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `REGNO` varchar(10) NOT NULL,
  `NAME` varchar(14) DEFAULT NULL,
  `MAJOR` varchar(10) DEFAULT NULL,
  `BDATE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`REGNO`, `NAME`, `MAJOR`, `BDATE`) VALUES
('1BM01CS006', 'DIVYA', 'CSE', '02-JAN-88'),
('1BM01IS001', 'KIRAN', 'ISE', '12-OCT-87'),
('1BM01IS037', 'JOHN', 'ISE', '07-NOV-87'),
('1BM01ME004', 'BABU', 'MEC', '23-SEP-88');

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `ISBN` int(5) NOT NULL,
  `BOOK_TITLE` varchar(13) NOT NULL,
  `PUBLISHER` varchar(12) DEFAULT NULL,
  `AUTHOR` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`ISBN`, `BOOK_TITLE`, `PUBLISHER`, `AUTHOR`) VALUES
(1144, 'DS WITH C', 'SAPNA', 'NANDAGOPAL'),
(3388, 'MP', 'TATA', 'BREY'),
(4400, 'C PROG', 'PHI', 'BALAGURU'),
(5566, 'CN', 'PHI', 'TENENBAUM'),
(7722, 'VB', 'PHI', 'HOLZNER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_NUMBER`),
  ADD KEY `BRANCH_NAME` (`BRANCH_NAME`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AUTHORID`);

--
-- Indexes for table `book_adoption`
--
ALTER TABLE `book_adoption`
  ADD PRIMARY KEY (`COURSE`,`SEM`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`CUSTOMER_NAME`,`LOAN_NUMBER`),
  ADD KEY `LOAN_NUMBER` (`LOAN_NUMBER`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_NAME`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`BOOKID`),
  ADD KEY `AUTHORID` (`AUTHORID`),
  ADD KEY `PUBLISHERID` (`PUBLISHERID`),
  ADD KEY `CATEGORYID` (`CATEGORYID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_NAME`);

--
-- Indexes for table `depositor`
--
ALTER TABLE `depositor`
  ADD PRIMARY KEY (`CUSTOMER_NAME`,`ACCOUNT_NUMBER`),
  ADD KEY `ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`REGNO`,`COURSE`,`SEM`),
  ADD KEY `COURSE` (`COURSE`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LOAN_NUMBER`),
  ADD KEY `BRANCH_NAME` (`BRANCH_NAME`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ORDERNO`,`BOOKID`),
  ADD KEY `BOOKID` (`BOOKID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PUBLISHERID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`REGNO`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`ISBN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`BRANCH_NAME`) REFERENCES `branch` (`BRANCH_NAME`);

--
-- Constraints for table `book_adoption`
--
ALTER TABLE `book_adoption`
  ADD CONSTRAINT `book_adoption_ibfk_1` FOREIGN KEY (`COURSE`) REFERENCES `course` (`COURSE`),
  ADD CONSTRAINT `book_adoption_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `text` (`ISBN`);

--
-- Constraints for table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`CUSTOMER_NAME`) REFERENCES `customer` (`CUSTOMER_NAME`),
  ADD CONSTRAINT `borrower_ibfk_2` FOREIGN KEY (`LOAN_NUMBER`) REFERENCES `loan` (`LOAN_NUMBER`);

--
-- Constraints for table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`AUTHORID`) REFERENCES `author` (`AUTHORID`),
  ADD CONSTRAINT `catalog_ibfk_2` FOREIGN KEY (`PUBLISHERID`) REFERENCES `publisher` (`PUBLISHERID`),
  ADD CONSTRAINT `catalog_ibfk_3` FOREIGN KEY (`CATEGORYID`) REFERENCES `category` (`CATEGORYID`);

--
-- Constraints for table `depositor`
--
ALTER TABLE `depositor`
  ADD CONSTRAINT `depositor_ibfk_1` FOREIGN KEY (`CUSTOMER_NAME`) REFERENCES `customer` (`CUSTOMER_NAME`),
  ADD CONSTRAINT `depositor_ibfk_2` FOREIGN KEY (`ACCOUNT_NUMBER`) REFERENCES `account` (`ACCOUNT_NUMBER`);

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`REGNO`) REFERENCES `student` (`REGNO`),
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`COURSE`) REFERENCES `course` (`COURSE`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`BRANCH_NAME`) REFERENCES `branch` (`BRANCH_NAME`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`BOOKID`) REFERENCES `catalog` (`BOOKID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lab\",\"table\":\"author\"},{\"db\":\"lab\",\"table\":\"catalog\"},{\"db\":\"lab\",\"table\":\"TEXT\"},{\"db\":\"lab\",\"table\":\"course\"},{\"db\":\"lab\",\"table\":\"text\"},{\"db\":\"lab\",\"table\":\"book_adoption\"},{\"db\":\"lab\",\"table\":\"CUSTOMER\"},{\"db\":\"lab\",\"table\":\"borrower\"},{\"db\":\"lab\",\"table\":\"account\"},{\"db\":\"lab\",\"table\":\"customer\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-21 18:19:38', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
