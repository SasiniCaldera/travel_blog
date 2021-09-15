-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 09:26 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(3, 'romantic', '2021-09-14 13:06:00', '2021-09-14 13:06:00'),
(4, 'historical', '2021-09-14 13:07:14', '2021-09-14 13:07:14'),
(5, 'cutural', '2021-09-14 13:07:26', '2021-09-14 13:07:26'),
(6, 'weekend', '2021-09-14 13:07:45', '2021-09-14 13:07:45'),
(7, 'natural', '2021-09-14 13:08:06', '2021-09-14 13:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2021_09_13_192111_create_posts_table', 1),
('2021_09_13_192301_create_profile_table', 1),
('2021_09_13_192346_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_body`, `category_id`, `post_image`, `created_at`, `updated_at`) VALUES
(4, 2, 'paris', 'Paris (nicknamed the \"City of Light\") is the capital city of France, and the largest city in France. ... Paris is also the center of the French economy, politics, traffic, and culture. Paris has many art museums and historical buildings. As a traffic center, Paris has a very good underground subway system (called the Metro).', 3, 'http://127.0.0.1/blog/public/posts/275px-La_Tour_Eiffel_vue_de_la_Tour_Saint-Jacques,_Paris_août_2014_(2).jpg', '2021-09-14 18:22:30', '2021-09-14 22:04:12'),
(6, 2, 'Sigiriya', 'Sigiriya is an ancient rock fortress and palace built by King Kashyapa during the reign of 473 – 495 which is standing majestically 660 feet straight up. ... The word Sigiriya or the Sinhagiri means the Lion\'s Rock where you have to climb up 1200 steps before you reach the Lion Rock Fortress on top of Sigiriya.', 7, 'http://127.0.0.1/blog/public/posts/120983339-panorama-sunrise-view-of-sigiriya-rock-lion-rock-from-pidurangala-rock-in-sri-lanka.jpg', '2021-09-14 18:33:00', '2021-09-14 18:33:00'),
(7, 2, 'Taj mahal', 'An immense mausoleum of white marble, built-in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favorite wife, the Taj Mahal is the jewel of Muslim art in India and one of the universally admired masterpieces of the world\'s heritage.', 4, 'http://127.0.0.1/blog/public/posts/taj.jpg', '2021-09-14 22:20:25', '2021-09-14 22:20:25'),
(8, 3, 'temple of tooth', 'Temple of the Sacred Tooth Relic; commonly known as the ශ්‍රී දළදා මාළිගාව (Glorious Tooth Temple), is a Buddhist temple in Kandy, Sri Lanka. It is located in the royal palace complex of the former Kingdom of Kandy, which houses the relic of the tooth of the Buddha.', 5, 'http://127.0.0.1/blog/public/posts/images (1).jpg', '2021-09-14 22:32:29', '2021-09-14 22:38:07'),
(9, 3, 'galle', 'Galle (Sinhala: ගාල්ල, romanized: Gālla; Tamil: காலி, romanized: Kāli) (formerly Point de Galle) is a major city in Sri Lanka, situated on the southwestern tip, 119 kilometers (74 mi) from Colombo. ... The Galle fort is a world heritage site and is the largest remaining fortress in Asia built by European occupiers.', 6, 'http://127.0.0.1/blog/public/posts/images.jpg', '2021-09-14 22:36:40', '2021-09-14 22:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'sasini', 'http://127.0.0.1/blog/public/uploads/download.jpg', '2021-09-14 14:55:21', '2021-09-14 14:55:21'),
(2, 2, 'nadeeshan', 'http://127.0.0.1/blog/public/uploads/istockphoto-1158014305-612x612.jpg', '2021-09-14 15:00:27', '2021-09-14 15:00:27'),
(3, 3, 'sasini', 'http://127.0.0.1/blog/public/uploads/download.jpg', '2021-09-14 17:51:01', '2021-09-14 17:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sasini Caldera', 'sasinimadushika23@gmail.com', '$2y$10$39REClwahoRwYatpErOIA.UQGsnI0CjCkXy7HM2Bf6Z.mnXRTBOwW', 'Lp0vkKMMX7lapCFNNUE5oRXr66dWTdfVT7VNGRf4vYnT8OV3fIbTwMk3q6Mq', '2021-09-14 04:19:47', '2021-09-14 14:58:30'),
(2, 'nadeeshan', 'nadeeshan@gmail.com', '$2y$10$8ME9JkV6bpHr5V8TE3Zek.cSKegxXmG4Bq1Z2wOQ9cIWZ7hIvvQTy', 'J4WOpcucVa79FR7OUCRelY3bJNkPSPspOtgoZA6fBYuh1vZKi1GbyfVSPJva', '2021-09-14 14:59:13', '2021-09-15 13:34:52'),
(3, 'Sasini madushika', 'sasini@gmail.com', '$2y$10$5Sk2RjwRJKJJ4GsmhmDo7OfPn1dGVTAIMkBxw2ckLv4XuIlzjxGNy', 'h7BB1EjqNiLPjH3B1RaCxDVIo6wS5OGPoIUOdusst6UXHE59StCh0IBF9rtS', '2021-09-14 15:08:30', '2021-09-15 13:33:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
