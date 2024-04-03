-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 01:46 PM
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
  `name` varchar(167) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chargingstationsdata`
--

INSERT INTO `chargingstationsdata` (`name`, `latitude`, `longitude`) VALUES
('aux addres', 0, 0),
('Electric Vehicle Charger, Prithviraj Market, Rabindra Nagar, New Delhi- 110003', 28.6007, 77.2262),
('Electric Vehicle Charger, Prithviraj Market, Rabindra Nagar, New Delhi- 110003', 28.6007, 77.2262),
('Electric Vehicle Charger, Outside RWA Park, Jor Bagh Market, Jor Bagh Colony Road, New Delhi- 110003', 28.5883, 77.2177),
('Electric Vehicle Charger, Opposite Dory Pharmacy, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', 28.5827, 77.2201),
('Electric Vehicle Charger, Opposite Goel Opticals, Khanna Market, Aliganj, Lodhi Colony, New Delhi- 110003', 28.5845, 77.2203),
('Electric Vehicle Charger, Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', 28.6024, 77.1866),
('Electric Vehicle Charger, Outside Westend Vedi Tailors, Bock M, Middle Circle, Connaught Place, New Delhi- 110001', 28.6337, 77.2181),
('Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 28.6304, 77.2256),
('Electric Vehicle Charger, Near Bikanervala, Yashwant Place, Chanakyapuri, New Delhi- 110021', 28.5839, 77.1634),
('Electric Vehicle Charger, Khan Market, Rabindra Nagar, New Delhi- 110003', 28.6003, 77.2269),
('Electric Vehicle Charger, Outside Devinder Collections, Shankar Market, Connaught Place, New Delhi- 110001', 28.6337, 77.2235),
('Electric Vehicle Charger, Opposite HDFC Bank, M- Block, , Connaught Place, New Delhi- 110001', 28.6326, 77.223),
('Electric Vehicle Charger, Outside Oriental Bank, Radial Road No. 7, Block M, Connaught Place, New Delhi- 110001', 28.6317, 77.2221),
('Electric Vehicle Charger, Outside Jain Bhawan, 12 Shaheed Bhagat Singh Marg, Gole Market, New Delhi- 110001', 28.6338, 77.2074),
('Electric Vehicle Charger, NDMC Parking,  Near Ferns n Petals, Near BPCL Petrol Pump,  C Block RR5, Connaught Place,  New Delhi- 110001', 28.6282, 77.2155),
('Electric Vehicle Charger, NDMC Parking,  Near Croma, D Block RR5,  Opposite BPCL Petrol Pump,  Connaught Place, New Delhi- 110001', 28.6282, 77.2155),
('Electric Vehicle Charger, Next to PVR Plaza, H Block RR4, Connaught Place, New Delhi- 110001', 28.635, 77.2196),
('Electric Vehicle Charger, Opposite South Indian Bank, Block E, RR6, Middle Circle, Connaught Place, New Delhi- 110001', 28.6339, 77.2215),
('Electric Vehicle Charger, Opposite HP Petrol Pump, Block E, Middle Circle, Connaught Place, New Delhi- 110001', 28.6319, 77.2216),
('Electric Vehicle Charger, Outside Standard Chartered Bank, Sardar Patel Bhawan, Sansad Marg, New Delhi- 110001', 28.6243, 77.2126),
('Electric Vehicle Charger, Sarojini Nagar Market, Sarojini Nagar, New Delhi- 110023', 28.5772, 77.1972),
('Electric Vehicle Charger, Outside Iqbal Bros., G1, Block G, Connaught Place, New Delhi- 110001', 28.6338, 77.2175),
('Electric Vehicle Charger, Palika Maternity Hospital, Block 11, Lodhi Colony, Near Khanna Market, New Delhi 110003', 28.5838, 77.2218),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, FICCI, FICCI Chowk, Mandi House, Todermal Road Area, Mandi House, New Delhi110001', 28.6269, 77.2318),
('Electric Vehicle Charger, Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', 28.5853, 77.1771),
('Electric Vehicle Charger, PSOI Club, Chanakyapuri, New Delhi 110021', 28.5866, 77.1936),
('Electric Vehicle Charger, PSOI Club, Chanakyapuri, New Delhi 110021', 28.5866, 77.1936),
('Electric Vehicle Charger, Near Snow White, Block D, Inner Circle, Connaught Place, New Delhi 110001', 28.6336, 77.2206),
('Electric Vehicle Charger, Outside Van Heusen Showroom, Block C, Inner Circle, Connaught Place, New Delhi 110001', 28.633, 77.218),
('Electric Vehicle Charger, 16-B, Woodland Showroom, Block B, Connaught Place, New Delhi 110001', 28.6341, 77.2188),
('Electric Vehicle Charger, Nandanam Metro station Chennai  (CMRL)', 12.9959, 80.2103),
('Electric Vehicle Charger, Nandanam Metro station Chennai  (CMRL)', 12.9959, 80.2103),
('Electric Vehicle Charger, Nagpur Airport Metro Station, Nagpur', 21.0869, 79.0636),
('Electric Vehicle Charger, Nagpur Airport Metro Station, Nagpur', 21.0869, 79.0636),
('Electric Vehicle Charger, Yashwant Place, Chanakyapuri, New Delhi- 110021', 28.5853, 77.191),
('Electric Vehicle Charger, Outside Bharat Sanchar Bhawan, Ashoke Road, Janpath, New Delhi- 110001', 28.6222, 77.2142),
('Electric Vehicle Charger, Dharma Marg, Block Y, Diplomatic Enclave, Malcha Market, New Delhi- 110021', 28.6024, 77.1866),
('Electric Vehicle Charger, Charak Palika Hospital, C7 Lane, Moti Bagh 1, Blok F, New Moti Bagh, New Delhi 110021', 28.5853, 77.1771),
('Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 28.5907, 77.2243),
('Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', 28.6245, 77.2136),
('Electric Vehicle Charger, Opposite IVORY Mart, F Block, Inner Circle, Connaught Place, New Delhi 110001', 28.5504, 77.2139),
('Electric Vehicle Charger, Near ICICI Bank/Metro Gate No. 7 & 8, Block A, Inner Circle, Connaught Place, New Delhi 110001', 28.6327, 77.2178),
('Electric Vehicle Charger, Gopal Das Building, Barakhamba Road, Connaught Lane, Barakhamba, New Delhi110001', 28.6326, 77.223),
('Electric Vehicle Charger, Outside UCO Bank, Block H, RR3, Connaught Place, New Delhi', 28.6351, 77.2184),
('Electric Vehicle Charger, Press Club of India, 1, Raisina Road, Windsor Place, New Delhi110001', 28.6172, 77.2136),
('Electric Vehicle Charger, Post Office, Laxmi Bai Nagar, Safderjung Flyover, New Delhi', 28.5785, 77.2092),
('Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', 28.6279, 77.3749),
('Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 28.6266, 77.3752),
('Electric Vehicle Charger, Side of Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 28.6024, 77.2179),
('Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 28.5907, 77.2243),
('Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', 28.6248, 77.1952),
('Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', 28.6248, 77.1952),
('Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', 28.6253, 77.1952),
('Electric Vehicle Charger, Indian Coffee House, Connaught Place, New Delhi', 28.6308, 77.2162),
('Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', 28.6248, 77.1952),
('Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', 28.6253, 77.1952),
('Electric Vehicle Charger, High Court Metro Station, Chennai', 13.0318, 80.242),
('Electric Vehicle Charger, High Court Metro Station, Chennai', 13.0318, 80.242),
('Electric Vehicle Charger, Koyam Bedu  Metro Station, Chennai', 13.1093, 80.1523),
('Electric Vehicle Charger, Koyam Bedu  Metro Station, Chennai', 13.1093, 80.1523),
('Electric Vehicle Charger, Anna Nagar East Metro Station, Chennai (CMRL)', 12.9959, 80.2103),
('Electric Vehicle Charger, Anna Nagar East Metro Station, Chennai (CMRL)', 12.9959, 80.2103),
('Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 28.5772, 77.1972),
('Electric Vehicle Charger, Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 28.6024, 77.2179),
('Electric Vehicle Charger, Janpath Guest House, Connaught Place, New Delhi', 28.6238, 77.219),
('Electric Vehicle Charger, EESL N-Block GK-1, SDMC parking New Delhi', 28.5568, 77.234),
('Electric Vehicle Charger, SDMC Parking, B6, Safderjung Enclave', 28.5504, 77.2139),
('Electric Vehicle Charger, SDMC Parking, SDA Market, Hauz Khas, New Delhi, Delhi 110016', 28.5464, 77.1964),
('Electric Vehicle Charger, SDMC Parking, Aurbindo Market Place,Hauz Khas, New Delhi, Delhi 110016', 28.5454, 77.1908),
('Electric Vehicle Charger, SDMC Parking, R Block, GK-1, DELHI-110016', 28.55, 77.2449),
('Electric Vehicle Charger, Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', 22.5799, 88.4532),
('Electric Vehicle Charger, Near Tank No 3, Opp Goutams, Street Number 24,Sub Central Business District Action Area 1, Action Area I, Newtown West Bengal 700156', 22.5799, 88.4532),
('Electric Vehicle Charger, NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', 22.5853, 88.4569),
('Electric Vehicle Charger, NKDA New Town Business Club Parking Lot, AE Block(Newtown), Newtown, West Bengal 700059', 22.5853, 88.4569),
('Electric Vehicle Charger, Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', 22.6031, 88.4671),
('Electric Vehicle Charger, Parking Lot, 7 Wonders, Gate No 4, Eco Park Entry Plaza, AA IIB, Newtown, Kolkata, West Bengal 700135', 22.6031, 88.4671),
('Electric Vehicle Charger, Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', 22.5834, 88.4593),
('Electric Vehicle Charger, Parking Lot Golf Club, Gate no. 6, Ecopark, Deshbandhu Nagar, Rekjuani, West Bengal 700156', 22.5834, 88.4593),
('Electric Vehicle Charger, NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', 22.5771, 88.4796),
('Electric Vehicle Charger, NKDA Parking Lot, Beside Tata Memorial Cancer Hospital , 14, MAR(E-W), DH Block(Newtown), Action Area I, Newtown, Kolkata, West Bengal 700160', 22.5771, 88.4796),
('Electric Vehicle Charger, NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', 22.5797, 88.4598),
('Electric Vehicle Charger, NKDA Parking Lot, Beside Axis Mall, CF Block Newtown, Action Area 1C, Newtown, Kolkata, West Bengal 700156', 22.5797, 88.4598),
('Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 28.5721, 77.3375),
('Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 28.5821, 77.3267),
('Electric Vehicle Charger, Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', 28.6266, 77.3752),
('Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 28.5482, 77.3222),
('Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', 28.5728, 77.3405),
('Electric Vehicle Charger,  Sector 142, Noida, Uttar Pradesh, 201305', 28.6266, 77.3752),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 28.5907, 77.2243),
('Electric Vehicle Charger, Gate No. 1, Lodhi Garden, Lodhi Estate, Lodhi Road, New Delhi 110003', 28.5907, 77.2243),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, Outside Chelmsford Club/ Opposite CSIR Building, Rafi Marg, Sansad Marg Area, New Delhi 110001', 28.6178, 77.213),
('Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 28.5772, 77.1972),
('Electric Vehicle Charger, Op. C&R Textiles Ltd, sector-60, Noida', 28.6021, 77.3627),
('Electric Vehicle Charger, Near Tata Advance Systems, sector- 59, Noida', 28.6076, 77.3683),
('Electric Vehicle Charger, In front of Marie gold exports ltd, A block, sector-64, Noida', 28.6119, 77.3762),
('Electric Vehicle Charger, In front of Hexagon pvt ltd, sector-65, Noida', 28.6128, 77.3871),
('Electric Vehicle Charger, Charger 4,c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 28.5731, 77.1735),
('Electric Vehicle Charger, Charger 5, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 28.5731, 77.1735),
('Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Gold\'s Gym', 28.5577, 77.1577),
('Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', 28.5577, 77.1577),
('Electric Vehicle Charger, EV Parking Slot 3-5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', 28.5534, 77.1942),
('Electric Vehicle Charger, EV Parking Slot 5, SDMC Parking, Hauz Khas Village, Hauz Khas, 110016', 28.5534, 77.1942),
('Electric Vehicle Charger, J-Block, Malviya Nagar, parking New Delhi', 28.5837, 77.0802),
('Electric Vehicle Charger, J-Block, Malviya Nagar, parking New Delhi', 28.5837, 77.0802),
('Electric Vehicle Charger, Veer Savarkar Marg, Lajpat Nagar, SDMC parking New Delhi', 28.5719, 77.2424),
('Electric Vehicle Charger, Feroze Gandhi Road, Lajpat Nagar, SDMC parking New Delhi', 28.6429, 77.2191),
('Electric Vehicle Charger, Meharchand Market, SDMC parking, New Delhi', 28.586, 77.2279),
('Electric Vehicle Charger, EESL H-Block, Sarita Vihar, SDMC parking New Delhi', 28.535, 77.2914),
('Electric Vehicle Charger, EESL, Plot 81-85, Nehru Place, SDMC Parking, New Delhi', 28.5489, 77.2541),
('Electric Vehicle Charger, NRANVP, PARYAVAS BHAWAN, NORTH BLOCK, SECTOR 19, NAYA RAYPUR MARG, ATAL NAGAR RAIPUR', 21.1642, 81.7887),
('Electric Vehicle Charger, CBDNAVA RAIPUR MARG, SECTOR 21,KAYABANDHA, ATAL NAGAR RAIPUR DIST. 492101 Chhatisgarh', 21.1701, 81.7714),
('Electric Vehicle Charger, Diagonally op. Sasta Sundar Hospital, sector- 58, Noida', 28.6068, 77.3597),
('Electric Vehicle Charger, In front of affinity salon, sector- 51, Noida', 28.5773, 77.361),
('Electric Vehicle Charger, Side parking of HCL building, sector-8, Noida', 28.5952, 77.3281),
('Electric Vehicle Charger, Opp C-101 Jain air travels, sector-2, Noida', 28.5847, 77.3159),
('Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 28.6266, 77.3752),
('Electric Vehicle Charger, H Block market, Haldiram, Car parking , sector - 63 , Noida - 201301', 28.6266, 77.3752),
('Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', 28.6279, 77.3749),
('Electric Vehicle Charger, Electronic City , Metro Station parking gate no.2, Noida - 201301', 28.6279, 77.3749),
('Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', 28.5728, 77.3405),
('Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', 28.5728, 77.3405),
('Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 28.5821, 77.3267),
('Electric Vehicle Charger, Near RTO OfficeSector 33A, Noida, Ghaziabad, Uttar Pradesh, 201301, India', 28.5821, 77.3267),
('Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 28.5482, 77.3222),
('Electric Vehicle Charger, road between sector 124 & 125 and beside SPCl Sector Road, Noida, Uttar Pradesh, 201313', 28.5482, 77.3222),
('Electric Vehicle Charger,  Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', 28.5, 77.4143),
('Electric Vehicle Charger,  Sector 142, Near Advan Chowk  Noida, Uttar Pradesh, 201305', 28.5, 77.4143),
('Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 28.5971, 77.3649),
('Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 28.5971, 77.3649),
('Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 28.572, 77.3694),
('Electric Vehicle Charger,  Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', 28.5291, 77.4034),
('Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 28.5721, 77.3375),
('Electric Vehicle Charger, Ganga Shopping Complex, Sector 29, Noida, Uttar Pradesh 201301', 28.5721, 77.3375),
('Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', 28.5728, 77.3405),
('Electric Vehicle Charger, Between kirti mann plaza and NMC hospital Sector 30 Noida', 28.5728, 77.3405),
('Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 28.572, 77.3694),
('Electric Vehicle Charger,  Sector 50  Central Market, Noida, Uttar Pradesh, 201305', 28.572, 77.3694),
('Electric Vehicle Charger, Sector 15, Nithari, Noida, Dadri, Gautam Buddha Nagar, Uttar Pradesh, 201301, India', 28.6266, 77.3752),
('Electric Vehicle Charger, c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', 28.5472, 77.2003),
('Electric Vehicle Charger, NMDC Parking, Dilli Haat, West Kidwai Nagar, New Delhi 110023', 28.5772, 77.1972),
('Electric Vehicle Charger, Hotel Claridges, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 28.6024, 77.2179),
('Electric Vehicle Charger,  Sector 61 Opposite Shopprix Mall , Noida, Uttar Pradesh, 201305', 28.5971, 77.3649),
('Electric Vehicle Charger,  Sector 50 , Central Market,  Noida, Uttar Pradesh, 201305', 28.5291, 77.4034),
('Electric Vehicle Charger,  Chennai Egmore metro, Chennai (CMRL)', 13.0731, 80.1938),
('Electric Vehicle Charger, Chennai Metro Alandur station Car parking area, Alandur, Chennai 600016', 13.0042, 80.2015),
('Electric Vehicle Charger, Charger 6, c/o SDMC, GK-1 N Block market, New Delhi,, Delhi - 110048', 28.5731, 77.1735),
('Electric Vehicle Charger, EV Parking Slot 3-5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', 28.5566, 77.2321),
('Electric Vehicle Charger, EV Parking Slot 5, SDMC Parking, N Block Market, Greater Kailash - 1 , 110048', 28.5566, 77.2321),
('Electric Vehicle Charger, EV Parking Slot 2, SDMC Parking, Hauz Khas Village, Hauz Khas - 1 , 110016', 28.5731, 77.1735),
('Electric Vehicle Charger, Charger 2, SDMC Parking, Hauz Khas Village, New Delhi', 28.5537, 77.1992),
('Electric Vehicle Charger, Back of Hotel Claridges Near NDMC Power Sub Station, Tees January Marg, Dr. APJ Abdul Kalam Road, New Delhi- 110003', 28.6024, 77.2179),
('Electric Vehicle Charger, Charger 1, Sector 2: State Bank of lndia, Noida - UP', 28.5875, 77.3127),
('Electric Vehicle Charger, Charger 2, Sector 2: State Bank of lndia, Noida - UP', 28.5355, 77.391),
('Electric Vehicle Charger, Charger 1, Sector 3: G-1 to G-50, Noida - UP', 28.5355, 77.391),
('Electric Vehicle Charger, Charger 2, Sector 3: G-1 to G-50, Noida - UP', 28.5355, 77.391),
('Electric Vehicle Charger, Charger 1, Sector 3: F-7 to F-8, Noida UP', 28.5355, 77.391),
('Electric Vehicle Charger, Charger 2, Sector 3: F-7 to F-8, Noida UP', 28.5355, 77.391),
('Electric Vehicle Charger, Charger 1, Sector 6: Reception Noida Authority, Noida, UP', 28.5926, 77.3184),
('Electric Vehicle Charger, Charger 2, Sector 6: Reception Noida Authority, Noida, UP', 28.5926, 77.3184),
('Electric Vehicle Charger, Sector 25A, Spice Mall plot area, Noida Authority, Noida, UP', 28.5862, 77.3411),
('Electric Vehicle Charger, Charger 2, Sec-25A: Spice Mall plot area', 28.5862, 77.3411),
('Electric Vehicle Charger, Charger 1, Sector 16: Parking near metro station, sector-16, Noida, UP', 28.5774, 77.3145),
('Electric Vehicle Charger, Charger 2, Sector 16: Parking near metro station, sector-16, Noida, UP', 28.5774, 77.3145),
('Electric Vehicle Charger, DTPC office, thiruvananthapuram,Kerala- 605007', 8.50834, 76.9472),
('Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 9.97692, 76.2778),
('Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 8.49162, 76.9562),
('Electric Vehicle Charger, Tirumangalam Metro station, Chennai', 12.9918, 80.1418),
('Electric Vehicle Charger, Tirumangalam Metro station, Chennai', 12.9918, 80.1418),
('Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 9.97692, 76.2778),
('Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', 28.6245, 77.2136),
('Electric Vehicle Charger, Akashvani Bhawan, Sansad Marg, New Delhi 110001', 28.6245, 77.2136),
('Electric Vehicle Charger, FICCI, FICCI Chowk, Mandi House, New Delhi', 28.6269, 77.2318),
('Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 28.6304, 77.2256),
('Electric Vehicle Charger, Near NDMC Office, Fire Brigade Lane, Barakhamba, New Delhi- 110001', 28.6304, 77.2256),
('Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', 28.6253, 77.1952),
('Electric Vehicle Charger, Talkatora Garden, President\'s Estate, New Delhi110004', 28.6248, 77.1952),
('Electric Vehicle Charger, c/o SDMCHauz Khas VillageNew Delhi,Delhi - 110016', 28.5472, 77.2003),
('Electric Vehicle Charger, PVR Priya Vasant  Vihar', 28.4975, 77.083),
('Electric Vehicle Charger, Meharchand Market, New Delhi', 28.5881, 77.2176),
('Electric Vehicle Charger, Meharchand Market, New Delhi', 28.5881, 77.2176),
('Electric Vehicle Charger, RK Puram Sector 12 Market', 28.5743, 77.1766),
('Electric Vehicle Charger, RK Puram Sector 12 Market', 28.5743, 77.1766),
('Electric Vehicle Charger, Saidapet Metro station', 13.0237, 80.2282),
('Electric Vehicle Charger, Saidapet Metro station', 13.0237, 80.2282),
('Electric Vehicle Charger, Tirumangalam Metro station, Chennai', 12.9918, 80.1418),
('Electric Vehicle Charger, Saidapet Metro station', 13.0237, 80.2282),
('Electric Vehicle Charger, DLF Building, Sansad Marg, Janpath, Connaught Place, New Delhi 110001.', 28.6212, 77.2183),
('Electric Vehicle Charger, Talkatora Stadium, President\'s Estate, New Delhi110004', 28.6253, 77.1952),
('Electric Vehicle Charger, ECO Park,Gate No1,West Bengal:700156', 22.5834, 88.4593),
('Electric Vehicle Charger, Shapoorji complex,New Town,kolkata,West Bengal:700135', 22.5692, 88.5091),
('Electric Vehicle Charger, ECO Park,Gate No1,West Bengal:700156', 22.5834, 88.4593),
('Electric Vehicle Charger, Shapoorji complex,New Town,kolkata,West Bengal:700135', 22.5692, 88.5091),
('Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 8.49162, 76.9562),
('Electric Vehicle Charger, Shanghumukham beach, thiruvananthapuram,Kerala- 605007', 8.48105, 76.9126),
('Electric Vehicle Charger, KTDC Tourist Reception Centre Shanmugham road, Ernakulam, Marine drive, Kochi Kerala-682031', 9.97692, 76.2778),
('Electric Vehicle Charger, State Council For Child Welfare, CV Raman Pillai Rd, Near Kerala, Housing Board, Thycaud, Thiruvananthapuram, Kerala 695014', 8.49162, 76.9562),
('Electric Vehicle Charger, EESL PVR Priya Vasant Vihar, SDMC parking New Delhi, Near Plot 7', 28.5577, 77.1577);

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
-- Table structure for table `in_1`
--

CREATE TABLE `in_1` (
  `city` varchar(19) DEFAULT NULL,
  `latitude1` float DEFAULT NULL,
  `longitude1` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `in_1`
--

INSERT INTO `in_1` (`city`, `latitude1`, `longitude1`) VALUES
('city', 0, 0),
('Delhi', 28.61, 77.23),
('Mumbai', 19.076, 72.877),
('Kolkāta', 22.567, 88.37),
('Bangalore', 12.978, 77.591),
('Chennai', 13.082, 80.275),
('Hyderābād', 17.361, 78.474),
('Pune', 18.52, 73.856),
('Ahmedabad', 23.022, 72.571),
('Sūrat', 21.17, 72.831),
('Lucknow', 26.85, 80.95),
('Jaipur', 26.9, 75.8),
('Kanpur', 26.449, 80.331),
('Mirzāpur', 25.146, 82.569),
('Nāgpur', 21.149, 79.08),
('Ghāziābād', 28.67, 77.42),
('Supaul', 26.126, 86.605),
('Vadodara', 22.3, 73.2),
('Rājkot', 22.3, 70.783),
('Vishākhapatnam', 17.704, 83.297),
('Indore', 22.716, 75.847),
('Thāne', 19.197, 72.972),
('Bhopāl', 23.259, 77.412),
('Pimpri-Chinchwad', 18.618, 73.803),
('Patna', 25.594, 85.137),
('Bilāspur', 22.09, 82.15),
('Ludhiāna', 30.91, 75.85),
('Āgra', 27.18, 78.02),
('Madurai', 9.9252, 78.119),
('Jamshedpur', 22.792, 86.184),
('Prayagraj', 25.435, 81.846),
('Nāsik', 19.997, 73.789),
('Farīdābād', 28.421, 77.307),
('Meerut', 28.98, 77.71),
('Jabalpur', 23.166, 79.933),
('Kalyān', 19.25, 73.16),
('Vasai-Virar', 19.36, 72.795),
('Najafgarh', 28.609, 76.979),
('Vārānasi', 25.318, 83.012),
('Srīnagar', 34.09, 74.79),
('Aurangābād', 19.88, 75.32),
('Dhanbād', 23.799, 86.43),
('Amritsar', 31.64, 74.86),
('Alīgarh', 27.88, 78.08),
('Guwāhāti', 26.172, 91.745),
('Hāora', 22.58, 88.329),
('Rānchi', 23.36, 85.33),
('Gwalior', 26.212, 78.177),
('Chandīgarh', 30.75, 76.78),
('Haldwāni', 29.22, 79.52),
('Vijayavāda', 16.519, 80.63),
('Jodhpur', 26.28, 73.02),
('Raipur', 21.244, 81.63),
('Kota', 25.18, 75.83),
('Bhayandar', 19.29, 72.85),
('Loni', 28.75, 77.28),
('Ambattūr', 13.114, 80.154),
('Salt Lake City', 22.61, 88.4),
('Bhātpāra', 22.87, 88.41),
('Kūkatpalli', 17.484, 78.413),
('Dāsarhalli', 13.046, 77.513),
('Muzaffarpur', 26.122, 85.39),
('Oulgaret', 11.957, 79.773),
('New Delhi', 28.613, 77.208),
('Tiruvottiyūr', 13.16, 80.3),
('Puducherry', 11.916, 79.816),
('Byatarayanpur', 13.065, 77.592),
('Pallāvaram', 12.967, 80.149),
('Secunderābād', 17.439, 78.498),
('Shimla', 31.103, 77.172),
('Puri', 19.8, 85.816),
('Murtazābād', 28.711, 77.268),
('Shrīrāmpur', 22.75, 88.34),
('Chandannagar', 22.87, 88.38),
('Sultānpur Mazra', 28.698, 77.068),
('Krishnanagar', 23.4, 88.5),
('Bārākpur', 22.76, 88.37),
('Bhālswa Jahangirpur', 28.735, 77.163),
('Nāngloi Jāt', 28.683, 77.066),
('Balasore', 21.503, 86.925),
('Dalūpura', 28.6, 77.319),
('Yelahanka', 13.1, 77.596),
('Titāgarh', 22.74, 88.37),
('Dam Dam', 22.62, 88.42),
('Bānsbāria', 22.97, 88.4),
('Madhavaram', 13.148, 80.231),
('Abbigeri', 13.076, 77.525),
('Baj Baj', 22.482, 88.181),
('Garhi', 28.631, 77.318),
('Mīrpeta', 17.32, 78.52),
('Nerkunram', 13.061, 80.209),
('Kendrāparha', 20.5, 86.42),
('Sijua', 23.776, 86.33),
('Manali', 13.166, 80.266),
('Kānkuria', 24.652, 87.96),
('Chakapara', 22.63, 88.35),
('Pāppākurichchi', 10.813, 78.748),
('Herohalli', 12.991, 77.487),
('Madipakkam', 12.962, 80.198),
('Sabalpur', 25.605, 85.183),
('Bāuria', 22.452, 88.185),
('Salua', 22.61, 88.27),
('Chik Bānavar', 13.084, 77.501),
('Jālhalli', 13.033, 77.55),
('Chinnasekkadu', 13.16, 80.257),
('Jethuli', 25.537, 85.284),
('Nagtala', 22.466, 88.383),
('Pakri', 25.587, 85.158),
('Hunasamaranhalli', 13.143, 77.62),
('Hesarghatta', 13.139, 77.478),
('Bommayapālaiyam', 11.992, 79.849),
('Gundūr', 10.733, 78.718),
('Punādih', 25.548, 85.264),
('Harilādih', 23.733, 86.4),
('Alāwalpur', 25.495, 85.202),
('Mādnāikanhalli', 13.062, 77.464),
('Bāgalūr', 13.133, 77.666),
('Kādiganahalli', 13.168, 77.628),
('Khānpur Zabti', 28.71, 77.278),
('Mahuli', 25.543, 85.226),
('Zeyādah Kot', 22.444, 88.334),
('Arshakunti', 13.078, 77.422),
('Mirchi', 25.555, 85.213),
('Sonudih', 25.115, 87.021),
('Bayandhalli', 12.977, 77.568),
('Sondekoppa', 13, 77.366),
('Babura', 25.085, 87.109),
('Mādavar', 13.052, 77.473),
('Kadabgeri', 12.996, 77.433),
('Nanmangalam', 12.938, 80.175),
('Taliganja', 22.504, 88.359),
('Tarchha', 25.111, 87.096),
('Belgharia', 22.658, 88.385),
('Kammanhalli', 13.015, 77.638),
('Ambāpuram', 16.599, 80.893),
('Sonnappanhalli', 13.155, 77.617),
('Kedihāti', 22.65, 88.46),
('Doddajīvanhalli', 13.008, 77.614),
('Simli Murārpur', 25.579, 85.24),
('Sonāwān', 25.544, 85.238),
('Devanandapur', 22.932, 88.372),
('Tribeni', 22.986, 88.398),
('Huttanhalli', 13.165, 77.651),
('Nathupur', 25.516, 85.254),
('Bāli', 25.481, 85.222),
('Vājarhalli', 13.102, 77.411),
('Alija Kotla', 17.233, 78.55),
('Saino', 25.113, 87.01),
('Shekhpura', 25.572, 85.142),
('Cāchohalli', 13.001, 77.471),
('Andheri', 19.21, 73.046),
('Nārāyanpur Kola', 25.129, 87.007),
('Gyan Chak', 25.549, 85.242),
('Kasgatpur', 13.11, 77.504),
('Kitanelli', 13.009, 77.419),
('Harchandi', 25.1, 87.044),
('Santoshpur', 22.465, 88.219),
('Bendravādi', 12.363, 76.913),
('Kodagihalli', 12.977, 77.465),
('Harna Buzurg', 25.098, 87.014),
('Mailanhalli', 13.186, 77.696),
('Sultānpur', 25.524, 85.25),
('Adakimāranhalli', 13.063, 77.441);

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
