-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2024 at 05:14 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emagazine`
--
CREATE DATABASE IF NOT EXISTS `emagazine` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emagazine`;

-- --------------------------------------------------------

--
-- Table structure for table `administration_admin_details`
--

CREATE TABLE IF NOT EXISTS `administration_admin_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `administration_admin_details`
--

INSERT INTO `administration_admin_details` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'jyothi', 'mayeeterlapu@gmail.com', '7075886885', '12345'),
(2, 'jyothirmayee', '192011252.sse@saveetha.com', '7075886885', '123456789'),
(4, 'akshay', 'akshayterlapu@gmail.com', '9030398384', '12345'),
(5, 'akshay', '192011252.sse@saveetha.com', '7075886885', '123456789'),
(6, 'jyothirmayee', '192011252.sse@saveetha.com', '7075886885', '123456789'),
(7, 'Raju', 'raju@gmail.com', '9876543211', '1234'),
(8, 'raju', 'raju1@gmail.com', '9876543211', '123456'),
(9, 'karun', 'kk456@gmail.com', '9000331053', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add admin_details', 1, 'add_admin_details'),
(2, 'Can change admin_details', 1, 'change_admin_details'),
(3, 'Can delete admin_details', 1, 'delete_admin_details'),
(4, 'Can view admin_details', 1, 'view_admin_details'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add creator_details', 8, 'add_creator_details'),
(30, 'Can change creator_details', 8, 'change_creator_details'),
(31, 'Can delete creator_details', 8, 'delete_creator_details'),
(32, 'Can view creator_details', 8, 'view_creator_details'),
(33, 'Can add creator_table', 9, 'add_creator_table'),
(34, 'Can change creator_table', 9, 'change_creator_table'),
(35, 'Can delete creator_table', 9, 'delete_creator_table'),
(36, 'Can view creator_table', 9, 'view_creator_table'),
(37, 'Can add editor_details', 10, 'add_editor_details'),
(38, 'Can change editor_details', 10, 'change_editor_details'),
(39, 'Can delete editor_details', 10, 'delete_editor_details'),
(40, 'Can view editor_details', 10, 'view_editor_details'),
(41, 'Can add magazine', 11, 'add_magazine'),
(42, 'Can change magazine', 11, 'change_magazine'),
(43, 'Can delete magazine', 11, 'delete_magazine'),
(44, 'Can view magazine', 11, 'view_magazine'),
(45, 'Can add template_images', 12, 'add_template_images'),
(46, 'Can change template_images', 12, 'change_template_images'),
(47, 'Can delete template_images', 12, 'delete_template_images'),
(48, 'Can view template_images', 12, 'view_template_images');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_creator_creator_details`
--

CREATE TABLE IF NOT EXISTS `content_creator_creator_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `content_creator_creator_details`
--

INSERT INTO `content_creator_creator_details` (`id`, `name`, `email`, `phone`, `password`) VALUES
(6, 'jyothirmayee', 'creator@gmail.com', '7075886885', '1234'),
(7, 'jyothirmayee', 'creator@gmail.com', '9897987987', '1234'),
(8, 'purnima', 'purnima@gmial.com', '9030398384', '123456'),
(9, 'raju', 'raju@gmail.com', '9876543218', 'raju11'),
(10, 'raju11', 'raju45@gmail.com', '9876543217', 'raju110'),
(12, 'Ak', 'ak@gmail.com', '09133589547', '123'),
(13, 'raju', 'raju1@gmail.com', '9876543213', '123456'),
(14, 'jyothi', 'mayeeterlapu@gmail.com', '7075886885', '12345'),
(15, 'karun', 'kk456@gmail.com', '9000331053', '12345'),
(16, 'ajay', 'ajaykumar@gmail.com', '9133456457', '12345'),
(17, 'Himani', 'himanikk@gmail.com', '9123456789', '12345'),
(18, 'Aravind', 'Aravindkumar@gmail.com', '9234567891', '12345'),
(19, 'tanmai', 'tanmaiaditya@gmail.com', '9876543210', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `content_creator_creator_table`
--

CREATE TABLE IF NOT EXISTS `content_creator_creator_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `guests` varchar(255) NOT NULL,
  `extpart` varchar(255) NOT NULL,
  `intpart` varchar(255) NOT NULL,
  `spepoint` varchar(255) NOT NULL,
  `highofthevent` varchar(255) NOT NULL,
  `NoofIma` varchar(255) NOT NULL,
  `UpIma` varchar(100) NOT NULL,
  `UpIma1` varchar(100) DEFAULT NULL,
  `UpIma2` varchar(100) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `content_creator_creator_table`
--

