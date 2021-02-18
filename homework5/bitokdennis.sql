-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 11:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitokdennis`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category` int(11) NOT NULL,
  `make` varchar(35) NOT NULL,
  `bodyType` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category`, `make`, `bodyType`) VALUES
(1, 'Acura', 'Sedan'),
(2, 'Acura', 'Convertible'),
(3, 'Acura', 'coupe'),
(4, 'Acura', 'Regular'),
(5, 'Bently', 'Sedan'),
(6, 'Bently', 'Convertible'),
(7, 'Cardillac', 'Sedan'),
(8, 'Cardilac', 'Convertible'),
(9, 'Ford', 'Sedan'),
(10, 'Ford', 'Convertible'),
(11, 'Isuzu', 'Sedan'),
(12, 'Isuzu', 'Convertible'),
(13, 'Mazda', 'Sedan'),
(14, 'Mazda', 'Convertible'),
(15, 'Range Rover', 'SUV'),
(16, 'Lexus', 'SUV');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(35) NOT NULL,
  `lastName` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `address` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userId`, `firstName`, `lastName`, `email`, `password`, `address`, `city`, `state`, `zipcode`, `phoneNumber`) VALUES
(1, 'Dennis', 'Bitok', 'bit@gmail.com', 'passw', '582 All', 'Hunstville', 'Alabama', 26216, 123145610);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `shipMethod` varchar(35) DEFAULT NULL,
  `salestax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `creditCardType` varchar(50) DEFAULT NULL,
  `cardNo` int(11) DEFAULT NULL,
  `expirationYr` int(11) DEFAULT NULL,
  `expirationMonth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceId`, `userId`, `orderDate`, `subtotal`, `shipMethod`, `salestax`, `total`, `creditCardType`, `cardNo`, `expirationYr`, `expirationMonth`) VALUES
(1, 1, '2021-02-09', 200552, 'tesr', 52, 58525, 'test', 58415, 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `invoiceId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`invoiceId`, `productId`, `quantity`, `price`) VALUES
(NULL, 5, 1, 7822),
(1, 8, 2, 6595);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `shortDescr` varchar(55) DEFAULT NULL,
  `longDescr` varchar(150) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `imageName` varchar(50) DEFAULT NULL,
  `milage` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `yearMan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `name`, `shortDescr`, `longDescr`, `category`, `imageName`, `milage`, `price`, `age`, `yearMan`) VALUES
(1, '2012 Acura MDX 3.5 L', 'The Acura MDX is the benchmark all other SUVs strive to', 'This Acura MDX w/Advance comes equipped with all wheel drive, which means no limitations as to how or where you can drive. Different terrains and vary', 1, 'acuraOne.jpg', 1000, 5000, 'used', 2012),
(2, '2012 Acura MDX 3.5 L', 'The Acura MDX is the benchmark all other SUVs strive to', 'This Acura MDX w/Advance comes equipped with all wheel drive, which means no limitations as to how or where you can drive. , you\'ll be able to quickly', 1, 'acuraOne.jpg', 1000, 5000, 'used', 2012),
(3, '2018 Acura ILX', 'BACKUP CAMERA, STEERING WHEEL AUDIO CONTROLS, HEATED SE', '.Awards:* JD Power Initial Quality Study (IQS) * 2018 KBB.com 5-Year Cost to Own AwardsKelley Blue Book Brand Image Awards are based on the Brand Watc', 3, 'acuraTwo.jpg', 500, 7000, 'used', 2014),
(4, '2017 Mazda', 'Automatic temperature control, Front anti-roll bar, Fro', 'Rear anti-roll bar, Rear window defroster, Split folding rear seat.Please call today to check availability and additional options.', 13, 'mazdaone.jfif', 1000, 7822, 'new', 2017),
(5, '2001 Isuzu Rodeo ', 'since 1989. We carry over 100 cars in our', 'I\'d like to know if the Used 2001 Isuzu Rodeo Sport you have listed on Cars.com for $3,999 is still available.', 11, 'isuzu.jpg', 1000, 8000, 'used', 2015),
(6, '2018 Bentley Bentayga', 'CUSTOM BUILT FOT YOU! -', 'THIS ULTRA LUXURY SUV IS LIKE NEW IN EVERY WAY - SUPER LOW CERTIFIED MILES -', 5, 'bently.jpeg', 4000, 4100, 'new', 2018),
(7, '2014 Ford Expedition', 'New Arrival! Extremely sharp! Ford has outdone itself w', 'Bluetooth, Power door locks, Power windows, Auto, Rear air conditioning...Buy Like a Champion! Champion Chevrolet - Family owned and operated in Athen', 10, 'fordone.jpeg', 5000, 7440, 'used', 2014),
(8, '2004 Isuzu Rodeo', 'The car is large enough, tough enough, comfortable enou', 'Econo Auto Sales is buy here pay here Denver and the metro area. Our buy here pay here financing program is based on stability, ', 12, 'isuzud.jpeg', 1000, 7520, 'used', 2017),
(9, '2017 Range Rover Sport', 'POWER WINDOWS, POWER LOCKS, 18 Twin 5-Spoke Alloy Wheel', 'Rear anti-roll bar, Rear fog lights, Rear window defroster, Security system, Split folding rear seat, Spoiler, Turn signal indicator mirrors, Weather ', 15, 'range.jpeg', 500, 8560, 'new', 2017),
(10, '2013 Lexus ES 350 Base', ' a 30-day/1500-mile money back guarantee to be sure itâ', ' And we stand behind every used car we sell with a 90-Day/4,000-Mile (whichever comes first) Limited Warranty. See store for details. Price assumes fi', 16, 'lexus.jpeg', 140, 7100, 'used', 2013);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD KEY `invoiceId` (`invoiceId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `customer` (`userId`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`invoiceId`) REFERENCES `invoices` (`invoiceId`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
