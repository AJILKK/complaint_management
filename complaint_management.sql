-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 01:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaint_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `collector`
--

CREATE TABLE `collector` (
  `coll_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `coll_name` varchar(30) NOT NULL,
  `district` varchar(100) NOT NULL,
  `coll_status` varchar(20) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collector`
--

INSERT INTO `collector` (`coll_id`, `login_id`, `coll_name`, `district`, `coll_status`, `email`) VALUES
(1, 6, 'Seeram Sambasiva Rao', 'Kozhikode', '1', 'sreeram@gmail.com'),
(2, 7, 'P K Jayasree IAS', 'Kottayam', '1', 'jayasree@gmail.com'),
(3, 8, 'V R Krishna Teja IAS', 'Trissur', '0', 'krishna@gmail.com'),
(5, 16, 'Divakaran. K K', 'Kannur', '1', 'div@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `collector_update`
--

CREATE TABLE `collector_update` (
  `update_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `up_time` date NOT NULL,
  `up_date` date NOT NULL,
  `coll_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `comp_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `file` varchar(300) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT '0',
  `col_update` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`comp_id`, `login_id`, `department`, `subject`, `description`, `file`, `date`, `time`, `status`, `col_update`) VALUES
(1, 13, 'Electricity', 'complaint for electricity meter', 'My eletricity bill is very high because old meter. please replace the meter with new one.', '568580970.jpg', '2023-04-29', '10:26:50', '0', '0'),
(2, 13, 'Transport', 'rough behaviour of conductor', 'rought behaviour of conductor in abc named bus.', '1143031283.jpg', '2023-04-29', '11:07:40', '1', '0'),
(3, 13, 'Water Resources', 'water quality assessment ', 'polluted water supply in our area. it is very difficult to drink.', '606586293.jpg', '2023-04-29', '12:04:09', '3', '0'),
(4, 14, 'Higher Education and Social Justice', 'violation of rules', 'aaa school hasbviolated the government rules.\n', '1793563437.jpg', '2023-03-29', '12:14:35', '0', '0'),
(5, 14, 'Electricity', 'irregular eletricity supply ', 'cutternt power supply also lead to aome other illegal activities in our area.', '325922400.jpg', '2023-05-06', '12:20:37', '0', '2'),
(6, 14, 'Revenue and Housing', 'land lord', 'proceedings and suits between land lords and tenants.', '484773165.jpg', '2023-04-29', '12:43:13', '0', '0'),
(7, 15, 'Forest and Wildlife', 'area closed ', 'cultivated and habilitation area closed under panjab land preservation.', '1308618068.jpg', '2023-04-29', '12:48:49', '0', '0'),
(9, 13, 'Revenue and Housing', 'current cut ', 'current cut on my area for one day', '1270757047.jpg', '2023-05-05', '11:32:49', '0', '0'),
(17, 13, 'Water Resources', 'water quality assessment ', 'polluted water supply in our area. it is very difficult to drink.', '606586293.jpg', '2023-05-05', '15:13:16', '1', '0'),
(18, 13, 'Water Resources', 'water quality assessment ', 'polluted water supply in our area. it is very difficult to drink.', '606586293.jpg', '2023-05-05', '16:12:49', '0', '0'),
(19, 13, 'Water Resources', 'water quality assessment ', 'polluted water supply in our area. it is very difficult to drink.', '606586293.jpg', '2023-05-05', '16:13:30', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Revenue and Housing'),
(2, 'Water Resources'),
(3, 'Electricity'),
(4, 'Forest and Wildlife'),
(5, 'Ports, Museums and Archaeology'),
(6, 'Transport'),
(7, 'Sports, Wakf and Haj Pilgrimage, Minority welfare'),
(8, 'Food and Civil Supplies'),
(9, 'Finance'),
(10, 'Higher Education and Social Justice'),
(11, 'Animal Husbandry and Dairy Development'),
(12, 'Local Self Governments, Rural Development and Excise'),
(13, 'Public Works and Tourism'),
(14, 'Agriculture'),
(15, 'Welfare of Scheduled Castes, Scheduled Tribes and Backward Classes and Devaswoms'),
(16, ' Law, Industries and Coir'),
(17, 'General Education and Labour'),
(18, 'Co-operation  and Registration'),
(19, 'Health and Woman and Child Development'),
(20, 'Fisheries and Cultural affairs');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district`) VALUES
(1, 'kozhikode'),
(2, 'Kannur'),
(3, 'Alappuzha'),
(4, 'Eranakulam'),
(5, 'Idukki'),
(6, 'Kasargod'),
(7, 'Kollam'),
(8, 'Kottayam'),
(9, 'Malappuram'),
(10, 'Palakkad'),
(11, 'Pathanamthitta'),
(12, 'Thiruvananthapuram'),
(13, 'Trissur'),
(14, 'Wayanad');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`) VALUES
(1, 'raghu', 'raghu123', 'officer'),
(2, 'arya', 'arya123', 'officer'),
(3, 'hari', 'hari123', 'officer'),
(4, 'manu', 'manu123', 'officer'),
(5, 'admin', 'admin', 'admin'),
(6, 'sreeram', 'sreeram123', 'collector'),
(7, 'jayasree', 'jayasree123', 'collector'),
(8, 'krishna', 'krishna123', 'collector'),
(10, 'sivankutty', 'sivankutty123', 'minister'),
(11, 'mani', 'mani123', 'minister'),
(12, 'raju', 'raju123', 'minister'),
(13, 'abc@gmail.com ', 'abc123 ', 'user'),
(14, 'anu@gmail.com ', 'anu123', 'user'),
(15, 'anju@gmail.com', 'anju123', 'user'),
(16, 'div', 'div123', 'collector'),
(17, 'ravi', 'ravi123', 'officer'),
(18, 'ecogen@gmail.com', 'ecogen123', 'user'),
(19, 'ecogen@gmail.com', 'ecogen123', 'user'),
(20, 'abc', 'hahah', 'user'),
(21, 'manu', 'manu123', 'officer'),
(22, 'ajilkk98@gmail.com', '12345', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `minister`
--

CREATE TABLE `minister` (
  `min_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `dept` varchar(80) NOT NULL,
  `minister_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `min_status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minister`
--

INSERT INTO `minister` (`min_id`, `login_id`, `dept`, `minister_name`, `email`, `min_status`) VALUES
(1, 10, 'General Education and Labour', 'V. Sivankutty', 'v@gmail.com', '1'),
(2, 11, 'Electricity', 'M M Mani', 'mani@gmail.com', '1'),
(3, 12, 'Transport', 'Antony Raju', 'raju@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `minister_update`
--

CREATE TABLE `minister_update` (
  `sec_status_id` int(11) NOT NULL,
  `sts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `up_date` date NOT NULL,
  `up_time` date NOT NULL,
  `min_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `off_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dept_email` varchar(30) NOT NULL,
  `taluk` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `status_off` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`off_id`, `login_id`, `dept`, `name`, `dept_email`, `taluk`, `village`, `status_off`) VALUES
(1, 1, 'Water Resources', 'Raghu', 'raghuofc@gmail.com', 'Chavakkad', 'Guruvayoor (M)', '0'),
(2, 2, 'Electricity', 'Arya', 'aryaofc@gmail.com', 'Quilandy', 'Balusseri (CT)', '1'),
(3, 3, 'Electricity', 'Hari', 'hariofc@gmail.com', 'Vadakara', 'Kuttiadi', '0'),
(4, 4, 'Transport', 'Manu', 'manu@gmail.com', 'Kochi', 'Kuzhuppilly', '1'),
(5, 17, 'Water Resources', 'Ravi', 'ravi@gmail.com', 'Quilandy', 'Payyoli', '1'),
(6, 21, 'Electricity', 'manu', 'manu@gmail.com', 'Quilandy', 'Keezhariyur (CT)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `star` float NOT NULL,
  `review` varchar(300) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `user_id`, `complaint_id`, `star`, `review`, `date`) VALUES
(3, 13, 1, 1, 'very bad service.', '2023-04-29'),
(5, 13, 3, 5, 'very good cistomer service.', '2023-05-01'),
(6, 13, 1, 3, 'good ', '2023-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `reopen`
--

CREATE TABLE `reopen` (
  `rid` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(40) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reopen`
--

INSERT INTO `reopen` (`rid`, `log_id`, `comp_id`, `date`, `time`, `status`) VALUES
(1, 13, 3, '2023-05-01', '2023-05-01', '0');

-- --------------------------------------------------------

--
-- Table structure for table `reopen_admin`
--

CREATE TABLE `reopen_admin` (
  `id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0',
  `cid` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `taluk`
--

CREATE TABLE `taluk` (
  `taluk_id` int(11) NOT NULL,
  `district` varchar(25) NOT NULL,
  `taluk_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taluk`
--

INSERT INTO `taluk` (`taluk_id`, `district`, `taluk_name`) VALUES
(1, 'Kozhikode', 'Kozhikode'),
(2, 'Kozhikode', 'Quilandy'),
(3, 'Kozhikode', 'Vadakara'),
(4, 'Alappuzha', 'Ambalappuzha'),
(5, 'Alappuzha', 'Chengannur'),
(6, 'Alappuzha', 'Cherthala'),
(7, 'Alappuzha', 'Karthikappally'),
(8, 'Alappuzha', 'Kuttanad'),
(9, 'Alappuzha', 'Mavelikkara'),
(10, 'Eranakulam', 'Aluva'),
(11, 'Eranakulam', 'Kanayannur'),
(12, 'Eranakulam', 'Kochi'),
(13, 'Eranakulam', 'Kothamangalam'),
(14, 'Eranakulam', 'Kunnathunad'),
(15, 'Eranakulam', 'Muvattupuzha'),
(16, 'Eranakulam', 'Paravur'),
(17, 'Idukki', 'Devikulam'),
(18, 'Idukki', 'Peerumade'),
(19, 'Idukki', 'Thodupuzha'),
(20, 'Idukki', 'Udumbanchola'),
(21, 'Kannur', 'Kannur'),
(22, 'Kannur', 'Taliparamba'),
(23, 'Kannur', 'Thalassery'),
(24, 'Kasargod', 'Hosdurg'),
(25, 'Kasargod', 'Kasaragod'),
(26, 'Kollam', 'Karunagappally'),
(27, 'Kollam', 'Kollam'),
(28, 'Kollam', 'Kottarakkara'),
(29, 'Kollam', 'Kunnathur'),
(30, 'Kollam', 'Pathanapuram'),
(31, 'Kottayam', 'Changanassery'),
(32, 'Kottayam', 'Kanjirappally'),
(33, 'Kottayam', 'Kottayam'),
(34, 'Kottayam', 'Meenachil'),
(35, 'Kottayam', 'Vaikom'),
(36, 'Malappuram', 'Ernad'),
(37, 'Malappuram', 'Nilambur'),
(38, 'Malappuram', 'Perinthalmanna'),
(39, 'Malappuram', 'Ponnani'),
(40, 'Malappuram', 'Tirur'),
(41, 'Malappuram', 'Tirurangadi'),
(42, 'Palakkad', 'Alathur'),
(43, 'Palakkad', 'Chittur'),
(44, 'Palakkad', 'Mannarkad'),
(45, 'Palakkad', 'Ottappalam'),
(46, 'Pathanamthitta', 'Adoor'),
(47, 'Pathanamthitta', 'Kozhenchery'),
(48, 'Pathanamthitta', 'Mallappally'),
(49, 'Pathanamthitta', 'Ranni'),
(50, 'Pathanamthitta', 'Thiruvalla'),
(51, 'Thiruvananthapuram', 'Chirayinkeezhu'),
(52, 'Thiruvananthapuram', 'Nedumangad'),
(53, 'Thiruvananthapuram', 'Neyyattinkara'),
(54, 'Trissur', 'Chavakkad'),
(55, 'Trissur', 'Kodungallur'),
(56, 'Wayanad', 'Mananthavady'),
(57, 'Wayanad', 'Sulthanbathery'),
(58, 'Wayanad', 'Vythiri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address_user` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `district` varchar(26) NOT NULL,
  `taluk` varchar(20) NOT NULL,
  `village` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `login_id`, `name`, `address_user`, `mobile`, `district`, `taluk`, `village`, `email`) VALUES
(1, 13, 'abc', 'demo(ho)\nstreetname\npayyoli', '9988776655', 'Kozhikode', 'Quilandy', 'Payyoli', 'abc@gmail.com '),
(2, 14, 'anu', 'qwer(ho)\ndfggs street', '9080706050', 'Kannur', 'Taliparamba', 'Kuttoor', 'anu@gmail.com '),
(3, 15, 'anju', 'vjxjnz(ho)kottayam', '9878675644', 'Kottayam', 'Kanjirappally', 'Elikkulam', 'anju@gmail.com'),
(4, 18, 'ecogen', '', '8592932627', '', '', '', 'ecogen@gmail.com'),
(5, 19, 'ecogen', 'Karakkandy (H)\nElettil (PO)\nChalikode \nKozhikode\n673572', '8592932627', 'Kozhikode', 'Quilandy', 'Keezhariyur (CT)', 'ecogen@gmail.com'),
(7, 22, 'ajil', 'trtew', '3567899975', 'Kozhikode', 'Vadakara', 'Kottappally (CT)', 'ajilkk98@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `village_id` int(11) NOT NULL,
  `taluk` varchar(30) NOT NULL,
  `village` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`village_id`, `taluk`, `village`, `pincode`) VALUES
(1, 'Kozhikode', 'Beypore (CT)', 627437),
(2, 'Kozhikode', 'Chathamangalam', 627416),
(3, 'Kozhikode', 'Chelannur (CT)', 627422),
(4, 'Kozhikode', 'Cheruvannur (CT)', 627436),
(5, 'Kozhikode', 'Elathur (OG)', 627441),
(6, 'Kozhikode', 'Engapuzha', 627408),
(7, 'Kozhikode', 'Feroke (CT)', 627439),
(8, 'Kozhikode', 'Kadalundi (OG)', 627442),
(9, 'Kozhikode', 'Kakkad', 627419),
(10, 'Kozhikode', 'Kakkodi (CT)', 627424),
(11, 'Kozhikode', 'Kakkur', 627401),
(12, 'Kozhikode', 'Karuvanthuruthy (CT)', 627438),
(13, 'Kozhikode', 'Kedavur', 627406),
(14, 'Kozhikode', 'Kizhakkoth', 627403),
(15, 'Kozhikode', 'Kodencheri', 627410),
(16, 'Kozhikode', 'Kodiyathur', 627420),
(17, 'Kozhikode', 'Koduvally (OG)', 627440),
(18, 'Kozhikode', 'Koodaranji', 627412),
(19, 'Kozhikode', 'Koodathayi', 627409),
(20, 'Kozhikode', 'Kozhikode (M Corp. + OG)', 803267),
(21, 'Kozhikode', 'Kumaranallur', 627418),
(22, 'Kozhikode', 'Kunnamangalam (CT)', 627426),
(23, 'Kozhikode', 'Kuruvattur (CT)', 627425),
(24, 'Kozhikode', 'Kuttikkattoor (CT)', 627431),
(25, 'Kozhikode', 'Madavoor', 627417),
(26, 'Kozhikode', 'Mavoor (CT)', 627429),
(27, 'Kozhikode', 'Nanmanda (CT)', 627421),
(28, 'Kozhikode', 'Narikkuni', 627402),
(29, 'Kozhikode', 'Neeleswaram', 627414),
(30, 'Kozhikode', 'Nellipoyil', 627411),
(31, 'Kozhikode', 'Olavanna (CT)', 627432),
(32, 'Kozhikode', 'Pantheeramkavu (CT)', 627433),
(33, 'Kozhikode', 'Perumanna (CT)', 627434),
(34, 'Kozhikode', 'Peruvayal (CT)', 627430),
(35, 'Kozhikode', 'Poolacode (CT)', 627427),
(36, 'Kozhikode', 'Puthiyangadi (OG) (Part)', 645600),
(37, 'Kozhikode', 'Puthuppadi', 627407),
(38, 'Kozhikode', 'Puthur', 627415),
(39, 'Kozhikode', 'Ramanattukara (CT)', 627435),
(40, 'Kozhikode', 'Raroth', 627405),
(41, 'Kozhikode', 'Thalakkulathur (CT)', 627423),
(42, 'Kozhikode', 'Thazhecode (CT)', 627428),
(43, 'Kozhikode', 'Thiruvambadi', 627413),
(44, 'Kozhikode', 'Vavad', 627404),
(45, 'Quilandy', 'Arikkulam (Part)', 627376),
(46, 'Quilandy', 'Atholi (CT)', 627400),
(47, 'Quilandy', 'Avitanallur', 627381),
(48, 'Quilandy', 'Balusseri (CT)', 627397),
(49, 'Quilandy', 'Chakkittapara', 627372),
(50, 'Quilandy', 'Changaroth', 627370),
(51, 'Quilandy', 'Chemancheri (CT)', 627399),
(52, 'Quilandy', 'Chempanoda', 627371),
(53, 'Quilandy', 'Chengottukavu', 627382),
(54, 'Quilandy', 'Cheruvannur', 627368),
(55, 'Quilandy', 'Eravattur (CT)', 627387),
(56, 'Quilandy', 'Iringal (CT)', 627386),
(57, 'Quilandy', 'Kanthalad', 627380),
(58, 'Quilandy', 'Kayanna', 627378),
(59, 'Quilandy', 'Keezhariyur (CT)', 627394),
(60, 'Quilandy', 'Kinalur', 627383),
(61, 'Quilandy', 'Koorachundu', 627379),
(62, 'Quilandy', 'Koothali (CT)', 627388),
(63, 'Quilandy', 'Kottur', 627377),
(64, 'Quilandy', 'Kozhukkallur (CT)', 627391),
(65, 'Quilandy', 'Menhaniam (CT)', 627389),
(66, 'Quilandy', 'Meppayyur (CT)', 627390),
(67, 'Quilandy', 'Moodadi', 627375),
(68, 'Quilandy', 'Naduvannur (CT)', 627395),
(69, 'Quilandy', 'Nochad', 627374),
(70, 'Quilandy', 'Palery', 627369),
(71, 'Quilandy', 'Panangad (CT)', 627396),
(72, 'Quilandy', 'Payyoli', 627367),
(73, 'Quilandy', 'Perambra', 627373),
(74, 'Quilandy', 'Quilandy (M)', 803266),
(75, 'Quilandy', 'Sivapuram', 627385),
(76, 'Quilandy', 'Thikkody (CT)', 627393),
(77, 'Quilandy', 'Thurayur (CT)', 627392),
(78, 'Quilandy', 'Ulliyeri (CT)', 627398),
(79, 'Quilandy', 'Unnikulam', 627384),
(80, 'Vadakara', 'Ayancheri (CT)', 627362),
(81, 'Vadakara', 'Azhiyur (CT)', 627360),
(82, 'Vadakara', 'Chekkiad (CT)', 627354),
(83, 'Vadakara', 'Chorode (CT)', 627361),
(84, 'Vadakara', 'Edacheri (CT)', 627358),
(85, 'Vadakara', 'Eramala (CT)', 627359),
(86, 'Vadakara', 'Kavilumpara', 627345),
(87, 'Vadakara', 'Kayakkodi', 627346),
(88, 'Vadakara', 'Kottappally (CT)', 627363),
(89, 'Vadakara', 'Kunnummal (CT)', 627356),
(90, 'Vadakara', 'Kuttiadi', 627351),
(91, 'Vadakara', 'Maniyur (CT)', 627366),
(92, 'Vadakara', 'Maruthonkara', 627352),
(93, 'Vadakara', 'Nadapuram (CT)', 627357),
(94, 'Vadakara', 'Narippatta', 627347),
(95, 'Vadakara', 'Onchiam', 627341),
(96, 'Vadakara', 'Palayad (CT)', 627365),
(97, 'Vadakara', 'Purameri', 627348),
(98, 'Vadakara', 'Thinoor', 627344),
(99, 'Vadakara', 'Thiruvallur', 627349),
(100, 'Vadakara', 'Thuneri (CT)', 627355),
(101, 'Vadakara', 'Vadakara (M)', 803265),
(102, 'Vadakara', 'Valayam (CT)', 627353),
(103, 'Vadakara', 'Vanimel', 627342),
(104, 'Vadakara', 'Velom', 627350),
(105, 'Vadakara', 'Vilangad', 627343),
(106, 'Vadakara', 'Villiappally (CT)', 627364),
(107, '', '', 0),
(108, 'Ambalappuzha', 'Alappuzha (M + OG)', 803299),
(109, 'Ambalappuzha', 'Ambalappuzha', 628229),
(110, 'Ambalappuzha', 'Aryad South (Part)', 628227),
(111, 'Ambalappuzha', 'Kalarkode (OG) (Part)', 645603),
(112, 'Ambalappuzha', 'Kalavoor', 628226),
(113, 'Ambalappuzha', 'Karumady', 628230),
(114, 'Ambalappuzha', 'Komalapuram (CT)', 628234),
(115, 'Ambalappuzha', 'Mannanchery (CT)', 628232),
(116, 'Ambalappuzha', 'Mullakkal (Part)', 628228),
(117, 'Ambalappuzha', 'Pathirappally (CT)', 628233),
(118, 'Ambalappuzha', 'Punnapra (OG)', 628235),
(119, 'Ambalappuzha', 'Purakkad', 628231),
(120, '', '', 0),
(121, 'Chengannur', 'Ala (Part)', 628272),
(122, 'Chengannur', 'Chengannur (Part)', 628270),
(123, 'Chengannur', 'Chengannur (M)', 803301),
(124, 'Chengannur', 'Cheriyanad', 628274),
(125, 'Chengannur', 'Ennakkad', 628267),
(126, 'Chengannur', 'Kurattissery (CT)', 628277),
(127, 'Chengannur', 'Mannar (CT)', 628276),
(128, 'Chengannur', 'Mulakuzha (Part)', 628271),
(129, 'Chengannur', 'Pandanad (Part)', 628268),
(130, 'Chengannur', 'Puliyoor(Part)', 628273),
(131, 'Chengannur', 'Thiruvanvandoor', 628269),
(132, 'Chengannur', 'Venmony', 628275),
(133, 'Cherthala', 'Arookutty (CT)', 628214),
(134, 'Cherthala', 'Aroor (CT)', 628215),
(135, 'Cherthala', 'Cherthala (M)', 803298),
(136, 'Cherthala', 'Cherthala North (Part)', 628211),
(137, 'Cherthala', 'Cherthala South (Part)', 628212),
(138, 'Cherthala', 'Ezhupunna (CT)', 628216),
(139, 'Cherthala', 'Kadakkarappally', 628210),
(140, 'Cherthala', 'Kanjikkuzhi (CT)', 628224),
(141, 'Cherthala', 'Kodamthuruth (CT)', 628217),
(142, 'Cherthala', 'Kokkothamangalam (CT)', 628223),
(143, 'Cherthala', 'Kuthiathode (CT)', 628219),
(144, 'Cherthala', 'Mararikkulam North', 628213),
(145, 'Cherthala', 'Muhamma (CT)', 628225),
(146, 'Cherthala', 'Pallippuram (CT)', 628221),
(147, 'Cherthala', 'Panavally', 628207),
(148, 'Cherthala', 'Pattanakkad', 628209),
(149, 'Cherthala', 'Perumbalam', 628206),
(150, 'Cherthala', 'Thaikattussery (CT)', 628218),
(151, 'Cherthala', 'Thanneermukkam (CT)', 628222),
(152, 'Cherthala', 'Thuravoor Thekku', 628208),
(153, 'Cherthala', 'Vayalar (CT)', 628220),
(154, 'Karthikappally', 'Arattupuzha', 628255),
(155, 'Karthikappally', 'Cheppad (CT)', 628260),
(156, 'Karthikappally', 'Cheruthana', 628251),
(157, 'Karthikappally', 'Chingoli (CT)', 628259),
(158, 'Karthikappally', 'Haripad (CT)', 628256),
(159, 'Karthikappally', 'Kandalloor (CT)', 628264),
(160, 'Karthikappally', 'Karthikappally (CT)', 628258),
(161, 'Karthikappally', 'Karuvatta', 628250),
(162, 'Karthikappally', 'Kayamkulam (M)', 803300),
(163, 'Karthikappally', 'Keerikkad (CT)', 628262),
(164, 'Karthikappally', 'Krishnapuram (CT)', 628266),
(165, 'Karthikappally', 'Kumarapuram (CT)', 628257),
(166, 'Karthikappally', 'Muthukulam (CT)', 628263),
(167, 'Karthikappally', 'Pallippad', 628253),
(168, 'Karthikappally', 'Pathiyoor (CT)', 628261),
(169, 'Karthikappally', 'Puthuppally (CT)', 628265),
(170, 'Karthikappally', 'Thrikkunnapuzha', 628254),
(171, 'Karthikappally', 'Veeyapuram', 628252),
(172, 'Kuttanad', 'Champakkulam', 628244),
(173, 'Kuttanad', 'Edathua', 628247),
(174, 'Kuttanad', 'Kainakary North', 628236),
(175, 'Kuttanad', 'Kainakary South', 628237),
(176, 'Kuttanad', 'Kavalam', 628240),
(177, 'Kuttanad', 'Kunnumma', 628239),
(178, 'Kuttanad', 'Muttar', 628248),
(179, 'Kuttanad', 'Nedumudi', 628245),
(180, 'Kuttanad', 'Neelamperoor', 628241),
(181, 'Kuttanad', 'Pulinkunnu', 628238),
(182, 'Kuttanad', 'Ramankary', 628243),
(183, 'Kuttanad', 'Thakazhy', 628246),
(184, 'Kuttanad', 'Thalavady', 628249),
(185, 'Kuttanad', 'Veliyanad', 628242),
(186, 'Mavelikkara', 'Bharanikkavu (CT)', 628290),
(187, 'Mavelikkara', 'Chennithala (CT)', 628288),
(188, 'Mavelikkara', 'Chunakkara', 628282),
(189, 'Mavelikkara', 'Kannamangalam (CT)', 628287),
(190, 'Mavelikkara', 'Kattanam (CT)', 628291),
(191, 'Mavelikkara', 'Mavelikkara (M)', 803302),
(192, 'Mavelikkara', 'Noornad', 628283),
(193, 'Mavelikkara', 'Palamel', 628284),
(194, 'Mavelikkara', 'Perungala', 628281),
(195, 'Mavelikkara', 'Thamarakkulam', 628285),
(196, 'Mavelikkara', 'Thazhakara (CT)', 628289),
(197, 'Mavelikkara', 'Thekkekara (Part)', 628280),
(198, 'Mavelikkara', 'Thriperumthura', 628278),
(199, 'Mavelikkara', 'Vallikunnam', 628286),
(200, 'Mavelikkara', 'Vettiyar', 628279),
(201, 'Aluva', 'Aluva (M)', 803286),
(202, 'Aluva', 'Angamaly (M)', 803285),
(203, 'Aluva', 'Ayyampuzha', 627967),
(204, 'Aluva', 'Chengamanad (CT)', 627976),
(205, 'Aluva', 'Choornikkara (CT)', 627980),
(206, 'Aluva', 'Chowwara (CT)', 627974),
(207, 'Aluva', 'Edathala (CT)', 627979),
(208, 'Aluva', 'Kalady (CT)', 627971),
(209, 'Aluva', 'Karukutty', 627965),
(210, 'Aluva', 'Kizhakkumbhagom (CT)', 627977),
(211, 'Aluva', 'Malayattoor', 627969),
(212, 'Aluva', 'Manjapra', 627968),
(213, 'Aluva', 'Mattoor (CT)', 627972),
(214, 'Aluva', 'Mookkannoor', 627966),
(215, 'Aluva', 'Nedumbassery (CT)', 627975),
(216, 'Aluva', 'Parakkadavu', 627964),
(217, 'Aluva', 'Thekkumbhagom (CT)', 627978),
(218, 'Aluva', 'Thuravoor', 627970),
(219, 'Aluva', 'Vadakkumbhagom (CT)', 627973),
(220, 'Kanayannur', 'Amballur (CT)', 628019),
(221, 'Kanayannur', 'Cheranallur (CT)', 628009),
(222, 'Kanayannur', 'Edakkattuvayal', 628003),
(223, 'Kanayannur', 'Kadamakkudy (CT)', 628010),
(224, 'Kanayannur', 'Kaippattur', 628004),
(225, 'Kanayannur', 'Kakkanad (CT)', 628007),
(226, 'Kanayannur', 'Kalamassery (M)', 803289),
(227, 'Kanayannur', 'Kanayannur (CT)', 628013),
(228, 'Kanayannur', 'Keecherry', 628006),
(229, 'Kanayannur', 'Kochi (M Corp. + OG) (Part)', 803288),
(230, 'Kanayannur', 'Kulayettikara', 628005),
(231, 'Kanayannur', 'Kumbalam (CT)', 628016),
(232, 'Kanayannur', 'Kureekkad (CT)', 628014),
(233, 'Kanayannur', 'Manakunnam (CT)', 628017),
(234, 'Kanayannur', 'Maradu (CT)', 628015),
(235, 'Kanayannur', 'Mulamthuruthy (CT)', 628018),
(236, 'Kanayannur', 'Mulavukad (CT)', 628011),
(237, 'Kanayannur', 'Thiruvankulam (CT)', 628012),
(238, 'Kanayannur', 'Thrikkakara North (Part)', 628002),
(239, 'Kanayannur', 'Thrippunithura (M)', 803290),
(240, 'Kanayannur', 'Vazhakkala (CT)', 628008),
(241, 'Kochi', 'Chellanam', 627997),
(242, 'Kochi', 'Cheriyakadavu (OG) (Part)', 645602),
(243, 'Kochi', 'Edavanakkad', 627995),
(244, 'Kochi', 'Elamkunnapuzha (CT)', 627999),
(245, 'Kochi', 'Kumbalangy (CT)', 628001),
(246, 'Kochi', 'Kuzhuppilly', 627993),
(247, 'Kochi', 'Nayarambalam', 627996),
(248, 'Kochi', 'Njarackal (CT)', 627998),
(249, 'Kochi', 'Pallippuram', 627994),
(250, 'Kochi', 'Puthuvype (CT)', 628000),
(251, 'Kothamangalam', 'Eramalloor (CT)', 628048),
(252, 'Kothamangalam', 'Kedavoor', 628045),
(253, 'Kothamangalam', 'Keerampara', 628042),
(254, 'Kothamangalam', 'Kothamangalam (M)', 803292),
(255, 'Kothamangalam', 'Kottappady', 628039),
(256, 'Kothamangalam', 'Kuttamangalam', 628043),
(257, 'Kothamangalam', 'Kuttampuzha', 628041),
(258, 'Kothamangalam', 'Neriamangalam', 628044),
(259, 'Kothamangalam', 'Pindimana', 628040),
(260, 'Kothamangalam', 'Pothanikkad', 628046),
(261, 'Kothamangalam', 'Thrikkariyoor (Part)', 628038),
(262, 'Kothamangalam', 'Varappetty', 628047),
(263, 'Kunnathunad', 'Aikaranad North', 627953),
(264, 'Kunnathunad', 'Aikaranad South', 627954),
(265, 'Kunnathunad', 'Arakapady', 627947),
(266, 'Kunnathunad', 'Asamannoor', 627945),
(267, 'Kunnathunad', 'Chelamattom (CT)', 627957),
(268, 'Kunnathunad', 'Irapuram', 627948),
(269, 'Kunnathunad', 'Kizhakkambalam', 627951),
(270, 'Kunnathunad', 'Kodanad', 627941),
(271, 'Kunnathunad', 'Kombanad', 627942),
(272, 'Kunnathunad', 'Koovappady (CT)', 627956),
(273, 'Kunnathunad', 'Kunnathunad (CT)', 627962),
(274, 'Kunnathunad', 'Marampilly(CT)', 627958),
(275, 'Kunnathunad', 'Mazhuvannoor', 627949),
(276, 'Kunnathunad', 'Pattimattom', 627950),
(277, 'Kunnathunad', 'Perumbavoor (CT)', 627961),
(278, 'Kunnathunad', 'Perumbavoor (M)', 803284),
(279, 'Kunnathunad', 'Puthencruz (CT)', 627963),
(280, 'Kunnathunad', 'Rayamangalam', 627946),
(281, 'Kunnathunad', 'Thiruvaniyoor', 627955),
(282, 'Kunnathunad', 'Vadavukode', 627952),
(283, 'Kunnathunad', 'Vazhakulam (CT)', 627959),
(284, 'Kunnathunad', 'Vengola (CT)', 627960),
(285, 'Kunnathunad', 'Vengoor', 627943),
(286, 'Kunnathunad', 'Vengoor West', 627944),
(287, 'Muvattupuzha', 'Arakuzha', 628026),
(288, 'Muvattupuzha', 'Elanji', 628036),
(289, 'Muvattupuzha', 'Enanalloor', 628022),
(290, 'Muvattupuzha', 'Kalloorkkad', 628023),
(291, 'Muvattupuzha', 'Koothattukulam', 628035),
(292, 'Muvattupuzha', 'Maneed', 628030),
(293, 'Muvattupuzha', 'Manjalloor', 628024),
(294, 'Muvattupuzha', 'Marady (Part)', 628027),
(295, 'Muvattupuzha', 'Memury', 628028),
(296, 'Muvattupuzha', 'Mulavoor', 628021),
(297, 'Muvattupuzha', 'Muvattupuzha (M)', 803291),
(298, 'Muvattupuzha', 'Muvattupuzha (Part)', 628025),
(299, 'Muvattupuzha', 'Onakkoor', 628032),
(300, 'Muvattupuzha', 'Palakkuzha', 628034),
(301, 'Muvattupuzha', 'Piravom', 628031),
(302, 'Muvattupuzha', 'Ramamangalam', 628029),
(303, 'Muvattupuzha', 'Thirumarady', 628033),
(304, 'Muvattupuzha', 'Valakam', 628020),
(305, 'Muvattupuzha', 'Velloorkunnam (CT)', 628037),
(306, 'Paravur', 'Alangad (CT)', 627989),
(307, 'Paravur', 'Chendamangalam (CT)', 627984),
(308, 'Paravur', 'Eloor (CT)', 627992),
(309, 'Paravur', 'Ezhikkara', 627982),
(310, 'Paravur', 'Kadungalloor (CT)', 627988),
(311, 'Paravur', 'Karumalloor (CT)', 627987),
(312, 'Paravur', 'Kedamangalam (OG) (Part)', 645601),
(313, 'Paravur', 'Kottuvally (CT)', 627990),
(314, 'Paravur', 'Kunnukara', 627981),
(315, 'Paravur', 'Moothakunnam (CT)', 627985),
(316, 'Paravur', 'Paravur (M)', 803287),
(317, 'Paravur', 'Puthenvelikkara (CT)', 627983),
(318, 'Paravur', 'Vadakkekara (CT)', 627986),
(319, 'Paravur', 'Varappuzha (CT)', 627991),
(320, 'Devikulam', 'Anaviratty', 628057),
(321, 'Devikulam', 'Kannan Devan Hills', 628054),
(322, 'Devikulam', 'Kanthalloor', 628051),
(323, 'Devikulam', 'Keezhanthoor', 628050),
(324, 'Devikulam', 'Kottakamboor', 628052),
(325, 'Devikulam', 'Kunjithanny', 628059),
(326, 'Devikulam', 'Mankulam', 628055),
(327, 'Devikulam', 'Mannamkandam', 628056),
(328, 'Devikulam', 'Marayoor', 628049),
(329, 'Devikulam', 'Pallivasal', 628058),
(330, 'Devikulam', 'Vattavada', 628053),
(331, 'Devikulam', 'Vellathuval', 628060),
(332, 'Peerumade', 'Elappara', 628105),
(333, 'Peerumade', 'Kokkayar', 628106),
(334, 'Peerumade', 'Kumily', 628110),
(335, 'Peerumade', 'Manjumala', 628108),
(336, 'Peerumade', 'Mlappara', 628111),
(337, 'Peerumade', 'Peerumade', 628107),
(338, 'Peerumade', 'Periyar', 628109),
(339, 'Peerumade', 'Peruvanthanam', 628112),
(340, 'Peerumade', 'Upputhara', 628104),
(341, 'Peerumade', 'Vagamon', 628103),
(342, 'Thodupuzha', 'Alacode', 628097),
(343, 'Thodupuzha', 'Arakkulam', 628100),
(344, 'Thodupuzha', 'Elappally', 628102),
(345, 'Thodupuzha', 'Idukki', 628099),
(346, 'Thodupuzha', 'Kanjikuzhi', 628087),
(347, 'Thodupuzha', 'Karikkode (Part)', 628091),
(348, 'Thodupuzha', 'Karimannoor', 628090),
(349, 'Thodupuzha', 'Karimkunnam (Part)', 628095),
(350, 'Thodupuzha', 'Kodikulam', 628085),
(351, 'Thodupuzha', 'Kudayathoor', 628101),
(352, 'Thodupuzha', 'Kumaramangalam (Part)', 628084),
(353, 'Thodupuzha', 'Manakkad (Part)', 628093),
(354, 'Thodupuzha', 'Muttom', 628096),
(355, 'Thodupuzha', 'Neyyasseri', 628089),
(356, 'Thodupuzha', 'Purapuzha', 628094),
(357, 'Thodupuzha', 'Thodupuzha (M)', 803293),
(358, 'Thodupuzha', 'Thodupuzha (Part)', 628092),
(359, 'Thodupuzha', 'Udumbannoor', 628088),
(360, 'Thodupuzha', 'Vannapuram', 628086),
(361, 'Thodupuzha', 'Velliyamattom', 628098),
(362, 'Udumbanchola', 'Anakkara', 628083),
(363, 'Udumbanchola', 'Anavilasam', 628081),
(364, 'Udumbanchola', 'Ayyappancoil', 628080),
(365, 'Udumbanchola', 'Baisonvally', 628063),
(366, 'Udumbanchola', 'Chakkupallam', 628082),
(367, 'Udumbanchola', 'Chathurangapara', 628069),
(368, 'Udumbanchola', 'Chinnakanal', 628064),
(369, 'Udumbanchola', 'Kalkoonthal', 628074),
(370, 'Udumbanchola', 'Kanthippara', 628067),
(371, 'Udumbanchola', 'Karunapuram', 628077),
(372, 'Udumbanchola', 'Kattappana', 628079),
(373, 'Udumbanchola', 'Konnathady', 628061),
(374, 'Udumbanchola', 'Pampadumpara', 628076),
(375, 'Udumbanchola', 'Parathodu', 628075),
(376, 'Udumbanchola', 'Poopara', 628065),
(377, 'Udumbanchola', 'Rajakkad', 628062),
(378, 'Udumbanchola', 'Rajakumari', 628066),
(379, 'Udumbanchola', 'Santhanpara', 628068),
(380, 'Udumbanchola', 'Thankamony', 628073),
(381, 'Udumbanchola', 'Udumbanchola', 628070),
(382, 'Udumbanchola', 'Upputhode', 628072),
(383, 'Udumbanchola', 'Vandanmedu', 628078),
(384, 'Udumbanchola', 'Vathikudy', 628071),
(385, 'Kannur', 'Ancharakandy (CT)', 627242),
(386, 'Kannur', 'Azhikode North (CT)', 627230),
(387, 'Kannur', 'Azhikode South (CT)', 627231),
(388, 'Kannur', 'Chala (CT)', 627244),
(389, 'Kannur', 'Chelora (CT)', 627241),
(390, 'Kannur', 'Cherukunnu (CT)', 627225),
(391, 'Kannur', 'Cheruthazham (CT)', 627221),
(392, 'Kannur', 'Chirakkal (CT)', 627233),
(393, 'Kannur', 'Elayavoor (CT)', 627240),
(394, 'Kannur', 'Ezhome (CT)', 627223),
(395, 'Kannur', 'Iriveri (CT)', 627243),
(396, 'Kannur', 'Kadachira (CT)', 627246),
(397, 'Kannur', 'Kadannappalli (CT)', 627222),
(398, 'Kannur', 'Kalliasseri (CT)', 627229),
(399, 'Kannur', 'Kanhirode (CT)', 627236),
(400, 'Kannur', 'Kannadiparamba (CT)', 627234),
(401, 'Kannur', 'Kannapuram (CT)', 627226),
(402, 'Kannur', 'Kannur (M)', 803259),
(403, 'Kannur', 'Kannur Cantonment (CB)', 803260),
(404, 'Kannur', 'Kunhimangalam (CT)', 627220),
(405, 'Kannur', 'Madayi (CT)', 627224),
(406, 'Kannur', 'Mattool', 627219),
(407, 'Kannur', 'Mavilayi (CT)', 627247),
(408, 'Kannur', 'Munderi (CT)', 627235),
(409, 'Kannur', 'Muzhappilangad (CT)', 627249),
(410, 'Kannur', 'Narath (CT)', 627227),
(411, 'Kannur', 'Pallikkunnu (CT)', 627239),
(412, 'Kannur', 'Panapuzha', 627218),
(413, 'Kannur', 'Pappinisseri (CT)', 627228),
(414, 'Kannur', 'Peralassery (CT)', 627248),
(415, 'Kannur', 'Puzhathi (CT)', 627238),
(416, 'Kannur', 'Thottada (CT)', 627245),
(417, 'Kannur', 'Valapattanam (CT)', 627232),
(418, 'Kannur', 'Varam (CT)', 627237),
(419, 'Taliparamba', 'Alakode', 627190),
(420, 'Taliparamba', 'Alapadamba', 627180),
(421, 'Taliparamba', 'Cheleri (CT)', 627216),
(422, 'Taliparamba', 'Chengalai', 627207),
(423, 'Taliparamba', 'Chuzhali', 627197),
(424, 'Taliparamba', 'Eramam', 627181),
(425, 'Taliparamba', 'Eruvassy', 627199),
(426, 'Taliparamba', 'Irikkur (CT)', 627212),
(427, 'Taliparamba', 'Kalliad', 627204),
(428, 'Taliparamba', 'Kankole', 627179),
(429, 'Taliparamba', 'Karivellur (CT)', 627209),
(430, 'Taliparamba', 'Kayaralam', 627208),
(431, 'Taliparamba', 'Kolacherry (CT)', 627215),
(432, 'Taliparamba', 'Kooveri', 627193),
(433, 'Taliparamba', 'Kurumathur (CT)', 627211),
(434, 'Taliparamba', 'Kuttiattoor (CT)', 627213),
(435, 'Taliparamba', 'Kuttiyeri', 627195),
(436, 'Taliparamba', 'Kuttoor', 627183),
(437, 'Taliparamba', 'Malapattam', 627206),
(438, 'Taliparamba', 'Maniyoor (CT)', 627217),
(439, 'Taliparamba', 'Mayyil (CT)', 627214),
(440, 'Taliparamba', 'Nediyanga', 627198),
(441, 'Taliparamba', 'New Naduvil', 627192),
(442, 'Taliparamba', 'Nuchiyad', 627201),
(443, 'Taliparamba', 'Padiyoor', 627203),
(444, 'Taliparamba', 'Panniyoor', 627194),
(445, 'Taliparamba', 'Pariyaram (CT)', 627210),
(446, 'Taliparamba', 'Pattuvam', 627196),
(447, 'Taliparamba', 'Payyannur (M)', 803257),
(448, 'Taliparamba', 'Payyavoor', 627200),
(449, 'Taliparamba', 'Peralam', 627178),
(450, 'Taliparamba', 'Peringome', 627185),
(451, 'Taliparamba', 'Perinthatta', 627182),
(452, 'Taliparamba', 'Pulingome', 627188),
(453, 'Taliparamba', 'Ramanthali', 627177),
(454, 'Taliparamba', 'Sreekandapuram', 627205),
(455, 'Taliparamba', 'Taliparamba (M)', 803258),
(456, 'Taliparamba', 'Thimiri', 627186),
(457, 'Taliparamba', 'Thirumeni', 627189),
(458, 'Taliparamba', 'Vayakkara', 627187),
(459, 'Taliparamba', 'Vayathur', 627202),
(460, 'Taliparamba', 'Vellad', 627191),
(461, 'Taliparamba', 'Vellora', 627184),
(462, 'Thalassery', 'Aralam', 627256),
(463, 'Thalassery', 'Ayyankunnu', 627255),
(464, 'Thalassery', 'Chavassery', 627251),
(465, 'Thalassery', 'Cheruvanchery', 627269),
(466, 'Thalassery', 'Chockli (CT)', 627291),
(467, 'Thalassery', 'Dharmadom (CT)', 627282),
(468, 'Thalassery', 'Eranholi (CT)', 627283),
(469, 'Thalassery', 'Eruvatti (CT)', 627280),
(470, 'Thalassery', 'Kadirur (CT)', 627284),
(471, 'Thalassery', 'Kandamkunnu (CT)', 627277),
(472, 'Thalassery', 'Kanichar', 627259),
(473, 'Thalassery', 'Kannavam', 627267),
(474, 'Thalassery', 'Keezhallur (CT)', 627273),
(475, 'Thalassery', 'Keezhur', 627252),
(476, 'Thalassery', 'Kelakam', 627258),
(477, 'Thalassery', 'Kolavelloor (CT)', 627287),
(478, 'Thalassery', 'Koloyad', 627266),
(479, 'Thalassery', 'Koodali (CT)', 627272),
(480, 'Thalassery', 'Koothuparamba (M)', 803262),
(481, 'Thalassery', 'Kottayam-Malabar (CT)', 627279),
(482, 'Thalassery', 'Kottiyoor', 627257),
(483, 'Thalassery', 'Manantheri (CT)', 627278),
(484, 'Thalassery', 'Manathana', 627260),
(485, 'Thalassery', 'Mangattidam (CT)', 627276),
(486, 'Thalassery', 'Mattannur (M)', 803261),
(487, 'Thalassery', 'Mokeri (CT)', 627286),
(488, 'Thalassery', 'Muzhakkunnu', 627261),
(489, 'Thalassery', 'New Mahe (CT)', 627290),
(490, 'Thalassery', 'Paduvilayi (CT)', 627274),
(491, 'Thalassery', 'Panniyannur (CT)', 627289),
(492, 'Thalassery', 'Panoor (CT)', 627288),
(493, 'Thalassery', 'Pathiriyad (CT)', 627275),
(494, 'Thalassery', 'Pattannur', 627250),
(495, 'Thalassery', 'Pattiom (CT)', 627285),
(496, 'Thalassery', 'Payam', 627253),
(497, 'Thalassery', 'Peringathur (CT)', 627292),
(498, 'Thalassery', 'Pinarayi (CT)', 627281),
(499, 'Thalassery', 'Puthoor', 627270),
(500, 'Thalassery', 'Sivapuram', 627268),
(501, 'Thalassery', 'Thalassery (M)', 803263),
(502, 'Thalassery', 'Thillenkeri', 627262),
(503, 'Thalassery', 'Tholambra', 627263),
(504, 'Thalassery', 'Thrippangottur', 627271),
(505, 'Thalassery', 'Vekkalam', 627265),
(506, 'Thalassery', 'Vellarvelly', 627264),
(507, 'Thalassery', 'Vilamana', 627254),
(508, 'Hosdurg', 'Ajanur (CT)', 627169),
(509, 'Hosdurg', 'Ambalathara', 627153),
(510, 'Hosdurg', 'Balal', 627145),
(511, 'Hosdurg', 'Bare (CT)', 627165),
(512, 'Hosdurg', 'Bellur', 627141),
(513, 'Hosdurg', 'Bheemanady', 627150),
(514, 'Hosdurg', 'Cheemeni', 627158),
(515, 'Hosdurg', 'Cheemeni II', 627157),
(516, 'Hosdurg', 'Cheruvathur (OG)', 627176),
(517, 'Hosdurg', 'Chithari', 627138),
(518, 'Hosdurg', 'Chittarikkal', 627149),
(519, 'Hosdurg', 'Kallar', 627143),
(520, 'Hosdurg', 'Kanhangad (M + OG)', 803256),
(521, 'Hosdurg', 'Karindalam', 627156),
(522, 'Hosdurg', 'Kayyur', 627159),
(523, 'Hosdurg', 'Keekan (CT)', 627168),
(524, 'Hosdurg', 'Kilayikode', 627160),
(525, 'Hosdurg', 'Kinanoor', 627155),
(526, 'Hosdurg', 'Kodakkad', 627162),
(527, 'Hosdurg', 'Kodom', 627142),
(528, 'Hosdurg', 'Madikai', 627154),
(529, 'Hosdurg', 'Maloth', 627146),
(530, 'Hosdurg', 'Maniyat (CT)', 627172),
(531, 'Hosdurg', 'Nileshwar (OG)', 627175),
(532, 'Hosdurg', 'North Thrikkaripur (CT)', 627173),
(533, 'Hosdurg', 'Padne', 627163),
(534, 'Hosdurg', 'Palavayal', 627148),
(535, 'Hosdurg', 'Pallikkara (CT)', 627167),
(536, 'Hosdurg', 'Pallikkara II', 627136),
(537, 'Hosdurg', 'Panathady', 627144),
(538, 'Hosdurg', 'Panayal', 627137),
(539, 'Hosdurg', 'Parappa', 627151),
(540, 'Hosdurg', 'Periya', 627139),
(541, 'Hosdurg', 'Perole (CT)', 627170),
(542, 'Hosdurg', 'Pilicode (CT)', 627171),
(543, 'Hosdurg', 'Pullur', 627140),
(544, 'Hosdurg', 'South Thrikkaripur (CT)', 627174),
(545, 'Hosdurg', 'Thayanur', 627152),
(546, 'Hosdurg', 'Thimiri', 627161),
(547, 'Hosdurg', 'Udinoor', 627164),
(548, 'Hosdurg', 'Udma (CT)', 627166),
(549, 'Hosdurg', 'West Eleri', 627147),
(550, 'Kasaragod', 'Adhur', 627110),
(551, 'Kasaragod', 'Adoor', 627119),
(552, 'Kasaragod', 'Angadimogaru', 627082),
(553, 'Kasaragod', 'Arikady', 627097),
(554, 'Kasaragod', 'Badaje', 627069),
(555, 'Kasaragod', 'Badiyadka', 627088),
(556, 'Kasaragod', 'Badoor', 627081),
(557, 'Kasaragod', 'Bandadka', 627118),
(558, 'Kasaragod', 'Bangra Manjeshwar (CT)', 627124),
(559, 'Kasaragod', 'Bayar', 627080),
(560, 'Kasaragod', 'Bedadka', 627114),
(561, 'Kasaragod', 'Bekoor', 627075),
(562, 'Kasaragod', 'Bela', 627090),
(563, 'Kasaragod', 'Bellur', 627109),
(564, 'Kasaragod', 'Bombrana', 627096),
(565, 'Kasaragod', 'Chemnad (CT)', 627135),
(566, 'Kasaragod', 'Chengala (CT)', 627134),
(567, 'Kasaragod', 'Chippar', 627079),
(568, 'Kasaragod', 'Delampady', 627120),
(569, 'Kasaragod', 'Edanad', 627092),
(570, 'Kasaragod', 'Enmakaje', 627085),
(571, 'Kasaragod', 'Heroor', 627073),
(572, 'Kasaragod', 'Hosabettu (CT)', 627123),
(573, 'Kasaragod', 'Ichilampady', 627098),
(574, 'Kasaragod', 'Ichilangod', 627072),
(575, 'Kasaragod', 'Kadambar', 627065),
(576, 'Kasaragod', 'Kaliyoor', 627062),
(577, 'Kasaragod', 'Kalnad', 627100),
(578, 'Kasaragod', 'Kannur', 627093),
(579, 'Kasaragod', 'Karadka', 627111),
(580, 'Kasaragod', 'Karivedakam', 627117),
(581, 'Kasaragod', 'Kasaragod (M)', 803255),
(582, 'Kasaragod', 'Kattukukke', 627086),
(583, 'Kasaragod', 'Kayyar', 627076),
(584, 'Kasaragod', 'Kidoor', 627094),
(585, 'Kasaragod', 'Kodalamogaru', 627060),
(586, 'Kasaragod', 'Kodibail', 627071),
(587, 'Kasaragod', 'Koipady (CT)', 627128),
(588, 'Kasaragod', 'Kolathur', 627113),
(589, 'Kasaragod', 'Koliyoor', 627061),
(590, 'Kasaragod', 'Kubanoor', 627074),
(591, 'Kasaragod', 'Kudalmarkala', 627077),
(592, 'Kasaragod', 'Kudlu (CT)', 627133),
(593, 'Kasaragod', 'Kuloor', 627067),
(594, 'Kasaragod', 'Kumbadaje', 627107),
(595, 'Kasaragod', 'Kunjathur (CT)', 627121),
(596, 'Kasaragod', 'Kuttikole', 627116),
(597, 'Kasaragod', 'Madhur (CT)', 627132),
(598, 'Kasaragod', 'Maire', 627084),
(599, 'Kasaragod', 'Majibail', 627068),
(600, 'Kasaragod', 'Mangalpady (CT)', 627126),
(601, 'Kasaragod', 'Manjeshwar (CT)', 627122),
(602, 'Kasaragod', 'Meenja', 627064),
(603, 'Kasaragod', 'Mogral (CT)', 627129),
(604, 'Kasaragod', 'Moodambail', 627066),
(605, 'Kasaragod', 'Mugu', 627083),
(606, 'Kasaragod', 'Mulinja', 627070),
(607, 'Kasaragod', 'Muliyar', 627112),
(608, 'Kasaragod', 'Munnad', 627115),
(609, 'Kasaragod', 'Muttathody', 627103),
(610, 'Kasaragod', 'Nekraje', 627105),
(611, 'Kasaragod', 'Nettanige', 627108),
(612, 'Kasaragod', 'Nirchal', 627089),
(613, 'Kasaragod', 'Padre', 627087),
(614, 'Kasaragod', 'Pady', 627104),
(615, 'Kasaragod', 'Paivalike', 627078),
(616, 'Kasaragod', 'Pathur', 627059),
(617, 'Kasaragod', 'Patla', 627099),
(618, 'Kasaragod', 'Pavoor', 627057),
(619, 'Kasaragod', 'Perumbala', 627101),
(620, 'Kasaragod', 'Puthige', 627091),
(621, 'Kasaragod', 'Puthur (CT)', 627130),
(622, 'Kasaragod', 'Shiribagilu (CT)', 627131),
(623, 'Kasaragod', 'Shiriya (CT)', 627127),
(624, 'Kasaragod', 'Talikala', 627063),
(625, 'Kasaragod', 'Thekkil', 627102),
(626, 'Kasaragod', 'Ubrangala', 627106),
(627, 'Kasaragod', 'Ujarulvar', 627095),
(628, 'Kasaragod', 'Uppala (CT)', 627125),
(629, 'Kasaragod', 'Vorkady', 627058),
(630, 'Karunagappally', 'Adinad (CT)', 628365),
(631, 'Karunagappally', 'Alappad', 628357),
(632, 'Karunagappally', 'Ayanivelikulangara (CT)', 628369),
(633, 'Karunagappally', 'Chavara (CT)', 628372),
(634, 'Karunagappally', 'Clappana', 628358),
(635, 'Karunagappally', 'Kallelibhagom (CT)', 628367),
(636, 'Karunagappally', 'Karunagappally (CT)', 628368),
(637, 'Karunagappally', 'Kollam (M Corp. + OG) (Part)', 803306),
(638, 'Karunagappally', 'Kulasekharapuram (CT)', 628364),
(639, 'Karunagappally', 'Neendakara (OG)', 628373),
(640, 'Karunagappally', 'Oachira (CT)', 628363),
(641, 'Karunagappally', 'Panmana (CT)', 628371),
(642, 'Karunagappally', 'Pavumba', 628360),
(643, 'Karunagappally', 'Thazhava', 628359),
(644, 'Karunagappally', 'Thekkumbhagom', 628362),
(645, 'Karunagappally', 'Thevalakkara', 628361),
(646, 'Karunagappally', 'Thodiyoor (CT)', 628366),
(647, 'Karunagappally', 'Vadakkumthala (CT)', 628370),
(648, 'Kollam', 'Adichanalloor (CT)', 628447),
(649, 'Kollam', 'Chirakkara', 628435),
(650, 'Kollam', 'Elampalloor (CT)', 628442),
(651, 'Kollam', 'Eravipuram (OG) (Part)', 628374),
(652, 'Kollam', 'Kalluvathukkal', 628438),
(653, 'Kollam', 'Kizhakkekallada', 628432),
(654, 'Kollam', 'Kottamkara (CT)', 628444),
(655, 'Kollam', 'Mayyanad (CT)', 628449),
(656, 'Kollam', 'Meenad (CT)', 628450),
(657, 'Kollam', 'Mulavana', 628433),
(658, 'Kollam', 'Mundrothuruth', 628431),
(659, 'Kollam', 'Nedumpana (CT)', 628443),
(660, 'Kollam', 'Pallimon', 628434),
(661, 'Kollam', 'Panayam (CT)', 628440),
(662, 'Kollam', 'Paravoor (M)', 803308),
(663, 'Kollam', 'Paravoor (Part)', 628436),
(664, 'Kollam', 'Parippally', 628437),
(665, 'Kollam', 'Perinad (CT)', 628441),
(666, 'Kollam', 'Poothakkulam (CT)', 628451),
(667, 'Kollam', 'Thazhuthala (CT)', 628448),
(668, 'Kollam', 'Thrikkadavoor (CT)', 628445),
(669, 'Kollam', 'Thrikkaruva (CT)', 628439),
(670, 'Kollam', 'Thrikkovilvattom (CT)', 628446),
(671, 'Kottarakkara', 'Chadayamangalam', 628422),
(672, 'Kottarakkara', 'Chakkuvarakkal', 628410),
(673, 'Kottarakkara', 'Chithara', 628429),
(674, 'Kottarakkara', 'Elamad', 628418),
(675, 'Kottarakkara', 'Ezhukone', 628413),
(676, 'Kottarakkara', 'Ittiva', 628424),
(677, 'Kottarakkara', 'Kadakkal', 628425),
(678, 'Kottarakkara', 'Kalayapuram', 628407),
(679, 'Kottarakkara', 'Kareepra', 628414),
(680, 'Kottarakkara', 'Kottarakkara (CT)', 628430),
(681, 'Kottarakkara', 'Kottukkal', 628423),
(682, 'Kottarakkara', 'Kulakkada', 628406),
(683, 'Kottarakkara', 'Kummil', 628427),
(684, 'Kottarakkara', 'Mancode', 628428),
(685, 'Kottarakkara', 'Melila', 628409),
(686, 'Kottarakkara', 'Mylom', 628408),
(687, 'Kottarakkara', 'Neduvathoor', 628412),
(688, 'Kottarakkara', 'Nilamel', 628426),
(689, 'Kottarakkara', 'Odanavattam', 628415),
(690, 'Kottarakkara', 'Pavithreswaram', 628404),
(691, 'Kottarakkara', 'Pooyappally', 628420),
(692, 'Kottarakkara', 'Puthur', 628405),
(693, 'Kottarakkara', 'Ummannoor', 628416),
(694, 'Kottarakkara', 'Valakam', 628417),
(695, 'Kottarakkara', 'Velinalloor', 628421),
(696, 'Kunnathur', 'Kunnathur', 628377),
(697, 'Kunnathur', 'Mynagappally', 628380),
(698, 'Kunnathur', 'Poruvazhy', 628376),
(699, 'Kunnathur', 'Sasthamkotta', 628378),
(700, 'Kunnathur', 'Sooranad North', 628375),
(701, 'Kunnathur', 'Sooranad South', 628379),
(702, 'Kunnathur', 'West Kallada', 628381),
(703, 'Pathanapuram', 'Alayamon', 628402),
(704, 'Pathanapuram', 'Anchal', 628400),
(705, 'Pathanapuram', 'Arackal', 628398),
(706, 'Pathanapuram', 'Arienkavu', 628393),
(707, 'Pathanapuram', 'Ayiranalloor', 628396),
(708, 'Pathanapuram', 'Channappetta', 628403),
(709, 'Pathanapuram', 'Edamon', 628391),
(710, 'Pathanapuram', 'Edamulackal', 628399),
(711, 'Pathanapuram', 'Eroor', 628401),
(712, 'Changanassery', 'Changanassery (M)', 803297),
(713, 'Changanassery', 'Changanassery (Part)', 628183),
(714, 'Changanassery', 'Chethipuzha (CT)', 628191),
(715, 'Changanassery', 'Kangazha', 628189),
(716, 'Changanassery', 'Karukachal', 628186),
(717, 'Kanjirappally', 'Cheruvally', 628201),
(718, 'Kanjirappally', 'Chirakkadavu', 628200),
(719, 'Kanjirappally', 'Edakkunnam', 628196),
(720, 'Kanjirappally', 'Elamgulam', 628199),
(721, 'Kanjirappally', 'Elikkulam', 628198),
(722, 'Kanjirappally', 'Erumeli North', 628203),
(723, 'Kanjirappally', 'Erumeli South', 628204),
(724, 'Kottayam', 'Aimanam (CT)', 628173),
(725, 'Kottayam', 'Akalakunnam', 628160),
(726, 'Kottayam', 'Anikkad', 628162),
(727, 'Kottayam', 'Arpookara', 628155),
(728, 'Kottayam', 'Athirampuzha (CT)', 628172),
(729, 'Kottayam', 'Ayarkunnam', 628159),
(730, 'Kottayam', 'Chengalam East', 628161),
(731, 'Kottayam', 'Chengalam South (CT)', 628176),
(732, 'Kottayam', 'Ettumanoor (CT)', 628171),
(733, 'Kottayam', 'Kaipuzha', 628156),
(734, 'Kottayam', 'Kooroppada', 628163),
(735, 'Kottayam', 'Kottayam (M)', 803296),
(736, 'Kottayam', 'Kumarakam', 628166),
(737, 'Meenachil', 'Elackad', 628130),
(738, 'Meenachil', 'Erattupetta (CT)', 628138),
(739, 'Meenachil', 'Kadanad', 628118),
(740, 'Meenachil', 'Kanakkari', 628129),
(741, 'Meenachil', 'Kidangoor', 628131),
(742, 'Meenachil', 'Kondoor', 628135),
(743, 'Meenachil', 'Kuravilangad', 628128),
(744, 'Meenachil', 'Kurichithanam', 628127),
(745, 'Meenachil', 'Lalam (Part)', 628125),
(746, 'Meenachil', 'Meenachil (Part)', 628133),
(747, 'Meenachil', 'Melukavu', 628119),
(748, 'Meenachil', 'Monippally', 628114),
(749, 'Vaikom', 'Njeezhoor', 628142),
(750, 'Vaikom', 'Thalayazham', 628149),
(751, 'Vaikom', 'Vadakkemuri (Part)', 628146),
(752, 'Vaikom', 'Vadayar', 628144),
(753, 'Vaikom', 'Vaikom (M)', 803295),
(754, 'Vaikom', 'Vaikom (Part)', 628148),
(755, 'Vaikom', 'Vechoor', 628150),
(756, 'Vaikom', 'Velloor', 628140),
(757, 'Ernad', 'Chembrasseri', 627463),
(758, 'Ernad', 'Cherukavu (CT)', 627467),
(759, 'Ernad', 'Edavanna', 627450),
(760, 'Ernad', 'Elankur', 627460),
(761, 'Ernad', 'Karakunnu', 627451),
(762, 'Ernad', 'Kavanoor', 627452),
(763, 'Ernad', 'Kizhuparamba (CT)', 627465),
(764, 'Ernad', 'Kondotty (CT)', 627468),
(765, 'Nilambur', 'Edakkara', 627474),
(766, 'Nilambur', 'Kalikavu', 627483),
(767, 'Nilambur', 'Karulai', 627477),
(768, 'Nilambur', 'Karuvarakundu', 627487),
(769, 'Nilambur', 'Kerala Estate', 627486),
(770, 'Nilambur', 'Kurumbilangode', 627472),
(771, 'Nilambur', 'Mambad', 627478),
(772, 'Nilambur', 'Nilambur (CT)', 627488),
(773, 'Nilambur', 'Porur', 627480),
(774, 'Nilambur', 'Pullipadam', 627470),
(775, 'Nilambur', 'Thiruvali', 627479),
(776, 'Nilambur', 'Thuvvur', 627485),
(777, 'Perinthalmanna', 'Arakkuparamba', 627501),
(778, 'Perinthalmanna', 'Edappatta', 627489),
(779, 'Perinthalmanna', 'Elamkulam', 627505),
(780, 'Perinthalmanna', 'Kariavattom', 627499),
(781, 'Perinthalmanna', 'Keezhattur', 627491),
(782, 'Perinthalmanna', 'Kodur (CT)', 627510),
(783, 'Perinthalmanna', 'Koottilangadi (CT)', 627509),
(784, 'Perinthalmanna', 'Kuruva', 627495),
(785, 'Perinthalmanna', 'Kuruvambalam', 627507),
(786, 'Ponnani', 'Alamcode (CT)', 627564),
(787, 'Ponnani', 'Edappal (CT)', 627563),
(788, 'Ponnani', 'Kalady (CT)', 627562),
(789, 'Ponnani', 'Marancheri (CT)', 627565),
(790, 'Ponnani', 'Nannamukku', 627561),
(791, 'Ponnani', 'Perumpadappa', 627560),
(792, 'Ponnani', 'Ponnani (M)', 803272),
(793, 'Ponnani', 'Tavanur', 627557),
(794, 'Ponnani', 'Vattamkulam', 627558),
(795, 'Ponnani', 'Veliyankode', 627559),
(796, 'Tirur', 'Ponmala', 627518),
(797, 'Tirur', 'Ponmundam (CT)', 627529),
(798, 'Tirur', 'Purathur', 627525),
(799, 'Tirur', 'Talakkad (CT)', 627533),
(800, 'Tirur', 'Tanalur (CT)', 627530),
(801, 'Tirur', 'Tanur', 627512),
(802, 'Tirur', 'Thirunavaya (CT)', 627535),
(803, 'Tirurangadi', 'Abdu Rahiman Nagar (CT)', 627552),
(804, 'Tirurangadi', 'Ariyallur (CT)', 627544),
(805, 'Tirurangadi', 'Chelambra (CT)', 627541),
(806, 'Tirurangadi', 'Kannamangalam (CT)', 627547),
(807, 'Tirurangadi', 'Moonniyur (CT)', 627545),
(808, 'Tirurangadi', 'Nannambra (CT)', 627555),
(809, 'Tirurangadi', 'Neduva (CT)', 627554),
(810, 'Tirurangadi', 'Othukkungal (CT)', 627549),
(811, 'Tirurangadi', 'Pallikal (CT)', 627542),
(812, 'Tirurangadi', 'Parappanangadi', 627540),
(813, 'Tirurangadi', 'Parappur (CT)', 627550),
(814, 'Tirurangadi', 'Peruvallur (CT)', 627546),
(815, 'Alathur', 'Alathur (CT)', 627713),
(816, 'Alathur', 'Erimayur-I', 627698),
(817, 'Alathur', 'Erimayur-II', 627699),
(818, 'Alathur', 'Kannambra-I', 627704),
(819, 'Alathur', 'Kannambra-II', 627705),
(820, 'Alathur', 'Kavasseri-I', 627701),
(821, 'Alathur', 'Kavasseri-II', 627702),
(822, 'Alathur', 'Kizhakkencheri-I', 627712),
(823, 'Alathur', 'Kizhakkencheri-II', 627711),
(824, 'Alathur', 'Kottayi-I', 627686),
(825, 'Chittur', 'Chittur (Part)', 627656),
(826, 'Chittur', 'Chittur-Thathamangalam (M)', 803276),
(827, 'Chittur', 'Elavancherry', 627677),
(828, 'Chittur', 'Eruthempathy', 627662),
(829, 'Chittur', 'Kairady', 627674),
(830, 'Chittur', 'Koduvayur (CT)', 627682),
(831, 'Chittur', 'Koduvayur-II', 627654),
(832, 'Mannarkad', 'Kallamala', 627614),
(833, 'Mannarkad', 'Karakurissi', 627622),
(834, 'Mannarkad', 'Karimba -I', 627620),
(835, 'Mannarkad', 'Karimba -II', 627621),
(836, 'Mannarkad', 'Kottathara', 627612),
(837, 'Mannarkad', 'Kottoppadam-I', 627606),
(838, 'Mannarkad', 'Kottoppadam-II', 627624),
(839, 'Mannarkad', 'Kottoppadam-III', 627607),
(840, 'Mannarkad', 'Kumaramputhur', 627623),
(841, 'Mannarkad', 'Mannarkad-I (CT)', 627627),
(842, 'Ottappalam', 'Chalavara', 627583),
(843, 'Ottappalam', 'Chalissery', 627588),
(844, 'Ottappalam', 'Cherpulacherry', 627572),
(845, 'Ottappalam', 'Kadampazhipuram-I', 627577),
(846, 'Ottappalam', 'Kadampazhipuram-II', 627576),
(847, 'Ottappalam', 'Kappur', 627587),
(848, 'Ottappalam', 'Karimpuzha-I', 627574),
(849, 'Ottappalam', 'Karimpuzha-II', 627575),
(850, 'Ottappalam', 'Koppam', 627585),
(851, 'Ottappalam', 'Kulukkallur', 627570),
(852, 'Ottappalam', 'Lakkidi-Perur- I', 627594),
(853, 'Ottappalam', 'Lakkidi-Perur- II', 627595),
(854, 'Ottappalam', 'Muthuthala (CT)', 627599),
(855, 'Ottappalam', 'Nagalassery', 627589),
(856, 'Ottappalam', 'Nellaya', 627571),
(857, 'Ottappalam', 'Ongallur -I (CT)', 627597),
(858, 'Ottappalam', 'Ongallur -II (CT)', 627596),
(859, 'Ottappalam', 'Ottappalam (M)', 803274),
(860, 'Ottappalam', 'Parudur', 627567),
(861, 'Ottappalam', 'Pattambi (CT)', 627598),
(862, 'Ottappalam', 'Pattithara', 627586),
(863, 'Ottappalam', 'Shoranur (M)', 803273),
(864, 'Adoor', 'Adoor (M)', 803305),
(865, 'Adoor', 'Angadickal', 628347),
(866, 'Adoor', 'Enadimangalam', 628350),
(867, 'Adoor', 'Enathu', 628356),
(868, 'Adoor', 'Erathu', 628352),
(869, 'Adoor', 'Ezhamkulam', 628351),
(870, 'Adoor', 'Kadampanadu', 628355),
(871, 'Adoor', 'Kalanjoor', 628349),
(872, 'Adoor', 'Kodumon', 628346),
(873, 'Adoor', 'Koodal', 628348),
(874, 'Adoor', 'Kurampala', 628344),
(875, 'Adoor', 'Pallickal', 628354),
(876, 'Adoor', 'Pandalam', 628343),
(877, 'Adoor', 'Pandalam Thekkekara', 628345),
(878, 'Kozhenchery', 'Aranmula', 628325),
(879, 'Kozhenchery', 'Aruvappulam', 628339),
(880, 'Kozhenchery', 'Chenneerkara', 628328),
(881, 'Kozhenchery', 'Elanthoor', 628327),
(882, 'Kozhenchery', 'Iravan', 628340),
(883, 'Kozhenchery', 'Kidangannur', 628324),
(884, 'Kozhenchery', 'Konni', 628338),
(885, 'Kozhenchery', 'Konnithazham', 628335),
(886, 'Kozhenchery', 'Kozhenchery (CT)', 628342),
(887, 'Mallappally', 'Anicad', 628305),
(888, 'Mallappally', 'Ezhumattoor', 628308),
(889, 'Mallappally', 'Kallooppara', 628303),
(890, 'Mallappally', 'Kottangal', 628306),
(891, 'Mallappally', 'Kunnamthanam', 628302),
(892, 'Mallappally', 'Mallappally', 628304),
(893, 'Mallappally', 'Perumpetty', 628307),
(894, 'Mallappally', 'Puramattam', 628310),
(895, 'Mallappally', 'Thelliyoor', 628309),
(896, 'Ranni', 'Ayiroor', 628317),
(897, 'Ranni', 'Cherukole', 628318),
(898, 'Ranni', 'Chethakkal', 628311),
(899, 'Ranni', 'Chittar-Seethathodu', 628321),
(900, 'Ranni', 'Kollamula', 628312),
(901, 'Ranni', 'Pazhavangadi', 628315),
(902, 'Ranni', 'Perunad', 628313),
(903, 'Ranni', 'Ranni', 628319),
(904, 'Ranni', 'Vadasserikkara', 628320),
(905, 'Thiruvalla', 'Eraviperoor', 628299),
(906, 'Thiruvalla', 'Kadapra', 628293),
(907, 'Thiruvalla', 'Kaviyoor', 628298),
(908, 'Thiruvalla', 'Kavumbhagom (Part)', 628296),
(909, 'Thiruvalla', 'Koipuram', 628300),
(910, 'Thiruvalla', 'Kuttoor', 628297),
(911, 'Thiruvalla', 'Nedumpuram', 628294),
(912, 'Thiruvalla', 'Niranam', 628292),
(913, 'Chirayinkeezhu', 'Koduvazhannoor', 628463),
(914, 'Chirayinkeezhu', 'Kudavoor', 628458),
(915, 'Chirayinkeezhu', 'Madavoor', 628457),
(916, 'Chirayinkeezhu', 'Manamboor', 628468),
(917, 'Chirayinkeezhu', 'Nagaroor', 628464),
(918, 'Chirayinkeezhu', 'Navaikulam', 628455),
(919, 'Chirayinkeezhu', 'Ottoor', 628466),
(920, 'Chirayinkeezhu', 'Pallickal', 628456),
(921, 'Chirayinkeezhu', 'Pazhayakunnummel', 628461),
(922, 'Chirayinkeezhu', 'Pulimath', 628462),
(923, 'Chirayinkeezhu', 'Sarkara-Chirayinkeezhu', 628472),
(924, 'Chirayinkeezhu', 'Vakkom (CT)', 628475),
(925, 'Chirayinkeezhu', 'Varkala (M)', 803309),
(926, 'Chirayinkeezhu', 'Vellalloor', 628459),
(927, 'Chirayinkeezhu', 'Vettoor-Cherunniyoor', 628467),
(928, 'Nedumangad', 'Anad', 628492),
(929, 'Nedumangad', 'Aruvikkara', 628499),
(930, 'Nedumangad', 'Aryanad', 628496),
(931, 'Nedumangad', 'Kallara', 628481),
(932, 'Nedumangad', 'Karakulam (CT)', 628504),
(933, 'Nedumangad', 'Koliyakode', 628489),
(934, 'Nedumangad', 'Kurupuzha', 628486),
(935, 'Nedumangad', 'Manikkal', 628490),
(936, 'Nedumangad', 'Mannoorkara', 628495),
(937, 'Nedumangad', 'Nedumangad (M)', 803311),
(938, 'Nedumangad', 'Nellanad', 628479),
(939, 'Nedumangad', 'Palode', 628485),
(940, 'Nedumangad', 'Panavoor', 628487),
(941, 'Nedumangad', 'Pangode', 628482),
(942, 'Nedumangad', 'Peringamala', 628483),
(943, 'Nedumangad', 'Perumkulam', 628501),
(944, 'Nedumangad', 'Pullampara', 628488),
(945, 'Nedumangad', 'Theakada', 628491),
(946, 'Nedumangad', 'Thennoor', 628484),
(947, 'Nedumangad', 'Tholicode', 628493),
(948, 'Nedumangad', 'Uzhamalackal', 628497),
(949, 'Nedumangad', 'Vamanapuram', 628480),
(950, 'Nedumangad', 'Vattappara (CT)', 628503),
(951, 'Neyyattinkara', 'Parasuvaikkal (CT)', 628546),
(952, 'Neyyattinkara', 'Perumkadavila', 628528),
(953, 'Neyyattinkara', 'Thirupuram', 628535),
(954, 'Neyyattinkara', 'Thiruvananthapuram (M Corp. + OG) (Part)', 803312),
(955, 'Neyyattinkara', 'Vazhichal', 628523),
(956, 'Neyyattinkara', 'Vellarada', 628525),
(957, 'Neyyattinkara', 'Vilappil (CT)', 628539),
(958, 'Neyyattinkara', 'Vilavoorkkal (CT)', 628542),
(959, 'Chavakkad', 'Chavakkad (M)', 803279),
(960, 'Chavakkad', 'Edakkazhiyur (CT)', 627796),
(961, 'Chavakkad', 'Elavally (CT)', 627805),
(962, 'Chavakkad', 'Engandiyur', 627789),
(963, 'Chavakkad', 'Guruvayoor (M)', 803278),
(964, 'Chavakkad', 'Irimbranallur', 627787),
(965, 'Chavakkad', 'Iringaprom (CT)', 627799),
(966, 'Chavakkad', 'Kadappuram', 627785),
(967, 'Chavakkad', 'Kadikkad (CT)', 627792),
(968, 'Kodungallur', 'Ala (CT)', 627880),
(969, 'Kodungallur', 'Azhikode', 627872),
(970, 'Kodungallur', 'Chendrappini (CT)', 627874),
(971, 'Kodungallur', 'Edathiruthy (CT)', 627873),
(972, 'Kodungallur', 'Edavilangu (CT)', 627879),
(973, 'Kodungallur', 'Eriyad (OG)', 627885),
(974, 'Kodungallur', 'Kaipamangalam (CT)', 627875),
(975, 'Kodungallur', 'Kodungallur (M + OG)', 803281),
(976, 'Kodungallur', 'Koolimuttam', 627870),
(977, 'Kodungallur', 'Madathumpady (CT)', 627884),
(978, 'Kodungallur', 'Methala (CT)', 627882),
(979, 'Kodungallur', 'Padinjare Vemballur', 627871),
(980, 'Kodungallur', 'Pallippuram (CT)', 627881),
(981, 'Kodungallur', 'Panangad (CT)', 627878),
(982, 'Kodungallur', 'Pappinivattom (CT)', 627877),
(983, 'Kodungallur', 'Perinjanam (CT)', 627876),
(984, 'Kodungallur', 'Poyya (CT)', 627883),
(985, 'Mananthavady', 'Kanjirangad', 627308),
(986, 'Mananthavady', 'Mananthavady', 627296),
(987, 'Mananthavady', 'Nalloornad', 627302),
(988, 'Mananthavady', 'Panamaram', 627304),
(989, 'Mananthavady', 'Payyampally', 627295),
(990, 'Mananthavady', 'Periya', 627298),
(991, 'Mananthavady', 'Porunnanore', 627306),
(992, 'Mananthavady', 'Thavinhal', 627297),
(993, 'Mananthavady', 'Thirunelly', 627293),
(994, 'Mananthavady', 'Thondernad', 627299),
(995, 'Mananthavady', 'Thrissilery', 627294),
(996, 'Mananthavady', 'Valat', 627300),
(997, 'Mananthavady', 'Vellamunda', 627307),
(998, 'Sulthanbathery', 'Ambalavayal', 627322),
(999, 'Sulthanbathery', 'Cheeral', 627320),
(1000, 'Sulthanbathery', 'Irulam', 627314),
(1001, 'Sulthanbathery', 'Kidanganad', 627313),
(1002, 'Sulthanbathery', 'Krishnagiri', 627316),
(1003, 'Sulthanbathery', 'Kuppadi', 627318),
(1004, 'Sulthanbathery', 'Nadavayal', 627309),
(1005, 'Sulthanbathery', 'Nenmeni', 627321),
(1006, 'Sulthanbathery', 'Noolpuzha', 627319),
(1007, 'Sulthanbathery', 'Padichira', 627312),
(1008, 'Sulthanbathery', 'Poothadi', 627310),
(1009, 'Sulthanbathery', 'Pulpalli', 627311),
(1010, 'Sulthanbathery', 'Purakkadi', 627315),
(1011, 'Sulthanbathery', 'Sulthanbathery', 627317),
(1012, 'Sulthanbathery', 'Thomattuchal', 627323),
(1013, 'Vythiri', 'Chundale', 627336),
(1014, 'Vythiri', 'Kalpetta (M)', 803264),
(1015, 'Vythiri', 'Kaniambetta', 627327),
(1016, 'Vythiri', 'Kavumannam', 627331),
(1017, 'Vythiri', 'Kottappadi (Part)', 627337),
(1018, 'Vythiri', 'Kottathara', 627326),
(1019, 'Vythiri', 'Kunnathidavaka', 627335),
(1020, 'Vythiri', 'Kuppadithara', 627325),
(1021, 'Vythiri', 'Muppainad', 627339),
(1022, 'Vythiri', 'Muttil North', 627328),
(1023, 'Vythiri', 'Muttil South', 627329),
(1024, 'Vythiri', 'Padinharethara', 627324),
(1025, 'Vythiri', 'Pozhuthana', 627334),
(1026, 'Vythiri', 'Thariyode', 627332),
(1027, 'Vythiri', 'Thrikkaipatta (Part)', 627338),
(1028, 'Vythiri', 'Vellarimala', 627340),
(1029, 'Vythiri', 'Vengappally', 627330);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collector`
--
ALTER TABLE `collector`
  ADD PRIMARY KEY (`coll_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `collector_update`
--
ALTER TABLE `collector_update`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `minister`
--
ALTER TABLE `minister`
  ADD PRIMARY KEY (`min_id`),
  ADD UNIQUE KEY `emial` (`email`);

--
-- Indexes for table `minister_update`
--
ALTER TABLE `minister_update`
  ADD PRIMARY KEY (`sec_status_id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `reopen`
--
ALTER TABLE `reopen`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `reopen_admin`
--
ALTER TABLE `reopen_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taluk`
--
ALTER TABLE `taluk`
  ADD PRIMARY KEY (`taluk_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`village_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collector`
--
ALTER TABLE `collector`
  MODIFY `coll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collector_update`
--
ALTER TABLE `collector_update`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `minister`
--
ALTER TABLE `minister`
  MODIFY `min_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `minister_update`
--
ALTER TABLE `minister_update`
  MODIFY `sec_status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reopen`
--
ALTER TABLE `reopen`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reopen_admin`
--
ALTER TABLE `reopen_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taluk`
--
ALTER TABLE `taluk`
  MODIFY `taluk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `village_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
