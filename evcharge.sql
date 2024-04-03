-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evcharge`
--

-- --------------------------------------------------------

--
-- Table structure for table `chargingstationsdata`
--

CREATE TABLE `chargingstationsdata` (
  `COL 1` varchar(3) DEFAULT NULL,
  `COL 2` varchar(15) DEFAULT NULL,
  `COL 3` varchar(141) DEFAULT NULL,
  `COL 4` varchar(167) DEFAULT NULL,
  `COL 5` varchar(17) DEFAULT NULL,
  `COL 6` varchar(17) DEFAULT NULL,
  `COL 7` varchar(22) DEFAULT NULL,
  `COL 8` varchar(15) DEFAULT NULL,
  `COL 9` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chargingstationsdata`
--

INSERT INTO `chargingstationsdata` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`) VALUES
('no', 'region', 'address', 'aux addres', 'latitude', 'longitude', 'type', 'power', 'service'),
('1', 'NDMC', 'Prithviraj Market, Rabindra Nagar, New Delhi- 110003', 'Electric Vehicle Charger, Prithviraj Market, Rabindra Nagar, New Delhi- 110003', '28.60072549999999', '77.22625240000000', 'DC-001', '15 kW', 'Self Service'),
('2', 'NDMC', 'Prithviraj Market, Rabindra Nagar, New Delhi- 110003', 'Electric Vehicle Charger, Prithviraj Market, Rabindra Nagar, New Delhi- 110003', '28.60072549999999', '77.22625240000000', 'DC-001', '15 kW', 'Self Service'),
('3', 'NDMC', 'Outside RWA Park, Jor Bagh Market, Jor Bagh Colony Road, New Delhi- 110003', 'Electric Vehicle Charger, Outside RWA Park, Jor Bagh Market, Jor Bagh Colony Road, New Delhi- 110003', '28.58830310000000', '77.21769720000000', 'DC-001', '15 kW', 'Self Service'),
('4', 'NDMC', 'Opposite Dory Pharmacy, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', 'Electric Vehicle Charger, Opposite Dory Pharmacy, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', '28.58265379999999', '77.22008719999999', 'DC-001', '15 kW', 'Self Service'),
('5', 'NDMC', 'Opposite Goel Opticals, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', 'Electric Vehicle Charger, Opposite Goel Opticals, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', '28.58448500000000', '77.22031599999999', 'DC-001', '15 kW', 'Self Service'),
('6', 'NDMC', 'Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', 'Electric Vehicle Charger, Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', '28.60235619999999', '77.18661779999999', 'DC-001', '15 kW', 'Self Service'),
('7', 'NDMC', 'Outside Westend Vedi Tailors, Bock M, Middle Circle, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Outside Westend Vedi Tailors, Bock M, Middle Circle, Connaught Place, New Delhi- 110001', '28.63368609999999', '77.21814030000000', 'DC-001', '15 kW', 'Self Service'),
('8', 'NDMC', 'Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 'Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', '28.63044820000000', '77.22555780000000', 'DC-001', '15 kW', 'Self Service'),
('9', 'NDMC', 'Near Bikanervala, Yashwant Place, Chanakyapuri, New Delhi- 110021', 'Electric Vehicle Charger, Near Bikanervala, Yashwant Place, Chanakyapuri, New Delhi- 110021', '28.58388280000000', '77.16340800000000', 'DC-001', '15 kW', 'Self Service'),
('10', 'NDMC', 'Khan Market, Rabindra Nagar, New Delhi- 110003', 'Electric Vehicle Charger, Khan Market, Rabindra Nagar, New Delhi- 110003', '28.60033329999999', '77.22688890000000', 'DC-001', '15 kW', 'Self Service'),
('11', 'NDMC', 'Outside Devinder Collections, Shankar Market, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Outside Devinder Collections, Shankar Market, Connaught Place, New Delhi- 110001', '28.63367500000000', '77.22349289999999', 'DC-001', '15 kW', 'Self Service'),
('12', 'NDMC', 'Opposite HDFC Bank, M- Block, , Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Opposite HDFC Bank, M- Block, , Connaught Place, New Delhi- 110001', '28.63258430000000', '77.22297869999999', 'DC-001', '15 kW', 'Self Service'),
('13', 'NDMC', 'Outside Oriental Bank, Radial Road No. 7, Block M, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Outside Oriental Bank, Radial Road No. 7, Block M, Connaught Place, New Delhi- 110001', '28.63172940000000', '77.22210760000000', 'DC-001', '15 kW', 'Self Service'),
('14', 'NDMC', 'Outside Jain Bhawan, 12 Shaheed Bhagat Singh Marg, Gole Market, New Delhi- 110001', 'Electric Vehicle Charger, Outside Jain Bhawan, 12 Shaheed Bhagat Singh Marg, Gole Market, New Delhi- 110001', '28.63384100000000', '77.20744390000000', 'DC-001', '15 kW', 'Self Service'),
('15', 'NDMC', 'NDMC Parking,  Near Ferns n Petals, Near BPCL Petrol Pump,  C Block RR5, Connaught Place,  New Delhi- 110001', 'Electric Vehicle Charger, NDMC Parking,  Near Ferns n Petals, Near BPCL Petrol Pump,  C Block RR5, Connaught Place,  New Delhi- 110001', '28.62816260000000', '77.21551510000000', 'DC-001', '15 kW', 'Self Service'),
('16', 'NDMC', 'NDMC Parking,  Near Croma, D Block RR5,  Opposite BPCL Petrol Pump,  Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, NDMC Parking,  Near Croma, D Block RR5,  Opposite BPCL Petrol Pump,  Connaught Place, New Delhi- 110001', '28.62816260000000', '77.21551510000000', 'DC-001', '15 kW', 'Self Service'),
('17', 'NDMC', 'Next to PVR Plaza, H Block RR4, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Next to PVR Plaza, H Block RR4, Connaught Place, New Delhi- 110001', '28.63501129999999', '77.21961120000000', 'DC-001', '15 kW', 'Self Service'),
('18', 'NDMC', 'Opposite South Indian Bank, Block E, RR6, Middle Circle, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Opposite South Indian Bank, Block E, RR6, Middle Circle, Connaught Place, New Delhi- 110001', '28.63388279999999', '77.22154240000000', 'DC-001', '15 kW', 'Self Service'),
('19', 'NDMC', 'Opposite HP Petrol Pump, Block E, Middle Circle, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Opposite HP Petrol Pump, Block E, Middle Circle, Connaught Place, New Delhi- 110001', '28.63189639999999', '77.22158240000000', 'DC-001', '15 kW', 'Self Service'),
('20', 'NDMC', 'Outside Standard Chartered Bank, Sardar Patel Bhawan, Sansad Marg, New Delhi- 110001', 'Electric Vehicle Charger, Outside Standard Chartered Bank, Sardar Patel Bhawan, Sansad Marg, New Delhi- 110001', '28.62425180000000', '77.21258179999999', 'DC-001', '15 kW', 'Self Service'),
('21', 'NDMC', 'Sarojini Nagar Market, Sarojini Nagar, New Delhi- 110023', 'Electric Vehicle Charger, Sarojini Nagar Market, Sarojini Nagar, New Delhi- 110023', '28.57723180000000', '77.19723849999999', 'DC-001', '15 kW', 'Self Service'),
('22', 'NDMC', 'Outside Iqbal Bros., G1, Block G, Connaught Place, New Delhi- 110001', 'Electric Vehicle Charger, Outside Iqbal Bros., G1, Block G, Connaught Place, New Delhi- 110001', '28.63379750000000', '77.21745529999999', 'DC-001', '15 kW', 'Self Service'),
('23', 'NDMC', 'Palika Maternity Hospital, Block 11, Lodhi Colony, Near Khanna Market, New Delhi 110003', 'Electric Vehicle Charger, Palika Maternity Hospital, Block 11, Lodhi Colony, Near Khanna Market, New Delhi 110003', '28.58380460000000', '77.22182250000000', 'DC-001', '15 kW', 'Self Service'),
('24', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'DC-001', '15 kW', 'Self Service'),
('25', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'DC-001', '15 kW', 'Self Service'),
('26', 'NDMC', 'FICCI, FICCI Chowk, Mandi House, Todermal Road Area, Mandi House, New Delhi110001', 'Electric Vehicle Charger, FICCI, FICCI Chowk, Mandi House, Todermal Road Area, Mandi House, New Delhi110001', '28.62686910000000', '77.23185300000000', 'DC-001', '15 kW', 'Self Service'),
('27', 'NDMC', 'Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', 'Electric Vehicle Charger, Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', '28.58528790000000', '77.17709399999999', 'DC-001', '15 kW', 'Self Service'),
('28', 'NDMC', 'PSOI Club, Chanakyapuri, New Delhi 110021', 'Electric Vehicle Charger, PSOI Club, Chanakyapuri, New Delhi 110021', '28.58661700000000', '77.19364000000000', 'DC-001', '15 kW', 'Self Service'),
('29', 'NDMC', 'PSOI Club, Chanakyapuri, New Delhi 110021', 'Electric Vehicle Charger, PSOI Club, Chanakyapuri, New Delhi 110021', '28.58661700000000', '77.19364000000000', 'DC-001', '15 kW', 'Self Service'),
('30', 'NDMC', 'Near Snow White, Block D, Inner Circle, Connaught Place, New Delhi 110001', 'Electric Vehicle Charger, Near Snow White, Block D, Inner Circle, Connaught Place, New Delhi 110001', '28.63363060000000', '77.22057900000000', 'DC-001', '15 kW', 'Self Service'),
('31', 'NDMC', 'Outside Van Heusen Showroom, Block C, Inner Circle, Connaught Place, New Delhi 110001', 'Electric Vehicle Charger, Outside Van Heusen Showroom, Block C, Inner Circle, Connaught Place, New Delhi 110001', '28.63298989999999', '77.21798049999999', 'DC-001', '15 kW', 'Self Service'),
('32', 'NDMC', '16-B, Woodland Showroom, Block B, Connaught Place, New Delhi 110001', 'Electric Vehicle Charger, 16-B, Woodland Showroom, Block B, Connaught Place, New Delhi 110001', '28.63407189999999', '77.21877979999999', 'DC-001', '15 kW', 'Self Service'),
('33', 'CMRL', 'Nandanam Metro station Chennai  (CMRL)', 'Electric Vehicle Charger, Nandanam Metro station Chennai  (CMRL)', '12.99592220000000', '80.21028669999999', 'DC-001', '15 kW', 'Self Service'),
('34', 'CMRL', 'Nandanam Metro station Chennai  (CMRL)', 'Electric Vehicle Charger, Nandanam Metro station Chennai  (CMRL)', '12.99592220000000', '80.21028669999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('35', 'Maha Metro', 'Nagpur Airport Metro Station, Nagpur', 'Electric Vehicle Charger, Nagpur Airport Metro Station, Nagpur', '21.08688009999999', '79.06355859999999', 'DC-001', '15 kW', 'Self Service'),
('36', 'Maha Metro', 'Nagpur Airport Metro Station, Nagpur', 'Electric Vehicle Charger, Nagpur Airport Metro Station, Nagpur', '21.08688009999999', '79.06355859999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('37', 'NDMC', 'Yashwant Place, Chanakyapuri, New Delhi- 110021', 'Electric Vehicle Charger, Yashwant Place, Chanakyapuri, New Delhi- 110021', '28.58530560000000', '77.19100000000000', 'DC-001', '15 kW', 'Self Service'),
('38', 'NDMC', 'Outside Bharat Sanchar Bhawan, Ashoke Road, Janpath, New Delhi- 110001', 'Electric Vehicle Charger, Outside Bharat Sanchar Bhawan, Ashoke Road, Janpath, New Delhi- 110001', '28.62222410000000', '77.21424919999999', 'DC-001', '15 kW', 'Self Service'),
('39', 'NDMC', 'Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', 'Electric Vehicle Charger, Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', '28.60235619999999', '77.18661779999999', 'DC-001', '15 kW', 'Self Service'),
('40', 'NDMC', 'Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', 'Electric Vehicle Charger, Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', '28.58528790000000', '77.17709399999999', 'DC-001', '15 kW', 'Self Service'),
('41', 'NDMC', 'Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 'Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', '28.59071090000000', '77.22428440000000', 'DC-001', '15 kW', 'Self Service'),
('42', 'NDMC', 'Akashvani Bhawan, Sansad Marg, New Delhi 110001', 'Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', '28.62451570000000', '77.21355549999999', 'DC-001', '15 kW', 'Self Service'),
('43', 'NDMC', 'Opposite IVORY Mart, F Block, Inner Circle, Connaught Place, New Delhi 110001', 'Electric Vehicle Charger, Opposite IVORY Mart, F Block, Inner Circle, Connaught Place, New Delhi 110001', '28.55036090000000', '77.21391610000000', 'DC-001', '15 kW', 'Self Service'),
('44', 'NDMC', 'Near ICICI Bank/Metro Gate No. 7 & 8, Block A, Inner Circle, Connaught Place, New Delhi 110001', 'Electric Vehicle Charger, Near ICICI Bank/Metro Gate No. 7 & 8, Block A, Inner Circle, Connaught Place, New Delhi 110001', '28.63272299999999', '77.21784700000000', 'DC-001', '15 kW', 'Self Service'),
('45', 'NDMC', 'Gopal Das Building, Barakhamba Road, Connaught Lane, Barakhamba, New Delhi110001', 'Electric Vehicle Charger, Gopal Das Building, Barakhamba Road, Connaught Lane, Barakhamba, New Delhi110001', '28.63258430000000', '77.22297869999999', 'DC-001', '15 kW', 'Self Service'),
('46', 'NDMC', 'Outside UCO Bank, Block H, RR3, Connaught Place, New Delhi', 'Electric Vehicle Charger, Outside UCO Bank, Block H, RR3, Connaught Place, New Delhi', '28.63511280000000', '77.21842049999999', 'DC-001', '15 kW', 'Self Service'),
('47', 'NDMC', 'Press Club of India, 1, Raisina Road, Windsor Place, New Delhi110001', 'Electric Vehicle Charger, Press Club of India, 1, Raisina Road, Windsor Place, New Delhi110001', '28.61719330000000', '77.21364520000000', 'DC-001', '15 kW', 'Self Service'),
('48', 'NDMC', 'Post Office, Laxmi Bai Nagar, Safderjung Flyover, New Delhi', 'Electric Vehicle Charger, Post Office, Laxmi Bai Nagar, Safderjung Flyover, New Delhi', '28.57845199999999', '77.20923100000000', 'DC-001', '15 kW', 'Self Service'),
('49', 'Noida Authority', 'Electronic City , Metro Station parking gate no.2, Noida - 201301', 'Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', '28.62794100000000', '77.37493000000000', 'DC-001', '15 kW', 'Self Service'),
('50', 'Noida Authority', 'H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 'Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', '28.62658169999999', '77.37521610000000', 'DC-001', '15 kW', 'Self Service'),
('51', 'NDMC', 'Side of Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 'Electric Vehicle Charger, Side of Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', '28.60244300000000', '77.21788900000000', 'DC-001', '15 kW', 'Self Service'),
('52', 'NDMC', 'Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 'Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', '28.59071090000000', '77.22428440000000', 'DC-001', '15 kW', 'Self Service'),
('53', 'NDMC', 'Talkatora Garden, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', '28.62483580000000', '77.19524350000000', 'DC-001', '15 kW', 'Self Service'),
('54', 'NDMC', 'Talkatora Garden, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', '28.62483580000000', '77.19524350000000', 'DC-001', '15 kW', 'Self Service'),
('55', 'NDMC', 'Talkatora Stadium, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', '28.62529430000000', '77.19523440000000', 'DC-001', '15 kW', 'Self Service'),
('56', 'NDMC', 'Indian Coffee House, Connaught Place, New Delhi', 'Electric Vehicle Charger, Indian Coffee House, Connaught Place, New Delhi', '28.63080959999999', '77.21615830000000', 'DC-001', '15 kW', 'Self Service'),
('57', 'NDMC', 'Talkatora Garden, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', '28.62483580000000', '77.19524350000000', 'DC-001', '15 kW', 'Self Service'),
('58', 'NDMC', 'Talkatora Stadium, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', '28.62529430000000', '77.19523440000000', 'DC-001', '15 kW', 'Self Service'),
('59', 'CMRL', 'High Court Metro Station, Chennai', 'Electric Vehicle Charger, High Court Metro Station, Chennai', '13.03184850000000', '80.24197300000000', 'DC-001', '15 kW', 'Self Service'),
('60', 'CMRL', 'High Court Metro Station, Chennai', 'Electric Vehicle Charger, High Court Metro Station, Chennai', '13.03184850000000', '80.24197300000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('61', 'CMRL', 'Koyam Bedu  Metro Station, Chennai', 'Electric Vehicle Charger, Koyam Bedu  Metro Station, Chennai', '13.10928090000000', '80.15234619999999', 'DC-001', '15 kW', 'Self Service'),
('62', 'CMRL', 'Koyam Bedu  Metro Station, Chennai', 'Electric Vehicle Charger, Koyam Bedu  Metro Station, Chennai', '13.10928090000000', '80.15234619999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('63', 'CMRL', 'Anna Nagar East Metro Station, Chennai (CMRL)', 'Electric Vehicle Charger, Anna Nagar East Metro Station, Chennai (CMRL)', '12.99592220000000', '80.21028669999999', 'DC-001', '15 kW', 'Self Service'),
('64', 'CMRL', 'Anna Nagar East Metro Station, Chennai (CMRL)', 'Electric Vehicle Charger, Anna Nagar East Metro Station, Chennai (CMRL)', '12.99592220000000', '80.21028669999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('65', 'NDMC', 'NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 'Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', '28.57723180000000', '77.19723849999999', 'DC-001', '15 kW', 'Self Service'),
('66', 'NDMC', 'Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 'Electric Vehicle Charger, Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', '28.60244300000000', '77.21788900000000', 'DC-001', '15 kW', 'Self Service'),
('67', 'NDMC', 'Janpath Guest House, Connaught Place, New Delhi', 'Electric Vehicle Charger, Janpath Guest House, Connaught Place, New Delhi', '28.62377899999999', '77.21896300000000', 'DC-001', '15 kW', 'Self Service'),
('68', 'SDMC', 'EESL N-Block GK-1, SDMC parking New Delhi', 'Electric Vehicle Charger, EESL N-Block GK-1, SDMC parking New Delhi', '28.55684129999999', '77.23404890000000', 'DC-001', '15 kW', 'Self Service'),
('69', 'SDMC', 'SDMC Parking, B6, Safderjung Enclave', 'Electric Vehicle Charger, SDMC Parking, B6, Safderjung Enclave', '28.55036090000000', '77.21391610000000', 'DC-001', '15 kW', 'Self Service'),
('70', 'SDMC', 'SDMC Parking, SDA Market, Hauz Khas, New Delhi, Delhi 110016', 'Electric Vehicle Charger, SDMC Parking, SDA Market, Hauz Khas, New Delhi, Delhi 110016', '28.54639089999999', '77.19635449999999', 'DC-001', '15 kW', 'Self Service'),
('71', 'SDMC', 'SDMC Parking, Aurbindo Market Place,Hauz Khas, New Delhi, Delhi 110016', 'Electric Vehicle Charger, SDMC Parking, Aurbindo Market Place,Hauz Khas, New Delhi, Delhi 110016', '28.54539439999999', '77.19082249999999', 'DC-001', '15 kW', 'Self Service'),
('72', 'SDMC', 'SDMC Parking, R Block, GK-1, DELHI-110016', 'Electric Vehicle Charger, SDMC Parking, R Block, GK-1, DELHI-110016', '28.55001360000000', '77.24487039999999', 'DC-001', '15 kW', 'Self Service'),
('73', 'NKDA', 'Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', 'Electric Vehicle Charger, Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', '22.57993900000000', '88.45318070000000', 'DC-001', '15 kW', 'Self Service'),
('74', 'NKDA', 'Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', 'Electric Vehicle Charger, Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', '22.57993900000000', '88.45318070000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('75', 'NKDA', 'NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', 'Electric Vehicle Charger, NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', '22.58530300000000', '88.45690559999999', 'DC-001', '15 kW', 'Self Service'),
('76', 'NKDA', 'NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', 'Electric Vehicle Charger, NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', '22.58530300000000', '88.45690559999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('77', 'NKDA', 'Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', 'Electric Vehicle Charger, Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', '22.60313400000000', '88.46714280000000', 'DC-001', '15 kW', 'Self Service'),
('78', 'NKDA', 'Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', 'Electric Vehicle Charger, Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', '22.60313400000000', '88.46714280000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('79', 'NKDA', 'Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', 'Electric Vehicle Charger, Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', '22.58335620000000', '88.45934180000000', 'DC-001', '15 kW', 'Self Service'),
('80', 'NKDA', 'Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', 'Electric Vehicle Charger, Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', '22.58335620000000', '88.45934180000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('81', 'NKDA', 'NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', 'Electric Vehicle Charger, NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', '22.57709710000000', '88.47963190000000', 'DC-001', '15 kW', 'Self Service'),
('82', 'NKDA', 'NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', 'Electric Vehicle Charger, NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', '22.57709710000000', '88.47963190000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('83', 'NKDA', 'NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', 'Electric Vehicle Charger, NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', '22.57965340000000', '88.45984300000000', 'DC-001', '15 kW', 'Self Service'),
('84', 'NKDA', 'NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', 'Electric Vehicle Charger, NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', '22.57965340000000', '88.45984300000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('85', 'Noida Authority', 'Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 'Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', '28.57214979999999', '77.33754620000000', 'DC-001', '15 kW', 'Self Service'),
('86', 'Noida Authority', 'Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 'Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', '28.58211950000000', '77.32669909999999', 'DC-001', '15 kW', 'Self Service'),
('87', 'Noida Authority', 'Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', 'Electric Vehicle Charger, Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', '28.62658169999999', '77.37521610000000', 'DC-001', '15 kW', 'Self Service'),
('88', 'Noida Authority', 'road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 'Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', '28.54819350000000', '77.32219379999999', 'DC-001', '15 kW', 'Self Service'),
('89', 'Noida Authority', 'Between kirti mann plaza and NMC hospital Sector 30 Noida', 'Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', '28.57279769999999', '77.34053099999999', 'DC-001', '15 kW', 'Self Service'),
('90', 'Noida Authority', 'Sector 142, Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 142, Noida, Uttar Pradesh, 201305', '28.62658169999999', '77.37521610000000', 'DC-001', '15 kW', 'Self Service'),
('91', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('92', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('93', 'NDMC', 'Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 'Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', '28.59071090000000', '77.22428440000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('94', 'NDMC', 'Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 'Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', '28.59071090000000', '77.22428440000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('95', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('96', 'NDMC', 'Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 'Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', '28.61778299999999', '77.21299589999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('97', 'NDMC', 'NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 'Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', '28.57723180000000', '77.19723849999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('98', 'Noida Authority', 'Op. C&R Textiles Ltd, sector-60, Noida', 'Electric Vehicle Charger, Op. C&R Textiles Ltd, sector-60, Noida', '28.60214860000000', '77.36272490000000', 'DC-001', '15 kW', 'Self Service'),
('99', 'Noida Authority', 'Near Tata Advance Systems, sector- 59, Noida', 'Electric Vehicle Charger, Near Tata Advance Systems, sector- 59, Noida', '28.60756269999999', '77.36833190000000', 'DC-001', '15 kW', 'Self Service'),
('100', 'Noida Authority', 'In front of Marie gold exports ltd, A block, sector-64, Noida', 'Electric Vehicle Charger, In front of Marie gold exports ltd, A block, sector-64, Noida', '28.61189200000000', '77.37622609999999', 'DC-001', '15 kW', 'Self Service'),
('101', 'Noida Authority', 'In front of Hexagon pvt ltd, sector-65, Noida', 'Electric Vehicle Charger, In front of Hexagon pvt ltd, sector-65, Noida', '28.61276330000000', '77.38713190000000', 'DC-001', '15 kW', 'Self Service'),
('102', 'SDMC', 'Charger 4,c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 'Electric Vehicle Charger, Charger 4,c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', '28.57305189999999', '77.17353389999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('103', 'SDMC', 'Charger 5, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 'Electric Vehicle Charger, Charger 5, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', '28.57305189999999', '77.17353389999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('104', 'SDMC', 'EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Gold\'s Gym', 'Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Gold\'s Gym', '28.55766210000000', '77.15768430000000', 'DC-001', '15 kW', 'Self Service'),
('105', 'SDMC', 'EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', 'Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', '28.55766210000000', '77.15768430000000', 'DC-001', '15 kW', 'Self Service'),
('106', 'SDMC', 'EV Parking Slot 3-5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', 'Electric Vehicle Charger, EV Parking Slot 3-5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', '28.55339970000000', '77.19416540000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('107', 'SDMC', 'EV Parking Slot 5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', 'Electric Vehicle Charger, EV Parking Slot 5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', '28.55339970000000', '77.19416540000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('108', 'SDMC', 'J-Block, Malviya Nagar, parking New Delhi', 'Electric Vehicle Charger, J-Block, Malviya Nagar, parking New Delhi', '28.58368630000000', '77.08019980000000', 'DC-001', '15 kW', 'Self Service'),
('109', 'SDMC', 'J-Block, Malviya Nagar, parking New Delhi', 'Electric Vehicle Charger, J-Block, Malviya Nagar, parking New Delhi', '28.58368630000000', '77.08019980000000', 'DC-001', '15 kW', 'Self Service'),
('110', 'SDMC', 'Veer Savarkar Marg, Lajpat Nagar, SDMC parking New Delhi', 'Electric Vehicle Charger, Veer Savarkar Marg, Lajpat Nagar, SDMC parking New Delhi', '28.57188599999999', '77.24238400000000', 'DC-001', '15 kW', 'Self Service'),
('111', 'SDMC', 'Feroze Gandhi Road, Lajpat Nagar, SDMC parking New Delhi', 'Electric Vehicle Charger, Feroze Gandhi Road, Lajpat Nagar, SDMC parking New Delhi', '28.64289150000000', '77.21908940000000', 'DC-001', '15 kW', 'Self Service'),
('112', 'SDMC', 'Meharchand Market, SDMC parking, New Delhi', 'Electric Vehicle Charger, Meharchand Market, SDMC parking, New Delhi', '28.58601810000000', '77.22794150000000', 'DC-001', '15 kW', 'Self Service'),
('113', 'SDMC', 'EESL H-Block, Sarita Vihar, SDMC parking New Delhi', 'Electric Vehicle Charger, EESL H-Block, Sarita Vihar, SDMC parking New Delhi', '28.53496600000000', '77.29139299999999', 'DC-001', '15 kW', 'Self Service'),
('114', 'SDMC', 'EESL, Plot 81-85, Nehru Place, SDMC Parking, New Delhi', 'Electric Vehicle Charger, EESL, Plot 81-85, Nehru Place, SDMC Parking, New Delhi', '28.54887139999999', '77.25410619999999', 'DC-001', '15 kW', 'Self Service'),
('115', 'NRANVP', 'NRANVP, PARYAVAS BHAWAN, NORTH BLOCK, SECTOR 19, NAYA RAYPUR MARG, ATAL NAGAR RAIPUR', 'Electric Vehicle Charger, NRANVP, PARYAVAS BHAWAN, NORTH BLOCK, SECTOR 19, NAYA RAYPUR MARG, ATAL NAGAR RAIPUR', '21.16422650000000', '81.78865879999999', 'DC-001', '15 kW', 'Self Service'),
('116', 'NRANVP', 'CBDNAVA RAIPUR MARG, SECTOR 21,KAYABANDHA, ATAL NAGAR RAIPUR DIST. 492101 Chhatisgarh', 'Electric Vehicle Charger, CBDNAVA RAIPUR MARG, SECTOR 21,KAYABANDHA, ATAL NAGAR RAIPUR DIST. 492101 Chhatisgarh', '21.17005820000000', '81.77144690000000', 'DC-001', '15 kW', 'Self Service'),
('117', 'Noida Authority', 'Diagonally op. Sasta Sundar Hospital, sector- 58, Noida', 'Electric Vehicle Charger, Diagonally op. Sasta Sundar Hospital, sector- 58, Noida', '28.60675110000000', '77.35971940000000', 'DC-001', '15 kW', 'Self Service'),
('118', 'Noida Authority', 'In front of affinity salon, sector- 51, Noida', 'Electric Vehicle Charger, In front of affinity salon, sector- 51, Noida', '28.57731430000000', '77.36095380000000', 'DC-001', '15 kW', 'Self Service'),
('119', 'Noida Authority', 'Side parking of HCL building, sector-8, Noida', 'Electric Vehicle Charger, Side parking of HCL building, sector-8, Noida', '28.59516430000000', '77.32813500000000', 'DC-001', '15 kW', 'Self Service'),
('120', 'Noida Authority', 'Opp C-101 Jain air travels, sector-2, Noida', 'Electric Vehicle Charger, Opp C-101 Jain air travels, sector-2, Noida', '28.58468750000000', '77.31592960000000', 'DC-001', '15 kW', 'Self Service'),
('121', 'Noida Authority', 'H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 'Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', '28.62658169999999', '77.37521610000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('122', 'Noida Authority', 'H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 'Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', '28.62658169999999', '77.37521610000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('123', 'Noida Authority', 'Electronic City , Metro Station parking gate no.2, Noida - 201301', 'Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', '28.62794100000000', '77.37493000000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('124', 'Noida Authority', 'Electronic City , Metro Station parking gate no.2, Noida - 201301', 'Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', '28.62794100000000', '77.37493000000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('125', 'Noida Authority', 'Between kirti mann plaza and NMC hospital Sector 30 Noida', 'Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', '28.57279769999999', '77.34053099999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('126', 'Noida Authority', 'Between kirti mann plaza and NMC hospital Sector 30 Noida', 'Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', '28.57279769999999', '77.34053099999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('127', 'Noida Authority', 'Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 'Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', '28.58211950000000', '77.32669909999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('128', 'Noida Authority', 'Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 'Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', '28.58211950000000', '77.32669909999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('129', 'Noida Authority', 'road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 'Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', '28.54819350000000', '77.32219379999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('130', 'Noida Authority', 'road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 'Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', '28.54819350000000', '77.32219379999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('131', 'Noida Authority', 'Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', '28.49995330000000', '77.41425409999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('132', 'Noida Authority', 'Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', '28.49995330000000', '77.41425409999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('133', 'Noida Authority', 'Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', '28.59710000000000', '77.36490000000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('134', 'Noida Authority', 'Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', '28.59710000000000', '77.36490000000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('135', 'Noida Authority', 'Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', '28.57199719999999', '77.36936780000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('136', 'Noida Authority', 'Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', '28.52909830000000', '77.40338060000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('137', 'Noida Authority', 'Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 'Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', '28.57214979999999', '77.33754620000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('138', 'Noida Authority', 'Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 'Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', '28.57214979999999', '77.33754620000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('139', 'Noida Authority', 'Between kirti mann plaza and NMC hospital Sector 30 Noida', 'Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', '28.57279769999999', '77.34053099999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('140', 'Noida Authority', 'Between kirti mann plaza and NMC hospital Sector 30 Noida', 'Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', '28.57279769999999', '77.34053099999999', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('141', 'Noida Authority', 'Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', '28.57199719999999', '77.36936780000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('142', 'Noida Authority', 'Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', '28.57199719999999', '77.36936780000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('143', 'Noida Authority', 'Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', 'Electric Vehicle Charger, Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', '28.62658169999999', '77.37521610000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('144', 'SDMC', 'c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', 'Electric Vehicle Charger, c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', '28.54717020000000', '77.20027450000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('145', 'NDMC', 'NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 'Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', '28.57723180000000', '77.19723849999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('146', 'NDMC', 'Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 'Electric Vehicle Charger, Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', '28.60244300000000', '77.21788900000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('147', 'Noida Authority', 'Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', '28.59710000000000', '77.36490000000000', 'DC-001', '15 kW', 'Self Service'),
('148', 'Noida Authority', 'Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', 'Electric Vehicle Charger,  Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', '28.52909830000000', '77.40338060000000', 'DC-001', '15 kW', 'Self Service'),
('149', 'CMRL', 'Chennai Egmore metro, Chennai (CMRL)', 'Electric Vehicle Charger,  Chennai Egmore metro, Chennai (CMRL)', '13.07305180000000', '80.19380630000000', 'DC-001', '15 kW', 'Self Service'),
('150', 'CMRL', 'Chennai Metro Alandur station Car parking area, Alandur, Chennai 600016', 'Electric Vehicle Charger, Chennai Metro Alandur station Car parking area, Alandur, Chennai 600016', '13.00421550000000', '80.20154820000000', 'DC-001', '15 kW', 'Self Service'),
('151', 'SDMC', 'Charger 6, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 'Electric Vehicle Charger, Charger 6, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', '28.57305189999999', '77.17353389999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('152', 'SDMC', 'EV Parking Slot 3-5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', 'Electric Vehicle Charger, EV Parking Slot 3-5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', '28.55664000000000', '77.23213859999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('153', 'SDMC', 'EV Parking Slot 5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', 'Electric Vehicle Charger, EV Parking Slot 5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', '28.55664000000000', '77.23213859999999', 'DC-001', '15 kW', 'Self Service'),
('154', 'SDMC', 'EV Parking Slot 2, SDMC Parking, Hauz Khas Village, Hauz Khas - 1 , 110016', 'Electric Vehicle Charger, EV Parking Slot 2, SDMC Parking, Hauz Khas Village, Hauz Khas - 1 , 110016', '28.57305189999999', '77.17353389999999', 'DC-001', '15 kW', 'Self Service'),
('155', 'SDMC', 'Charger 2, SDMC Parking, Hauz Khas Village, New Delhi', 'Electric Vehicle Charger, Charger 2, SDMC Parking, Hauz Khas Village, New Delhi', '28.55369299999999', '77.19925000000000', 'DC-001', '15 kW', 'Self Service'),
('156', 'NDMC', 'Back of Hotel Claridges Near NDMC Power Sub Station, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 'Electric Vehicle Charger, Back of Hotel Claridges Near NDMC Power Sub Station, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', '28.60244300000000', '77.21788900000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('157', 'Noida Authority', 'Charger 1, Sector 2: State Bank of lndia, Noida - UP', 'Electric Vehicle Charger, Charger 1, Sector 2: State Bank of lndia, Noida - UP', '28.58750360000000', '77.31269000000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('158', 'Noida Authority', 'Charger 2, Sector 2: State Bank of lndia, Noida - UP', 'Electric Vehicle Charger, Charger 2, Sector 2: State Bank of lndia, Noida - UP', '28.53551609999999', '77.39102649999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('159', 'Noida Authority', 'Charger 1, Sector 3: G-1 to G-50, Noida - UP', 'Electric Vehicle Charger, Charger 1, Sector 3: G-1 to G-50, Noida - UP', '28.53551609999999', '77.39102649999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('160', 'Noida Authority', 'Charger 2, Sector 3: G-1 to G-50, Noida - UP', 'Electric Vehicle Charger, Charger 2, Sector 3: G-1 to G-50, Noida - UP', '28.53551609999999', '77.39102649999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('161', 'Noida Authority', 'Charger 1, Sector 3: F-7 to F-8, Noida UP', 'Electric Vehicle Charger, Charger 1, Sector 3: F-7 to F-8, Noida UP', '28.53551609999999', '77.39102649999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('162', 'Noida Authority', 'Charger 2, Sector 3: F-7 to F-8, Noida UP', 'Electric Vehicle Charger, Charger 2, Sector 3: F-7 to F-8, Noida UP', '28.53551609999999', '77.39102649999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('163', 'Noida Authority', 'Charger 1, Sector 6: Reception Noida Authority, Noida, UP', 'Electric Vehicle Charger, Charger 1, Sector 6: Reception Noida Authority, Noida, UP', '28.59255059999999', '77.31837459999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('164', 'Noida Authority', 'Charger 2, Sector 6: Reception Noida Authority, Noida, UP', 'Electric Vehicle Charger, Charger 2, Sector 6: Reception Noida Authority, Noida, UP', '28.59255059999999', '77.31837459999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('165', 'Noida Authority', 'Sector 25A, Spice Mall plot area, Noida Authority, Noida, UP', 'Electric Vehicle Charger, Sector 25A, Spice Mall plot area, Noida Authority, Noida, UP', '28.58621409999999', '77.34110259999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('166', 'Noida Authority', 'Charger 2, Sec-25A: Spice Mall plot area', 'Electric Vehicle Charger, Charger 2, Sec-25A: Spice Mall plot area', '28.58621409999999', '77.34110259999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('167', 'Noida Authority', 'Charger 1, Sector 16: Parking near metro station, sector-16, Noida, UP', 'Electric Vehicle Charger, Charger 1, Sector 16: Parking near metro station, sector-16, Noida, UP', '28.57737990000000', '77.31449360000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('168', 'Noida Authority', 'Charger 2, Sector 16: Parking near metro station, sector-16, Noida, UP', 'Electric Vehicle Charger, Charger 2, Sector 16: Parking near metro station, sector-16, Noida, UP', '28.57737990000000', '77.31449360000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('169', 'ANERT', 'DTPC office, thiruvananthapuram,Kerala- 605007', 'Electric Vehicle Charger, DTPC office, thiruvananthapuram,Kerala- 605007', '8.508338800000001', '76.94723469999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('170', 'NRANVP', 'KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 'Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', '9.976920900000000', '76.27778120000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('171', 'NRANVP', 'State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 'Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', '8.491622000000000', '76.95624689999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('172', 'CMRL', 'Tirumangalam Metro station, Chennai', 'Electric Vehicle Charger, Tirumangalam Metro station, Chennai', '12.99184449999999', '80.14180129999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('173', 'CMRL', 'Tirumangalam Metro station, Chennai', 'Electric Vehicle Charger, Tirumangalam Metro station, Chennai', '12.99184449999999', '80.14180129999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('174', 'ANERT', 'KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 'Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', '9.976920900000000', '76.27778120000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('175', 'NDMC', 'Akashvani Bhawan, Sansad Marg, New Delhi 110001', 'Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', '28.62451570000000', '77.21355549999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('176', 'NDMC', 'Akashvani Bhawan, Sansad Marg, New Delhi 110001', 'Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', '28.62451570000000', '77.21355549999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('177', 'NDMC', 'FICCI, FICCI Chowk, Mandi House, New Delhi', 'Electric Vehicle Charger, FICCI, FICCI Chowk, Mandi House, New Delhi', '28.62686910000000', '77.23185300000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('178', 'NDMC', 'Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 'Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', '28.63044820000000', '77.22555780000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('179', 'NDMC', 'Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 'Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', '28.63044820000000', '77.22555780000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('180', 'NDMC', 'Talkatora Stadium, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', '28.62529430000000', '77.19523440000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('181', 'NDMC', 'Talkatora Garden, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', '28.62483580000000', '77.19524350000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('182', 'SDMC', 'c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', 'Electric Vehicle Charger, c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', '28.54717020000000', '77.20027450000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('183', 'SDMC', 'PVR Priya Vasant  Vihar', 'Electric Vehicle Charger, PVR Priya Vasant  Vihar', '28.49748250000000', '77.08297770000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('184', 'SDMC', 'Meharchand Market, New Delhi', 'Electric Vehicle Charger, Meharchand Market, New Delhi', '28.58811109999999', '77.21755559999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('185', 'SDMC', 'Meharchand Market, New Delhi', 'Electric Vehicle Charger, Meharchand Market, New Delhi', '28.58811109999999', '77.21755559999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('186', 'SDMC', 'RK Puram Sector 12 Market', 'Electric Vehicle Charger, RK Puram Sector 12 Market', '28.57430319999999', '77.17655480000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('187', 'SDMC', 'RK Puram Sector 12 Market', 'Electric Vehicle Charger, RK Puram Sector 12 Market', '28.57430319999999', '77.17655480000000', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service');
INSERT INTO `chargingstationsdata` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`) VALUES
('188', 'CMRL', 'Saidapet Metro station', 'Electric Vehicle Charger, Saidapet Metro station', '13.02371969999999', '80.22820919999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('189', 'CMRL', 'Saidapet Metro station', 'Electric Vehicle Charger, Saidapet Metro station', '13.02371969999999', '80.22820919999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('190', 'CMRL', 'Tirumangalam Metro station, Chennai', 'Electric Vehicle Charger, Tirumangalam Metro station, Chennai', '12.99184449999999', '80.14180129999999', 'DC-001', '15 kW', 'Self Service'),
('191', 'CMRL', 'Saidapet Metro station', 'Electric Vehicle Charger, Saidapet Metro station', '13.02371969999999', '80.22820919999999', 'DC-001', '15 kW', 'Self Service'),
('192', 'NDMC', 'DLF Building, Sansad Marg, Janpath, Connaught Place, New Delhi 110001.', 'Electric Vehicle Charger, DLF Building, Sansad Marg, Janpath, Connaught Place, New Delhi 110001.', '28.62123850000000', '77.21830479999999', 'DC-001', '15 kW', 'Self Service'),
('193', 'NDMC', 'Talkatora Stadium, President\'s Estate, New Delhi110004', 'Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', '28.62529430000000', '77.19523440000000', 'DC-001', '15 kW', 'Self Service'),
('194', 'NKDA', 'ECO Park,Gate No1,West Bengal:700156', 'Electric Vehicle Charger, ECO Park,Gate No1,West Bengal:700156', '22.58335620000000', '88.45934180000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('195', 'NKDA', 'Shapoorji complex,New Town,kolkata,West Bengal:700135', 'Electric Vehicle Charger, Shapoorji complex,New Town,kolkata,West Bengal:700135', '22.56917950000000', '88.50906430000000', 'AC-001', '10(3.3 kW each)', 'Self Service'),
('196', 'NKDA', 'ECO Park,Gate No1,West Bengal:700156', 'Electric Vehicle Charger, ECO Park,Gate No1,West Bengal:700156', '22.58335620000000', '88.45934180000000', 'DC-001', '15 kW', 'Self Service'),
('197', 'NKDA', 'Shapoorji complex,New Town,kolkata,West Bengal:700135', 'Electric Vehicle Charger, Shapoorji complex,New Town,kolkata,West Bengal:700135', '22.56917950000000', '88.50906430000000', 'DC-001', '15 kW', 'Self Service'),
('198', 'ANERT', 'State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 'Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', '8.491622000000000', '76.95624689999999', 'CCS/ChADEMO/ Type 2 AC', '142kW', 'Self Service'),
('199', 'ANERT', 'Shanghumukham beach, thiruvananthapuram,Kerala- 605007', 'Electric Vehicle Charger, Shanghumukham beach, thiruvananthapuram,Kerala- 605007', '8.481051500000000', '76.91262179999999', 'DC-001', '15 kW', 'Self Service'),
('200', 'ANERT', 'KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 'Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', '9.976920900000000', '76.27778120000000', 'DC-001', '15 kW', 'Self Service'),
('201', 'ANERT', 'State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 'Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', '8.491622000000000', '76.95624689999999', 'DC-001', '15 kW', 'Self Service'),
('202', 'SDMC', 'EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', 'Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', '28.55766210000000', '77.15768430000000', 'DC-001', '15 kW', 'Self Service');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `text`) VALUES
('', '', ''),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'jabckjabck'),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'kbnbbbbbnnln'),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'jkbiuubbh'),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'Thank you so much for such a wonderful app'),
('Tushar', 'tushardeshmuk578@gmail.com', 'Thank you'),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'thanks'),
('Tushar', 'dtushar22comp@student.mes.ac.in', 'thanks');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `username`, `password`) VALUES
('', '', '', ''),
('Tushar', 'tushardeshmukh578@gmail.com', 'TUSHAR090', 'Tushar@090');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sr_no` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr_no`, `fullName`, `gender`, `email`, `phoneno`, `username`, `password`) VALUES
(1, 'xyz', 'male', 'xyz@gmail.com', 1122334455, 'addy12', '@1234'),
(2, 'Adnan Hajwani', 'addy12', 'adnan@gmail.com', 0, '@12345', 'male'),
(3, 'Adnan Hajwani', 'addy12', 'adnan@gmail.com', 1122334455, '@12345', 'male'),
(4, 'Soham Chavan', 'male', 'soham@gmail.com', 11223344, 'sommy', '@soham1'),
(5, 'abc123', 'male', 'abc@gmail.com', 11223344, 'abc', 'asd'),
(6, 'abc123', '', '', 0, 'abc', ''),
(7, 'abc123', '', '', 0, 'abc', ''),
(8, 'abc123', '', '', 0, 'abc', ''),
(9, 'abc123', 'male', 'abc@gmail.com', 11223344, 'abc', '12345'),
(10, '', '', '', 0, '', ''),
(11, '', '', '', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
