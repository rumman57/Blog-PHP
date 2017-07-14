-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 01:32 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'rumman', 'rumman142228@gmail.com', 'rumman57'),
(4, 'mim', 'mim@gmail.com', 'mim'),
(5, 'rafiz', 'rafiz@gmail.com', 'rafiz');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_date` date NOT NULL,
  `post_author` varchar(1000) NOT NULL,
  `post_image` text NOT NULL,
  `post_keywords` text NOT NULL,
  `post_content` longtext NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_date`, `post_author`, `post_image`, `post_keywords`, `post_content`, `category`) VALUES
(13, 'Rumman', '2016-04-10', 'Lorem Ipsum is simply dummy text', 'IMG_20150927_135631.jpg', 'Rumman', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and ', ''),
(14, 'Lorem Ipsum is simply dummy text', '2016-04-10', 'Lorem Ipsum is simply dummy text', '60_Gambuj_mosque.jpg', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and ', ''),
(17, 'Lorem Ipsum is simply dummy text', '2016-04-10', 'Lorem Ipsum is simply dummy text', '135.JPG', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and ', ''),
(18, 'Lorem Ipsum is simply dummy text', '2016-04-10', 'Lorem Ipsum is simply dummy text', 'Gardenia-8x10.jpg', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and ', ''),
(19, 'Lorem Ipsum is simply dummy text', '2016-04-10', 'Lorem Ipsum is simply dummy text', 'IMG_20150718_235716-1.jpg', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and ', ''),
(20, 'Sports Category', '2016-04-14', 'Sports Category', '376682_461130080593880_726195229_n.jpg', 'Sports Category', 'Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.Cricket is a popular game in our country.', 'Sports'),
(21, 'Another Sports Category Post', '2016-04-14', 'Another Sports Category Post', '263601_423752367691675_143291504_n.jpg', 'Another Sports Category Post', 'Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.Yes,Brazil is a Champion.', 'Sports'),
(22, 'Oh..Again Sports..', '2016-04-14', 'Oh..Again Sports..', '320615_426835040716741_231926994_n.jpg', 'Oh..Again Sports..', 'My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.My most favorite captain.', 'Sports'),
(23, 'Music Category', '2016-04-14', 'Music Category', '10377357_1211067978911802_7631581100745507642_n.jpg', 'Music Category', 'This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.This is the post of a music tab from menu bar.', 'Music'),
(24, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦¸à¦•à¦² à¦°à§‡à¦¡à¦¿à¦“ à¦šà§à¦¯à¦¾à¦¨à§‡à¦² à§§à¦Ÿà¦¿ à¦à¦ªà§à¦¸à§‡à¦° à¦®à¦§à§à¦¯à§‡', '2016-04-14', 'à¦¸à¦•à¦² à¦°à§‡à¦¡à¦¿à¦“', '13HYSTRI.JPG', 'à¦¸à¦•à¦² à¦°à§‡à¦¡à¦¿à¦“', 'à¦¸à¦•à¦² à¦ªà§à¦°à¦¶à¦‚à¦¸à¦¾ à¦®à¦¹à¦¾à¦¨ à¦†à¦²à§à¦²à¦¾à¦¹à§â€Œ à¦¤à¦¾à§Ÿà¦¾à¦²à¦¾à¦°à¥¤\r\n\r\n \r\n\r\nà¦ªà¦°à¦® à¦•à¦°à§à¦£à¦¾à¦®à§Ÿ à¦®à¦¹à¦¾à¦¨ à¦†à¦²à§à¦²à¦¾à¦¹à§â€Œà¦° à¦¨à¦¾à¦® à¦¨à¦¿à§Ÿà§‡ à¦†à¦®à¦¾à¦° à¦†à¦œà¦•à§‡à¦° à¦Ÿà¦¿à¦‰à¦¨ à¦¶à§à¦°à§ à¦•à¦°à¦›à¦¿à¥¤\r\n\r\n \r\n\r\nà¦†à¦¸à¦¸à¦¾à¦²à¦¾à¦®à§ à¦†à¦²à¦¾à¦‡à¦•à§à¦® à¦†à¦®à¦¾à¦° à¦ªà§à¦°à¦¾à¦£à¦ªà§à¦°à¦¿à§Ÿ à¦›à§‹à¦Ÿ, à¦¬à§œ à¦­à¦¾à¦‡-à¦¬à§‹à¦¨à§‡à¦°à¦¾à¥¤à¦†à¦¶à¦¾ à¦¨à§Ÿ, à¦¬à¦¿à¦¶à§à¦¬à¦¾à¦¸ à¦†à¦²à§à¦²à¦¾à¦¹à§â€Œà¦° à¦°à¦¹à¦®à¦¤à§‡ à¦–à§à¦¬ à¦­à¦¾à¦² à¦†à¦›à§‡à¦¨à¥¤ à¦†à¦®à¦¿à¦“ à¦†à¦²à¦¹à¦¾à¦®à¦¦à§à¦²à¦¿à¦²à§à¦²à¦¾à¦¹à§â€Œ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦¦à§‹à§Ÿà¦¾à§Ÿ à¦­à¦¾à¦²à¦‡ à¦†à¦›à¦¿à¥¤\r\n\r\n \r\n\r\nà¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦°à¦•à§‡ à¦¨à¦¤à§à¦¨ à¦¤à¦¥à§à¦¯ à¦¦à§‡à¦“à§Ÿà¦¾, à¦¨à¦¤à§à¦¨ à¦•à¦¿à¦›à§ à¦‰à¦ªà¦¹à¦¾à¦° à¦¦à§‡à¦“à§Ÿà¦¾, à¦¤à¦¾à¦° à¦¬à¦¿à¦¨à¦¿à¦®à§Ÿà§‡ à¦à¦•à¦Ÿà§ à¦¥à§à¦¯à¦¾à¦‚à¦•à¦¸ à¦ªà¦¾à¦“à§à¦¯à¦¾à¦° à¦†à¦¶à¦¾ à¦•à¦°à¦¿à¥¤\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\nà¦¤à§‹ à¦¯à¦¾à¦‡ à¦¹à§‹à¦•, à¦†à¦¸à¦² à¦•à¦¥à¦¾à§Ÿ à¦†à¦¸à¦¾ à¦¯à¦¾à¦•à¥¤ à¦†à¦œà¦•à§‡ à¦†à¦®à¦¿ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦†à¦®à¦¾à¦° à¦¬à§à¦¯à¦¬à¦¹à§à¦°à¦¤ à¦à¦•à¦Ÿà¦¾ à¦à¦ªà§à¦¸ à¦¶à§‡à§Ÿà¦¾à¦° à¦•à¦°à¦›à¦¿à¥¤ à¦†à¦®à¦¾à¦° à¦®à¦¨à§‡ à¦¹à§Ÿ, à¦…à¦¨à§‡à¦•à§‡à¦‡ à¦à¦Ÿà¦¿ à¦šà¦¾à¦‡à¦›à¦¿à¦²à§‡à¦¨/à¦–à§à¦à¦œà¦›à¦¿à¦²à§‡à¦¨à¥¤\r\n\r\n2g/3g à¦¸à¦¬ à¦à¦²à¦¾à¦•à¦¾à§Ÿ à¦‡ à¦¹à¦¬à§‡à¥¤\r\n\r\nà¦¸à¦¬à¦¾à¦‡ à¦¶à§à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨\r\n\r\nà¦à¦®à¦¨ à¦•à¦¿ à¦¬à¦¿à¦¦à§‡à¦¶ à¦ à¦¯à¦¾à¦°à¦¾ à¦†à¦›à§‡à¦¨ à¦¤à¦¾à¦°à¦¾à¦“ à¦à¦‡ à¦à¦ªà§à¦¸ à¦¦à¦¿à§Ÿà¦¾ à¦°à§‡à¦¡à¦¿à¦“ à¦¶à§à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨à¥¤\r\n\r\n \r\n\r\n \r\n\r\nà¦à¦‡ à¦à¦ªà§à¦¸ à¦Ÿà¦¿à¦° à¦¨à¦¾à¦® à¦¹à¦²à¦ƒ All Bangladeshi fm Radio\r\n\r\nà¦†à¦° à¦à¦Ÿà¦¿à¦° à¦¸à¦¾à¦‡à¦œ à¦¹à¦²à¦ƒ 1.4 mb\r\n\r\nà¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦²à¦¿à¦‚à¦•à¦ƒ Click here to Download\r\n\r\n \r\n\r\n \r\n\r\n(à¦¬à¦¿à¦¶à§‡à¦· à¦¦à§ƒà¦·à§à¦Ÿà¦¬à§à¦¯à¦ƒ à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦•à¦°à¦¤à§‡ à¦¹à¦²à§‡, à§§à¦®à§‡ à¦²à¦¿à¦‚à¦•à§‡ à¦—à¦¿à§Ÿà§‡ Create generate link à¦à¦° à¦¨à¦¿à¦šà§‡à¦° à¦Ÿà¦¿à¦• à¦šà¦¿à¦¹à§à¦¨ à¦Ÿà¦¿ à¦¤à§à¦²à§‡ à¦¦à¦¿à§Ÿà§‡ Create generate link à¦ à¦•à§à¦²à¦¿à¦• à¦•à¦°à§à¦¨, à¦¤à¦¾à¦°à¦ªà¦° à¦ªà¦°à§‡à¦° à¦ªà§‡à¦œ à¦†à¦¸à¦²à§‡ Click here to Download à¦ à¦•à§à¦²à¦¿à¦• à¦•à¦°à§à¦¨, à¦¤à¦¾à¦¹à¦²à§‡à¦‡ à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦¶à§à¦°à§ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦¬à§‡)\r\n\r\n \r\n\r\nà¦…à¦¨à§‡à¦• à¦¬à§‡à¦¶à¦¿ à¦•à¦¥à¦¾ à¦¬à¦²à§‡ à¦«à§‡à¦²à§‡à¦›à¦¿, à¦¤à¦¾à¦‡ à¦¸à¦°à¦¿à¥¤ à¦¤à§‹ à¦¯à¦¾à¦‡ à¦¹à§‹à¦• à¦†à¦®à¦¾à¦° à¦­à§à¦²à¦¤à§à¦°à§à¦Ÿà¦¿ à¦¹à¦¤à§‡à¦‡ à¦ªà¦¾à¦°à§‡, à¦•à§‡à¦¨à¦¨à¦¾ à¦®à¦¾à¦¨à§à¦· à¦®à¦¾à¦¤à§à¦°à¦‡ à¦­à§à¦²à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦¾à¦° à¦­à§à¦²à¦¤à§à¦°à§à¦Ÿà¦¿ à¦—à§à¦²à§‹ à¦ªà§à¦²à¦¿à¦œ à¦•à§à¦·à¦®à¦¾à¦° à¦šà§‹à¦–à§‡ à¦¦à§‡à¦–à¦¬à§‡à¦¨à¥¤ à¦†à¦®à¦¿ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦à¦•à¦œà¦¨ à¦›à§‹à¦Ÿ à¦­à¦¾à¦‡à¥¤ à¦†à¦° à¦›à§‹à¦Ÿ à¦­à¦¾à¦‡ à¦¹à¦¿à¦¸à§‡à¦¬à§‡à¦‡ à¦¥à¦¾à¦•à¦¤à§‡ à¦šà¦¾à¦‡à¥¤\r\n\r\n \r\n\r\nà¦†à¦²à§à¦²à¦¾à¦¹à§â€Œ à¦¹à¦¾à¦«à§‡à¦œà¥¤', 'Technology'),
(25, 'CracK (IDM+Bijoy Business Soft)  ', '2016-04-14', 'CracK (IDM+Bijoy Business Soft)  ', '206992_4959.jpg', 'CracK (IDM+Bijoy Business Soft)  ', 'Crack à¦®à¦¾à¦¨à§‡ à¦•à§€ à¦†à¦ªà¦¨à¦¾à¦°à¦¾ à¦¤à§‹ à¦¸à¦¬à¦¾à¦‡ à¦¯à¦¾à¦¨à§‡à¦¨à¥¤ Crack à¦¹à¦² à¦à¦• à¦§à¦°à¦¨à§‡à¦° Patch à¦¯à¦¾ à¦†à¦ªà¦¾à¦•à§‡ à¦«à§à¦°à§€ à¦¤à§‡ à¦ªà§à¦°à¦¿à¦®à¦¿à§Ÿà¦¾à¦® à¦¸à¦«à¦Ÿà¦“à¦¯à¦¼à§à¦¯à¦¾à¦° à¦šà¦¾à¦²à¦¾à¦¨à§‹à¦° à¦¸à§à¦¯à§‹à¦— à¦•à¦°à§‡ à¦¦à§‡à§Ÿà¥¤ à¦†à¦®à¦¿ à¦œà¦¾à¦¨à¦¿ à¦¯à§‡ à¦à¦‡ à¦¸à¦«à¦Ÿà¦“à¦¯à¦¼à§à¦¯à¦¾à¦° à¦—à§à¦²à§‹à¦° Crack à¦†à¦›à§‡ à¦¤à¦¬à§à¦“ à¦†à¦®à¦¿ à¦†à¦®à¦¾à¦° à¦šà§‡à¦¸à§à¦Ÿà¦¾à§Ÿ à¦†à¦®à¦¾à¦° à¦ªà¦¦à§à¦§à¦¤à¦¿à¦¤à§‡ Crack à¦•à¦°à§‡à¦›à¦¿à¥¤ à¦¸à§‡à¦‡ Crack à¦—à§à¦²à§‹ à¦†à¦®à¦¿ à¦†à¦œ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦®à¦¾à¦à§‡ à¦¸à§‡à§Ÿà¦¾à¦° à¦•à¦°à¦¬à¥¤<br>\r\n\r\nà¦†à¦®à¦¿ à§¨ à¦Ÿà¦¾ à¦¸à¦«à¦Ÿà¦“à¦¯à¦¼à§à¦¯à¦¾à¦° à¦à¦° Crack à¦†à¦œ à¦¸à§‡à§Ÿà¦¾à¦° à¦•à¦°à¦¬à¥¤<br>\r\n\r\nà§§. Internet Download Manager à¦à¦° à¦²à§‡à¦Ÿà§‡à¦¸à§à¦Ÿ à¦­à¦¾à¦°à§à¦¸à¦¨à§‡à¦° CracK <br>\r\n\r\nà¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦…à¦¬à¦¶à§à¦¯à¦‡ Internet Download Manager 6.25 Build 14 à¦Ÿà¦¾ à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦†à¦° à¦¯à¦¦à¦¿ à¦†à¦—à§‡ à¦¥à§‡à¦•à§‡ à¦¥à¦¾à¦•à§‡ à¦¤à¦¾à¦¹à¦²à§‡ à¦¤à§‹ à¦­à¦¾à¦²à¦‡à¥¤<br>\r\n\r\nà¦à¦–à¦¨ Patch à¦«à¦¾à¦‡à¦² à¦Ÿà¦¾ à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦•à¦°à§à¦¨ à¦¯à¦¾à¦° à¦¦à§à¦¬à¦¾à¦°à¦¾ Crack à¦•à¦°à¦¬à§‡à¦¨à¥¤ Download\r\n\r\nà¦à¦–à¦¨ à¦¨à¦¿à¦šà§‡à¦° à¦ªà¦¿à¦• à¦Ÿà¦¿ à¦«à¦²à§‹ à¦•à¦°à§‡ Crack à¦•à¦°à§‡ à¦«à§‡à¦²à§à¦¨à¥¤<br><br>\r\n\r\n\r\nà§¨. Bijoy Business Soft à¦à¦° CracK<br>\r\n\r\nà¦à¦Ÿà¦¿ à¦à¦•à¦Ÿà¦¿ à¦¸à¦¿à¦°à¦¿à§Ÿà¦¾à¦² à¦•à¦¿ à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°à¥¤ Bijoy Business Soft à¦“à¦ªà§‡à¦¨ à¦•à¦°à¦²à§‡ à¦¸à¦¿à¦°à¦¿à§Ÿà¦¾à¦²<br> à¦•à¦¿ à¦“  à¦¸à¦¿à¦¡à¦¿ à¦•à§€ à¦šà¦¾à§Ÿà¥¤ à¦à¦–à¦¨ à¦†à¦®à¦¾à¦° à¦¦à§‡à¦“à§Ÿà¦¾ crack à¦Ÿà¦¾ à¦“à¦ªà§‡à¦¨ à¦•à¦°à§‡ Get Key à¦•à§à¦²à¦¿à¦• à¦•à¦°à§à¦¨ à¦¦à§‡à¦–à¦¬à§‡à¦¨ à¦¸à¦¿à¦°à¦¿à§Ÿà¦¾à¦² à¦•à¦¿ à¦“  à¦¸à¦¿à¦¡à¦¿ à¦•à§€ à¦ªà§‡à§Ÿà§‡ à¦—à§‡à¦›à§‡à¦¨à¥¤ à¦à¦–à¦¨ à¦à¦‡ à¦¦à§à¦‡à¦Ÿà¦¾ à¦•à¦ªà¦¿<br> à¦•à¦°à§‡ Bijoy Business Soft à¦à¦° à¦¨à¦¿à¦°à§à¦¦à¦¿à¦¸à§à¦Ÿ à¦¸à§à¦¥à¦¾à¦¨à§‡ à¦ªà§‡à¦¸à§à¦Ÿ à¦•à¦°à§à¦¨à¥¤ à¦¬à¦¾à¦¸ à¦•à¦¾à¦œ à¦¶à§‡à¦¸à¥¤ <br>\r\nà¦†à¦° à¦¹à§à¦¯à¦¾ Bijoy Business Soft Crack à¦¸à§à¦§à§ Windows 7 à¦à¦‡ à¦•à¦¾à¦œ à¦•à¦°à¦¬à§‡à¥¤<br>\r\n\r\nBijoy Business Soft Crack à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦•à¦°à§à¦¨  Download\r\n\r\nà¦•à§‹à¦¨à¦•à¦¿à¦›à§ à¦œà¦¾à¦¨à¦¾à¦° à¦‡à¦šà§à¦›à¦¾ à¦¹à¦²à§‡ à¦†à¦®à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦«à§‡à¦‡à¦¸à¦¬à§à¦•à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤', 'Technology'),
(26, 'à¦ªà¦¾à¦¨à¦¾à¦®à¦¾ à¦ªà§‡à¦ªà¦¾à¦°à§à¦¸à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦¨à¦¾à¦® à¦–à§à¦à¦œà¦›à§‡ à¦à¦¨à¦¬à¦¿à¦†à¦°', '2016-04-14', 'à¦ªà¦¾à¦¨à¦¾à¦®à¦¾ à¦ªà§‡à¦ªà¦¾à¦°à§à¦¸à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦¨à¦¾à¦® à¦–à§à¦à¦œà¦›à§‡ à¦à¦¨à¦¬à¦¿à¦†à¦°', '10923819_775790245851164_6615389698450094886_o.jpg', 'à¦ªà¦¾à¦¨à¦¾à¦®à¦¾ à¦ªà§‡à¦ªà¦¾à¦°à§à¦¸à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦¨à¦¾à¦® à¦–à§à¦à¦œà¦›à§‡ à¦à¦¨à¦¬à¦¿à¦†à¦°', 'à¦¸à¦‚à¦¸à§à¦¥à¦¾à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨ à¦®à§‹. à¦¨à¦œà¦¿à¦¬à§à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦¬à§à¦§à¦¬à¦¾à¦° à¦¸à¦¾à¦‚à¦¬à¦¾à¦¦à¦¿à¦•à¦¦à§‡à¦° à¦à¦• à¦ªà§à¦°à¦¶à§à¦¨à§‡ à¦¬à¦²à§‡à¦›à§‡à¦¨, <br>â€œà¦®à¦¾à¦¨à¦¿ à¦²à¦¨à§à¦¡à¦¾à¦°à¦¿à¦‚à§Ÿà§‡à¦° à¦¬à¦¿à¦·à§Ÿà§‡ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦‰à¦ªà¦° à¦¯à§‡ à¦…à¦°à§à¦ªà¦¿à¦¤ à¦¦à¦¾à§Ÿà¦¿à¦¤à§à¦¬ à¦¸à§‡à¦Ÿà¦¾ à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦ªà¦¾à¦²à¦¨ à¦•à¦°à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à¦›à¦¿à¥¤â€<br>\r\n\r\nà¦¬à¦¿à¦¶à§à¦¬à¦œà§à§œà§‡ à¦†à¦²à§‹à¦šà¦¿à¦¤ à¦ªà¦¾à¦¨à¦¾à¦®à¦¾ à¦ªà§‡à¦ªà¦¾à¦°à§à¦¸à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦•à¦¾à¦°à¦“ à¦¨à¦¾à¦® à¦ªà¦¾à¦“à§Ÿà¦¾ à¦—à§‡à¦›à§‡ à¦•à¦¿ à¦¨à¦¾- <br>à¦‡à¦†à¦°à¦à¦«à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦ªà§à¦°à¦¾à¦• à¦¬à¦¾à¦œà§‡à¦Ÿ à¦†à¦²à§‹à¦šà¦¨à¦¾à§Ÿ à¦¸à§‡à¦‡ à¦ªà§à¦°à¦¶à§à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦à¦¨à¦¬à¦¿à¦†à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨à¦•à§‡à¥¤\r\n\r\nà¦¤à¦¿à¦¨à¦¿ à¦¬à¦²à§‡à¦¨, â€œà¦ à¦¬à¦¿à¦·à§Ÿà§‡ à¦¦à§à¦¦à¦•, à¦¸à¦¿à¦†à¦‡à¦¡à¦¿ à¦“ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦«à¦¿à¦¨à§à¦¯à¦¾à¦¨à§à¦¸à¦¿à§Ÿà¦¾à¦² à¦‡à¦‰à¦¨à¦¿à¦Ÿ à¦ <br>à¦¤à¦¿à¦¨à¦Ÿà¦¿ à¦¸à¦‚à¦¸à§à¦¥à¦¾ à¦®à¦¾à¦¨à¦¿ à¦²à¦¨à§à¦¡à¦¾à¦°à¦¿à¦‚ à¦°à§‹à¦§à§‡ à¦à¦•à¦¯à§‹à¦—à§‡ à¦•à¦¾à¦œ à¦•à¦°à¦¬à§‡à¥¤â€<br><br>\r\n\r\nà¦ªà¦¾à¦¨à¦¾à¦®à¦¾à¦° à¦² à¦«à¦¾à¦°à§à¦® à¦®à§‹à¦¸à§à¦¯à¦¾à¦• à¦«à¦¨à¦¸à§‡à¦•à¦¾à¦° à¦—à§‹à¦ªà¦¨ à¦¨à¦¥à¦¿ à¦«à¦¾à¦à¦¸à§‡ à¦°à¦¥à§€-à¦®à¦¹à¦¾à¦°à¦¥à§€à¦¦à§‡à¦° à¦•à¦° à¦«à¦¾à¦à¦•à¦¿à¦°<br> à¦šà¦¿à¦¤à§à¦° à¦‰à¦ à§‡ à¦†à¦¸à¦¾ à¦¨à¦¿à§Ÿà§‡ à¦¬à¦¿à¦¶à§à¦¬à§à¦œà§œà§‡ à¦†à¦²à§‹à¦šà¦¨à¦¾à¦° à¦®à¦§à§à¦¯à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿ à¦•à¦¾à¦°à¦“ à¦¨à¦¾à¦®à¦“ à¦à¦¤à§‡ à¦°à§Ÿà§‡à¦›à§‡ à¦•à¦¿ à¦¨à¦¾,<br> à¦¤à¦¾à¦° à¦¤à¦¦à¦¨à§à¦¤à§‡ à¦‡à¦¤à§‹à¦®à¦§à§à¦¯à§‡ à¦à¦•à¦Ÿà¦¿ à¦•à¦®à¦¿à¦Ÿà¦¿ à¦—à¦ à¦¨à§‡à¦° à¦•à¦¥à¦¾ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡à¦›à§‡ à¦¦à§à¦°à§à¦¨à§€à¦¤à¦¿ à¦¦à¦®à¦¨ à¦•à¦®à¦¿à¦¶à¦¨à¥¤<br><br>\r\n\r\nà¦—à¦¤ à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡ à¦“à§Ÿà¦¾à¦¶à¦¿à¦‚à¦Ÿà¦¨à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦•à¦¨à¦¸à§‹à¦°à§à¦¶à¦¿à¦¯à¦¼à¦¾à¦® à¦…à¦« à¦‡à¦¨à¦­à§‡à¦¸à§à¦Ÿà¦¿à¦—à§‡à¦Ÿà¦¿à¦­ <br>à¦œà¦¾à¦°à§à¦¨à¦¾à¦²à¦¿à¦¸à§à¦Ÿà¦¸ (à¦†à¦‡à¦¸à¦¿à¦†à¦‡à¦œà§‡) à¦®à§‹à¦¸à§à¦¯à¦¾à¦• à¦«à¦¨à¦¸à§‡à¦•à¦¾à¦° à¦—à¦¤ à§ªà§¦ à¦¬à¦›à¦°à§‡à¦° à¦¨à¦¥à¦¿ à¦ªà§à¦°à¦•à¦¾à¦¶ à¦•à¦°à§‡, <br>à¦¯à¦¾à¦¤à§‡ à¦¤à¦¾à¦¦à§‡à¦° à¦…à¦¸à¦‚à¦–à§à¦¯ à¦®à¦•à§à¦•à§‡à¦²à§‡à¦° à¦¨à¦¾à¦® à¦«à¦¾à¦à¦¸ à¦¹à§Ÿà§‡ à¦¯à¦¾à§Ÿà¥¤<br><br>\r\n\r\nà¦à¦‡ à¦®à¦•à§à¦•à§‡à¦²à¦¦à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦°à§Ÿà§‡à¦›à§‡à¦¨ à¦†à¦‡à¦¸à¦²à§à¦¯à¦¾à¦¨à§à¦¡à§‡à¦° à¦ªà§à¦°à¦§à¦¾à¦¨à¦®à¦¨à§à¦¤à§à¦°à§€ à¦¸à¦¿à¦—à¦®à§à¦¨à§à¦¡ à¦—à§à¦¨à¦²à¦¾à¦—à¦¸à¦¨, à¦¸à§Œà¦¦à¦¿<br> à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦¸à¦¾à¦²à¦®à¦¾à¦¨, à¦†à¦®à¦¿à¦°à¦¾à¦¤à§‡à¦° à¦†à¦®à¦¿à¦° à¦–à¦²à¦¿à¦«à¦¾ à¦¬à¦¿à¦¨ à¦œà¦¾à§Ÿà§‡à¦¦ à¦¬à¦¿à¦¨ à¦¸à§à¦²à¦¤à¦¾à¦¨, à¦¬à§à¦°à¦¿à¦Ÿà¦¿à¦¶ <br>à¦ªà§à¦°à¦§à¦¾à¦¨à¦®à¦¨à§à¦¤à§à¦°à§€ à¦¡à§‡à¦­à¦¿à¦¡ à¦•à§à¦¯à¦¾à¦®à§‡à¦°à¦¨à§‡à¦° à¦¬à¦¾à¦¬à¦¾, à¦°à§à¦¶ à¦ªà§à¦°à§‡à¦¸à¦¿à¦¡à§‡à¦¨à§à¦Ÿ à¦­à§à¦²à¦¾à¦¦à¦¿à¦®à¦¿à¦° à¦ªà§à¦¤à¦¿à¦¨à§‡à¦° à¦¸à¦¹à¦¯à§‹à¦—à§€à¦° à¦¨à¦¾à¦® à¦°à§Ÿà§‡à¦›à§‡à¥¤<br><br>\r\n\r\nà¦¬à¦²à¦¾ à¦¹à¦šà§à¦›à§‡, à¦•à¦°à¦œà¦¾à¦² à¦à§œà¦¿à§Ÿà§‡ à¦¬à§‡à¦¨à¦¾à¦®à§‡ à¦¸à¦®à§à¦ªà¦¦à§‡à¦° à¦ªà¦¾à¦¹à¦¾à§œ à¦—à§œà¦¤à§‡, à¦†à¦‡à¦¨à¦•à§‡ à¦¬à§à§œà§‹ à¦†à¦™à§à¦² <br>à¦¦à§‡à¦–à¦¿à§Ÿà§‡ à¦¦à§‡à¦¶à§‡ à¦²à§à¦Ÿà§‡à¦° à¦Ÿà¦¾à¦•à¦¾ à¦¬à¦¿à¦¦à§‡à¦¶à§‡ à¦ªà¦¾à¦ à¦¾à¦¤à§‡ à¦®à§‹à¦¸à§à¦¯à¦¾à¦• à¦«à¦¨à¦¸à§‡à¦•à¦¾à¦° à¦ªà¦°à¦¾à¦®à¦°à§à¦¶ à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦¤à¦¾à¦°à¦¾à¥¤<br>\r\n\r\nà¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à§‡à¦° à¦ªà§à¦°à¦§à¦¾à¦¨à¦®à¦¨à§à¦¤à§à¦°à§€ à¦¨à¦“à§Ÿà¦¾à¦œ à¦¶à¦°à¦¿à¦«à§‡à¦° à¦¸à¦¨à§à¦¤à¦¾à¦¨, à¦¬à¦²à¦¿à¦‰à¦¡ à¦¤à¦¾à¦°à¦•à¦¾ à¦…à¦®à¦¿à¦¤à¦¾à¦­ à¦¬à¦šà§à¦šà¦¨ à¦“ <br>à¦à¦¶à§à¦¬à¦°à¦¿à§Ÿà¦¾ à¦°à¦¾à¦‡ à¦¬à¦šà§à¦šà¦¨à§‡à¦° à¦¨à¦¾à¦® à¦à¦²à§‡à¦“ à¦†à¦‡à¦¸à¦¿à¦†à¦‡à¦œà§‡à¦° à¦à¦–à¦¨ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦ªà§à¦°à¦•à¦¾à¦¶ à¦•à¦°à¦¾ à¦¨à¦¥à¦¿à¦¤à§‡ à¦•à§‹à¦¨à§‹ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦¿à¦° à¦¨à¦¾à¦® à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿà¦¨à¦¿à¥¤<br>\r\n\r\nâ€˜à¦¬à¦¾à¦œà§‡à¦Ÿ à¦¹à¦¬à§‡ à¦…à¦¸à§Ž à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦†à¦¤à¦™à§à¦•à§‡à¦°â€™<br><br>\r\n\r\nà¦†à¦¸à¦›à§‡ à¦¬à¦¾à¦œà§‡à¦Ÿà§‡ à¦¸à§Ž à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§€à¦¦à§‡à¦° à¦ªà§à¦°à¦£à§‹à¦¦à¦¨à¦¾ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à¦¬à§‡ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ à¦à¦¨à¦¬à¦¿à¦†à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨ <br>à¦¨à¦œà¦¿à¦¬à§à¦° à¦¬à¦²à§‡à¦¨, â€œâ€˜à¦†à¦—à¦¾à¦®à§€ à¦¬à¦¾à¦œà§‡à¦Ÿ à¦¹à¦¬à§‡ à¦…à¦¸à§Ž à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦®à§‚à¦°à§à¦¤à¦¿à¦®à¦¾à¦¨ à¦†à¦¤à¦™à§à¦•à¥¤â€<br><br>\r\n\r\nà¦†à¦—à¦¾à¦®à§€ à¦œà§à¦¨ à¦®à¦¾à¦¸à§‡ à§¨à§¦à§§à§¬-à§§à§­ à¦…à¦°à§à¦¥à¦¬à¦›à¦°à§‡à¦° à¦œà¦¨à§à¦¯ à§© à¦²à¦¾à¦– à§ªà§¦ à¦¹à¦¾à¦œà¦¾à¦° à¦•à§‹à¦Ÿà¦¿ à¦Ÿà¦¾à¦•à¦¾à¦°<br> à¦¬à¦¾à¦œà§‡à¦Ÿ à¦¸à¦‚à¦¸à¦¦à§‡ à¦‰à¦ªà¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à¦¤à§‡ à¦¯à¦¾à¦šà§à¦›à§‡à¦¨ à¦…à¦°à§à¦¥à¦®à¦¨à§à¦¤à§à¦°à§€ à¦†à¦¬à§à¦² à¦®à¦¾à¦² à¦†à¦¬à¦¦à§à¦² à¦®à§à¦¹à¦¿à¦¤à¥¤<br><br>\r\n\r\nà¦ªà§à¦°à¦¤à¦¿à¦¬à¦›à¦°à¦‡ à¦œà¦¾à¦¤à§€à§Ÿ à¦¬à¦¾à¦œà§‡à¦Ÿ à¦ªà§à¦°à¦£à§Ÿà¦¨à§‡à¦° à¦†à¦—à§‡ à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿à¦¬à¦¿à¦¦, à¦—à¦¬à§‡à¦·à¦•à¦¸à¦¹ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨<br> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦†à¦²à§‹à¦šà¦¨à¦¾à§Ÿ à¦¬à¦¸à§‡ à¦°à¦¾à¦œà¦¸à§à¦¬ à¦†à¦¦à¦¾à§Ÿà¦•à¦¾à¦°à§€ à¦¸à¦‚à¦¸à§à¦¥à¦¾ à¦à¦¨à¦¬à¦¿à¦†à¦°à¥¤ à¦à¦°à¦‡ <br>à¦§à¦¾à¦°à¦¾à¦¬à¦¾à¦¹à¦¿à¦•à¦¤à¦¾à§Ÿ à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿ à¦¬à¦¿à¦·à§Ÿà¦• à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦•à¦¦à§‡à¦° à¦¸à¦‚à¦—à¦ à¦¨ à¦‡à¦†à¦°à¦à¦«à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¸à¦­à¦¾ à¦¹à§Ÿà¥¤<br>\r\n\r\nà¦à¦¨à¦¬à¦¿à¦†à¦° à¦¸à¦®à§à¦®à§‡à¦²à¦¨ à¦•à¦•à§à¦·à§‡ à¦à¦‡ à¦ªà§à¦°à¦¾à¦• à¦¬à¦¾à¦œà§‡à¦Ÿ à¦†à¦²à§‹à¦šà¦¨à¦¾à§Ÿ à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¦¤à§à¦¬ à¦•à¦°à§‡à¦¨ à¦à¦¨à¦¬à¦¿à¦†à¦° <br>à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨à¥¤ à¦‡à¦†à¦°à¦à¦« à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦¸à¦¾à¦‡à¦« à¦‡à¦¸à¦²à¦¾à¦® à¦¦à¦¿à¦²à¦¾à¦² à¦¸à¦žà§à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§‡à¦¨à¥¤<br><br>\r\n\r\nà¦¬à§ˆà¦ à¦•à§‡ à¦à¦¨à¦¬à¦¿à¦†à¦°à§‡à¦° à¦¸à¦¦à¦¸à§à¦¯ (à¦­à§à¦¯à¦¾à¦Ÿ) à¦œà¦¾à¦¹à¦¾à¦™à§à¦—à§€à¦° à¦¹à§‹à¦¸à¦¾à¦‡à¦¨, à¦ªà§à¦°à¦¾à¦• à¦¬à¦¾à¦œà§‡à¦Ÿ à¦¸à¦®à¦¨à§à¦¬à§Ÿà¦•à¦¾à¦°à§€ <br>à¦†à¦•à¦¬à¦° à¦¹à§‹à¦¸à§‡à¦¨, à¦‡à¦†à¦°à¦à¦« à¦¸à¦­à¦¾à¦ªà¦¤à¦¿ à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦• à¦œà¦¿à§Ÿà¦¾à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨à¦¸à¦¹ à¦¸à¦‚à¦—à¦ à¦¨à§‡à¦° à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¸à¦¦à¦¸à§à¦¯ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤ à¦›à¦¿à¦²à§‡à¦¨à¥¤<br><br>\r\n\r\nà¦¨à¦œà¦¿à¦¬à§à¦° à¦¬à¦²à§‡à¦¨, â€œà¦…à¦­à§à¦¯à¦¨à§à¦¤à¦°à§€à¦£ à¦¸à¦®à§à¦ªà¦¦à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¦à§‡à¦¶à§‡à¦° à¦‰à¦¨à§à¦¨à§Ÿà¦¨ à¦¤à¦¥à¦¾ à¦¬à¦¾à¦œà§‡à¦Ÿ à¦ªà§à¦°à¦£à§Ÿà¦¨ à¦•à¦°à¦¾<br> à¦à¦–à¦¨ à¦¸à¦®à§Ÿà§‡à¦° à¦¦à¦¾à¦¬à¦¿à¥¤ à¦†à¦®à¦°à¦¾ à¦…à¦­à§à¦¯à¦¨à§à¦¤à¦°à§€à¦£ à¦¸à¦®à§à¦ªà¦¦à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¦à§‡à¦¶à¦•à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¨à¦¿à¦¤à§‡ à¦•à¦¾à¦œ à¦•à¦°à¦›à§‡ à¦¯à¦¾à¦šà§à¦›à¦¿à¥¤â€<br><br>\r\nà¦šà¦²à¦¤à¦¿ à§¨à§¦à§§à§«-à§§à§¬ à¦…à¦°à§à¦¥à¦¬à¦›à¦°à§‡ à¦°à¦¾à¦œà¦¸à§à¦¬ à¦†à¦¦à¦¾à§Ÿà§‡ à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾ à¦¥à§‡à¦•à§‡ à¦…à¦¨à§‡à¦• à¦ªà¦¿à¦›à¦¿à§Ÿà§‡ à¦à¦¨à¦¬à¦¿à¦†à¦°à¥¤ <br>à¦…à¦°à§à¦¥à¦¬à¦›à¦°à§‡à¦° à¦ªà§à¦°à¦¥à¦® à¦¨à§Ÿ à¦®à¦¾à¦¸à§‡ (à¦œà§à¦²à¦¾à¦‡-à¦®à¦¾à¦°à§à¦š) à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾à¦° à¦šà§‡à§Ÿà§‡ à§§à§ª à¦¹à¦¾à¦œà¦¾à¦° à¦•à§‹à¦Ÿà¦¿ à¦Ÿà¦¾à¦•à¦¾ à¦•à¦® à¦°à¦¾à¦œà¦¸à§à¦¬ à¦†à¦¦à¦¾à§Ÿ à¦¹à§Ÿà§‡à¦›à§‡à¥¤<br><br>\r\n\r\nà¦ªà§à¦°à§‹ à¦…à¦°à§à¦¥à¦¬à¦›à¦°à§‡à¦° à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾ à¦§à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à¦¿à¦² à§§ à¦²à¦¾à¦– à§­à§¬ à¦¹à¦¾à¦œà¦¾à¦° à§©à§­à§¦ à¦•à§‹à¦Ÿà¦¿ à¦Ÿà¦¾à¦•à¦¾à¥¤<br> à¦†à¦¦à¦¾à§Ÿ à¦•à¦® à¦¹à¦“à§Ÿà¦¾à§Ÿ à¦ à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾ à¦•à¦®à¦¾à¦¨à§‹à¦° à¦˜à§‹à¦·à¦£à¦¾ à¦¦à¦¿à§Ÿà§‡à¦›à§‡à¦¨ à¦…à¦°à§à¦¥à¦®à¦¨à§à¦¤à§à¦°à§€à¥¤<br><br>\r\n\r\nà¦à¦¨à¦¬à¦¿à¦†à¦° à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨ à¦¬à¦²à§‡à¦¨, â€œà¦†à¦®à¦°à¦¾ à¦œà¦¾à¦¨à¦¿, à¦¸à¦¾à¦®à¦¨à§‡à¦° à¦°à¦¾à¦œà¦¸à§à¦¬ à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾ à¦¬à§œ à¦¹à§Ÿà§‡à¦›à§‡à¥¤<br> à¦¯à¦¦à¦¿ à¦†à¦®à¦°à¦¾ à¦¸à¦¬à¦¾à¦‡ à¦®à¦¿à¦²à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¯à§‡à¦¤à§‡ à¦ªà¦¾à¦°à¦¿ à¦¤à¦¾à¦¹à¦²à§‡ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦¿à¦¤ à¦²à¦•à§à¦·à§à¦¯à¦®à¦¾à¦¤à§à¦°à¦¾ à¦°à¦¾à¦œà¦¸à§à¦¬ à¦†à¦¦à¦¾à§Ÿ à¦•à¦°à¦¾ à¦¸à¦®à§à¦­à¦¬à¥¤â€<br><br>\r\n\r\nà¦¬à¦¨à§à¦¡ à¦¸à§à¦¬à¦¿à¦§à¦¾à¦° à¦…à¦ªà¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦°à§€à¦¦à§‡à¦° â€˜à¦œà¦¾à¦¤à§€à§Ÿ à¦¶à¦¤à§à¦°à§â€™ à¦†à¦–à§à¦¯à¦¾à§Ÿà¦¿à¦¤ à¦•à¦°à§‡ à¦¤à¦¾à¦¦à§‡à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡<br> à¦à¦¨à¦¬à¦¿à¦†à¦°à§‡à¦° à¦•à¦ à§‹à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨à§‡à¦° à¦•à¦¥à¦¾à¦“ à¦œà¦¾à¦¨à¦¾à¦¨ à¦¤à¦¿à¦¨à¦¿à¥¤<br>', 'News'),
(27, 'à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾: à¦²à§‡à¦¾à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦° à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨ à¦†à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦¦à§ƒà¦·à§à¦Ÿà¦¾à¦¨à§à¦¤', '2016-04-14', 'à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™: à¦²à§‡à¦¾à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦° à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨ à¦†à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦¦à§ƒà¦·à§à¦Ÿà¦¾à¦¨à§à¦¤', 'Romantic-Quotes-65.jpg', 'à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™: à¦²à§‡à¦¾à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦° à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨ à¦†à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦¦à§ƒà¦·à§à¦Ÿà¦¾à¦¨à§à¦¤', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦²à§‹à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦…à¦¸à¦‚à¦–à§à¦¯ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¨à¦¿à¦°à§à¦®à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ à¦à¦¬à¦‚ à¦²à§‹à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦­à¦¿à¦¤à§à¦¤à¦¿à¦• à¦¸à¦¿à¦¨à§‡à¦®à¦¾à¦—à§à¦²à§‹à¦° à¦®à¦§à§à¦¯à§‡ à¦¬à§‡à¦¶à¦¿à¦°à¦­à¦¾à¦—à¦‡ à¦¬à§à¦¯à¦¬à¦¸à¦¾à¦¸à¦«à¦² à¦¹à§Ÿà§‡à¦›à§‡à¥¤ â€˜à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™à¦•à§‡ à¦ à¦§à¦°à¦¨à§‡à¦° à¦¸à¦¿à¦¨à§‡à¦®à¦¾à¦° à¦ªà¦¥à¦¿à¦•à§ƒà¦¤ à¦¬à¦²à¦¾ à¦šà¦²à§‡à¥¤<br>\r\n\r\nà¦¬à¦¾à¦‚à¦²à¦¾à¦° à¦à¦•à¦Ÿà¦¿ à¦¸à§à¦ªà¦°à¦¿à¦šà¦¿à¦¤ à¦°à§‚à¦ªà¦•à¦¥à¦¾ â€˜à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™à¥¤ à¦¸à¦¿à¦¨à§‡à¦®à¦¾à¦° à¦¶à§à¦°à§à¦¤à§‡ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à§Ÿ à¦¸à§à¦²à§‡à¦®à¦¾à¦¨à¦ªà§à¦°à§‡à¦° à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦° à¦›à§Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦¨à¦¿à¦ƒà¦¸à¦¨à§à¦¤à¦¾à¦¨à¥¤ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦¸à§à¦¬à¦ªà§à¦¨ à¦¦à§‡à¦–à§‡à¦¨ à¦¦à¦°à¦¬à§‡à¦¶ à¦¤à¦¾à¦•à§‡ à¦¬à¦²à¦›à§‡ à¦®à§ƒà¦—à§Ÿà¦¾à§Ÿ à¦¯à§‡à¦¤à§‡à¥¤ à¦¸à§‡à¦–à¦¾à¦¨à§‡ à¦¤à¦¿à¦¨à¦¿ à¦¯à¦¾à¦•à§‡ à¦ªà¦¾à¦¬à§‡à¦¨ à¦¤à¦¾à¦•à§‡ à¦¯à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿ à¦¬à¦¿à§Ÿà§‡ à¦•à¦°à§‡à¦¨à¥¤ à¦¤à¦¾à¦¹à¦²à§‡ à¦¤à¦¾à¦° à¦¸à¦¨à§à¦¤à¦¾à¦¨ à¦²à¦¾à¦­ à¦¹à¦¬à§‡à¥¤<br><br>\r\n\r\nà¦¸à§à¦¬à¦ªà§à¦¨à§‡ à¦†à¦¦à§‡à¦¶ à¦ªà§‡à§Ÿà§‡ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦ªà¦°à¦¦à¦¿à¦¨à¦‡ à¦¸à¦¹à¦šà¦° à¦¨à¦«à¦°à¦•à§‡ à¦¨à¦¿à¦¯à§‡ à¦®à§ƒà¦—à§Ÿà¦¾à§Ÿ à¦¯à¦¾à¦¤à§à¦°à¦¾ à¦•à¦°à§‡à¦¨à¥¤ à¦¬à¦¨à§‡ à¦¬à¦¾à¦¸ à¦•à¦°à§‡ à¦¦à¦°à¦¿à¦¦à§à¦° à¦•à¦¾à¦ à§à¦°à¦¿à§Ÿà¦¾ à¦“ à¦¤à¦¾à¦° à¦•à¦¨à§à¦¯à¦¾à¥¤ à¦®à¦¹à¦¾à¦œà¦¨à§‡à¦° à¦‹à¦£à§‡à¦° à¦•à¦¾à¦°à¦£à§‡ à¦¤à¦¾à¦•à§‡ à¦§à¦°à§‡ à¦¨à¦¿à§Ÿà§‡ à¦¯à§‡à¦¤à§‡ à¦šà¦¾à§Ÿ à¦®à¦¹à¦¾à¦œà¦¨à§‡à¦° à¦›à§‡à¦²à§‡à¥¤ à¦¤à¦¾à¦•à§‡ à¦‰à¦¦à§à¦§à¦¾à¦° à¦•à¦°à§‡à¦¨ à¦°à¦¾à¦œà¦¾à¥¤ à¦à¦‡ à¦•à¦¾à¦ à§à¦°à¦¿à§Ÿà¦¾ à¦•à¦¨à§à¦¯à¦¾à¦•à§‡ à¦¬à¦¿à§Ÿà§‡ à¦•à¦°à§‡à¦¨ à¦°à¦¾à¦œà¦¾à¥¤ à¦ªà§à¦°à¦¾à¦¸à¦¾à¦¦à§‡ à¦¨à¦¿à§Ÿà§‡ à¦†à¦¸à§‡à¦¨ à¦¤à¦¾à¦•à§‡à¥¤ à¦°à¦¾à¦œà¦¾ à¦¤à¦¾à¦° à¦ªà¦°à¦¿à¦šà§Ÿ à¦¦à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿ à¦¬à¦¿à¦œà§Ÿà¦ªà§à¦°à§‡à¦° à¦¶à¦¾à¦¹à¦œà¦¾à¦¦à¦¿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡à¥¤ à¦¤à¦¿à¦¨à¦¿ à¦¹à¦¨ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦¤à¦¾à¦° à¦›à§‹à¦Ÿà¦¬à§‡à¦²à¦¾à¦° à¦¸à¦‡ à¦¤à¦¾à¦° à¦•à¦¾à¦›à§‡ à¦†à¦¸à§‡ à¦®à¦¾à¦²à¦¿à¦¨à§€ à¦¹à§Ÿà§‡à¥¤ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡ à¦¨à¦¾ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦°à¦¾à¦¨à§€à¦°à¦¾à¥¤ à¦¤à¦¾à¦°à¦¾ à¦¤à¦¾à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡ à¦·à§œà¦¯à¦¨à§à¦¤à§à¦° à¦•à¦°à§‡à¥¤à¦¦à¦°à¦¬à§‡à¦¶à§‡à¦° à¦¬à¦°à§‡ à¦…à¦šà¦¿à¦°à§‡à¦‡ à¦…à¦¨à§à¦¤à¦¸à¦¤à§à¦¤à¦¾ à¦¹à¦¨ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦°à¦¾à¦œà¦ªà§à¦°à¦¾à¦¸à¦¾à¦¦à§‡ à¦†à¦¨à¦¨à§à¦¦à§‡à¦° à¦¬à¦¨à§à¦¯à¦¾  à¦¬à§Ÿà§‡ à¦¯à¦¾à§Ÿà¥¤<br><br>\r\n\r\nà¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦° à¦†à¦à¦¤à§à§œ à¦˜à¦°à§‡ à¦…à¦¨à§à¦¯ à¦•à¦¾à¦‰à¦•à§‡ à¦¢à§à¦•à¦¤à§‡ à¦¦à§‡à§Ÿ à¦¨à¦¾ à¦›à§Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦¤à¦¾à¦°à¦¾ à¦˜à§à¦®à§‡à¦° à¦“à¦·à§à¦§ à¦–à¦¾à¦‡à§Ÿà§‡ à¦…à¦œà§à¦žà¦¾à¦¨ à¦•à¦°à§‡ à¦°à¦¾à¦–à§‡ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡à¥¤ à¦à¦•à§‡ à¦à¦•à§‡ à¦¸à¦¾à¦¤ à¦ªà§à¦¤à§à¦° à¦“ à¦à¦• à¦•à¦¨à§à¦¯à¦¾ à¦œà¦¨à§à¦®à¦¾à§Ÿà¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¸à¦¾à¦¤ à¦›à§‡à¦²à§‡à¦•à§‡ à¦†à¦à¦¤à§à§œà¦˜à¦° à¦¥à§‡à¦•à§‡à¦‡ à¦¸à¦°à¦¿à§Ÿà§‡ à¦«à§‡à¦²à§‡ à¦›à§Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦¤à¦¾à¦¦à§‡à¦° à¦°à¦¾à¦œà¦¬à¦¾à§œà¦¿à¦° à¦ªà§‡à¦›à¦¨à§‡ à¦¬à¦¾à¦—à¦¾à¦¨à§‡ à¦ªà§à¦¤à§‡ à¦«à§‡à¦²à§‡à¥¤ à¦°à¦¾à¦¨à§€à¦¦à§‡à¦° à¦…à¦—à§‹à¦šà¦°à§‡ à¦à¦•à¦®à¦¾à¦¤à§à¦° à¦°à¦¾à¦œà¦•à¦¨à§à¦¯à¦¾à¦•à§‡ à¦¬à¦¾à¦à¦šà¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦®à¦¾à¦²à¦¿à¦¨à§€ à¦¸à¦‡à¥¤<br><br>\r\n\r\nà¦›à§Ÿ à¦°à¦¾à¦¨à§€ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦¬à¦²à§‡ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦° à¦¸à¦¾à¦¤à¦Ÿà¦¿ à¦•à§à¦•à§à¦° à¦›à¦¾à¦¨à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¡à¦¾à¦‡à¦¨à¦¿ à¦®à¦¨à§‡ à¦•à¦°à§‡ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦¬à¦¨à¦¬à¦¾à¦¸à§‡ à¦ªà¦¾à¦ à¦¾à¦¨ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¥¤<br><br>\r\n\r\nà¦à¦¦à¦¿à¦•à§‡ à¦¦à¦°à¦¬à§‡à¦¶à§‡à¦° à¦¬à¦°à§‡ à¦¸à¦¾à¦¤à¦Ÿà¦¿ à¦°à¦¾à¦œà¦ªà§à¦¤à§à¦° à¦šà¦¾à¦à¦ªà¦¾ à¦«à§à¦² à¦¹à§Ÿà§‡ à¦«à§à¦Ÿà§‡ à¦¥à¦¾à¦•à§‡ à¦—à¦¾à¦›à§‡à¥¤<br><br>\r\n\r\nà¦¬à¦¨à§‡ à¦¬à¦¨à§‡ à¦˜à§à¦°à§‡ à¦¬à§‡à§œà¦¾à§Ÿ à¦¦à§à¦ƒà¦–à¦¿à¦¨à§€ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¥¤ à¦à¦•à¦œà¦¨ à¦¬à§ƒà¦¦à§à¦§ à¦•à¦¾à¦ à§à¦°à¦¿à§Ÿà¦¾à¦° à¦•à§à§œà§‡à¦¤à§‡ à¦†à¦¶à§à¦°à§Ÿ à¦ªà¦¾à§Ÿ à¦¸à§‡à¥¤ à¦…à¦¨à§à¦¯à¦¦à¦¿à¦•à§‡ à¦°à¦¾à¦œà¦¬à¦¾à§œà¦¿à¦¤à§‡ à¦®à¦¾à¦²à¦¿à¦¨à§€ à¦¸à¦‡à§Ÿà§‡à¦° à¦˜à¦°à§‡ à¦®à¦¾à¦²à¦¿à¦¨à§€à¦° à¦¸à¦¨à§à¦¤à¦¾à¦¨ à¦ªà¦°à¦¿à¦šà§Ÿà§‡ à¦¬à§œ à¦¹à¦¤à§‡ à¦¥à¦¾à¦•à§‡ à¦°à¦¾à¦œà¦•à¦¨à§à¦¯à¦¾ à¦ªà¦¾à¦°à§à¦²à¥¤ à¦¨à¦¦à§€à¦° à¦˜à¦¾à¦Ÿà§‡ à¦¤à¦¾à¦° à¦¸à¦™à§à¦—à§‡ à¦ªà¦°à¦¿à¦šà§Ÿ à¦¹à§Ÿ à¦à¦• à¦¤à¦°à§à¦£ à¦¸à¦“à¦¦à¦¾à¦—à¦°à§‡à¦°à¥¤ à¦¸à¦“à¦¦à¦¾à¦—à¦° à¦“ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦ªà§à¦°à§‡à¦® à¦œà¦®à§‡ à¦“à¦ à§‡à¥¤ à¦›à§Ÿ à¦®à¦¾à¦¸à§‡à¦° à¦œà¦¨à§à¦¯ à¦¦à§‡à¦¶à§‡ à¦¯à¦¾à§Ÿ à¦¸à¦“à¦¦à¦¾à¦—à¦°à¥¤ à¦¯à¦¾à¦¬à¦¾à¦° à¦†à¦—à§‡ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦•à¦¾à¦›à§‡ à¦¦à¦¿à§Ÿà§‡ à¦¯à¦¾à§Ÿ à¦à¦• à¦†à¦œà¦¬ à¦†à§Ÿà¦¨à¦¾ à¦“ à¦à¦•à¦Ÿà¦¿ à¦•à¦¬à§à¦¤à¦° à¦ªà¦¾à¦–à¦¿à¥¤ à¦†à¦œà¦¬ à¦†à§Ÿà¦¨à¦¾à§Ÿ à¦¦à§‚à¦°à§‡ à¦¥à¦¾à¦•à¦²à§‡à¦“ à¦ªà§à¦°à¦¿à§Ÿà¦œà¦¨à¦¦à§‡à¦° à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à§Ÿà¥¤ à¦†à¦œà¦¬ à¦†à§Ÿà¦¨à¦¾à§Ÿ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦¬à¦¨à§‡ à¦¬à¦¨à§‡ à¦•à§‡à¦à¦¦à§‡ à¦¬à§‡à§œà¦¾à¦¤à§‡ à¦¦à§‡à¦–à§‡ à¦ªà¦¾à¦°à§à¦²à¥¤ à¦®à¦¾à¦²à¦¿à¦¨à§€ à¦®à¦¾à§Ÿà§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦¸à§‡ à¦œà¦¾à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¨à¦¿à¦œà§‡à¦° à¦œà¦¨à§à¦® à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸à¥¤ à¦à¦¦à¦¿à¦•à§‡ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¹à¦¾à¦¤ à¦¥à§‡à¦•à§‡ à¦ªà§œà§‡ à¦†à§Ÿà¦¨à¦¾ à¦­à§‡à¦™à§‡ à¦¯à¦¾à§Ÿà¥¤ à¦¸à§‡ à¦šà¦®à§à¦ªà¦¾ à¦—à¦¾à¦›à§‡à¦° à¦•à¦¾à¦›à§‡ à¦—à¦¿à§Ÿà§‡ à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡à¦•à§‡ à¦¡à¦¾à¦•à§‡à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦¸à¦¾à§œà¦¾ à¦¦à§‡à§Ÿ à¦¨à¦¾à¥¤ à¦¸à§‡à¦–à¦¾à¦¨à§‡ à¦†à¦¸à§‡ à¦¦à¦°à¦¬à§‡à¦¶à¥¤ à¦¦à¦°à¦¬à§‡à¦¶ à¦¬à¦²à§‡, à¦¯à§‡à¦¦à¦¿à¦¨ à¦°à¦¾à¦œà¦¾, à¦›à§‹à¦Ÿà¦°à¦¾à¦¨à¦¿ à¦“ à¦ªà¦¾à¦°à§à¦² à¦¸à¦¬à¦¾à¦‡ à¦à¦•à¦¸à¦™à§à¦—à§‡ à¦“à¦¦à§‡à¦° à¦¡à¦¾à¦•à¦¬à§‡ à¦¸à§‡à¦¦à¦¿à¦¨ à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦¸à¦¾à§œà¦¾ à¦¦à¦¿à¦¬à§‡à¥¤<br><br>\r\n\r\nà¦•à¦¬à§à¦¤à¦° à¦ªà¦¾à¦ à¦¿à§Ÿà§‡ à¦¸à¦“à¦¦à¦¾à¦—à¦°à¦•à§‡ à¦¡à¦¾à¦•à§‡ à¦ªà¦¾à¦°à§à¦²à¥¤ à¦¸à¦“à¦¦à¦¾à¦—à¦° à¦›à§à¦Ÿà§‡ à¦†à¦¸à§‡à¥¤ à¦®à¦¾à¦²à¦¿à¦¨à§€à¦° à¦¬à¦¾à§œà¦¿à¦¤à§‡ à¦¸à¦“à¦¦à¦¾à¦—à¦° à¦à¦¸à§‡à¦›à§‡ à¦ à¦–à¦¬à¦° à¦ªà¦¾à§Ÿ à¦¬à§œ à¦°à¦¾à¦¨à§€à¥¤<br><br>\r\n\r\nà¦¬à§œ à¦°à¦¾à¦¨à§€ à¦›à¦¾à§œà¦¾ à¦†à¦° à¦•à§‡à¦‰ à¦œà¦¾à¦¨à§‡ à¦¨à¦¾ à¦•à§‹à¦¥à¦¾à§Ÿ à¦¬à¦¨à¦¬à¦¾à¦¸à§‡ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à§Ÿà§‡à¦›à¦¿à¦² à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡à¥¤ à¦¬à§œ à¦°à¦¾à¦¨à§€à¦° à¦®à¦¹à¦²à§‡ à¦—à§‹à¦ªà¦¨à§‡ à¦¯à¦¾à§Ÿ à¦¸à¦“à¦¦à¦¾à¦—à¦°à¥¤ à¦¸à¦“à¦¦à¦¾à¦—à¦° à¦¤à¦°à§‹à§Ÿà¦¾à¦² à¦¦à¦¿à§Ÿà§‡ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦­à§Ÿ à¦¦à§‡à¦–à¦¾à§Ÿà¥¤ à¦ªà§à¦°à¦¾à¦£à§‡à¦° à¦­à§Ÿà§‡ à¦¬à§œ à¦°à¦¾à¦¨à§€ à¦¬à¦²à§‡, à¦‰à¦¤à§à¦¤à¦° à¦ªà¦¶à§à¦šà¦¿à¦®à§‡ à¦à¦•à¦¶ à¦®à¦¾à¦‡à¦² à¦¦à§‚à¦°à§‡ à¦¹à¦°à¦¿à¦¦à§à¦°à¦¾ à¦¬à¦¨à§‡ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¸à¦¨ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à¦¯à§‡à¦›à§‡à¥¤ à¦¸à¦“à¦¦à¦¾à¦—à¦° à¦¯à¦¾à§Ÿ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦†à¦¨à¦¤à§‡à¥¤ à¦à¦¦à¦¿à¦•à§‡ à¦ªà§à¦°à¦¹à¦°à§€ à¦¨à¦¿à§Ÿà§‡ à¦®à¦¾à¦²à¦¿à¦¨à§€à¦° à¦¬à¦¾à§œà¦¿à¦¤à§‡ à¦¯à¦¾à§Ÿ à¦¬à§œ à¦°à¦¾à¦¨à§€à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦®à¦¾à¦²à¦¿à¦¨à§€ à¦“ à¦ªà¦¾à¦°à§à¦²à¦•à§‡ à¦ªà¦¾à§Ÿ à¦¨à¦¾à¥¤ à¦¤à¦¾à¦°à¦¾ à¦†à¦¶à§à¦°à§Ÿ à¦¨à§‡à§Ÿ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¸à¦‡à§Ÿà§‡à¦° à¦¬à¦¾à§œà¦¿à¦¤à§‡à¥¤ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¸à¦‡ à¦°à¦¾à¦œà¦¦à¦°à¦¬à¦¾à¦°à§‡à¦° à¦—à¦¾à§Ÿà¦¿à¦•à¦¾à¥¤ à¦ªà§à¦°à¦¤à¦¿à¦°à¦¾à¦¤à§‡ à¦¨à¦¿à¦¶à¦¿ à¦­à§‹à¦œà¦¨à§‡à¦° à¦ªà¦° à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦—à¦¾à¦¨ à¦¶à§‹à¦¨à¦¾à§Ÿ à¦—à¦¾à§Ÿà¦¿à¦•à¦¾à¦° à¦¦à¦²à¥¤ à¦¸à§‡à¦°à¦¾à¦¤à§‡ à¦¦à¦°à¦¬à¦¾à¦°à§‡ à¦¸à¦‡à§Ÿà§‡à¦° à¦ªà§‹à¦¶à¦¾à¦• à¦ªà¦°à§‡ à¦ªà¦¾à¦°à§à¦² à¦¯à¦¾à§Ÿ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦—à¦¾à¦¨ à¦¶à§‹à¦¨à¦¾à¦¤à§‡à¥¤<br><br>\r\n\r\nà¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€à¦•à§‡ à¦¨à¦¿à§Ÿà§‡ à¦†à¦¸à§‡ à¦¸à¦“à¦¦à¦¾à¦—à¦°à¥¤ à¦ªà¦¾à¦°à§à¦² à¦¤à¦–à¦¨ à¦¦à¦°à¦¬à¦¾à¦°à§‡ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦—à¦¾à¦¨ à¦¶à§‹à¦¨à¦¾à¦šà§à¦›à§‡à¥¤ â€˜à¦¶à§‹à¦¨à§‡à¦¨ à¦¶à§‹à¦¨à§‡à¦¨ à¦œà¦¾à¦à¦¹à¦¾à¦ªà¦¨à¦¾, à¦¶à§‹à¦¨à§‡à¦¨ à¦°à¦¾à¦¨à§€ à¦›à§Ÿà¦œà¦¨à¦¾â€™à¥¤ à¦—à¦¾à¦¨à§‡à¦° à¦­à§‡à¦¤à¦° à¦¦à¦¿à§Ÿà§‡ à¦ªà§à¦°à§‹ à¦˜à¦Ÿà¦¨à¦¾ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦¶à§‹à¦¨à¦¾à§Ÿ à¦ªà¦¾à¦°à§à¦²à¥¤<br><br>\r\n\r\nà¦—à¦¾à¦¨ à¦¶à§à¦¨à§‡ à¦šà¦®à¦•à§‡ à¦“à¦ à§‡à¦¨ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¥¤<br><br>\r\n\r\nà¦ªà§à¦°à¦¶à§à¦¨ à¦•à¦°à§‡à¦¨, à¦¤à§à¦®à¦¿ à¦•à§‡? à¦ªà¦¾à¦°à§à¦² à¦¸à§‡ à¦•à¦¥à¦¾à¦° à¦œà¦¬à¦¾à¦¬ à¦¨à¦¾ à¦¦à¦¿à§Ÿà§‡ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦° à¦¸à¦¾à¦®à¦¨à§‡ à¦«à§à¦²à§‡à¦° à¦¡à¦¾à¦²à¦¾ à¦°à§‡à¦–à§‡ à¦¬à¦²à§‡ à¦«à§à¦² à¦–à§‡à¦¤à§‡à¥¤ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦¬à¦²à§‡à¦¨, à¦®à¦¾à¦¨à§à¦· à¦•à¦¿ à¦•à¦–à¦¨à¦“ à¦«à§à¦² à¦–à¦¾à§Ÿ?<br><br>\r\n\r\nà¦ªà¦¾à¦°à§à¦² à¦ªà¦¾à¦²à§à¦Ÿà¦¾ à¦ªà§à¦°à¦¶à§à¦¨ à¦•à¦°à§‡, à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦˜à¦°à§‡ à¦•à¦¿ à¦•à§à¦•à§à¦° à¦›à¦¾à¦¨à¦¾ à¦¹à§Ÿ?<rb><br>\r\n\r\nà¦¸à§‡ à¦¸à¦®à§Ÿ à¦›à§‹à¦Ÿà¦°à¦¾à¦¨à§€à¦•à§‡ à¦¨à¦¿à¦¯à§‡ à¦¦à¦°à¦¬à¦¾à¦°à§‡ à¦†à¦¸à§‡ à¦¸à¦“à¦¦à¦¾à¦—à¦°à¦ªà§à¦¤à§à¦°à¥¤ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à¦•à§‡ à¦ªà¦°à¦¿à¦šà§Ÿ à¦¦à§‡à§Ÿ à¦à¦‡ à¦¹à¦²à§‹ à¦¶à¦¾à¦¹à¦œà¦¾à¦¦à§€ à¦ªà¦¾à¦°à§à¦²à¥¤ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦ªà§à¦°à¦®à¦¾à¦£ à¦šà¦¾à¦‡à¦²à§‡ à¦˜à¦Ÿà¦¨à¦¾à¦¸à§à¦¥à¦²à§‡ à¦†à¦¬à¦¿à¦°à§à¦­à¦¾à¦¬ à¦˜à¦Ÿà§‡ à¦¦à¦°à¦¬à§‡à¦¶à§‡à¦°à¥¤ à¦¦à¦°à¦¬à§‡à¦¶ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦ªà¦°à¦¿à¦šà§Ÿ à¦¦à§‡à§Ÿà¥¤ à¦à¦¬à¦¾à¦° à¦ªà¦¾à¦°à§à¦², à¦¸à¦“à¦¦à¦¾à¦°à¦—à¦°, à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€ à¦“ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦¯à¦¾à¦¨ à¦°à¦¾à¦œà¦ªà§à¦°à¦¾à¦¸à¦¾à¦¦à§‡à¦° à¦ªà¦¾à¦¶à§‡ à¦šà¦¾à¦à¦ªà¦¾ à¦«à§à¦²à§‡à¦° à¦—à¦¾à¦›à§‡à¦° à¦•à¦¾à¦›à§‡à¥¤ à¦¸à¦™à§à¦—à§‡ à¦¯à¦¾à§Ÿ à¦›à§Ÿ à¦°à¦¾à¦¨à§€à¦“à¥¤ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¡à¦¾à¦•à§‡ à¦¸à¦¾à§œà¦¾ à¦¦à§‡à§Ÿ à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾à¥¤ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦«à¦¿à¦°à§‡ à¦ªà¦¾à¦¨ à¦¤à¦¾à¦° à¦¸à¦¾à¦¤ à¦›à§‡à¦²à§‡ à¦“ à¦à¦• à¦®à§‡à§Ÿà§‡à¦•à§‡à¥¤ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¬à¦¿à§Ÿà§‡ à¦¹à§Ÿ à¦¸à¦“à¦¦à¦¾à¦—à¦°à§‡à¦°à¥¤\r\n<br><br>\r\nà§§à§¯à§¬à§® à¦¸à¦¾à¦²à§‡ à¦¨à¦¿à¦°à§à¦®à¦¿à¦¤ â€˜à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™ à¦¦à¦¾à¦°à§à¦£ à¦¬à§à¦¯à¦¬à¦¸à¦¾à¦¸à¦«à¦² à¦¹à§Ÿà¥¤ à¦›à¦¬à¦¿à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦›à¦¿à¦²à§‡à¦¨ à¦¦à§€à¦²à¦¿à¦ª à¦¸à§‹à¦®à¥¤ à¦šà¦¿à¦¤à§à¦°à¦¨à¦¾à¦Ÿà§à¦¯ à¦“ à¦¸à¦‚à¦²à¦¾à¦ª à¦²à§‡à¦–à§‡à¦¨ à¦–à¦¾à¦¨ à¦†à¦¤à¦¾à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨à¥¤ à¦ªà§à¦°à¦¯à§‹à¦œà¦¨à¦¾ à¦•à¦°à§‡à¦¨ à¦®à¦¿à¦œà¦¾à¦¨à§à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦¬à§à¦²à§‡à¦Ÿà¥¤ à¦¸à¦‚à¦—à§€à¦¤ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§‡à¦¨ à¦†à¦®à¦¿à¦° à¦†à¦²à¦¿à¥¤  â€˜à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡à§Ÿà§‡à¦° à¦à¦• à¦¬à§‹à¦¨ à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦­à§‚à¦®à¦¿à¦•à¦¾à§Ÿ à¦•à¦¬à¦°à§€ à¦›à¦¿à¦²à§‡à¦¨ à¦…à¦¨à¦¬à¦¦à§à¦¯à¥¤ à¦¤à¦¾à¦° à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯ à¦à¦¬à¦‚ à¦¸à§à¦…à¦­à¦¿à¦¨à§Ÿ à¦›à¦¬à¦¿à¦Ÿà¦¿à¦¤à§‡ à¦ªà§à¦°à¦¾à¦£ à¦¸à¦žà§à¦šà¦¾à¦° à¦•à¦°à§‡à¥¤à¦¬à¦¿à¦¶à§‡à¦· à¦•à¦°à§‡ â€˜à¦¶à§‹à¦¨à§‡à¦¨ à¦¶à§‹à¦¨à§‡à¦¨ à¦œà¦¾à¦à¦¹à¦¾à¦ªà¦¨à¦¾â€™ à¦—à¦¾à¦¨à§‡à¦° à¦¦à§ƒà¦¶à§à¦¯à§‡ à¦•à¦¬à¦°à§€à¦° à¦…à¦­à¦¿à¦¬à§à¦¯à¦•à§à¦¤à¦¿ à¦›à¦¿à¦² à¦…à¦¸à¦¾à¦§à¦¾à¦°à¦£à¥¤ à¦†à¦œà¦¿à¦®à¦“ à¦¸à¦“à¦¦à¦¾à¦—à¦°à§‡à¦° à¦­à§‚à¦®à¦¿à¦•à¦¾à§Ÿ à¦°à§‹à¦®à¦¾à¦¨à§à¦Ÿà¦¿à¦• à¦†à¦¬à§‡à¦¦à¦¨ à¦¸à§ƒà¦·à§à¦Ÿà¦¿ à¦•à¦°à§‡à¦¨à¥¤ à¦¬à¦¸à§à¦¤à§à¦¤ à¦ªà§à¦°à§‹ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦›à¦¿à¦² à¦ªà§à¦°à¦¥à¦® à¦…à¦‚à¦¶à§‡ à¦›à§‹à¦Ÿ à¦°à¦¾à¦¨à§€, à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹ à¦à¦¬à¦‚ à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦…à¦‚à¦¶à§‡ à¦°à¦¾à¦œà¦•à¦¨à§à¦¯à¦¾ à¦ªà¦¾à¦°à§à¦² à¦“ à¦¤à¦¾à¦° à¦ªà§à¦°à§‡à¦®à¦¿à¦• à¦¸à¦“à¦¦à¦¾à¦—à¦°à¦•à§‡à¦¨à§à¦¦à§à¦°à¦¿à¦•à¥¤ à¦¨à¦¾à§Ÿà¦• à¦¸à¦“à¦¦à¦¾à¦—à¦°à§‡à¦° à¦­à§‚à¦®à¦¿à¦•à¦¾à§Ÿ à¦›à¦¿à¦²à§‡à¦¨ à¦¸à§‡ à¦¸à¦®à§Ÿà§‡à¦° à¦œà¦¨à¦ªà§à¦°à¦¿à§Ÿ à¦¨à¦¾à§Ÿà¦• à¦†à¦œà¦¿à¦®à¥¤ à¦«à§à¦²à¦°à§‚à¦ªà§€ à¦°à¦¾à¦œà¦ªà§à¦¤à§à¦° à¦…à¦°à§à¦¥à¦¾à§Ž à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦­à¦¾à¦‡à¦¦à§‡à¦° à¦¤à§‡à¦®à¦¨ à¦•à§‹à¦¨à§‹ à¦­à§‚à¦®à¦¿à¦•à¦¾ à¦…à¦¬à¦¶à§à¦¯ à¦›à¦¿à¦² à¦¨à¦¾ à¦›à¦¬à¦¿à¦Ÿà¦¿à¦¤à§‡à¥¤ à¦¦à¦°à¦¬à§‡à¦¶ à¦›à¦¿à¦²à§‡à¦¨ à¦–à¦¾à¦¨ à¦†à¦¤à¦¾à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨à¥¤ à¦¨à¦«à¦°à§‡à¦° à¦­à§‚à¦®à¦¿à¦•à¦¾à§Ÿ à¦•à§Œà¦¤à§à¦• à¦…à¦­à¦¿à¦¨à§‡à¦¤à¦¾ à¦°à¦¬à¦¿à¦‰à¦²à¥¤<br><br>\r\n\r\nà¦›à¦¬à¦¿à¦Ÿà¦¿ à¦›à¦¿à¦² à¦¸à¦‚à¦—à§€à¦¤à¦¬à¦¹à§à¦²à¥¤ â€˜à¦“ à¦¸à¦¾à¦¤à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾ à¦œà¦¾à¦—à§‹ à¦°à§‡â€™ à¦¸à¦¹ à¦…à¦¨à§‡à¦• à¦œà¦¨à¦ªà§à¦°à¦¿à§Ÿ à¦²à§‹à¦•à¦—à§€à¦¤à¦¿ à¦›à¦¿à¦² à¦à¦–à¦¾à¦¨à§‡à¥¤à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦° à¦¸à¦°à¦²à¦¤à¦¾, à¦¯à¦¾à¦¤à§à¦°à¦¾à¦° à¦­à¦™à§à¦—à¦¿, à¦‰à¦šà§à¦šà¦•à¦¿à¦¤ à¦…à¦­à¦¿à¦¨à§Ÿ à¦ à¦¸à¦¬à¦‡ à¦²à§‹à¦•à¦œ à¦†à¦®à§‡à¦œà§‡ à¦­à¦°à¦ªà§à¦° à¦›à¦¿à¦²à¥¤â€˜à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™à¦° à¦¬à¦¿à¦ªà§à¦² à¦œà¦¨à¦ªà§à¦°à¦¿|à§Ÿà¦¤à¦¾à¦° à¦«à¦²à§‡ à¦›à¦¬à¦¿à¦Ÿà¦¿à¦° à¦¸à¦¿à¦•à§à§Ÿà¦¾à¦² â€˜à¦ªà¦¾à¦°à§à¦²à§‡à¦° à¦¸à¦‚à¦¸à¦¾à¦°â€™ à¦¨à¦¿à¦°à§à¦®à¦¿à¦¤ à¦¹à§Ÿà¥¤ â€˜à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾â€™ à¦°à¦¿à¦®à§‡à¦‡à¦• à¦¹à§Ÿ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦“ à¦ªà¦¶à§à¦šà¦¿à¦®à¦¬à¦™à§à¦—à§‡à¥¤<br><br>\r\n\r\nà¦¬à¦¸à§à¦¤à§à¦¤ â€˜à¦¸à¦¾à¦¤ à¦­à¦¾à¦‡ à¦šà¦®à§à¦ªà¦¾à¦°â€™ à¦¬à¦¿à¦ªà§à¦² à¦¸à¦¾à¦«à¦²à§à¦¯à§‡à¦° à¦®à§‚à¦² à¦•à§ƒà¦¤à¦¿à¦¤à§à¦¬ à¦›à¦¿à¦² à¦²à§‹à¦•à¦•à¦¾à¦¹à¦¿à¦¨à¦¿à¦° à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨ à¦†à¦¬à§‡à¦¦à¦¨ à¦¯à¦¾ à¦›à¦¬à¦¿à¦Ÿà¦¿à¦•à§‡ à¦§à§à¦°à§à¦ªà¦¦à§€à¦° à¦®à¦°à§à¦¯à¦¾à¦¦à¦¾ à¦¦à¦¿à§Ÿà§‡à¦›à§‡<br><br>', 'News'),
(28, 'Lorem Ipsum is simply dummy text', '2016-04-14', 'Lorem Ipsum is simply dummy text', '11173369_1615166465436358_7789597362398784286_n.jpg', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text and', 'Others'),
(29, 'Lorem Ipsum is simply dummy text', '2016-04-15', 'Lorem Ipsum is simply dummy text', '10174805_761385030553089_284264920187452311_n.jpg', 'Lorem Ipsum is simply dummy text', 'Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy textLorem Ipsum is simply dummy text', 'Others');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