INSERT INTO `content_creator_creator_table` (`id`, `event`, `venue`, `event_date`, `guests`, `extpart`, `intpart`, `spepoint`, `highofthevent`, `NoofIma`, `UpIma`, `UpIma1`, `UpIma2`, `template`) VALUES
(1, 'Founders Day', 'SIMATS', '2023-11-15', 'Dr.N.M.VEERAIYAN', 'Dr.S.Suresh', 'SIMATS', 'Dr.D.Dhanasekaran', 'Founders day celebrations', '1', 'content_images/WhatsApp_Image_2023-11-23_at_10.51.56_37d8def4_dRbs2ZB.jpg', '', '', 'magazine1left'),
(2, 'REDNOOL', 'SIMATS', '2023-11-17', 'Parithabangal', 'SIMATS', 'SIMATS', 'Jyothi', '5 years of Parithabangal', '1', 'content_images/WhatsApp_Image_2023-11-23_at_11.48.40_43deaf9d_f8TsDMH.jpg', '', '', 'magazine1left'),
(3, '4 stars', 'SIMATS', '2023-11-18', 'AICTE,IET-UK', 'Institutions Innovation Council', 'SIMATS', 'Chairman', 'Proud to share simats has recived 4 stars', '1', 'content_images/WhatsApp_Image_2023-11-27_at_10.38.54_0314a118_2cVcZPu.jpg', '', '', 'magazine1left'),
(4, 'Aginto', 'SIMATS', '2023-11-03', 'Chairman', 'Engineers to Excel', 'SIMATS', 'Jyothi', 'Grand Award Ceremeony', '1', 'content_images/WhatsApp_Image_2023-11-23_at_15.43.46_615f3eea_r9BhEhV.jpg', '', '', 'magazine1left'),
(5, 'SIMATS BAZAAR', 'Nali Arangam ,Thandalam Campus,SIMATS', '2023-11-01', 'Shri R.Senthil kumar', 'NAAC,Nirf', 'SIMATS', 'Mr.Arul R A', 'Exhibition Cum Sales', '1', 'content_images/WhatsApp_Image_2023-11-28_at_09.20.27_bfd5b9d6.jpg', '', '', 'magazine1right'),
(6, 'FUVISON 2023', 'Majestorium Hall', '2023-10-03', 'Mr.Manjith Mothiram', 'Department of AR', 'Department of VR', 'CEO of Cyclotron', 'One Day National Level Technical Symposium', '1', 'content_images/WhatsApp_Image_2023-11-28_at_09.27.25_f5f36cef.jpg', '', '', 'magazine1right'),
(7, 'dasara', 'Saveetha University', '2023-11-27', 'dean', 'principal', 'Dental College', 'speker', 'headlights', '3', 'content_images/WhatsApp_Image_2023-11-27_at_10.38.54_0314a118_YDY4DlX.jpg', 'content_images/WhatsApp_Image_2023-11-28_at_09.27.25_f5f36cef_HpRyo8k.jpg', 'content_images/WhatsApp_Image_2023-11-23_at_10.51.56_37d8def4_Zc5vJgJ.jpg', 'magazine3left'),
(8, 'ef', 'reew', '2023-11-30', 'werw', 'dsfsd', 'fdsfsd', 'fdsfs', 'fsd', '3', 'content_images/page_1_iIRmPZw.webp', 'content_images/page_1_kvFUkm7.webp', 'content_images/m3.png', 'magazine3random'),
(9, 'SIMATS', 'SIMATS', '2023-11-02', 'Chairman', 'chairman', '1', 'jyothi', 'Founders Day Celebrations', '2', 'content_images/WhatsApp_Image_2023-11-28_at_09.27.25_f5f36cef_A9Tki3K.jpg', 'content_images/WhatsApp_Image_2023-11-27_at_10.38.54_0314a118_Zm8vPMe.jpg', '', 'magazine2'),
(10, 'Saveetha', 'Saveetha', '2023-11-02', 'Chairman', 'saveetha', '1', 'jyothi', 'Founders Day Celebrations', '2', 'content_images/Untitled_ErQeT0y.jpeg', 'content_images/WhatsApp_Image_2023-11-27_at_10.38.54_0314a118_7ZTea0W.jpg', '', 'magazine2td'),
(11, 'Workshop on "Entreprenueurship Development Phases"', 'Lines Hall', '2023-11-16', 'Mr.Wesly Inbaraj', '25 students from REC,10 students from Panilmalar ', '15', 'Strategic PLanning,Financiial Management,Customer Needs,Team Building and Risk Mnagement', 'Guiding team wirth clear vision,Implementing solid business strategy,Encouraging creative problem solving,Building a strong profeesional network', '3', 'content_images/Untitled_SlvDRqX.jpeg', 'content_images/WhatsApp_Image_2023-11-29_at_12.45.13_69a35ee7.jpg', 'content_images/WhatsApp_Image_2023-11-29_at_12.45.29_315b3f0e.jpg', 'magazine3'),
(13, 'Young Entrepeneur', 'FF,Seminar Hall,Sse', '2023-11-29', 'Dr.Latha R', '15 students from Rec,10 students from panimalar,20 students from Dental', '25 students from SSE', 'Strategic PLanning,Financiial Management,Customer Needs,Team Building and Risk Mnagement', 'Networking Opportunities,Pitch Competitons,Exhibitions,Mentorship Sessions', '1', 'content_images/WhatsApp_Image_2023-11-29_at_12.45.29_315b3f0e_FPEIpXJ.jpg', '', '', 'magazine1left'),
(14, 'Saveetha', 'Simats', '2023-11-08', 'Chairman', '15 students from Rec,10 students from panimalar,20 students from Dental', '20students', 'jyothi', 'Guiding team wirth clear vision,Implementing solid business strategy,Encouraging creative problem solving,Building a strong profeesional network', '1', 'content_images/WhatsApp_Image_2023-11-23_at_10.51.56_37d8def4_pTcp8R9.jpg', '', '', 'magazine1right'),
(15, 'Young Entrepeneur', 'SIMATS', '2023-12-14', 'Chairman', '15 students from Rec,10 students from panimalar,20 students from Dental', '20students', 'jyothi', 'Secured Nation', '1', 'content_images/WhatsApp_Image_2023-11-23_at_15.43.46_615f3eea_dbeQhjV.jpg', '', '', 'magazine1right'),
(16, 'Founders Day', 'Saveetha University', '2023-12-21', 'Chairman', '15 students from Rec,10 students from panimalar,20 students from Dental', '20students', 'jyothi', 'headlights', '1', 'content_images/WhatsApp_Image_2023-11-23_at_15.43.46_615f3eea_dkdUhUK.jpg', '', '', NULL),
(17, 'Founders Day', 'Saveetha University', '2023-12-21', 'Chairman', '15 students from Rec,10 students from panimalar,20 students from Dental', '20students', 'jyothi', 'headlights', '1', 'content_images/WhatsApp_Image_2023-11-23_at_15.43.46_615f3eea_FiYfCLX.jpg', '', '', 'magazine1right');

