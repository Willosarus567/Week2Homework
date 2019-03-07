-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 10:01 PM
-- Server version: 5.7.21-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taverns`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(40) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `employees` int(11) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `street_address` varchar(30) DEFAULT NULL,
  `state_initials` varchar(2) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expenses` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`building_id`, `building_name`, `floors`, `employees`, `supervisor_id`, `street_address`, `state_initials`, `supplier_id`, `expenses`) VALUES
(101, 'Crafty Time Eatery', 2, 6, 2, '1210 Chestnut St. 19019', 'PA', 1, '600000'),
(201, 'NightOwl Brewpub', 3, 6, 8, '671 Crestmont Ave. 19019', 'PA', 2, '610000'),
(301, 'Naughty Jester Bar & Grill', 3, 6, 14, '123 Sansom St. 19019', 'PA', 3, '611320'),
(401, 'Intoxicant Emporium', 4, 6, 20, '2500 Chaddwick St. 19019', 'PA', 4, '500000'),
(501, 'Velvet Lantern', 3, 6, 26, '200 Church St. 19019', 'PA', 5, '450000'),
(601, 'Wandering Anchor Drinkery', 2, 6, 32, '26 13th St. 19019', 'PA', 6, '480000');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `customer_class` varchar(50) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`customer_class`, `class_id`, `customer_name`) VALUES
('Gam3r', 1, 'Boren Loren'),
('Gam3r', 1, 'Mabel'),
('Gam3r', 1, 'Mlorb'),
('Mechanic', 2, 'Habel'),
('Mechanic', 2, 'Helter Skelter'),
('Mechanic', 2, 'Hlorb'),
('Pilot', 3, 'Dorem Thorgrunder'),
('Pilot', 3, 'Fabel'),
('Pilot', 3, 'Florb'),
('MajorLtCorporalGunodeir5thprestigee', 4, 'Val Valiant Thor'),
('MajorLtCorporalGunodeir5thprestigee', 4, 'Zabel'),
('MajorLtCorporalGunodeir5thprestigee', 4, 'Zlorb'),
('Welder', 5, 'Gabel'),
('Welder', 5, 'Glorb'),
('Welder', 5, 'Mike Johnson'),
('Pharmacist', 6, 'Abel'),
('Pharmacist', 6, 'Alorb'),
('Pharmacist', 6, 'Blorb');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_birthday` date DEFAULT NULL,
  `customer_status` varchar(20) DEFAULT 'unknown.',
  `customer_cakeday` date DEFAULT '1969-10-29',
  `customer_status_id` int(11) NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `customer_class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_birthday`, `customer_status`, `customer_cakeday`, `customer_status_id`, `building_id`, `customer_class`) VALUES
(1, 'Boren Loren', '1979-11-22', 'sick', '2019-01-01', 100, 101, 'Gam3r lvl2'),
(2, 'Helter Skelter', '1980-09-12', 'fine', '2019-01-02', 200, 201, 'Mechanic lvl4'),
(3, 'Dorem Thorgrunder', '1985-03-13', 'hangry', '2019-01-03', 300, 301, 'Pilot lvl2'),
(4, 'Val Valiant Thor', '1987-04-26', 'placid', '2019-01-04', 400, 401, 'MajorLtCorporalGunodeir5thprestigee'),
(5, 'Mike Johnson', '1991-01-02', 'hydrated', '2019-01-05', 500, 501, 'Welder lvl3'),
(6, 'George Michael', '1993-03-04', 'cool', '2019-01-06', 600, 601, 'Pharmacist lvl2'),
(7, 'Blorb', '1993-03-04', 'cool', '2019-01-06', 600, 601, 'Pharmacist'),
(8, 'Mlorb', '1979-11-22', 'sick', '2019-01-01', 100, 101, 'Gam3r'),
(9, 'Hlorb', '1980-09-12', 'fine', '2019-01-02', 200, 201, 'Mechanic'),
(10, 'Florb', '1985-03-13', 'hangry', '2019-01-03', 300, 301, 'Pilot'),
(11, 'Zlorb', '1987-04-26', 'placid', '2019-01-04', 400, 401, 'MajorLtCorporalGunodeir5thprestigee'),
(12, 'Glorb', '1991-01-02', 'hydrated', '2019-01-05', 500, 501, 'Welder'),
(13, 'Alorb', '1993-03-04', 'cool', '2019-01-06', 600, 601, 'Pharmacist'),
(14, 'Abel', '1993-03-04', 'cool', '2019-01-06', 600, 601, 'Pharmacist'),
(15, 'Mabel', '1979-11-22', 'sick', '2019-01-01', 100, 101, 'Gam3r'),
(16, 'Habel', '1980-09-12', 'fine', '2019-01-02', 200, 201, 'Mechanic'),
(17, 'Fabel', '1985-03-13', 'hangry', '2019-01-03', 300, 301, 'Pilot'),
(18, 'Zabel', '1987-04-26', 'placid', '2019-01-04', 400, 401, 'MajorLtCorporalGunodeir5thprestigee'),
(19, 'Gabel', '1991-01-02', 'hydrated', '2019-01-05', 500, 501, 'Welder');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT 'not listed',
  `role` varchar(20) DEFAULT 'barkeeper.',
  `description` varchar(40) DEFAULT 'they are an extension of the boss.',
  `income` decimal(10,0) DEFAULT '0',
  `building_id` int(11) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `birth_date`, `gender`, `role`, `description`, `income`, `building_id`, `supervisor_id`) VALUES
(75, 'Jon', 'Taffer', '1973-09-30', 'Male', 'owner', 'manages all properties & supervisors', '300000', 301, NULL),
(76, 'Bob', 'Johnson', '1983-10-29', 'Male', 'supervisor', 'manages the employees on site', '48000', 101, 1),
(77, 'John', 'Hughes', '1992-10-03', 'Male', 'bartender', 'serves drinks & takes orders', '35000', 101, 2),
(78, 'Liz', 'Barry', '1993-05-27', 'Female', 'bartender', 'serves drinks & takes orders', '35001', 101, 2),
(79, 'Anna', 'Krevansky', '1990-08-23', 'Female', 'bartender', 'serves drinks & takes orders', '37000', 101, 2),
(80, 'Phillip', 'DeFranco', '1989-02-28', 'Male', 'line cook', 'prepares and cooks food', '45000', 101, 2),
(81, 'Frank', 'Horrigan', '1990-04-15', 'Male', 'line cook', 'prepares and cooks food', '42000', 101, 2),
(82, 'Vick', 'Dandy', '1988-12-11', 'Male', 'supervisor', 'manages the employees on site', '48000', 201, 1),
(83, 'Jess', 'DelVecchi', '1993-03-18', 'Female', 'bartender', 'serves drinks & takes order', '35000', 201, 8),
(84, 'Nicole', 'OHara', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', '33090', 201, 8),
(85, 'Samantha', 'Maxwell', '1991-10-29', 'Female', 'line cook', 'prepares and cooks food', '36000', 201, 8),
(86, 'Hershal', 'Green', '1987-11-09', 'Male', 'line cook', 'prepares and cooks food', '36000', 201, 8),
(87, 'Margi', 'Hughes', '1987-08-24', 'Female', 'bartender', 'serves dinks & takes orders', '38000', 201, 8),
(88, 'Lorden', 'Miller', '1983-09-30', 'Male', 'supervisor', 'manages the employees on site', '50000', 301, 1),
(89, 'Vickie', 'Vale', '1990-12-15', 'Female', 'bartender', 'serves drinks & takes order', '34000', 301, 14),
(90, 'Richard', 'Glikes', '1984-09-11', 'Male', 'line cook', 'prepares and cooks food', '34000', 301, 14),
(91, 'Olga', 'Strasvongonoski', '1990-10-10', 'Female', 'linecook', 'prepares and cooks food', '36000', 301, 14),
(92, 'Jennifer', 'Zhang', '1994-11-23', 'Female', 'bartender', 'serves drinks & takes orders', '39000', 301, 14),
(93, 'Carrie', 'Harrier', '1992-10-29', 'Female', 'bartender', 'serves drinks & takes orders', '38000', 301, 14),
(94, 'Carren', 'Yule', '1989-11-30', 'Female', 'supervisor', 'manages employees on site', '50101', 401, 1),
(95, 'Georgina', 'Plumbings', '1991-12-12', 'Female', 'bartender', 'servers drinks & takes orders', '35300', 401, 20),
(96, 'Paulina', 'Katholopolopopolus', '1992-10-12', 'Female', 'bartender', 'serves drinks and takes orders', '38000', 401, 20),
(97, 'MaryKate', 'Lesserson', '1993-10-11', 'Female', 'line cook', 'prepares and cooks food', '40000', 401, 20),
(98, 'Doug', 'Meetersohn', '1989-09-12', 'Male', 'line cook', 'prepares and cooks food', '39000', 401, 20),
(99, 'Felicia', 'Jonesburg', '1990-12-18', 'Female', 'bartender', 'serves drinks and takes orders', '38000', 401, 20),
(100, 'Katie', 'Dodger', '1988-11-02', 'Female', 'supervisor', 'manages the employees on site', '48000', 501, 1),
(101, 'Camila', 'Harris', '1989-10-01', 'Female', 'line-cook', 'prepares and cooks food', '40000', 501, 26),
(102, 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders', '37000', 501, 26),
(103, 'Francine', 'Hickard', '1991-01-13', 'Female', 'bartender', 'serves drinks and takes orders', '35000', 501, 26),
(104, 'Christinitha', 'Long', '1992-10-01', 'Female', 'line-cook', 'prepares and cooks food', '40000', 501, 26),
(105, 'Daine', 'Hillard', '1993-12-18', 'Female', 'bartender', 'serves drinks and takes orders', '37000', 501, 26),
(106, 'Kirsten', 'Wuntd', '1988-12-07', 'Female', 'supervisor', 'manages the employees on site', '48000', 601, 1),
(107, 'Greg', 'Matzer', '1989-10-01', 'Male', 'line-cook', 'prepares and cooks food', '40000', 601, 32),
(108, 'Mike', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders', '37000', 601, 32),
(109, 'Dilliard', 'Hickard', '1991-01-13', 'Male', 'bartender', 'serves drinks and takes orders', '35000', 601, 32),
(110, 'Francis', 'Long', '1992-10-01', 'Male', 'line-cook', 'prepares and cooks food', '40000', 601, 32),
(111, 'Dirk', 'Hillard', '1993-12-18', 'Male', 'bartender', 'serves drinks and takes orders', '37000', 601, 32);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `service_name` varchar(60) DEFAULT 'service transfered',
  `service_id` int(11) DEFAULT NULL,
  `service_status` varchar(10) DEFAULT NULL,
  `building_name` varchar(60) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `amount_recieved` decimal(10,0) DEFAULT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `customer_status_id` int(11) DEFAULT NULL,
  `date_recieved` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `service_name`, `service_id`, `service_status`, `building_name`, `building_id`, `amount_recieved`, `customer_name`, `customer_status_id`, `date_recieved`) VALUES
(1, 'beverage industry consultation', 111, 'active', 'Naughty Jester Bar & Grill', 101, '300', 'Boren Loren', 100, '2019-07-11'),
(2, 'yeast cultivation & culturing', 211, 'active', 'Intoxicant Emporium', 201, '150', 'Helter Skelter', 200, '2019-01-04'),
(3, 'rockbottom life advice', 311, 'active', 'Crafty Time Eatery', 301, '0', 'Dorem Thorgrunder', 300, '2019-08-10'),
(4, 'catering', 411, 'active', 'NightOwl Brewpub', 401, '210', 'Val Valiant Thor', 400, '2019-12-24'),
(5, 'room rentals', 511, 'active', 'NightOwl Brewpub', 501, '120', 'Mike Johnson', 500, '2019-12-24'),
(6, 'Beverage sale: double stack honey mead', 611, 'active', 'Crafty Time Eatery', 601, '14', 'George Michael', 600, '2019-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(40) DEFAULT NULL,
  `service_price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_price`) VALUES
(111, 'yeast cultivation & culturing', '75'),
(211, 'beverage industry consultation', '50'),
(311, 'room rentals', '40'),
(411, 'catering', '70'),
(511, 'Rockbottom life advice', '0'),
(611, 'Beverage sale', NULL),
(711, 'Food sale', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(40) DEFAULT NULL,
  `brewing_supplies` varchar(40) DEFAULT NULL,
  `utility_supplies` varchar(40) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `brewing_supplies_expense` decimal(10,0) DEFAULT NULL,
  `utility_supplies_expense` decimal(10,0) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`supplier_id`, `supplier_name`, `brewing_supplies`, `utility_supplies`, `date_purchased`, `brewing_supplies_expense`, `utility_supplies_expense`, `building_id`) VALUES
(1, 'HBC 342', 'hops', NULL, '2019-03-03', '100000', '0', 401),
(2, 'Northern Brewery', 'tank fermenter', 'Industrial cleaners', '2019-03-03', '8000', '300', 401),
(3, 'Master Brewer', 'distilling coils', 'paper products', '2019-02-17', '5000', '1000', 401),
(4, 'Kegerator', 'stainless steel doors', 'paint & rust remover', '2019-01-12', '3000', '1500', 401),
(5, 'Rapids Inc.', 'faucet rack with handles', NULL, '2019-01-03', '5800', '0', 401),
(6, 'Brewtech LLC.', 'distilling circutry boards', 'condensed air cans', '2019-02-23', '17000', '60', 401);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`customer_class`,`customer_name`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`,`customer_status_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `building_id` (`building_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplies` (`supplier_id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`),
  ADD CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
