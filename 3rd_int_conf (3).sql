-- phpMyAdmin SQL Dump
-- version 5.2.0-dev+20220417.9174669a7c
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2022 at 04:19 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3rd_int_conf`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `about` mediumtext NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`about_id`, `about`, `updated_at`) VALUES
(1, '&lt;h3&gt;&lt;span style=&quot;color: inherit; font-family: inherit; font-size: 1.5rem;&quot;&gt;The Federal Polytechnic, Ilaro is one of the seven Federal Polytechnics established by the Federal Polytechnics Act No 33 of July 25, 1979. According to the Act, the Institution is to provide technical and practical-oriented training to meet the manpower requirements for the industrial, agricultural, commercial and economic development of Nigeria.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/h3&gt;&lt;h3&gt;Specifically, the Act requires the Institution&lt;/h3&gt;&lt;h3&gt;a.&amp;nbsp; &amp;nbsp; To provide full-time and part-time courses of instruction and training to students&lt;/h3&gt;&lt;h3&gt;i.&amp;nbsp; &amp;nbsp; in technology, applied science, commerce, management and&amp;nbsp;&lt;/h3&gt;&lt;h3&gt;ii.&amp;nbsp; &amp;nbsp; in such other fields of applied learning relevant to the needs of the development of Nigeria in the area of industrial and agricultural production and distribution and for research in the development and adaptation of techniques&lt;/h3&gt;&lt;h3&gt;b.&amp;nbsp; &amp;nbsp; To arrange conferences, seminars and study groups relative to the fields of learning specified in paragraph (a) above&lt;/h3&gt;&lt;h3&gt;&amp;nbsp;As part of its pursuit of this mandate and other objectives, the Polytechnic instituted “The International Conference of The Federal Polytechnic, Ilaro. Ogun State”. The thrust of the Conference is the provision of a forum for academics and researchers from within and outside the country, the opportunity to present and discuss their work, exchange information on current best practices across disciplines and proffer or advance solutions or recommendations towards addressing issues of great concern or challenge.&amp;nbsp;&lt;/h3&gt;&lt;h3&gt;The maiden edition of the Conference was held in November 2018, the 2nd Edition was held in&amp;nbsp; November, 2020 while the 3rd Edition with the Theme: Revamping the Economy: The TVET Perspectives is scheduled to hold between Tuesday August 16 – Wednesday August 17, 2022.&lt;/h3&gt;&lt;h3&gt;&amp;nbsp;&lt;/h3&gt;&lt;h3&gt;Presenters were carefully selected both within and outside the country that are vast in the subject area to share from their wealth of experience and research exposure in the key area. Authors are invited from various disciplines to send in their original research work related to the theme or sub-theme of the conference.&lt;/h3&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '2022-03-30 17:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administrator_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administrator_id`, `admin_username`, `admin_password`, `date_added`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2020-07-22 11:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `call_papers`
--

