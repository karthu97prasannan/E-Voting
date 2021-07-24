-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2021 at 05:43 PM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `nominee` int(11) NOT NULL,
  `supportee` int(11) NOT NULL,
  `votes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `photo`, `student_id`, `post_id`, `nominee`, `supportee`, `votes`, `created_at`, `updated_at`) VALUES
(1, 'uploads/candidate_pictures/db23156ab8c8dc15bc808582f9c55186.jpg', 5, 2, 7, 6, 0, '2021-05-20 02:09:59', '2021-05-29 22:33:51'),
(2, 'uploads/candidate_pictures/e294de0db6424affe6571e4dc23a08be.jpg', 10, 2, 12, 9, 1, '2021-05-20 02:10:40', '2021-05-29 22:29:52'),
(3, 'uploads/candidate_pictures/0964ae2760db9d6c638468a82e713ee9.jpg', 1, 3, 4, 2, 1, '2021-05-29 22:42:58', '2021-05-29 22:42:58'),
(4, 'uploads/candidate_pictures/0457b48a77d6746cef26d9390409f644.jpg', 2, 3, 2, 4, NULL, '2021-05-30 01:18:09', '2021-05-30 01:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `name`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'Main', '2021-05-22 10:00:00', '2021-05-26 10:00:00', '2021-05-19 19:14:16', '2021-05-19 19:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Maths', '2021-05-25 07:55:22', '2021-05-25 07:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2020_07_12_000000_create_otps_table', 2),
(10, '2021_05_18_124416_create_tags_table', 4),
(21, '2014_10_12_000000_create_users_table', 5),
(22, '2014_10_12_100000_create_password_resets_table', 5),
(23, '2015_08_04_131614_create_settings_table', 5),
(24, '2019_08_19_000000_create_failed_jobs_table', 5),
(25, '2021_05_18_130414_create_students_table', 5),
(26, '2021_05_18_140649_create_notifications_table', 6),
(27, '2021_05_18_204622_create_elections_table', 6),
(28, '2021_05_18_204659_create_candidates_table', 6),
(29, '2021_05_18_223234_create_posts_table', 6),
(30, '2021_05_25_132350_create_exams_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `notification`, `created_at`, `updated_at`) VALUES
(1, 'Welcome!', 'Dear student, welcome to our election portal!!!', '2021-05-19 19:02:21', '2021-05-19 19:02:21'),
(2, 'Election Time Decided', 'Election time for Main Election has been declared by the principal today.', '2021-05-29 23:50:21', '2021-05-29 23:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_req_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retry` tinyint(4) NOT NULL,
  `status` enum('new','used','expired') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post`, `created_at`, `updated_at`) VALUES
(1, 'Sports Minister', '2021-05-19 21:13:09', '2021-05-19 21:13:09'),
(2, 'Tech Minister', '2021-05-19 21:13:26', '2021-05-19 21:13:26'),
(3, 'Finance Minister', '2021-05-20 01:44:05', '2021-05-20 01:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `ktu_id`, `email_id`, `mobile_no`, `year`, `branch`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Park Chanyeol', 'CEA17CS001', 'chan@exo.com', '8987987689', '4', 'Computer Science and Engineering', 'zaq, 675/12, cde, 897676', 'uploads/profile_pictures/5fed65714055db5ac3b3884a709c81ee.jpg', '2021-05-20 01:26:51', '2021-05-30 00:35:30'),
(2, 'Suho', 'CEA17CS002', 'suho@exo.com', '6787978776', '4', 'Computer Science and Engineering', 'zsa, xsw, cde, vfr', 'uploads/profile_pictures/729bb7a1487bd3c49bfd0e63ed81112f.jpg', '2021-05-20 01:29:04', '2021-05-30 00:35:22'),
(3, 'xuimin', 'CEA17CS003', 'xuimin@exo.com', '82978878372', '4', 'Computer Science and Engineering', 'cde', 'uploads/profile_pictures/4205014cce6c3e8ed5569fe99f351188.jpg', '2021-05-20 01:31:10', '2021-05-30 00:35:12'),
(4, 'Do Kyungsoo', 'CEA17CS004', 'do@exo.com', '4516281901', '4', 'Electronics and Communication Engineering', 'cdevrr', 'uploads/profile_pictures/10ea30e011d95cc9020aae677195ddbe.jpg', '2021-05-20 01:33:24', '2021-05-30 00:38:00'),
(5, 'Mark Lee', 'CEA17EC001', 'sherinshifana1997@gmail.com', '8086068026', '4', 'Electronics and Communication Engineering', 'cdr, vfr, bgt', 'uploads/profile_pictures/d587c3a00e4759639fad4621ef8e6f99.jpg', '2021-05-20 01:35:24', '2021-05-30 00:37:45'),
(6, 'Jaemin', 'CEA17EC002', 'jaemin@dream.com', '782639189', '4', 'Electronics and Communication Engineering', 'vhgsbv, vuewjg', 'uploads/profile_pictures/b8dfb075659a25cdbb032697eb29518a.jpg', '2021-05-20 01:36:18', '2021-05-30 00:37:27'),
(7, 'Park Jisung', 'CEA17EC003', 'jisung@dream.com', '2637698182', '4', 'Electronics and Communication Engineering', 'nryei, hjgreu', 'uploads/profile_pictures/a54e347d182f2675d8584ce62c923f0e.jpg', '2021-05-20 01:37:31', '2021-05-30 00:38:57'),
(8, 'Renjun', 'CEA17EC004', 'renjun@dream.com', '238274931', '4', 'Electronics and Communication Engineering', 'jhrhd, bfreyiu', 'uploads/profile_pictures/863a3fa04767c4f83bd6bee75f8a6621.jpg', '2021-05-20 01:38:19', '2021-05-30 00:37:00'),
(9, 'Yook Sungjae', 'CEA17EE001', 'sungjae@btob.com', '3721891237', '4', 'Electrical and Electrical Engineering', 'vfr, bht , 728/12', 'uploads/profile_pictures/15fb56c56f54aa286b34c5d8eef26bbc.jpg', '2021-05-20 01:40:00', '2021-05-30 00:36:32'),
(10, 'Hwang In Yeop', 'CEA17EE002', 'inyeop@tb.com', '6327819281', '4', 'Electrical and Electrical Engineering', '786/23', 'uploads/profile_pictures/047a0b7b289be1638afd90d5f6c8b0bb.jpg', '2021-05-20 01:41:02', '2021-05-30 00:36:19'),
(11, 'In Guk', 'CEA17EE003', 'inguk@mm.com', '3872391821', '4', 'Electrical and Electrical Engineering', 'vghsd, 644/12', 'uploads/profile_pictures/13b56a6761e03568c9a332f8900a6966.jpg', '2021-05-20 01:42:03', '2021-05-30 00:36:07'),
(12, 'Juyeon', 'CEA17EE004', 'juyeon@tbz.com', '281791872', '4', 'Electrical and Electrical Engineering', '564/21', 'uploads/profile_pictures/d2af620d192a97412a9fbb34d210348d.jpg', '2021-05-20 01:43:08', '2021-05-30 00:35:49'),
(13, 'Sherin', 'CEA18CS008', 'sherin@ha.com', '8086080895', 'S1', 'Computer Science and Engineering', 'cde, 9087/89', 'uploads/profile_pictures/a994fed09ccdb70a5c5979bc330aa18e.jpg', '2021-05-25 08:12:11', '2021-05-30 00:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vote_status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `vote_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Park Chanyeol', 'chan@exo.com', NULL, '$2y$10$xkOzBgdXiutab8IJA8PaJebjxW4iV9ohYswXwOdv.ZWHjdSXf9HCS', 0, NULL, '2021-05-20 01:26:50', '2021-05-20 01:26:50'),
(2, 'Suho', 'suho@exo.com', NULL, '$2y$10$h2.AYWTaW4sWA0r5NQ5Rvu80PuY5TRkpQxTDAo90GLHx9eEOi4bdm', 0, NULL, '2021-05-20 01:29:04', '2021-05-20 01:29:04'),
(3, 'xuimin', 'xuimin@exo.com', NULL, '$2y$10$tKNBgk.EzgBO5UoWW539U.kODyDJfpN3se1boUE3GEuCv1.nxlKAO', 0, NULL, '2021-05-20 01:31:10', '2021-05-20 01:31:10'),
(4, 'Do Kyungsoo', 'do@exo.com', NULL, '$2y$10$PKjJuh7KCIdbu9/kEXl28eM/GVYogeHC6wKhUX205t5BgH2VLTbVi', 0, NULL, '2021-05-20 01:33:24', '2021-05-20 01:33:24'),
(5, 'Mark Lee', 'sherinshifana1997@gmail.com', NULL, '$2y$10$g68frajulJc63dQzTbYDeOuiD2HCvGPABBfrDSH1vEmh6tBPi1ofa', 0, NULL, '2021-05-20 01:35:24', '2021-05-25 09:41:00'),
(6, 'Jaemin', 'jaemin@dream.com', NULL, '$2y$10$E27SUwdk6ebVhLAkG79gQOwGu14Cjkmo3jKWdrcLEHMKCfiyY9wcq', 0, NULL, '2021-05-20 01:36:18', '2021-05-20 01:36:18'),
(7, 'Park Jisung', 'jisung@dream.com', NULL, '$2y$10$CiF8.8RH7z/yJfVzkrezUORUyIQiw4eQ556q7ONaD50VS.DJ7DNmq', 0, NULL, '2021-05-20 01:37:30', '2021-05-20 01:37:30'),
(8, 'Renjun', 'renjun@dream.com', NULL, '$2y$10$tBWV083Hrn5p/qDK//FRKe5PalWEnsInG6qtkWHGHs38Agu/ow.da', 0, NULL, '2021-05-20 01:38:19', '2021-05-20 01:38:19'),
(9, 'Yook Sungjae', 'sungjae@btob.com', NULL, '$2y$10$HWpJBqLab.xdCeCsnl2Te.hzy2raTOU8t99CfuvThShuKmF.zdjXO', 0, NULL, '2021-05-20 01:40:00', '2021-05-20 01:40:00'),
(10, 'Hwang In Yeop', 'inyeop@tb.com', NULL, '$2y$10$3JWf3FAE.HZ1BUbBabr5s.ES79w6k3NAdNwLofYjPbWts2eIZmXDu', 0, NULL, '2021-05-20 01:41:02', '2021-05-20 01:41:02'),
(11, 'In Guk', 'inguk@mm.com', NULL, '$2y$10$oSSIQWuX83CmelcytZVhsemBaI9Ull5eu7bnatzAd6ZSxTfnpAmuC', 0, NULL, '2021-05-20 01:42:03', '2021-05-20 01:42:03'),
(12, 'Juyeon', 'juyeon@tbz.com', NULL, '$2y$10$EYFNYR1v4RqU4AEFcXERqOFsg/MzrUONnl3lskyLwJ7WKecHpSNUG', 0, NULL, '2021-05-20 01:43:08', '2021-05-20 01:43:08'),
(13, 'Sherin', 'sherin@ha.com', NULL, '$2y$10$JNJRxR4EYhWXZ2bxw4bU.us4q9V46.HcYVQfzRYu0h4PxdO5dLU8K', NULL, NULL, '2021-05-25 08:12:10', '2021-05-25 08:12:10'),
(14, 'EVOTING ADMIN', 'admin.evoting@gmail.com', NULL, '$2y$10$VFhyjOQyp88pw8MVcyVLju8KVxBr0AHDM8x6mGE.dwNKXG4Vx4YGW', NULL, NULL, '2021-05-29 22:20:41', '2021-05-29 22:20:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_client_req_id_uuid_status_type_index` (`client_req_id`,`uuid`,`status`,`type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_ktu_id_unique` (`ktu_id`),
  ADD UNIQUE KEY `students_email_id_unique` (`email_id`),
  ADD UNIQUE KEY `students_mobile_no_unique` (`mobile_no`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