-- --------------------------------------------------------

--
-- Table structure for table `content_creator_magazine`
--

CREATE TABLE IF NOT EXISTS `content_creator_magazine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `content_creator_magazine`
--

INSERT INTO `content_creator_magazine` (`id`, `content`) VALUES
(1, 'Founders Day Celebrations at SIMATS\r\n\r\nSIMATS is proud to announce its upcoming Founders Day celebrations on November 15, 2023. The event will be graced by the esteemed presence of Dr.N.M.Veeraiyan, Dr.S.Suresh Kumar and Dr.D.Dhanasekaran.\r\n\r\nThe event will be a time to reflect on the founding of SIMATS and to recognize the contributions of its founders. It will also be an opportunity to celebrate the progress that the institution has made in the past year.\r\n\r\nThe event will include a number of activities, including a keynote address by Dr.N.M.Veeraiyan, a panel discussion with Dr.S.Suresh Kumar and Dr.D.Dhanasekaran, and a special prsentation by SIMATS. There will also be a variety of cultural performances, a dinner and a fireworks .\r\n\r\nThe event is open to both internal and external participants. The internal participants will be comprised of SIMATS faculty, staff and students. The external participants will include representatives from other educational institutions, business organizations, and government agencies.\r\n\r\nThe highlight of the event will be the presentation of the Founders Day award. This award will be presented to an individual who has made significant contributions to the institution.\r\n\r\nWe look forward to celebrating the progress of SIMATS and to honoring the contributions of its founders at this special event.'),
(2, '\r\nREDNOOL at SIMATS - Celebrating 5 Years of Parithabangal\r\n\r\nSIMATS is proud to announce the upcoming event REDNOOL, held on the 17th of November in 2023. This event marks the 5th anniversary of the Parithabangal initiative, which has been instrumental in providing education to underprivileged children in India.\r\n\r\nThe event will be attended by representatives from SIMATS, as well as external participants from Parithabangal. The highlight of the event will be a special address from Jyothi, who has been a key figure in the initiative since its inception.\r\n\r\nDuring the event, there will be a discussion on the progress made by the Parithabangal initiative over the past 5 years. This will include a review of the impact it has had on the lives of the children and their families. The event will also provide an opportunity for participants to share their ideas and suggestions for further improvement.\r\n\r\nAt the conclusion of the event, participants will be invited to join in a celebration of the achievements of the Parithabangal initiative over the past 5 years. This will include a special presentation highlighting the stories of success, as well as a networking session for those interested in getting involved with the initiative.\r\n\r\nWe look forward to welcoming you to this special event at SIMATS and celebrating the success of Parithabangal.'),
(3, '\n\nSIMATS Receives 4-Star Rating from AICTE and IET-UK\n\nSIMATS, a premier institute in India, is proud to announce that it has been awarded a 4-star rating by the All India Council for Technical Education (AICTE) and the Institution of Engineering and Technology (IET-UK).\n\nThis event, which will be held on November 18, 2023, will be attended by representatives from the AICTE, IET-UK, and the Institution''s Innovation Council. Internal participants from SIMATS will also be present. The Chairman of the event will be a special guest.\n\nThe 4-star rating is a significant accomplishment for SIMATS. It is a testament to the hard work and dedication of its faculty and staff, who have worked tirelessly to ensure that the institute meets the highest standards of excellence in education.\n\nThe event will be a celebration of the achievements of SIMATS. It will also be an opportunity for the institute to showcase its commitment to innovation and excellence in technical education. The event will highlight the institute''s research initiatives, its collaborations with international institutions, and its dedication to providing quality education to its students.\n\nWe at SIMATS are proud of our 4-star rating and are looking forward to the event. We invite all our guests and participants to join us in this special occasion and help us celebrate our success.'),
(4, '\n\nAginto Event at SIMATS\n\nSIMATS is proud to host the Aginto Event on November 3, 2023. The event is an opportunity to celebrate the achievements of the engineers and staff of SIMATS, as well as to recognize the work of external participants.\n\nThe event will be attended by the Chairman of SIMATS, as well as engineers from Excel. Special guest Jyothi will be in attendance to recognize the grand award ceremony.\n\nThe event will be a celebration of the hard work and dedication of the SIMATS team, as well as the external participants. The event will include presentations, awards, and a grand award ceremony.\n\nThe event will be an opportunity to recognize the work of the engineers and staff of SIMATS, as well as the external participants. The event will also be a great opportunity to network, exchange ideas, and build relationships with the external participants.\n\nThe event will also be a great opportunity to showcase the work of SIMATS and to celebrate the success of the company. The event will be a great opportunity to recognize the hard work and dedication of the engineers and staff of SIMATS, as well as the external participants.\n\nWe look forward to seeing you all at the Aginto Event at SIMATS on November 3, 2023. This is an event you don''t want to miss!'),
(5, '\n\nSIMATS BAZAAR:\n\nThe SIMATS Bazaar is a one-of-a-kind event that will be held on the 1st of November 2023 at Nali Arangam, Thandalam Campus, SIMATS. The event will be graced by Shri R. Senthil Kumar, and will be attended by external participants from NAAC and NIRF, as well as internal participants from SIMATS.\n\nThe highlight of the event is the exhibition cum sales, which will showcase products from various departments of SIMATS. This will be an excellent opportunity for the students to explore the various products and services offered by the institute.\n\nThe event will also feature Mr. Arul R A, who will be speaking on the importance of entrepreneurship and innovation. He will be discussing how the students can use their knowledge and skills to create innovative products and services.\n\nThe event will also include a number of activities and competitions that will help the students hone their skills. The winners of these competitions will be rewarded with cash prizes and certificates.\n\nThe SIMATS Bazaar is sure to be a huge success and will be a great opportunity for the students to learn and explore the various products and services offered by the institute.'),
(6, '\n\nFUVISON 2023: A National Level Technical Symposium\n\nFUVISON 2023 is a one day national level technical symposium scheduled to take place on 2023-10-03 at Majestorium Hall. This symposium is a unique platform for students, professionals and researchers to come together and share their ideas, experiences and research outcomes.\n\nThe symposium is organized by the Department of AR and Department of VR of Majestorium Hall and is supported by the CEO of Cyclotron. It will provide an opportunity for the participants to explore the latest trends in the field of Artificial Intelligence, Robotics, Virtual Reality, Augmented Reality and Internet of Things.\n\nMr.Manjith Mothiram will be the chief guest at the event. He will deliver a keynote address on the importance of technological advancements in the modern world. He will also be sharing his insights on the current trends and the future of the technology industry.\n\nThe symposium will include several interesting sessions and activities such as technical paper presentation, panel discussion, product showcase, hackathon, quiz competition and a lot more. The highlight of the event will be the keynote address by Mr.Manjith Mothiram.\n\nThe event will be a great opportunity for the participants to network with each other and explore the latest advancements in the field of technology. It will be a great platform for the participants to gain knowledge and insights from the experts in the industry.\n\nWe invite all the students, professionals and researchers to join us for this wonderful symposium and be part of this amazing event. We look forward to seeing you at FUVISON 2023.'),
(7, '\n\nDasara at Saveetha University\n\nSaveetha University is proud to host Dasara, a traditional Hindu festival, on November 27th, 2023. This event will be attended by the Dean of the University, the Principal of the University, and members of the Dental College. \n\nThe event will feature a special speaker who will discuss the importance of this festival and its significance in our culture. The highlight of the event will be the traditional lighting of the headlights. This is a special ritual that is done to bring good luck and prosperity to everyone.\n\nThe event will also include a variety of activities and performances. There will be traditional dances and music, as well as food and drinks. Everyone is encouraged to dress in their traditional attire and join in the festivities.\n\nWe invite everyone to come and join us in celebrating this special festival. We look forward to seeing you at Saveetha University on November 27th, 2023 for a wonderful Dasara celebration.'),
(8, '\n\nEvent: ef\nVenue: reew\nEvent Date: 2023-11-30\nGuests: werw\nExternal Participants: dsfsd\nInternal Participants: fdsfsd\nSpecial Points: fdsfs\nHighlight of the Event: fsd\n\nWe are pleased to announce the upcoming event, ef, which will be held at reew on 2023-11-30. This event will be attended by werw as guests, and dsfsd and fdsfsd as external and internal participants, respectively.\n\nThe event will focus on fdsfs, and will feature a special highlight, fsd. We are confident that this event will be a huge success and will be a memorable experience for all attendees and participants.\n\nWe invite everyone to join us at the event and take part in the exciting activities that will be available. We look forward to seeing you all there!'),
(9, '\n\nSIMATS Founders Day Celebrations\n\nSIMATS is proud to announce its Founders Day Celebrations, which will take place on November 2nd, 2023. The event will be held at the SIMATS venue and will be attended by the Chairman of the organization, along with internal and external participants.\n\nThe highlight of the event will be the special address by Jyothi, the founder of SIMATS. Jyothi will share her inspiring story of how she started the organization and the journey it has taken since then. She will also discuss the importance of innovation and how it has helped the organization to grow and succeed.\n\nThe event will also feature a variety of activities, such as team building exercises, networking opportunities, and interactive presentations. Attendees will also be able to enjoy some delicious food and drinks.\n\nThe Founders Day Celebrations at SIMATS is a great opportunity for everyone to come together to celebrate the success of the organization. We hope that everyone will join us in this special event and help us to recognize the hard work and dedication of our founder, Jyothi.'),
(10, '\n\nSaveetha Celebrates Founders Day\n\nSaveetha celebrated its Founders Day on November 2, 2023, with the presence of its Chairman. The event was attended by external participants from Saveetha and internal participants numbering one.\n\nThe event was held in the Saveetha premises and was marked by the presence of Jyothi, the special guest. The event started with a welcome speech by the Chairman, followed by a presentation of the Saveetha’s mission and vision.\n\nThe event also featured a special presentation by Jyothi, who shared his experiences and insights on the importance of education and how it has impacted his life. He also shared his thoughts on the importance of Saveetha’s mission and vision.\n\nThe event concluded with the Chairman thanking the guests and the participants for their presence and support. He also thanked Jyothi for his special presentation and for the valuable insights he shared.\n\nThe Founders Day Celebrations at Saveetha was a great success and was attended by a large number of people. It was a great opportunity for the guests to learn more about the mission and vision of Saveetha and to get a glimpse of the life of its founder, Jyothi.'),
(11, '\n\nWorkshop on "Entrepreneurship Development Phases"\n\nA one-day workshop on "Entrepreneurship Development Phases" was held on 2023-11-16 at Lines Hall. The event was hosted by Mr.Wesly Inbaraj and was attended by 25 students from REC, 10 students from Panilmalar and 15 internal participants.\n\nThe workshop focused on the various phases of entrepreneurship development such as strategic planning, financial management, customer needs, team building and risk management. The participants were taken through the various stages of entrepreneurship development and were encouraged to think creatively and come up with innovative solutions to the challenges faced by entrepreneurs.\n\nThe highlight of the event was the guidance provided to the teams with a clear vision, the implementation of a solid business strategy, the encouragement of creative problem solving and the building of a strong professional network. The participants were also provided with valuable insights on how to develop their business ideas and create a successful business model.\n\nAt the end of the workshop, the participants were motivated to take up the challenge of entrepreneurship and were encouraged to make the most of the opportunities available to them. The workshop was a great success and the participants left the event feeling inspired and motivated to pursue their dreams.'),
(13, '\n\nIntroduction\n\nThe Young Entrepreneur event is an event organized by FF Seminar Hall, SSE, to provide an opportunity for young entrepreneurs to learn and gain valuable insights into the world of business. The event will be held on 2023-11-29 and will be attended by Dr.Latha R. The event will also be attended by external participants from Rec, Panimalar, and Dental, with 25 internal participants from SSE. The event will focus on strategic planning, financial management, customer needs, team building, and risk management. It will also provide networking opportunities, pitch competitions, exhibitions, and mentorship sessions.\n\nObjective\n\nThe main objective of the Young Entrepreneur event is to provide young entrepreneurs with the necessary knowledge and skills to succeed in the business world. It will provide an opportunity to learn from experienced entrepreneurs and gain valuable insights into the business world. The event will also provide an opportunity to network with other entrepreneurs and learn from their experiences.\n\nAgenda\n\nThe event will begin with a welcome address by Dr.Latha R. This will be followed by a keynote address by an experienced entrepreneur. After the keynote address, the event will focus on strategic planning, financial management, customer needs, team building, and risk management. The event will also provide networking opportunities, pitch competitions, exhibitions, and mentorship sessions.\n\nStrategic Planning\n\nThe event will provide an opportunity to learn about the fundamentals of strategic planning. It will provide an understanding of the different types of strategies and how to develop them. It will also provide an understanding of how to analyze the market and identify opportunities.\n\nFinancial Management\n\nThe event will provide an opportunity to learn about the fundamentals of financial management. It will provide an understanding of the different types of financial instruments and how to use them. It will also provide an understanding of how to analyze financial statements and identify risks.\n\nCustomer Needs\n\nThe event will provide an opportunity to learn about the fundamentals of customer needs. It will provide an understanding of the different types of customer needs and how to meet them. It will also provide an understanding of how to analyze customer data and identify opportunities.\n\nTeam Building\n\nThe event will provide an opportunity to learn about the fundamentals of team building. It will provide an understanding of the different types of teams and how to develop them. It will also provide an understanding of how to manage teams and identify opportunities.\n\nRisk Management\n\nThe event will provide an opportunity to learn about the fundamentals of risk management. It will provide an understanding of the different types of risks and how to manage them. It will also provide an understanding of how to analyze risks and identify opportunities.\n\nNetworking Opportunities\n\nThe event will provide an opportunity to network with other entrepreneurs and learn from their experiences. It will provide an understanding of the different types of networking opportunities and how to make the most of them. It will also provide an understanding of how to build relationships and identify opportunities.\n\nPitch Competitions\n\nThe event will provide an opportunity to participate in pitch competitions. It will provide an understanding of the different types of pitches and how to make them. It will also provide an understanding of how to evaluate pitches and identify opportunities.\n\nExhibitions\n\nThe event will provide an opportunity to participate in exhibitions. It will provide an understanding of the different types of exhibitions and how to make them successful. It will also provide an understanding of how to promote exhibitions and identify opportunities.\n\nMentorship Sessions\n\nThe event will provide an opportunity to participate in mentorship sessions. It will provide an understanding of the different types of mentorship and how to make the most of them. It will also provide an understanding of how to build relationships and identify opportunities.\n\nConclusion\n\nThe Young Entrepreneur event is an event organized to provide an opportunity for young entrepreneurs to learn and gain valuable insights into the world of business. The event will provide an opportunity to learn about the fundamentals of strategic planning, financial management, customer needs, team building, and risk management. It will also provide networking opportunities, pitch competitions, exhibitions, and mentorship sessions. The event will be a great opportunity for young entrepreneurs to gain valuable knowledge and skills to help them succeed in the business world.'),
(14, '\n\nSaveetha – A Grand Event at Simats\n\nSaveetha is an upcoming event that will be held at Simats on 2023-11-08. This event is expected to be a grand success with the presence of the Chairman as well as the external and internal participants.\n\nThe external participants include 15 students from Rec, 10 students from Panimalar and 20 students from Dental. The internal participants include 20 students from Saveetha. Jyothi will be the special point of the event.\n\nThis event will be a great opportunity for the participants to gain valuable insights from the Chairman and to interact with other participants. It will also be a great platform for the participants to learn about the strategies and processes that will help them to become successful professionals in their respective fields.\n\nThe event will be conducted with a clear vision and a solid business strategy. The participants will be encouraged to think creatively and to come up with innovative solutions to the problems. The event will also provide an opportunity for the participants to build a strong professional network and to collaborate with each other.\n\nThe highlight of the event will be the guidance provided by the Chairman. He will be providing the participants with valuable insights on how to become successful professionals and how to make the best use of their skills and expertise. He will also be providing the participants with advice on how to build a successful career.\n\nThe event will also provide the participants with the opportunity to learn about the latest trends in their respective fields. They will be able to gain insights into the latest technologies and techniques that are being used in their respective fields. This will help the participants to stay ahead of the competition and to gain an edge over their peers.\n\nOverall, Saveetha is expected to be a grand success and the participants will be able to gain valuable insights from the Chairman as well as from the other participants. The event will also provide the participants with the opportunity to build a strong professional network and to collaborate with each other.'),
(15, '\n\nThe Young Entrepreneur event at SIMATS on 2023-12-14 is a great opportunity for the students of SIMATS to gain knowledge and experience in the world of business. The event will be chaired by the Chairman of the college and will be attended by 15 students from REC, 10 students from Panimalar, 20 students from Dental and 20 students from SIMATS.\n\nThe highlight of the event will be a talk by Jyothi, a successful entrepreneur who will share her experiences and insights on the importance of entrepreneurship. She will also talk about how to secure a nation through entrepreneurship.\n\nThe event will also feature a series of activities and workshops to help the students gain a better understanding of the various aspects of entrepreneurship. These activities include a panel discussion with experts in the field, a business plan competition, and a networking session. This will provide the students with the opportunity to learn from experienced professionals and gain valuable insights into the world of business.\n\nThe event will also feature a keynote address by the Chairman of the college, who will discuss the importance of entrepreneurship and the role of young entrepreneurs in the future.\n\nThe event is a great opportunity for the students to gain knowledge and experience in the world of business. It is also a great opportunity for the college to showcase its commitment to promoting entrepreneurship and to nurture future entrepreneurs.\n\nThe event will be a great success and will help the students gain valuable insights into the world of business. The college is confident that the event will help the students gain the skills and knowledge needed to become successful entrepreneurs in the future.'),
(16, '\n\nSaveetha University is celebrating its Founders Day on December 21, 2023 with a grand event. The event will be chaired by the Chairman and will be attended by 15 students from REC, 10 students from Panimalar, 20 students from Dental, and 20 students from Saveetha University.\n\nThe highlight of the event will be a special performance by Jyothi, a renowned artist, and the Headlights, a popular band. The event will feature a variety of activities, including a performance by Jyothi, a discussion by the Chairman, and a musical performance by the Headlights.\n\nThe event will also feature a special presentation by the Chairman, highlighting the achievements of the university over the years. It will also include a discussion on the importance of education and how it can be used to create a better future for the students.\n\nThe event will be concluded with a grand dinner. The dinner will feature a variety of dishes, including traditional dishes, international dishes, and a variety of desserts. The dinner will also be accompanied by a variety of drinks.\n\nThe event will be a great opportunity for the students to interact with the Chairman and learn more about the university. It will also be a great opportunity for the students to network and make new friends.\n\nThe Founders Day event at Saveetha University is sure to be a memorable one. The event will provide the students with an opportunity to learn more about the university and its achievements. It will also be a great opportunity for the students to network and make new friends.'),
(17, 'k;f;ld');

-- --------------------------------------------------------

--
-- Table structure for table `content_creator_template_images`
--

CREATE TABLE IF NOT EXISTS `content_creator_template_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(255) NOT NULL,
  `UpIma` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `content_creator_template_images`