CREATE TABLE `call_papers` (
  `call_id` int(11) NOT NULL,
  `call_papers` longtext NOT NULL,
  `date_updated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `call_papers`
--

INSERT INTO `call_papers` (`call_id`, `call_papers`, `date_updated`) VALUES
(1, '&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;text-indent: 48px; font-size: 16pt; font-weight: bolder; font-family: Tahoma;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;3rd International Conference, The Federal Polytechnic, Ilaro.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 16pt; line-height: 22.8267px; font-family: Tahoma;&quot;&gt;THEME&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: bolder; font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma;&quot;&gt;&amp;nbsp;-&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;i&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;“Revamping&lt;/span&gt;&lt;/i&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&amp;nbsp;&lt;i&gt;the Economy: The TVET Perspectives&lt;/i&gt;&lt;i&gt;”&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 14pt; line-height: 19.9733px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;span style=&quot;font-weight: bolder; font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 14pt; line-height: 19.9733px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;SUB-THEMES&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;1. Fostering Youth Employment through Entrepreneurship and Skill Development in TVET for Sustainable Economic Development.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;2.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Enhancing Green Learning and Training in TVET for Sustainable development.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;3.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Curriculum and Content Delivery as the missing link in TVET and the World of Work&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;4.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Strategies for recovering from COVID-19 Pandemic&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;5.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Innovative Approaches to Technology for Sustainable Development.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;6.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Emerging Trends and Issues in TVET Institutions.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;7.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Bridging the Gap between TVET and Employment Labour for Sustainable Development&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;8.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Vocational Skills Training as Gateway to Self-Employment and Entrepreneurship.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;9&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;. Digital skills mainstreaming and Enterpreneurship Development for National Rescue&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;10.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Repositioning Office Technology and Management Programme Towards Achieving TVET Goals&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;11.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Agricultural Technologies – The Treasure of Developing Nations.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;12.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Music Technology as a Tool For Revamping the Nigerian Economy&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;13.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Improving the Economy Through Nutrition Education and Intervention&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;14.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Application of TVET In Conserving Food Nutrients from Farm to Table (Plate)&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;15.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;TVET and Human Capital Management&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;16. TVET\r\nand Strategic Management &lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;17.&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 107%; font-family: Tahoma, sans-serif;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 107%; font-family: Tahoma, sans-serif;&quot;&gt;Enhancing\r\nthe Economy through Transport Infrastructure, Planning and Management &lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 107%; font-family: Tahoma, sans-serif;&quot;&gt;18.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Revamping\r\nthe Indigenous Food Chain for Economic Development &lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;19.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Revamping\r\nthe Local Economy Through Hospitality Entrepreneurship &lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;20.&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Library\r\nand Information Science Innovations and Entrepreneurial Opportunities for TVET\r\nPromotion.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;21.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Communication\r\nTechnology and National Development &lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;22&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 107%; font-family: Tahoma, sans-serif;&quot;&gt;.&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; line-height: 107%;&quot;&gt;&lt;font face=&quot;Times New Roman&quot; size=&quot;1&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 12pt; line-height: 107%; font-family: Tahoma, sans-serif;&quot;&gt;Rejigging\r\nEmployment Prospect of Graduate Estate Surveyors through Technopreneuralisation\r\nof Estate Surveying Curricula&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;23. Technical\r\nVocational Education and Training: A panacea to Self- Employment Potentials of\r\nGraduate Estate Surveyors &lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;24.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Emerging\r\nTrends in Art and Design Circles as an Intervention Mechanism&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;25.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;Revamping\r\nthe Nation Economy Through Information Technology Innovation&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; text-indent: -0.25in;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;26. Enhancing\r\nTVET using ICT infrastructure&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; line-height: 1.8;&quot;&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;/p&gt;', '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `conference_id` int(11) NOT NULL,
  `theme` text NOT NULL,
  `sub_theme` text NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conference`
--

INSERT INTO `conference` (`conference_id`, `theme`, `sub_theme`, `date`) VALUES
(12, '“Revamping the Economy: The TVET Perspectives”', '1.	Fostering Youth Employment through Entrepreneurship and Skill Development in TVET for Sustainable Economic Development', '16th - 17th August, 2021'),
(13, '“Revamping the Economy: The TVET Perspectives”', '1.	Fostering Youth Employment through Entrepreneurship and Skill Development in TVET for Sustainable Economic Development', '16th - 17th August, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `guideline`
--

CREATE TABLE `guideline` (
  `guideline_id` int(11) NOT NULL,
  `guideline` mediumtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guideline`
--

INSERT INTO `guideline` (`guideline_id`, `guideline`, `created_at`, `updated_at`) VALUES
(1, '                                                                                                                                                                                                                                                &lt;h4 style=&quot;margin-top: 10px; margin-bottom: 10px; font-weight: 700; font-size: 14.4px; font-family: Barlow, sans-serif; color: rgb(65, 77, 95);&quot;&gt;&lt;b style=&quot;font-family: Tahoma, sans-serif; font-size: 12pt; color: inherit;&quot;&gt;Guidelines for Paper Submission&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Abstract&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&amp;nbsp;Maximum word count not more than 250.&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Font: Times New Roman and font size of 10 points. Spacing: Single.&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt; &lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Keywords: Maximum of 6.&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Body of the Paper:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Maximum of 12 pages. &lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Font: Times New Roman and font size of 10 points. Spacing: 1.15.&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Referencing&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;: APA style 7&lt;sup style=&quot;font-size: 12px;&quot;&gt;th&lt;/sup&gt;&amp;nbsp;Edition.&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;Template&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;span style=&quot;font-weight: normal;&quot;&gt;: Download full paper Template from the Conference Website&lt;/span&gt;.&lt;/span&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, sans-serif;&quot;&gt;&lt;h6&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/h6&gt;&lt;h6&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;Submission Site/Email&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/h6&gt;&lt;h6&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:\r\n&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;Conference Email: &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;&lt;a href=&quot;mailto:fpi2ndinterconf@federalpolyilaro.edu.ng&quot;&gt;&lt;span style=&quot;font-size:\r\n12.0pt;line-height:107%&quot;&gt;&lt;a href=&quot;mailto:fpi3rdinterconf@federalpolyilaro.edu.ng&quot;&gt;fpi3rdinterconf@federalpolyilaro.edu.ng&lt;/a&gt;&lt;br&gt;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/h6&gt;&lt;h6&gt;&lt;span style=&quot;font-family:&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;&lt;a href=&quot;mailto:fpi2ndinterconf@federalpolyilaro.edu.ng&quot;&gt;&lt;span style=&quot;font-size:\r\n12.0pt;line-height:107%&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:\r\n&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;Conference Website: &lt;/span&gt;&lt;a href=&quot;https://www.fpi3rdinterconf.federalpolyilaro.edu.ng/&quot;&gt;https://www.fpi3rdinterconf.federalpolyilaro.edu.ng&lt;/a&gt;&lt;span style=&quot;font-family:\r\n&amp;quot;Tahoma&amp;quot;,&amp;quot;sans-serif&amp;quot;&quot;&gt;&lt;/span&gt;&lt;/h6&gt;\r\n\r\n\r\n\r\n&lt;/span&gt;&lt;/h4&gt;&lt;p style=&quot;font-size: 14.4px;&quot;&gt;&lt;/p&gt;                                                                                                                                                                                ', '2020-07-24 00:10:50', '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `journal_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `abstract` text NOT NULL,
  `file` varchar(200) NOT NULL,
  `page_no` varchar(200) NOT NULL,
  `authors` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `upload_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`journal_id`, `title`, `abstract`, `file`, `page_no`, `authors`, `email`, `phone`, `institution`, `upload_date`) VALUES
(1, 'The way to live properly', 'asjaksna', '5430863.docx', '0', 'Soneye Oluwasina Abimbola                                   \r\n                                ', '', '', 'Fed Poly', '2022-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `new_upload`
--

CREATE TABLE `new_upload` (
  `new_upload_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `view_status` enum('0','1') NOT NULL,
  `date_upload_created` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_upload`
--

INSERT INTO `new_upload` (`new_upload_id`, `participant_id`, `file_name`, `view_status`, `date_upload_created`) VALUES
(1, 3, '5430863.docx', '1', '2022-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(150) NOT NULL,
  `team_pos` varchar(150) NOT NULL,
  `team_order` int(11) NOT NULL,
  `team_pic` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`team_id`, `team_name`, `team_pos`, `team_order`, `team_pic`) VALUES
(4, 'Dr. Charlotte B. Iro-Idoro', 'Member', 3, '3835387.jpg'),
(13, 'Engr. Cletus U. Okoye', 'Chairman', 1, '6349077.jpg'),
(6, 'Nasir Olaniyi. Ilelaboye', 'Member', 4, '3996940.jpg'),
(7, 'Dr. Mrs Jumoke Soyemi', 'Member', 7, '8173246.jpg'),
(8, 'Engr. Jide Soyemi, PhD', 'Member', 5, '9668386.jpeg'),
(9, 'Arc Matemi E. Olubodun', 'Member', 6, '8802202.jpeg'),
(10, 'Dr. Yusuf  Adebola Bako', 'Member', 8, '2240759.jpeg'),
(11, 'Majeobaje Ismail Olalekan, ACA', 'Member', 9, '7521287.jpg'),
(12, 'Olusola Ojo MNIM', 'Secretary', 10, '4982599.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `participantid` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(150) COLLATE utf8_bin NOT NULL,
  `journal_id` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participantid`, `firstname`, `lastname`, `journal_id`, `payment_status`, `date_created`) VALUES
(1, 'bashir', 'bello', 0, 1, '2022-04-16'),
(2, 'bashir', 'bello', 0, 1, '2022-04-16'),
(3, 'soneye', 'oluwasina abimbola', 1, 1, '2022-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `registration_fee`
--

CREATE TABLE `registration_fee` (
  `reg_id` int(11) NOT NULL,
  `bank` varchar(150) NOT NULL,
  `account_name` varchar(150) NOT NULL,
  `account_number` varchar(150) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_in_dollar` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_fee`
--

INSERT INTO `registration_fee` (`reg_id`, `bank`, `account_name`, `account_number`, `amount`, `amount_in_dollar`, `updated_at`) VALUES
(1, 'United Bank of Africa (UBA)', 'International Conference, Federal Poly Ilaro', '1021398446', 7500, 50, '2020-08-07 10:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `speaker_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `institution` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) NOT NULL,
  `speaker_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`speaker_id`, `name`, `institution`, `picture`, `profile`, `type`, `speaker_order`) VALUES
(17, 'Engr. Obafemi Omokungbe', 'Not Available', '4284190.jpg', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;A Pragmatic and Visionary\r\nAdministrator&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;An Engineer, astute Researcher,\r\ncharismatic Teacher and an uncommon Administrator, Obafemi Owoseni Omokungbe\r\nwas born on March 22, 1962 to the illustrious family of Omokungbe who hails\r\nfrom Ode-Irele, the administrative headquarter of Irele Local Government Area\r\nin Ondo State. He is currently the Rector of Yaba College of Technology (The\r\nCradle of Higher Learning in Nigeria) and the first alumnus of the institution\r\nin that capacity.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;ACADEMIC CAREER&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Omokungbe attended Remo Divisional\r\nHigh School, Sagamu, and Ogun State for his secondary education and Yaba\r\nCollege of Technology for his tertiary education from where he obtained the\r\nNational and Higher National Diploma in Civil Engineering. Not satisfied with\r\nthat, he proceeded to the prestigious University of Lagos for a Bachelor of\r\nScience (B.Sc) degree and Master of Science (M.Sc) in Civil Engineering&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;WORKING CAREER&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Obafemi Omokungbe working\r\nexperiences, which spans almost three decades began in 1988 immediately after\r\nhis National Youth Service Corp at Home Construction and Dredging Nigeria\r\nLimited where he was employed as a site engineer. In 1993, he crossed to Yaba\r\nCollege of Technology as a Lecturer Grade 3 and rose steadily to the position\r\nof a Chief Lecturer in 2009. Hardworking and committed, the vision-driven\r\nRector had served as a Course Adviser in the Department of Civil Engineering,\r\nHead of Civil Engineering Department and member and Chairman of various\r\nacademic and administrative committees in the College.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Omokungbe became the Chairman,\r\nAcademic Staff Union of Polytechnics (ASUP), and Yabatech Chapter in 2005. His\r\ntenure, a trail blazer, witnessed tremendous growth and development for staff\r\nof the College especially in the area of welfare. &lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;MEMBERSHIP OF\r\nPROFESSIONAL BODIES&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Obafemi Omokungbe who has attended\r\nmany top management conferences and workshops both within and outside Nigeria\r\nis a member of various professional&amp;nbsp;bodies. Among them include: &lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Member, Nigerian Society of\r\nEngineers(MNSE), Member, Nigerian Institution of Civil Engineers(MNICE),\r\nMember, Council for Regulation of Engineering in Nigeria, Member, Nigerian\r\nInstitution of Structural Engineers(MNIStructE), Member, American Society of\r\nCivil Engineers(MASCE), Nigerian Institute of Management(MNIM), Fellow,\r\nNigerian Institution of Structural Engineers FNIStructE), Fellow, Nigerian\r\nSociety of Engineer(FNSE), Fellow, Chartered Institute of Public Resource\r\nManagement and Politics, GhanaFellow, Institute of Procurement and Resource\r\nManagement(FIPRM).&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;AWARDS AND\r\nHONOURS&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Omokungbe has a garland of awards to\r\nhis credit, as well as recognitions for notable contributions and roles. These\r\ninclude AfrikaWatch Man of the Year award by AfrikaWatch NewsMedia, Most\r\nOutstanding and Best Performing Rector of the&amp;nbsp;\r\nYear, by South West Zone of National of National Association Of Nigerian\r\nStudents(NANS), Pillar of Sport of South West, Africa, by South West Games\r\nExecutive Committee, Sir Ahmadu Bello Distinguished Merit and Leadership Award,\r\nAward for Promoting and Development of Engineering Excellence by Institution of\r\nHighway and&amp;nbsp; Transportation Engineers,\r\nOutstanding Role Model Award of Ondo State by Sunshine Magazine, Award of\r\nExcellence by Nigerian Society of Engineers and Young Men Christian Association\r\nAward in recognition of his administrative and Record of Successes in the\r\ndevelopment of Yabatech, First Runner-Up, 20211 Lagos State Man of&amp;nbsp; the Year Award and finally, Ondo State @46\r\nEducationist of the Year&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;LANDMARK\r\nACHIEVEMENTS FROM 2018 TO DATE&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:12.0pt;\r\nmso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:\r\n&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;From 2018 when the he mounted the\r\nleadership stool of the College to date, the hardworking Rector has demonstrated\r\nvision and good leadership in the way and manner he has piloted the administrative\r\naffairs of the institution.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Comprehensive upgrading and total rehabilitation\r\nand renovation of the classrooms, Laboratories, Studios and the student’s\r\nresidential halls to optimum standard which has enhance quality in teaching and\r\nlearning.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Accreditation of the more than 60\r\nprogrammes in the College by the National Board for Technical Education (NBTE)\r\nand other allied bodies.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;New programmes (Library and Information\r\nScience) have been added to existing one. &lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Infrastructural development of Epe Campus.\r\nEpe campus which about 7 times the size of the main campus is now functional,\r\nwith good road network. The School of Technical Education, Departments of\r\nHospitality, Agricultural Technology and Bio-Environmental Engineering now\r\noperates from there.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Establishment of Yabatech backery\r\nand Water factory to boost Internal Generated Revenue (IGR) for the College.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Best Polytechnic in Nigeria (three\r\ntimes in a roll) by webometric ranking. The College was ranked 8th position\r\nwhen he became Rector in 2018, In his first meeting with staff of the College,\r\nhe promised to take the College to 1st position, and he did just that under 2\r\nyears.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Lifting of the ban o students\r\nUnionism...and many more.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Together with his dedicated management\r\nteam, Omokungbe has worked and still working responsively to reposition the\r\nCollege to an enviable and exalted position as Polytechnic of first choice in\r\nNigeria. &lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:0in;margin-bottom:.0001pt;text-align:\r\njustify;text-justify:inter-ideograph;line-height:normal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Over time, the pragmatic, visionary\r\nand charismatic Rector, a civil and structural engineer by training has demonstrated\r\nvast capacity and experiences which have aided and propelled his outstanding\r\nand innovative contributions&amp;nbsp;to his immediate environment in particular\r\nand the nation in general.&lt;/font&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'Lead Paper Presenter I', 2),
(18, 'Engr. Prof. Adewumi', 'the Centre for Agricultural Mechanization &amp; Sustainable Env. (CEADESE) at FUNAAB', '1514699.jpg', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:normal;mso-layout-grid-align:\r\nnone;text-autospace:none&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-ansi-language:EN&quot;&gt;&lt;b&gt;Engr. Prof. Adewumi&lt;/b&gt;, a Nigerian, has\r\nall his degrees in Agricultural Engineering, with specialization in Agro-food\r\nProcess Engineering. He is a register Engineer with the Council for the\r\nRegulation of Engineering in Nigeria (COREN). He had his post-Doctoral research\r\nin Advance Food Engineering at the United Nation University (UNU), Tokyo at the\r\nUNU station (Central Food Technological Research Institute) in Mysore, India.\r\nHe had training in the Management of Higher Institutions Education at the &lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;Galilee International\r\nManagement Institute, Mizra, Israel and another training in E- Learning and\r\npedagogy from the University of Copenhagen, Denmark.&lt;/span&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-ansi-language:EN&quot;&gt;\r\nHe joined the Federal University of Agriculture, Abeokuta (FUNAAB) as a\r\nProfessor of Food Engineering in 2008, having worked earlier at the Federal\r\nUniversity of Technology, Akure for 20 years. He has worked as Visiting Senior\r\nLecturer at the University of llorin; Visiting Scientist at the Central Food\r\nTechnological Research Institute, Mysore, India and Visiting Professor at the\r\nObafemi Awolowo University, lle Ife. He has published more than 150 academic\r\npublications in reputable journals, peer reviewed conference proceedings,\r\nbooks, technical reports etc. He has developed over 40 agro-food processing\r\nmachines and original inventions; and an aerodynamic model for determining the\r\ndimensions of grain classifier and particle dynamics studies. Engr. Prof. Adewumi\r\nis a Fellow of the Nigerian Society of Engineers (FNSE), Nigerian Institution\r\nof Agricultural Engineers (FNIAE), &lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;Nigerian Institute of Applied Information\r\nManagement Professionals&lt;/span&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-ansi-language:EN&quot;&gt; (NAIMP) and the Nigerian\r\nAcademy of Engineering (FAEng); and member of the American Society of\r\nAgricultural and Biological Engineering (MASABE), Association of Food\r\nScientists and Technologists (AFST), India and the Nigerian Institute of Food\r\nScience and Technology (NIFST). He is a member of The Competitiveness Institute\r\n(TCI), founding member of the Pan African Competitiveness Forum (PACF),\r\nPACF-ECOWAS and PACF-Nigeria, and is a founding\r\nand life member of the Pan African Society of Agricultural Engineering (PASAE). &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:normal;mso-layout-grid-align:\r\nnone;text-autospace:none&quot;&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;font-family:\r\n&amp;quot;Tahoma&amp;quot;,sans-serif;mso-ansi-language:EN&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Engr. Prof. Adewumi was Head of the\r\nDepartment of Agricultural Engineering Department at FUNAAB and member of the\r\nimmediate past Governing Board of the National Center for Agricultural\r\nMechanization (NCAM), Ilorin. He was the Vice Chairman of the Committee of\r\nNIAE-NCAM and member of the Standard Organization of Nigeria (SON) that\r\nproduced three Agricultural Engineering Codes and Standards. He was a member of\r\nthe Council and National Executive Committee of the Nigerian Society of\r\nEngineers. He was the Immediate Past Chief Inspector of the Ogun State\r\nEngineering Regulation Monitoring, a joint project of COREN and NSE. He was\r\nPast National Vice Chairman and National Chairman of NIAE and a member of the\r\nNational Economic Committee and Food and Agriculture Committee of NSE. He was a\r\nmember of the Executive of the\r\nimmediate Past Council of PASAE. He\r\nwas the Chairman of the Food and Agriculture Committee of NSE at National\r\nlevel; a member of executive committee and immediate past Chief Examiner for\r\nProfessional Examination of Abeokuta Branch of NSE. He is the immediate past Director,\r\nCentre for Entrepreneurial Studies, FUNAAB.&lt;o:p&gt;&lt;/o:p&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:normal&quot;&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-ansi-language:EN;\r\nmso-bidi-font-weight:bold&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Engr. Prof. Adewumi is a member of the Senate of\r\nFUNAAB, and Programme Leader, Farm Mechanization and Sustainable Environment\r\n(AMS) of the Centre for Agricultural Mechanization &amp;amp; Sustainable Env.\r\n(CEADESE) at FUNAAB. He a Regional Overseer at the Deeper Christian Life\r\nMinistry. &lt;/font&gt;&lt;/span&gt;&lt;span lang=&quot;EN&quot; style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;\r\nmso-ansi-language:EN&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;He has won many\r\ndistinguished awards and is well traveled. He has been privileged to travel to\r\nnations such as Israel, USA, Canada, Denmark, India, Egypt, South Africa,\r\nKenya, Ethiopia, Uganda, Ghana, etc. He is happily married and blessed\r\nwith children.&lt;/font&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'Lead Paper Presenter II', 3),
(19, 'Arc Olusegun O. Aluko PhD', 'The Federal Polytechnic Ilaro', '8314855.jpg', '', 'Host', 4),
(16, 'Prof. (Mrs.) Smile Dzisi', 'Data Link Institute of Business and Technology', '3066485.png', '&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;Smile\r\nDzisi is an excellent academic with over twenty-five years of rich experience\r\nand expertise in university leadership. She has repeatedly received\r\ninternational recognition for her contribution to entrepreneurship and\r\ninnovation, Technical and Vocational Education Training, women empowerment and\r\nthe promotion of small businesses. She served as a Vice-Chancellor for\r\nKoforidua Technical University, Ghana for four years and is currently the\r\nPresident of Data Link Institute of Business and Technology,&lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt; a premier private\r\nuniversity college in Tema, Ghana.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;&quot;&gt;She\r\nis an Associate Professor of Entrepreneurship and Innovation and a Gender Consultant.\r\n&lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;She was\r\nthe first female to be appointed a Rector of a Polytechnic in Ghana. She ably\r\nled the transition of her Polytechnic into a Technical University.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;She started her working career as a tutor in\r\nSt. Roses Senior High School. She has had a distinguished academic career at\r\nKoforidua Technical University where she held several senior management\r\npositions including:&lt;b&gt; &lt;/b&gt;Director of\r\nResearch; Director, Centre for Entrepreneurship and Innovation Development;&lt;b&gt; &lt;/b&gt;Dean&lt;b&gt;,&lt;/b&gt; School of Graduate Studies; &lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;MS Mincho&amp;quot;&quot;&gt;Acting Deputy\r\nRegistrar (Academic) &lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;and\r\nVice Rector. She became the first Associate Professor produced by the\r\nUniversity.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Prof. Dzisi holds a Bachelor of Arts degree in\r\nSocial Sciences from Kwame Nkrumah University of Science and Technology, Ghana;\r\na Master of Public Administration degree from University of Ghana and a PhD in\r\nEntrepreneurship and Innovation from Swinburne\r\nUniversity of Technology in Australia where she also received an award for the\r\nmost distinguished Ph.D. thesis.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: Tahoma, sans-serif;&quot;&gt;Prof. Dzisi is the first female to\r\nserve as chair of the Vice-Chancellors of Technical Universities of Ghana. She\r\nis the consultant on the Commonwealth of Learning (COL), Association of\r\nTechnical Universities and Polytechnics in Africa (ATUPA) Women in STEM-TVET\r\nWITED project (CAWS WITED Project) to increase girls and women participation in\r\nSTEM-TVET. She has also provided consultancy to the DAAD, United Nations\r\nPopulation Fund (UNFPA), and the World Bank. She champions entrepreneurship\r\neducation, women empowerment, as well as Science, Technology, Engineering and\r\nMathematics (STEM) and was selected as a model for TVET by &lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: Tahoma, sans-serif;&quot;&gt;Council for Technical\r\nand Vocational Education and Training (&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: Tahoma, sans-serif;&quot;&gt;COTVET)/GIZ in 2020. Under her\r\nleadership Koforidua Technical University was deservedly recognized by the African\r\nUnion as a Centre of Excellence for TVET.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: Tahoma, sans-serif;&quot;&gt;She\r\nis the West Africa Coordinator of Women in Technical Education and &lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:\r\n&amp;quot;MS Mincho&amp;quot;&quot;&gt;Development (WITED). In her quest to developed the under\r\nrepresentation of women in STEM in Ghana, she established WITED in all the 10 Technical\r\nUniversities in Ghana and has instituted a quarterly webinar series for WITED\r\nto groom female leaders.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;Prof. Dzisi has been a member of many\r\ninternational and national Boards including the Association of Technical\r\nUniversities and Polytechnics in Africa (ATUPA) Executive Board, National\r\nCommittee for Centralized Universities Application and Processing Service, the\r\nNational Council for Tertiary Education (NCTE), &lt;/span&gt;&lt;span style=&quot;font-size:\r\n12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif;mso-fareast-font-family:&amp;quot;MS Mincho&amp;quot;&quot;&gt;Ministerial\r\nAdvisory Board for the Ministry of Women and Children Affairs&lt;/span&gt;&lt;span style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;, the National\r\nAccreditation Board (NAB). She was a member of the advisory Board that recently\r\ndeveloped the ATUPA/Commonwealth of Learning WITED Practical Guide Handbook.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;In contributing to knowledge, Professor Smile\r\nDzisi consistently publishes in peer- reviewed journals. She has presented at\r\nvarious international conferences and workshops including the World Technology\r\nUniversity Congress, Oxford Debate (University of the Future Academic Union),\r\nGoing Global Conference (Conference for Leaders of International Education),\r\nConference on Work Integrated Learning (Join Forces Tapping Youth Employability\r\nOpportunities), DIES workshop on Gender Equity (Navigating Women’s Careers in\r\nHigher Education),&amp;nbsp; European Conference\r\nof Innovation, European Conference of Entrepreneurship and Innovation and at\r\nthe &lt;a name=&quot;_Hlk85364902&quot;&gt;Association of Technical Universities and\r\nPolytechnics of Africa&lt;/a&gt;.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Her research areas include innovation and\r\nentrepreneurship, female advancement, eLearning, technical and vocational\r\neducation and internationalization. She is also a member of the following\r\ninternationally recognized professional bodies: International Society for\r\nProfessional Innovation Management (ISPIM), and Australian and New Zealand\r\nAcademy of Management (ANZAM), a fellow of the Chartered Institute of\r\nAdministrators and Management Consultant, Ghana (CIAMC) and Institute of\r\nDirectors, Ghana (IoD-GH). She is also an eminent member of Chartered Institute\r\nof Supply Chain Management, Ghana (CISCM), Civilian Institute of Democratic\r\nAdministration (CIDA) and the West Africa Nobles Forum.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNoSpacing&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nfont-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;For her outstanding competency,\r\ninnovativeness, commitment and passion for excellence, Prof. Dzisi received the\r\nName in Science and Education Award from the Academic Union and the Club of\r\nRectors of Europe, United Kingdom in 2019, Ghana Women of Excellence Award in\r\n2019 and the Daasebre Silver Jubilee Award of Excellence in Higher Education\r\nManagement in 2017.&amp;nbsp;&lt;/font&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'Keynote Speaker', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `sponsor_id` int(11) NOT NULL,
  `sponsor_img` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`sponsor_id`, `sponsor_img`) VALUES
(4, '3868050.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `welcome_message`
--

CREATE TABLE `welcome_message` (
  `welcome_id` int(11) NOT NULL,
  `welcome` mediumtext NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome_message`
--

INSERT INTO `welcome_message` (`welcome_id`, `welcome`, `updated_at`) VALUES
(1, '&lt;h3 style=&quot;margin-top: 10px; margin-bottom: 10px; font-weight: 700; font-family: Barlow, sans-serif; color: rgb(65, 77, 95);&quot;&gt;&lt;span style=&quot;font-size: 13pt; line-height: 18.5467px; font-family: Tahoma, sans-serif;&quot;&gt;The International Conference of The Federal Polytechnic, Ilaro&lt;/span&gt;&lt;/h3&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;The Federal Polytechnic, Ilaro is one of the seven Federal Polytechnics established by the Federal Polytechnics Act No 33 of July 25, 1979. According to the Act, the Institution is to provide technical and practical-oriented training to meet the manpower requirements for the industrial, agricultural, commercial and economic development of Nigeria.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;Specifically, the Act requires the Institution&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 0.9rem; font-family: Tahoma, sans-serif;&quot;&gt;a.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;text-indent: -0.25in; font-size: 0.9rem; font-family: Tahoma, sans-serif;&quot;&gt;To provide full-time and part-time courses of instruction and training to students&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoListParagraphCxSpMiddle&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; margin-left: 0.75in; text-indent: -0.75in;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;i.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;in technology, applied science, commerce, management and&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoListParagraphCxSpMiddle&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; margin-left: 0.75in; text-indent: -0.75in;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;ii.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;in such other fields of applied learning relevant to the needs of&lt;br&gt;the development of Nigeria in the area of industrial and&lt;br&gt;agricultural production and distribution and for research in the&lt;br&gt;development and adaptation of techniques&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoListParagraphCxSpMiddle&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; margin-left: 0.75in; text-indent: -0.75in;&quot;&gt;&lt;span style=&quot;font-size: 0.9rem; text-indent: -0.25in; font-family: Tahoma, sans-serif;&quot;&gt;b.&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 0.9rem; text-indent: -0.25in; font-family: Tahoma, sans-serif;&quot;&gt;To arrange conferences, seminars and study groups relative to the&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, sans-serif; text-indent: -0.25in; font-size: 0.9rem;&quot;&gt;fields of learning specified in paragraph (a) above&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;As part of its pursuit of this mandate and other objectives, the Polytechnic instituted&amp;nbsp;&lt;i&gt;“The International Conference of The Federal Polytechnic, Ilaro. Ogun State”&lt;/i&gt;. The thrust of the Conference is the provision of a forum for academics and researchers from within and outside the country, the opportunity to present and discuss their work, exchange information on current best practices across disciplines and proffer or advance solutions or recommendations towards addressing issues of great concern or challenge.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoListParagraphCxSpFirst&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; margin-left: 4.5pt; text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;The maiden edition of the Conference was held in November 2018, while the 2&lt;span style=&quot;font-size: 10.8px;&quot;&gt;nd&lt;/span&gt;&amp;nbsp;Edition with the Theme:&amp;nbsp;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;i&gt;“Emerging Trends in TVET as Contributor to Economic Transformation for Global Competitiveness” &amp;nbsp;&lt;/i&gt;&lt;/span&gt;has been scheduled to hold from Monday November 9 – Thursday November 12, 2020.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoListParagraphCxSpLast&quot; style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px;&quot;&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-bottom: 1rem; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;We have carefully selected presenters both within and outside the country that are vast in the subject area to share from their wealth of experience and research exposure in the key area -&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;Emerging Trends in&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;Theme of the Conference. Authors are invited from various disciplines to send in their original research work related to the theme or sub-theme of the conference.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0px; line-height: 1.8; color: rgb(0, 0, 0); font-family: Barlow, sans-serif; font-size: 14.4px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 17.12px; font-family: Tahoma, &amp;quot;sans-serif&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;                                            &lt;/b&gt;&lt;/p&gt;', '2022-03-25 01:23:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administrator_id`);

--
-- Indexes for table `call_papers`
--
ALTER TABLE `call_papers`
  ADD PRIMARY KEY (`call_id`);

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`conference_id`);

--
-- Indexes for table `guideline`
--
ALTER TABLE `guideline`
  ADD PRIMARY KEY (`guideline_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`journal_id`);
ALTER TABLE `journal` ADD FULLTEXT KEY `title` (`title`,`authors`,`institution`);

--
-- Indexes for table `new_upload`
--
ALTER TABLE `new_upload`
  ADD PRIMARY KEY (`new_upload_id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`participantid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);
ALTER TABLE `participant` ADD FULLTEXT KEY `firstname_2` (`firstname`,`lastname`);

--
-- Indexes for table `registration_fee`
--
ALTER TABLE `registration_fee`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`speaker_id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `welcome_message`
--
ALTER TABLE `welcome_message`
  ADD PRIMARY KEY (`welcome_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `administrator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `call_papers`
--
ALTER TABLE `call_papers`
  MODIFY `call_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `conference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `guideline`
--
ALTER TABLE `guideline`
  MODIFY `guideline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_upload`
--
ALTER TABLE `new_upload`
  MODIFY `new_upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `participantid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registration_fee`
--
ALTER TABLE `registration_fee`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `speaker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `sponsor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `welcome_message`
--
ALTER TABLE `welcome_message`
  MODIFY `welcome_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
