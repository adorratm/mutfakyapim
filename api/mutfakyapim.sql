-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 08:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutfakyapim`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(4) DEFAULT 1,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `email`, `password`, `lang`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'ssl', 'smtp.yandex.com.tr', 465, 'emrekilic@mutfakyapim.com', 'my12345', 'tr', 1, 1, '2022-11-25 08:17:48', '2023-03-10 20:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `top_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `target` enum('_self','_blank','_parent','_top') DEFAULT '_self',
  `position` enum('HEADER','HEADER_RIGHT','MOBILE','FOOTER','FOOTER2') DEFAULT 'HEADER',
  `lang` char(2) DEFAULT 'tr',
  `rank` int(11) DEFAULT 0,
  `isActive` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `codes_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `seo_url` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `vat` int(11) DEFAULT 8,
  `stock` int(11) DEFAULT 0,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(4) DEFAULT 1,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `top_id` int(11) DEFAULT NULL,
  `codes_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `seo_url` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` int(11) DEFAULT 0,
  `isActive` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `top_id`, `codes_id`, `title`, `seo_url`, `img_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `codes`) VALUES
(13, NULL, 1, ' xvxcvxcv', NULL, NULL, NULL, 'tr', 0, 1, '2022-12-05 14:36:29', '2023-03-10 20:40:09', NULL),
(14, 13, 2, 'czxc', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-05 14:36:29', '2022-12-05 14:38:21', NULL),
(15, NULL, 3, ' xvxcvxcvvcbvre', NULL, NULL, NULL, 'tr', 0, 1, '2022-12-05 14:36:29', '2022-12-05 14:36:29', NULL),
(18, 15, 1, ' xvxcvxcv', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-05 14:36:29', '2022-12-07 09:36:12', NULL),
(19, 13, 2, 'czxc', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-05 14:36:29', '2023-03-10 20:40:05', NULL),
(20, 18, 3, ' xvxcvxcvvcbvre', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-05 14:36:29', '2022-12-07 09:36:14', NULL),
(21, 20, 1, ' xvxcvxcv', NULL, NULL, NULL, 'tr', 1, 1, '2022-12-05 14:36:29', '2022-12-07 09:36:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `codes_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` int(11) DEFAULT 1,
  `isActive` tinyint(4) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `mobile_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `analytics` longtext DEFAULT NULL,
  `metrica` longtext DEFAULT NULL,
  `live_support` longtext DEFAULT NULL,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` tinyint(1) DEFAULT 1,
  `lang` char(2) DEFAULT 'tr',
  `address_informations` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `logo`, `mobile_logo`, `favicon`, `email`, `facebook`, `instagram`, `linkedin`, `youtube`, `meta_keywords`, `meta_description`, `analytics`, `metrica`, `live_support`, `rank`, `createdAt`, `updatedAt`, `isActive`, `lang`, `address_informations`) VALUES
(1, 'Mutfak Yapım', 'Mutfak Yapım Filmcilik Müzik Organizasyon Sanayi ve Ticaret Limited Şirketi', 'b6531b6abce5d2f0c86796ea30b3983f.webp', 'f6827f8346e414e12e99908a95b215f8.webp', '9bd409d133ec939879a46831ceb2436a.webp', 'emrekilic@mutfakyapim.com', 'https://www.facebook.com/mutfakyapim', 'https://www.instagram.com/mutfak.yapim', 'https://tr.linkedin.com/company/mutfakyapim', 'https://www.youtube.com/@mutfakyapm1704', NULL, 'Mutfak Yapım; Sosyal Medya Yönetimi, Dijital Pazarlama, Web tasarım, E ticaret Sitesi, Tanıtım Filmi alanlarında faaliyet gösteren İzmir merkezli reklam şirketidir.', NULL, NULL, NULL, 1, '2022-11-07 13:18:03', '2023-03-10 20:38:55', 1, 'tr', '\"[{\\\"address\\\":\\\"Alsancak, Alsancak Mh. 1440 sk. No: 13 D:1, 35220 Konak\\/\\u0130zmir\\\",\\\"map\\\":\\\"<iframe class=\\\\\\\"lazyload\\\\\\\" data-src=\\\\\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d25001.90443331817!2d27.143839!3d38.43597!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbd8f738f4b3ef%3A0xc16c75aa798b6e48!2sMutfak%20Yap%C4%B1m%20Dijital%20Reklam%20Ajans%C4%B1!5e0!3m2!1sen!2str!4v1678468993989!5m2!1sen!2str\\\\\\\" width=\\\\\\\"100%\\\\\\\" height=\\\\\\\"450\\\\\\\" style=\\\\\\\"border:0;\\\\\\\" allowfullscreen=\\\\\\\"\\\\\\\" loading=\\\\\\\"lazy\\\\\\\" referrerpolicy=\\\\\\\"no-referrer-when-downgrade\\\\\\\"><\\/iframe>\\\",\\\"phones\\\":[{\\\"phone\\\":\\\"+90 232 403 20 02\\\",\\\"whatsapp\\\":\\\"+90 232 403 20 02\\\",\\\"fax\\\":\\\"+90 232 403 20 02\\\"}]}]\"');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive ',
  `role_id` int(11) DEFAULT 2,
  `rank` int(11) DEFAULT 1,
  `lang` char(2) DEFAULT 'tr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `createdAt`, `updatedAt`, `isActive`, `role_id`, `rank`, `lang`) VALUES
(1, 'Mutfak', 'Yapım', 'info@mutfakyapim.com', '0a7483867a2442352e2b86d4b4910826', '05494410120', '2022-10-07 11:20:08', '2022-10-12 13:44:59', 1, 1, 1, 'tr'),
(2, 'Emre', 'KILIÇ', 'emrekilic@mutfakyapim.com', '0a7483867a2442352e2b86d4b4910826', '05494410120', '2022-10-07 11:20:08', '2023-03-10 20:39:53', 1, 1, 2, 'tr');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `isActive` tinyint(4) DEFAULT 1,
  `isCover` tinyint(4) DEFAULT 0,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `title`, `permissions`, `isActive`, `isCover`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', '{\"AuthController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"CodesController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"EmailSettingsController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"ProductCategoriesController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"ProductsController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"SettingsController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"UserRolesController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"UsersController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"FrontendAuthController\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"Welcome\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, 1, 1, '2022-11-28 09:26:09', '2023-03-10 20:39:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