--

INSERT INTO `content_creator_template_images` (`id`, `img_name`, `UpIma`, `name`) VALUES
(1, '1', 'template_img/m1left.png', 'magazine1left'),
(2, '1', 'template_img/m1right.png', 'magazine1right'),
(3, '2', 'template_img/m2.png', 'magazine2'),
(4, '2', 'template_img/m2left.png', 'magazine2left'),
(5, '2', 'template_img/m2topdown.png', 'magazine2td'),
(6, '3', 'template_img/m3.png', 'magazine3'),
(7, '3', 'template_img/m3left.png', 'magazine3left'),
(8, '3', 'template_img/m2_6XshzVC.png', 'magazine3random');

-- --------------------------------------------------------

--
-- Table structure for table `content_editor_editor_details`
--

CREATE TABLE IF NOT EXISTS `content_editor_editor_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `content_editor_editor_details`
--

INSERT INTO `content_editor_editor_details` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'editor', 'editor@gmail.com', '9030398384', '1234'),
(3, 'Akshay', 'akshayterlapu@gmail.com', '989789789788', '12345'),
(4, 'raju1', 'raju@gmail.com', '9876754321', '12345'),
(5, 'Jyo', 'jyo@gmail.com', '9876543210', '123'),
(6, 'akshay', 'akshayterlapu@gmail.com', '9030398384', '12345'),
(7, 'Aravind', 'aravindkumar@gmail.com', '9876543210', '12345'),
(8, 'karun', 'kk456@gmail.com', '9000331053', '12345'),
(9, 'ajay', 'ajaykumar@gmail.com', '12345679', '12345'),
(10, 'Himani', 'himanikk@gmail.com', '9876543210', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'administration', 'admin_details'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'content_creator', 'creator_details'),
(9, 'content_creator', 'creator_table'),
(11, 'content_creator', 'magazine'),
(12, 'content_creator', 'template_images'),
(10, 'content_editor', 'editor_details'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-01 08:55:11.517142'),
(2, 'auth', '0001_initial', '2023-09-01 08:55:13.046162'),
(3, 'admin', '0001_initial', '2023-09-01 08:55:13.295983'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-01 08:55:13.319224'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-01 08:55:13.342291'),
(6, 'administration', '0001_initial', '2023-09-01 08:55:13.401602'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-09-01 08:55:13.642392'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-09-01 08:55:13.759372'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-09-01 08:55:13.927400'),
(10, 'auth', '0004_alter_user_username_opts', '2023-09-01 08:55:13.971184'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-09-01 08:55:14.157017'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-09-01 08:55:14.167560'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-09-01 08:55:14.197911'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-09-01 08:55:14.362177'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-09-01 08:55:14.505245'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-09-01 08:55:14.627897'),
(17, 'auth', '0011_update_proxy_permissions', '2023-09-01 08:55:14.634281'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-09-01 08:55:14.726618'),
(19, 'sessions', '0001_initial', '2023-09-01 08:55:14.819552'),
(20, 'content_creator', '0001_initial', '2023-09-01 10:53:14.274463'),
(21, 'content_creator', '0002_creator_table', '2023-09-02 06:22:44.378462'),
(22, 'content_editor', '0001_initial', '2023-09-02 06:22:44.497585'),
(23, 'content_creator', '0003_delete_creator_details', '2023-09-02 08:12:41.046976'),
(24, 'content_creator', '0004_creator_details', '2023-09-02 08:13:09.293149'),
(25, 'content_creator', '0005_magazine', '2023-09-04 10:34:01.292388'),
(26, 'content_creator', '0006_delete_magazine', '2023-09-04 13:28:17.600239'),
(27, 'content_creator', '0007_magazine', '2023-09-04 13:28:40.335276'),
(28, 'content_creator', '0008_alter_magazine_content', '2023-09-04 13:33:01.651311'),
(29, 'content_creator', '0009_alter_creator_table_upima', '2023-09-04 15:08:12.984147'),
(30, 'content_creator', '0010_delete_creator_table_delete_magazine', '2023-09-05 03:05:15.002635'),
(31, 'content_creator', '0011_creator_table_magazine', '2023-09-05 03:05:38.115268'),
(32, 'content_creator', '0012_creator_table_upima1_creator_table_upima2', '2023-09-08 13:05:38.295549'),
(33, 'content_creator', '0013_creator_table_template', '2023-09-08 14:30:17.750165'),
(34, 'content_creator', '0014_template_images', '2023-09-08 16:05:45.247664'),
(35, 'content_creator', '0015_template_images_name', '2023-09-08 17:09:11.566985'),
(36, 'content_creator', '0016_delete_creator_table_delete_magazine', '2023-09-13 08:18:33.735051'),
(37, 'content_creator', '0017_creator_table_magazine', '2023-09-13 08:18:51.703587'),
(38, 'content_creator', '0018_delete_creator_table_delete_magazine', '2023-09-28 06:05:10.886387'),
(39, 'content_creator', '0019_creator_table_magazine', '2023-09-28 06:05:25.765007'),
(40, 'content_creator', '0020_delete_creator_table_delete_magazine', '2023-11-20 09:13:05.877532'),
(41, 'content_creator', '0021_creator_table_magazine', '2023-11-20 09:13:18.945961'),
(42, 'content_creator', '0022_delete_creator_table_delete_magazine', '2023-11-23 09:49:22.822762'),
(43, 'content_creator', '0023_creator_table_magazine', '2023-11-23 09:49:39.623242'),
(44, 'content_creator', '0024_delete_creator_table_delete_magazine', '2023-11-27 05:29:26.753850'),
(45, 'content_creator', '0025_creator_table_magazine', '2023-11-27 05:30:20.895770');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0va0x78nc6aeem02rmi2n8pehhw7kzwv', 'eyJjY2QiOiJha0BnbWFpbC5jb20ifQ:1r6BdU:hKmoEWntJk3VnghVHHi636kp_OOYows_RI6jRpXt1Zc', '2023-12-07 15:29:00.203321'),
('0wfpmfq93pado2jnnrsgpopqtvwsr9zt', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1qwHzm:eTw1orTAurVpjxLyH8WKH4ENQCc1OFg2YttZuIWKC9c', '2023-11-10 08:15:06.121819'),
('2diuftco3mai50szy8b01hxj533fgyfx', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r5pek:x_xWX5zu5vJxbLrq1iTEedZX4ue8KVP8SayikTCr0B8', '2023-12-06 16:00:50.264907'),
('7te2s284nrsseo3xxeagl7lmifijghlz', 'eyJjY2QiOiJha3NoYXl0ZXJsYXB1QGdtYWlsLmNvbSJ9:1r40si:3fBwXkGf1uNF_pfskvcKtGM1Wbh-I5rPh7zCGua4jaU', '2023-12-01 15:35:44.234416'),
('8yhy6247wjn2xrw6x5kt7fqr9t4bx1uw', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r4zL3:pJ2myDo07y7jxGpNmuV9PKIfXM9kQ6hNU_go53F9f5s', '2023-12-04 08:09:01.720873'),
('accanlj5474rg6dkvy5xinveb7kalvhm', 'eyJjY2QiOiJha3NoYXl0ZXJsYXB1QGdtYWlsLmNvbSJ9:1qyPAs:JMhGMFz2jDnahz5HDD7GeK-0UikxWfpjM6wF_dLzmjs', '2023-11-16 04:19:18.439073'),
('bwgngg5an15esf7gyhc630cj7p6dxbq3', 'eyJjY2QiOiJjcmVhdG9yQGdtYWlsLmNvbSJ9:1qdBlF:f39E8nbfW8yOeZzBQCLlOZvCSQ7K9kJeDgePAz9CK2k', '2023-09-18 15:45:09.904687'),
('byjnskaqbau0h3tqxsdfjtklluvfey9c', 'e30:1qxfPF:DA3XkUqnoTQdCUHyCawAu7fl3DElyrlwuSf0M7yZedg', '2023-11-14 03:27:05.419087'),
('f2joks8s2imde4uta1hbvib4di4hj3ph', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r5pdb:n9aewKK7RCYrmitLB3uJHAizl22cHn4zzLLoOCh7UmA', '2023-12-06 15:59:39.644871'),
('ikijbskzo3cvbgyp04a0vwrp0to4qdv6', 'eyJjY2QiOiJwdXJuaW1hQGdtaWFsLmNvbSJ9:1qvZgm:dDZGYpAm1lWbAgqFlcY4YUBmSXQ2bxtQBNZshT38mlk', '2023-11-08 08:56:32.150260'),
('j7tb7pr956rwsfzb88mbo9m819fa9363', 'eyJjY2QiOiJha0BnbWFpbC5jb20ifQ:1qvZgV:CyfmYI3cqtBMZuH1Z2FDd-BQbU_Kfp11RQu0Fs-nbwE', '2023-11-08 08:56:15.310324'),
('jv2yrt2fz4onncw8opgx1egsbu4bu5c0', 'eyJjY2QiOiJyYWp1QGdtYWlsLmNvbSJ9:1r8Lfv:ehLf-xJ9F_EQevoLRc3hql1snGPbuFU73oIUWxxpLFw', '2023-12-13 14:36:27.803989'),
('ls1ng0hitea7k4cv8od5zqd3l1l51j2p', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r63RE:TJVDuPNqyTuKO7aqxjQWLAo870zzvhLCte2s_uEWoBc', '2023-12-07 06:43:48.876545'),
('m5bbv06qzos4nfm9wicyvjaodz71r5g4', 'eyJjY2QiOiJyYWp1QGdtYWlsLmNvbSJ9:1r5hQq:xxIWa6aT58CaNyECIN0JITziNoVgbOHFxruiP-qAoGU', '2023-12-06 07:13:56.162207'),
('mdaxnnp6m4ahrp35egmwjjdl52nmr0jq', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r420I:r9lcYVcldgNj56F68SAOpNDGjB9qTklsN46tlmDwbBY', '2023-12-01 16:47:38.078544'),
('mwss4ljbaawxzmtoejpp8whzgq9ceikn', '.eJxtkEFrwzAMhf-KyNkbpTstp5W1dN1glAV6ykWkWqwmlo1il4Wx_z6l7DiwwEjfexLvu0oaQ1VXuytJrmEn3Ads5URSqIZnTwnLAE3GM5fQyg2DLWYbrlfrh7vVo71W9oWmPNXQlES64AofeGHhASV7031lUsERjqiZO07WNvzEF5ydqXRGB-84LzSq_V9j9iZ2hgyKtvkg_zpscMDJO3hD49XBUfFKJA62ZKdLK02ijhdZ5JvgZtzKC_d-tMoQPyF7gr8ADiFFzea99DeskOI4lsxRgAU6TyLIlau67myppaLCAZ_6YCvuO0vy5xcUtng0:1qvVwS:0V-Ed22scbKLiMkOoJFt8P-BDNk0roiYGn8MSMMdfS0', '2023-11-08 04:56:28.061358'),
('q49luhhcr97rdx10g657g5w4029571yo', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1qwHx8:YEIcHr-pouZm1OsJOIMrvmx2tRC28_5PVj9grl8XBFM', '2023-11-10 08:12:22.826869'),
('qlo8gyp8fhnwqlrwqlw0vtajbwmgskmc', 'eyJjY2QiOiJtYXllZXRlcmxhcHVAZ21haWwuY29tIn0:1r7rkU:xQhiUe3uiRPgVWLmIoOWemIbTw3SpypexsziATKM-mI', '2023-12-12 06:39:10.836692'),
('qndesueqvnlgiv2o05k7j1811poejgbq', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r66cs:UAgaFmZKn521JzMexxEKHGsbZUwklVqwoTMUaJDgCXU', '2023-12-07 10:08:02.922641'),
('qpov1ewif0m74b46n1he4sh88b9gwqbr', 'e30:1qvxOF:MpvxnsSQXcR_LZTFhO3-2IuEUR4FlyW6U_kHYgvlgXs', '2023-11-09 10:14:59.891664'),
('qt1ozrzmzd2zlqdmad2jo0xe5c9g7s2m', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1qxLZf:SPVTTCyPJSVfDKmDzfsBLdxmW2r-Wz34Hfe3wH7JhFo', '2023-11-13 06:16:31.029465'),
('scani00xmqj7cntqi9z3k0wliya98iah', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1qxMzU:9m4DtrdKirNrR4QzAvKnjGFLC11VfxdErJfwCuKT7XU', '2023-11-13 07:47:16.141823'),
('tpzk9czcdujb0qfnu45khlu84a7bve5g', 'eyJjY2QiOiJyYWp1QGdtYWlsLmNvbSJ9:1r8Lf0:tv3dDB8ZXC50Mt4jd-og2trp0qpunDVPTur1YUV3t94', '2023-12-13 14:35:30.817705'),
('tw8i9jkd2bfrrfgfv3zxn4ywphw59y0k', 'eyJjY2QiOiJha3NoYXl0ZXJsYXB1QGdtYWlsLmNvbSJ9:1r3AHB:ya-MQzGoFU-WriNpjvlaVEedBNUfjGw8eMvfpH2IKsM', '2023-11-29 07:25:29.715482'),
('u5gc7b999r9u24xvzfuj4zj4lucomtc4', 'e30:1qxgRv:PMREdSkCac7ESUtOybuqgelUxe3PYdk75YAyCrWFJdg', '2023-11-14 04:33:55.706598'),
('ydviu5pgqiudmhevynpxk2jos9iyhlfo', 'eyJjY2QiOiJha0BnbWFpbC5jb20ifQ:1r6BaO:10TQPIayn4RuRruDiVZi2frKKfxibm8xLY8bCJhOy_I', '2023-12-07 15:25:48.698582'),
('yvpwnykkp94ovytdxc88pvalkzxyw7lj', 'e30:1rDHY3:sMNB8CPNj55x0Y4up_QEJmPXWLgjxe07einTwWNubgc', '2023-12-27 05:12:43.050936'),
('z3zfulpi0gub3ll3bjvmjyhsgvxeab9d', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r3uor:9KMd2dwI53eKUq_WNDPRPmUPAeRj9yLdwUdGlL2Lkwc', '2023-12-01 09:07:21.372945'),
('zgzpn1jk08njamxkgrszeg2ny7svrjhq', 'eyJjY2QiOiJyYWp1MUBnbWFpbC5jb20ifQ:1r50rk:A7LfBd_Oj2oLPVkL1gf2I1vXNTjbIfLYgMcFE3avdTE', '2023-12-04 09:46:52.272122');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
