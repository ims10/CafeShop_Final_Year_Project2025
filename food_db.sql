-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2025 at 12:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(3, 'Indrajeet', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(5, 'Akshay', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(41, 2, 13, 'Latte', 209, 1, 'latte-1659544996.webp'),
(42, 2, 33, 'ChickenBurger', 140, 1, 'burger-2.png'),
(43, 2, 35, 'Pepperoni', 140, 1, 'pizza-3.png'),
(44, 2, 43, 'Spanish Shot', 89, 1, 'drink-5.png'),
(45, 2, 27, 'ChocoCupcake', 49, 1, 'dessert-4.png'),
(46, 2, 29, 'Yogurt ', 99, 1, 'dessert-1.png'),
(55, 2, 12, 'Cortado', 129, 1, 'cortado-1659544996.webp');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `age`, `sex`, `phone`, `email`, `address`, `password`) VALUES
(1, 'employee', 22, 'male', 1521509030, 'mk@gmial.com', 'Patan, Dhaka 1212', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(8, 'employee2', 26, 'male', 1234123412, 'emp2@gmail.com', 'karad, karad', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'mithun', 'dfvvfdgf@gmaidsd.com', '845595', 'good'),
(2, 0, 'mxn vhxbcv', 'mk@gmial.com', '684684684', 'hcjhscbasjcabs'),
(3, 1, 'asif', 'mk@gmail.com', '89898', 'good site'),
(4, 0, 'Akshay', 'ak@gmail.com', '1234512345', 'It is very Good');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(9, 2, 'abc', '1234567890', 'abc@gmail.com', 'cash on delivery', '12, 1, das, asa, asa, asa, asa - 12345', 'Cappuccino (200 x 1) - Latte (20 x 1) - ', 220, '2025-03-17', 'pending'),
(10, 3, 'Shubham', '1000000001', 'shubhu@gmail.com', 'cash on delivery', 'x, y, z, mumbia, mumbia, ram nagar rod, india - 55555', 'Cappuccino (200 x 1) - ', 200, '2025-03-20', ''),
(11, 1, 'Akshay', '0152150903', 'ak@gmail.com', 'cash on delivery', '12, 1, Vaduj, Satar, Satar, Maharashatra, India - 412110', 'Red Eye (20 x 1) - Cappuccino (200 x 1) - Espresso Romano (20 x 1) - ChocoCupcake (10 x 1) - Yogurt  (15 x 1) - ', 265, '2025-03-24', 'successfull'),
(12, 2, 'Indrajeet', '1234567890', 'ims@gmail.com', 'cash on delivery', '12, 108, Karad, Satar, Satar, Maharashatra, India - 412110', 'ChickenBurger (40 x 1) - Latte (20 x 1) - Yogurt  (15 x 1) - ChocoCupcake (10 x 1) - ', 85, '2025-03-24', 'successfull'),
(13, 1, 'Akshay', '0152150903', 'ak@gmail.com', 'cash on delivery', '12, 1, Vaduj, Satar, Satar, Maharashatra, India - 412110', 'Cortado (129 x 1) - Latte (209 x 1) - ChickenBurger (140 x 1) - Pepperoni (140 x 7) - ', 1458, '2025-04-08', ''),
(14, 1, 'Akshay', '0152150903', 'ak@gmail.com', 'cash on delivery', '12, 1, Vaduj, Satar, Satar, Maharashatra, India - 412110', 'Cappuccino (149 x 1) - Espresso Romano (229 x 1) - ', 378, '2025-04-21', 'pending'),
(15, 1, 'Akshay', '0152150903', 'ak@gmail.com', 'cash on delivery', '12, 1, Vaduj, Satar, Satar, Maharashatra, India - 412110', 'Cappuccino (149 x 1) - ', 149, '2025-04-21', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `popularity` int(8) DEFAULT NULL,
  `disprice` int(10) DEFAULT NULL,
  `desc` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `popularity`, `disprice`, `desc`) VALUES
(11, 'Cappuccino', 'coffee', 149, 'cappuccino-1659544996.png', 10, NULL, NULL),
(12, 'Cortado', 'coffee', 129, 'cortado-1659544996.webp', NULL, NULL, NULL),
(13, 'Latte', 'coffee', 209, 'latte-1659544996.webp', NULL, NULL, NULL),
(14, 'Red Eye', 'coffee', 219, 'red-eye-1659544996.webp', NULL, NULL, NULL),
(15, 'Mocha', 'coffee', 169, 'mocha-1659544996.webp', NULL, NULL, NULL),
(16, 'Raf', 'coffee', 189, 'raf-1659544996.webp', NULL, NULL, NULL),
(17, 'Macchiato', 'coffee', 159, 'macchiato-1659544996.webp', 8, NULL, NULL),
(18, 'Cold Brew', 'coffee', 209, 'cold-brew-1659544996.webp', NULL, NULL, NULL),
(19, 'Espresso Con Panna', 'coffee', 289, 'espresso-con-panna-1659544996.webp', 5, NULL, NULL),
(20, 'Café Cubano', 'coffee', 249, 'cafe-cubano-1659544996.webp', NULL, NULL, NULL),
(21, 'Espresso Romano', 'coffee', 229, 'espresso-romano-1659544996.webp', NULL, NULL, NULL),
(22, 'Long Black', 'coffee', 129, 'long-black-1659544996.webp', 6, NULL, NULL),
(23, 'Caffè Breve', 'coffee', 199, 'caffe-breve-1659544996.webp', NULL, NULL, NULL),
(24, 'Affogato', 'coffee', 139, 'affogato-1659544996.webp', NULL, NULL, NULL),
(25, 'Quad shots', 'coffee', 239, 'quad-shots-1659544996.webp', NULL, NULL, NULL),
(26, 'Mexican coffee', 'coffee', 149, 'mexican-coffee-1659544996.webp', NULL, NULL, NULL),
(27, 'ChocoCupcake', 'desserts', 49, 'dessert-4.png', NULL, NULL, NULL),
(28, 'Peddings', 'desserts', 69, 'dessert-2.png', NULL, NULL, NULL),
(29, 'Yogurt ', 'desserts', 99, 'dessert-1.png', NULL, NULL, NULL),
(30, 'BeryPei', 'desserts', 129, 'dessert-6.png', NULL, NULL, NULL),
(31, 'Choco Yogurt', 'desserts', 69, 'dessert-3.png', NULL, NULL, NULL),
(32, 'CheeseBurger', 'main dish', 179, 'burger-1.png', NULL, NULL, NULL),
(33, 'ChickenBurger', 'main dish', 140, 'burger-2.png', NULL, NULL, NULL),
(34, 'Deluxe Pizza', 'main dish', 359, 'pizza-1.png', NULL, NULL, NULL),
(35, 'Pepperoni', 'main dish', 140, 'pizza-3.png', NULL, NULL, NULL),
(36, 'Cheese Mania', 'fast food', 429, 'pizza-2.png', NULL, NULL, NULL),
(37, 'Pasta Dish', 'main dish', 200, 'dish-3.png', NULL, NULL, NULL),
(38, 'Orn Nudels', 'main dish', 180, 'dish-1.png', NULL, NULL, NULL),
(39, 'Hot Choco', 'drinks', 80, 'drink-2.png', NULL, NULL, NULL),
(40, 'Matcha Latte', 'drinks', 99, 'drink-3.png', NULL, NULL, NULL),
(41, 'Cocke shot', 'drinks', 89, 'drink-4.png', NULL, NULL, NULL),
(42, 'Orange Latte', 'drinks', 49, 'drink-1.png', NULL, NULL, NULL),
(43, 'Spanish Shot', 'drinks', 89, 'drink-5.png', NULL, NULL, NULL),
(44, 'Blue Lime Mojito', 'drinks', 79, 'Blue-Lime-Mojito-min.png', NULL, NULL, NULL),
(45, 'Grilled Chees Sandwich', 'fast food', 189, 'grilled chees sandwich.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tablebooking`
--

CREATE TABLE `tablebooking` (
  `id` int(150) NOT NULL,
  `persons` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablebooking`
--

INSERT INTO `tablebooking` (`id`, `persons`, `date`, `time`) VALUES
(1, '1', '2025-04-08', '05:45:00.000000'),
(2, '1', '2025-04-24', '12:25:00.000000'),
(3, '4', '2025-04-24', '12:27:00.000000'),
(4, '1 person', '2025-07-19', '19:00:00.000000'),
(5, '1 person', '2025-07-19', '19:00:00.000000'),
(6, '1 person', '2025-07-19', '19:00:00.000000'),
(7, '5 person', '2025-06-29', '20:00:00.000000'),
(8, '6 person', '2025-07-20', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Akshay', 'ak@gmail.com', '0152150903', '7c4a8d09ca3762af61e59520943dc26494f8941b', '12, 1, Vaduj, Satar, Satar, Maharashatra, India - 412110'),
(2, 'Indrajeet', 'ims@gmail.com', '1234567890', '7c4a8d09ca3762af61e59520943dc26494f8941b', '12, 108, Karad, Satar, Satar, Maharashatra, India - 412110'),
(3, 'Shubham', 'shubhu@gmail.com', '1000000001', 'c7941a7d8afa77569071a3ebe2855eb7b5f91196', 'x, y, z, mumbia, mumbia, ram nagar rod, india - 55555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablebooking`
--
ALTER TABLE `tablebooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tablebooking`
--
ALTER TABLE `tablebooking`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
