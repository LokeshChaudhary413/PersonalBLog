-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 01:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_lifecoach`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `keyword`, `slug`, `title`, `short_desc`, `desc`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, '#Keyword for this post', 'we-exist', 'Post Title 1', 'We exist for non-profits, social enterprises, activists. Lorem politicians and individual citizens.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1621507385.jpg', '1', '2021-05-20 05:13:06', '2021-05-20 05:13:06'),
(4, '#Keyword for this post', 'we-exist-for', 'Post Title 2', 'We exist for non-profits, social enterprises, activists. Lorem politicians and individual citizens.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1621508779.jpg', '1', '2021-05-20 05:36:19', '2021-05-20 05:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(11) NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `time`, `created_at`, `updated_at`) VALUES
(1, 'test', 'rtret@dgdsg.com', 7686876876, '10:24:00', '2021-05-19 23:24:47', '2021-05-19 23:24:47'),
(2, 'test', 'rtret@dgdsg.com', 7686876876, '10:24:00', '2021-05-19 23:26:36', '2021-05-19 23:26:36'),
(3, 'test', 'test@test.com', 7686876876, '10:30:00', '2021-05-19 23:30:34', '2021-05-19 23:30:34'),
(4, 'test', 'test@test.com', 7686876876, '10:35:00', '2021-05-19 23:35:53', '2021-05-19 23:35:53'),
(5, 'test', 'test@test.com', 7686876876, '10:35:00', '2021-05-19 23:36:24', '2021-05-19 23:36:24'),
(6, 'test', 'test@test.com', 7686876876, '10:35:00', '2021-05-19 23:37:11', '2021-05-19 23:37:11'),
(7, 'test', 'test@test.com', 7686876876, '03:37:00', '2021-05-19 23:37:26', '2021-05-19 23:37:26'),
(8, 'test', 'test@test.com', 7686876876, '10:38:00', '2021-05-19 23:38:04', '2021-05-19 23:38:04'),
(9, 'test', 'test@test.com', 7686876876, '10:50:00', '2021-05-19 23:44:27', '2021-05-19 23:44:27'),
(10, 'test', 'test@test.com', 7686876876, '10:46:00', '2021-05-19 23:46:38', '2021-05-19 23:46:38'),
(11, 'test', 'test@test.com', 7686876876, '10:46:00', '2021-05-19 23:47:13', '2021-05-19 23:47:13'),
(12, 'test', 'test@test.com', 7686876876, '11:41:00', '2021-05-20 00:36:43', '2021-05-20 00:36:43'),
(13, 'test', 'test@test.com', 7686876876, '11:38:00', '2021-05-20 00:38:03', '2021-05-20 00:38:03'),
(14, 'test', 'test@test.com', 7686876876, '11:38:00', '2021-05-20 00:38:21', '2021-05-20 00:38:21'),
(15, 'test', 'test@test.com', 7686876876, '11:38:00', '2021-05-20 00:38:36', '2021-05-20 00:38:36'),
(16, 'test', 'test@test.com', 7686876876, '11:38:00', '2021-05-20 00:38:44', '2021-05-20 00:38:44'),
(17, 'test', 'rtret@dgdsg.com', 7686876876, '11:39:00', '2021-05-20 00:39:15', '2021-05-20 00:39:15'),
(18, 'test', 'test@test.com', 7686876876, '12:01:00', '2021-05-20 01:01:40', '2021-05-20 01:01:40'),
(19, 'test', 'test@test.com', 7686876876, '12:01:00', '2021-05-20 01:01:40', '2021-05-20 01:01:40'),
(20, 'test', 'test@test.com', 7686876876, '12:01:00', '2021-05-20 01:02:08', '2021-05-20 01:02:08'),
(21, 'test', 'test@test.com', 7686876876, '12:01:00', '2021-05-20 01:02:08', '2021-05-20 01:02:08'),
(22, 'test', 'test@test.com', 7686876876, '12:03:00', '2021-05-20 01:03:33', '2021-05-20 01:03:33'),
(23, 'test', 'test@test.com', 7686876876, '12:05:00', '2021-05-20 01:05:03', '2021-05-20 01:05:03'),
(24, 'test', 'test@test.com', 7686876876, '12:05:00', '2021-05-20 01:05:57', '2021-05-20 01:05:57'),
(25, 'test', 'test@test.com', 7686876876, '12:05:00', '2021-05-20 01:06:28', '2021-05-20 01:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_20_040231_create_contacts_table', 1),
(2, '2021_05_20_080333_create_blogs_table', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
