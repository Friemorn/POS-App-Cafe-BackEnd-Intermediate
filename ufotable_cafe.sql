-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 10:37 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, '#2019120101', 1, 'Pevita Pearce', '2019-12-01 15:18:08', 'Ice Tea, Salad with Peanut', 120000),
(2, '#2019120502', 1, 'Pevita Pearce', '2019-12-05 15:21:08', 'Espresso, Black Forest', 40000),
(3, '#2019121003', 1, 'Pevita Pearce', '2019-12-10 15:22:55', 'Chicken Katsu Dabu-dabu, Choco Rhum, Red Velvet Latte', 121000),
(4, '#2019121504', 1, 'Pevita Pearce', '2019-12-14 19:22:22', 'Eggs Benedict, Pepper Bun, Yogurt Coffee', 68500),
(5, '#2019122005', 1, 'Pevita Pearce', '2019-12-19 19:22:22', 'Chicken Karaage Wrap, Mocha Coconut Iced Coffee', 52500),
(6, '#2020011101', 1, 'Pevita Pearce', '2020-01-10 19:23:52', 'Mapo Tofu, Checkerboard Cake, Luwak Coffee', 215000),
(7, '#2020011202', 1, 'Pevita Pearce', '2020-01-11 19:23:52', 'Chicken Wing Gyoza, Mochachino', 77500),
(11, '#2020011303', 1, 'Pevita Pearce', '2020-01-13 16:35:38', 'Coffee Latte, Espresso, Red Velvel Latte, Cappucino', 69300),
(12, '#2020011404', 1, 'Pevita Pearce', '2020-01-14 07:50:48', 'Espresso, Coffee Latte, Cappucino, Black Forest, Red Velvel Latte, Choco Rum', 133100),
(13, '#2020011505', 1, 'Pevita Pearce', '2020-01-15 07:52:24', 'Espresso, Coffee Latte, Cappucino, Black Forest, Choco Rum, Red Velvel Latte, Quail Stuffed, Mochachino, Souffle Omelette', 298100),
(14, '#2020020501', 1, 'Pevita Pearce', '2020-02-05 05:59:28', 'Soufflé Léger de Grâce, Apple Rose Tart, Luwak Coffee, Chicken Karaage Wrap, Chicken Wing Gyoza, Mocha Coconut Iced Coffee', 286000),
(15, '#2020020602', 1, 'Pevita Pearce', '2020-02-06 16:21:15', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly', 165000),
(16, '#2020020703', 1, 'Pevita Pearce', '2020-02-07 16:21:24', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 451000),
(17, '#2020020804', 1, 'Pevita Pearce', '2020-02-08 16:21:30', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 526350),
(18, '#2020020905', 1, 'Pevita Pearce', '2020-02-09 16:21:37', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 787050),
(19, '#2020100101', 1, 'Pevita Pearce', '2020-10-01 16:21:44', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 1008050),
(20, '#2020100201', 1, 'Pevita Pearce', '2020-10-02 16:21:53', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 1108050),
(21, '#2020100301', 1, 'Pevita Pearce', '2020-10-03 16:22:00', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 1208050),
(22, '#2020100401', 1, 'Pevita Pearce', '2020-10-04 16:22:08', 'Checkerboard Cake, Mapo Tofu, Dalgona Coffee, Custard Egg Pudding, Coffee Jelly, Chicken Wing Gyoza, Apple Rose Tart, Soufflé Lé', 1103850),
(23, '#2020100501', 1, 'Pevita Pearce', '2020-10-05 09:15:32', 'Souffle Omelette, Quail Stuffed, Wiener Schnitzel, Salmon Truffle Teriyaki, Chicken Katsu Dabu-dabu, Mochachino, Dalgona Coffee', 400400),
(24, '#2020100502', 1, 'Pevita Pearce', '2020-10-05 12:41:34', 'Espresso, Coffee Latte, Cappucino', 104500),
(25, '#2020100601', 1, 'Pevita Pearce', '2020-10-06 14:17:01', 'Mochachino, Souffle Omelette, Quail Stuffed', 165000),
(26, '#2020100602', 1, 'Pevita Pearce', '2020-10-06 14:19:16', 'Mapo Tofu, Chaliapin Steak, Dalgona Coffee', 165000),
(27, '#2020100603', 1, 'Pevita Pearce', '2020-10-06 15:22:25', 'Wiener Schnitzel, Salmon Truffle Teriyaki', 141900),
(28, '#2020100701', 1, 'Pevita Pearce', '2020-10-07 02:24:11', 'Yogurt Coffee, Pepper Bun, Eggs Benedict', 75350),
(29, '#2020100702', 1, 'Pevita Pearce', '2020-10-07 02:31:31', 'Souffle Omelette, Mochachino, Quail Stuffed', 165000),
(30, '#2020100703', 1, 'Pevita Pearce', '2020-10-07 07:49:56', 'Espresso, Choco Rum, Black Forest, Cappucino, Souffle Omelette, Salmon Truffle Teriyaki, Quail Stuffed, Dalgona Coffee, Coffee J', 366300),
(31, '#2020100704', 1, 'Pevita Pearce', '2020-10-07 07:52:51', 'Espresso, Coffee Latte, Cappucino, Souffle Omelette, Salmon Truffle Teriyaki, Wiener Schnitzel, Quail Stuffed', 301400),
(32, '#2020100705', 1, 'Pevita Pearce', '2020-10-07 07:54:36', 'Dalgona Coffee, Coffee Jelly, Checkerboard Cake, Mapo Tofu', 148500),
(33, '2020071037', 1, 'Pevita Pearce', '2020-10-07 07:55:29', 'Coffee Jelly, Dalgona Coffee, Mapo Tofu, Chaliapin Steak', 187000),
(34, '2020071036', 1, 'Pevita Pearce', '2020-10-07 08:21:22', 'Dalgona Coffee, Mapo Tofu, Checkerboard Cake, Custard Egg Pudding', 143000);

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
(1, 'Espresso', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_13_12.921Zjeremy-ricketts-6ZnhM-xBpos-unsplash.png', 10000, 1, '2020-09-04 16:13:12', '2020-09-04 16:13:12'),
(2, 'Coffee Latte', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_14_44.412Zbear.png', 15000, 0, '2020-09-04 16:14:44', '2020-09-04 16:14:44'),
(3, 'Cappucino', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_15_14.761Zfirdaus-roslan-pN769u0KHNA-unsplash.png', 5000, 1, '2020-09-04 16:15:14', '2020-09-04 16:15:14'),
(4, 'Red Velvel Latte', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_15_47.683Zredvelvet.png', 33000, 1, '2020-09-04 16:15:47', '2020-09-04 16:15:47'),
(5, 'Choco Rum', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_18_54.786Zchocorum.png', 28000, 2, '2020-09-04 16:18:54', '2020-09-04 16:18:54'),
(6, 'Black Forest', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_19_30.077Zblackforest.png', 30000, 2, '2020-09-04 16:19:30', '2020-09-04 16:19:30'),
(7, 'Chicken Katsu Dabu-dabu', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_22_25.852Zchickenkatsu.png', 60000, 3, '2020-09-04 16:22:25', '2020-09-04 16:22:25'),
(8, 'Salmon Truffle Teriyaki', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_23_01.871Zsalmon.png', 60000, 3, '2020-09-04 16:23:01', '2020-09-04 16:23:01'),
(9, 'Wiener Schnitzel', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_23_45.579Zwiener.png', 69000, 3, '2020-09-04 16:23:45', '2020-09-04 16:23:45'),
(10, 'Mochachino', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_24_32.253ZCafé-Mochachino-Recipe-9.jpg', 35000, 1, '2020-09-04 16:24:32', '2020-09-04 16:24:32'),
(11, 'Souffle Omelette', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_25_20.261ZSouffle Omelette.jpg', 45000, 3, '2020-09-04 16:25:20', '2020-09-04 16:25:20'),
(12, 'Quail Stuffed', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_25_48.495Zimg79442.768x512.jpg', 70000, 3, '2020-09-04 16:25:48', '2020-09-04 16:25:48'),
(13, 'Checkerboard Cake', 'http://localhost:5000/api/v1/uploads/2020-09-04T16_26_21.538Zchocolate-and-vanilla checkerboard cake.jpg', 40000, 2, '2020-09-04 16:26:21', '2020-09-04 16:26:21'),
(14, 'Chaliapin Steak', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_13_34.009Zchaliapin steak.jpg', 75000, 3, '2020-09-05 06:13:34', '2020-09-05 06:13:34'),
(15, 'Mapo Tofu', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_34_55.863ZMapo-Tofu-Serving-Bowl.jpg', 50000, 3, '2020-09-05 06:34:55', '2020-09-05 06:34:55'),
(16, 'Custard Egg Pudding', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_38_33.697Zcustard egg pudding.jpeg', 15000, 2, '2020-09-05 06:38:33', '2020-09-05 06:38:33'),
(17, 'Coffee Jelly', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_43_19.621Zcoffee-jelly_725x667.jpg', 20000, 2, '2020-09-05 06:43:19', '2020-09-05 06:43:19'),
(18, 'Dalgona Coffee', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_45_03.204Zdalgona-coffee.jpg', 25000, 1, '2020-09-05 06:45:03', '2020-09-05 06:45:03'),
(19, 'Luwak Coffee', 'http://localhost:5000/api/v1/uploads/2020-09-05T06_59_33.379Zluwak.jpg', 100000, 1, '2020-09-05 06:59:33', '2020-09-05 06:59:33'),
(20, 'Apple Rose Tart', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_03_27.583Zapple-rose.jpg', 25000, 2, '2020-09-05 07:03:27', '2020-09-05 07:03:27'),
(21, 'Soufflé Léger de Grâce', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_06_24.816ZSoufflé Léger de Grâce.jpg', 40000, 2, '2020-09-05 07:06:24', '2020-09-05 07:06:24'),
(22, 'Chicken Karaage Wrap', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_09_47.795Zumami-wrap.jpg', 25000, 3, '2020-09-05 07:09:47', '2020-09-05 07:09:47'),
(23, 'Chicken Wing Gyoza', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_13_55.399ZP1360677-2.jpg', 42500, 3, '2020-09-05 07:13:55', '2020-09-05 07:13:55'),
(24, 'Mocha Coconut Iced Coffee', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_21_24.496ZMocha-Coconut-Iced-Coffees-3.jpg', 27500, 1, '2020-09-05 07:21:24', '2020-09-05 07:21:24'),
(25, 'Yogurt Coffee', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_22_37.397ZVietnamese-Yogurt-Coffee-Sua-Chua-Cafe-2.jpg', 33000, 1, '2020-09-05 07:22:37', '2020-09-05 07:22:37'),
(26, 'Pepper Bun', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_26_02.859Zpepper-bun-final.jpg', 12500, 3, '2020-09-05 07:26:02', '2020-09-05 07:26:02'),
(27, 'Eggs Benedict', 'http://localhost:5000/api/v1/uploads/2020-09-05T07_28_23.477ZEggsBenedict.jpg', 23000, 3, '2020-09-05 07:28:23', '2020-09-05 07:28:23');

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
(2, 'dewondofriemorn.s4a@gmail.com', '$2a$10$dIZVndj1Km03iq4lHB1dzOIAD7pqAf0zF6Wy5CtQo22ESQt6PYsJ6', 1, 'Dewondo', 'Friemorn', '2020-08-22 06:07:50', '2020-08-22 06:07:50'),
(3, 'qwerty123@gmail.com', '$2a$10$puaMINsdH/2SythhpFF/c.ckI5N0mBYpTOtINtvgRw1D0I6ZgwE.y', 2, 'Dewondo', 'Friemorn', '2020-08-22 06:34:22', '2020-08-22 06:34:22'),
(9, 'df7@gmail.com', '$2a$10$uaHGg1TFldBp.mCS2zHCweObhIYGNTcX2N/akgxTpiuH/fsWMSwZK', 2, 'Dewondo', 'Friemorn', '2020-08-29 14:02:37', '2020-08-29 14:02:37'),
(10, 'coba@gmail.com', '$2a$10$41okGO6Gp6Aq4YxmVUws7Or7OLiu9ujkLRJAJwtq3aGgl9skIzv5C', 2, 'tes', 'aja', '2020-08-31 04:24:16', '2020-08-31 04:24:16'),
(13, 'x@gmail.com', '$2a$10$fNy2Epr9TnnlCORefXiDyOfDAc2RmmMtJWLWhzHrV5ivnb4Xqj.3K', 2, '1', '1', '2020-09-06 15:42:00', '2020-09-06 15:42:00'),
(14, 'test@gmailcom', '$2a$10$xUdNGofkTB15G8GqRWl8ZuKwLFh06IwO65.kPpbx2Lq2MGgKQTCvW', 2, 'df', '7', '2020-09-07 07:10:03', '2020-09-07 07:10:03'),
(20, 'dewondofriemorn@gmail.com', '$2a$10$MdeMy8nK/S2FLncZu.05Ze0WDsCzdWqnUTWx7F2QjjTFWmPQ/pQ4q', 2, 'Dewondo', 'Friemorn', '2020-10-07 08:35:59', '2020-10-07 08:35:59');

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
  MODIFY `idHistory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
