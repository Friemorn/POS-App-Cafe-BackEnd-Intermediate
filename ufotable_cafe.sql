-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2020 at 11:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ufotable_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCategory`, `name`) VALUES
(1, 'Drink'),
(2, 'Dessert'),
(3, 'Main Course');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `idHistory` int(11) NOT NULL,
  `invoices` varchar(32) NOT NULL,
  `cashier` int(11) NOT NULL,
  `cashierName` varchar(64) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `orders` varchar(128) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`idHistory`, `invoices`, `cashier`, `cashierName`, `date`, `orders`, `amount`) VALUES
(1, '#10928', 1, 'Pevita Pearce', '2020-08-06 15:18:08', 'Ice Tea, Salad with Peanut', 120000),
(2, '#10929', 1, 'Pevita Pearce', '2020-08-07 15:21:08', 'Espresso, Black Forest', 40000),
(3, '#10930', 1, 'Pevita Pearce', '2020-08-08 15:22:55', 'Chicken Katsu Dabu-dabu, Choco Rhum, Red Velvet Latte', 121000),
(4, '#10931', 1, 'Pevita Pearce', '2020-08-08 19:22:22', 'Eggs Benedict, Pepper Bun, Yogurt Coffee', 68500),
(5, '#10932', 1, 'Pevita Pearce', '2020-08-09 19:22:22', 'Chicken Karaage Wrap, Mocha Coconut Iced Coffee', 52500),
(6, '#10933', 1, 'Pevita Pearce', '2020-08-10 19:23:52', 'Mapo Tofu, Checkerboard Cake, Luwak Coffee', 215000),
(7, '#10934', 1, 'Pevita Pearce', '2020-08-11 19:23:52', 'Chicken Wing Gyoza, Mochachino', 77500);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `idCategory`, `createdAt`, `updatedAt`) VALUES
(1, 'Espresso', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_13_12.921Zjeremy-ricketts-6ZnhM-xBpos-unsplash.png', 10000, 1, '2020-09-04 16:13:12', '2020-09-04 16:13:12'),
(2, 'Coffee Latte', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_14_44.412Zbear.png', 15000, 0, '2020-09-04 16:14:44', '2020-09-04 16:14:44'),
(3, 'Cappucino', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_15_14.761Zfirdaus-roslan-pN769u0KHNA-unsplash.png', 5000, 1, '2020-09-04 16:15:14', '2020-09-04 16:15:14'),
(4, 'Red Velvel Latte', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_15_47.683Zredvelvet.png', 33000, 1, '2020-09-04 16:15:47', '2020-09-04 16:15:47'),
(5, 'Choco Rum', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_18_54.786Zchocorum.png', 28000, 2, '2020-09-04 16:18:54', '2020-09-04 16:18:54'),
(6, 'Black Forest', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_19_30.077Zblackforest.png', 30000, 2, '2020-09-04 16:19:30', '2020-09-04 16:19:30'),
(7, 'Chicken Katsu Dabu-dabu', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_22_25.852Zchickenkatsu.png', 60000, 3, '2020-09-04 16:22:25', '2020-09-04 16:22:25'),
(8, 'Salmon Truffle Teriyaki', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_23_01.871Zsalmon.png', 60000, 3, '2020-09-04 16:23:01', '2020-09-04 16:23:01'),
(9, 'Wiener Schnitzel', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_23_45.579Zwiener.png', 69000, 3, '2020-09-04 16:23:45', '2020-09-04 16:23:45'),
(10, 'Mochachino', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_24_32.253ZCafé-Mochachino-Recipe-9.jpg', 35000, 1, '2020-09-04 16:24:32', '2020-09-04 16:24:32'),
(11, 'Souffle Omelette', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_25_20.261ZSouffle Omelette.jpg', 45000, 3, '2020-09-04 16:25:20', '2020-09-04 16:25:20'),
(12, 'Quail Stuffed', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_25_48.495Zimg79442.768x512.jpg', 70000, 3, '2020-09-04 16:25:48', '2020-09-04 16:25:48'),
(13, 'Checkerboard Cake', 'http://localhost:4000/api/v1/uploads/2020-09-04T16_26_21.538Zchocolate-and-vanilla checkerboard cake.jpg', 40000, 2, '2020-09-04 16:26:21', '2020-09-04 16:26:21'),
(14, 'Chaliapin Steak', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_13_34.009Zchaliapin steak.jpg', 75000, 3, '2020-09-05 06:13:34', '2020-09-05 06:13:34'),
(15, 'Mapo Tofu', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_34_55.863ZMapo-Tofu-Serving-Bowl.jpg', 50000, 3, '2020-09-05 06:34:55', '2020-09-05 06:34:55'),
(16, 'Custard Egg Pudding', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_38_33.697Zcustard egg pudding.jpeg', 15000, 2, '2020-09-05 06:38:33', '2020-09-05 06:38:33'),
(17, 'Coffee Jelly', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_43_19.621Zcoffee-jelly_725x667.jpg', 20000, 2, '2020-09-05 06:43:19', '2020-09-05 06:43:19'),
(18, 'Dalgona Coffee', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_45_03.204Zdalgona-coffee.jpg', 25000, 1, '2020-09-05 06:45:03', '2020-09-05 06:45:03'),
(19, 'Luwak Coffee', 'http://localhost:4000/api/v1/uploads/2020-09-05T06_59_33.379Zluwak.jpg', 100000, 1, '2020-09-05 06:59:33', '2020-09-05 06:59:33'),
(20, 'Apple Rose Tart', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_03_27.583Zapple-rose.jpg', 25000, 2, '2020-09-05 07:03:27', '2020-09-05 07:03:27'),
(21, 'Soufflé Léger de Grâce', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_06_24.816ZSoufflé Léger de Grâce.jpg', 40000, 2, '2020-09-05 07:06:24', '2020-09-05 07:06:24'),
(22, 'Chicken Karaage Wrap', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_09_47.795Zumami-wrap.jpg', 25000, 3, '2020-09-05 07:09:47', '2020-09-05 07:09:47'),
(23, 'Chicken Wing Gyoza', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_13_55.399ZP1360677-2.jpg', 42500, 3, '2020-09-05 07:13:55', '2020-09-05 07:13:55'),
(24, 'Mocha Coconut Iced Coffee', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_21_24.496ZMocha-Coconut-Iced-Coffees-3.jpg', 27500, 1, '2020-09-05 07:21:24', '2020-09-05 07:21:24'),
(25, 'Yogurt Coffee', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_22_37.397ZVietnamese-Yogurt-Coffee-Sua-Chua-Cafe-2.jpg', 33000, 1, '2020-09-05 07:22:37', '2020-09-05 07:22:37'),
(26, 'Pepper Bun', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_26_02.859Zpepper-bun-final.jpg', 12500, 3, '2020-09-05 07:26:02', '2020-09-05 07:26:02'),
(27, 'Eggs Benedict', 'http://localhost:4000/api/v1/uploads/2020-09-05T07_28_23.477ZEggsBenedict.jpg', 23000, 3, '2020-09-05 07:28:23', '2020-09-05 07:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `roleId` int(11) NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `email`, `password`, `roleId`, `firstName`, `lastName`, `createdAt`, `updatedAt`) VALUES
(1, 'dewo@gmail.com', '$2a$10$tQGoksu8AGtBKxAYjMOSmO1n4NuOf0Jiq3MSSbnD3qPpShKhf47GK', 1, 'Dewondo', 'Friemorn', '2020-08-21 15:42:40', '2020-08-21 15:42:40'),
(2, 'qwerty@gmail.com', '$2a$10$dIZVndj1Km03iq4lHB1dzOIAD7pqAf0zF6Wy5CtQo22ESQt6PYsJ6', 2, 'Dewondo', 'Friemorn', '2020-08-22 06:07:50', '2020-08-22 06:07:50'),
(3, 'qwerty123@gmail.com', '$2a$10$puaMINsdH/2SythhpFF/c.ckI5N0mBYpTOtINtvgRw1D0I6ZgwE.y', 2, 'Dewondo', 'Friemorn', '2020-08-22 06:34:22', '2020-08-22 06:34:22'),
(9, 'df7@gmail.com', '$2a$10$uaHGg1TFldBp.mCS2zHCweObhIYGNTcX2N/akgxTpiuH/fsWMSwZK', 2, 'Dewondo', 'Friemorn', '2020-08-29 14:02:37', '2020-08-29 14:02:37'),
(10, 'coba@gmail.com', '$2a$10$41okGO6Gp6Aq4YxmVUws7Or7OLiu9ujkLRJAJwtq3aGgl9skIzv5C', 2, 'tes', 'aja', '2020-08-31 04:24:16', '2020-08-31 04:24:16'),
(13, 'x@gmail.com', '$2a$10$fNy2Epr9TnnlCORefXiDyOfDAc2RmmMtJWLWhzHrV5ivnb4Xqj.3K', 2, '1', '1', '2020-09-06 15:42:00', '2020-09-06 15:42:00'),
(14, 'test@gmailcom', '$2a$10$xUdNGofkTB15G8GqRWl8ZuKwLFh06IwO65.kPpbx2Lq2MGgKQTCvW', 2, 'df', '7', '2020-09-07 07:10:03', '2020-09-07 07:10:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`idHistory`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `idHistory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
