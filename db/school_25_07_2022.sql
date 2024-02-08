-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2022 at 10:28 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 1, 5, 8, 2, '2022-03-27 11:45:04', '2022-03-27 11:45:04'),
(2, 4, NULL, 2, 6, 8, 5, '2022-03-27 11:54:34', '2022-03-27 11:54:34'),
(3, 5, NULL, 3, 4, 2, 2, '2022-04-05 12:02:14', '2022-04-05 12:02:14'),
(4, 8, NULL, 4, 6, 8, 2, '2022-05-11 11:51:17', '2022-05-11 11:51:17'),
(5, 9, NULL, 5, 5, 8, 2, '2022-05-28 04:04:40', '2022-05-28 04:04:40'),
(6, 10, NULL, 5, 4, 8, 2, '2022-05-28 04:47:51', '2022-05-28 04:47:51'),
(8, 12, NULL, 5, 6, 2, 2, '2022-05-28 07:29:24', '2022-05-28 07:29:24'),
(9, 13, NULL, 1, 4, 2, 2, '2022-05-29 11:47:26', '2022-05-29 11:47:26'),
(10, 14, NULL, 1, 4, 2, 2, '2022-05-29 11:48:23', '2022-05-29 11:48:23'),
(11, 13, NULL, 2, 5, 2, 2, '2022-05-30 05:00:32', '2022-05-30 05:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 33, 100, '2022-03-09 09:20:01', '2022-03-09 09:20:01'),
(2, 1, 2, 100, 33, 100, '2022-03-09 09:20:01', '2022-03-09 09:20:01'),
(3, 1, 3, 100, 30, 100, '2022-03-09 09:20:01', '2022-03-09 09:20:01'),
(4, 1, 4, 100, 33, 100, '2022-03-09 09:20:01', '2022-03-09 09:20:01'),
(5, 1, 5, 100, 33, 100, '2022-03-09 09:20:01', '2022-03-09 09:20:01'),
(11, 3, 1, 100, 33, 100, '2022-03-09 09:24:30', '2022-03-09 09:24:30'),
(12, 3, 2, 100, 33, 100, '2022-03-09 09:24:30', '2022-03-09 09:24:30'),
(13, 3, 3, 100, 30, 100, '2022-03-09 09:24:30', '2022-03-09 09:24:30'),
(14, 3, 4, 100, 33, 100, '2022-03-09 09:24:30', '2022-03-09 09:24:30'),
(15, 3, 5, 100, 33, 100, '2022-03-09 09:24:30', '2022-03-09 09:24:30'),
(16, 4, 1, 100, 33, 100, '2022-03-09 09:25:47', '2022-03-09 09:25:47'),
(17, 4, 2, 100, 33, 100, '2022-03-09 09:25:47', '2022-03-09 09:25:47'),
(18, 4, 3, 100, 33, 100, '2022-03-09 09:25:47', '2022-03-09 09:25:47'),
(19, 4, 4, 100, 33, 100, '2022-03-09 09:25:47', '2022-03-09 09:25:47'),
(20, 4, 5, 100, 33, 100, '2022-03-09 09:25:47', '2022-03-09 09:25:47'),
(23, 2, 1, 100, 33, 100, '2022-03-10 10:53:02', '2022-03-10 10:53:02'),
(24, 2, 2, 100, 33, 100, '2022-03-10 10:53:02', '2022-03-10 10:53:02'),
(25, 2, 3, 100, 33, 100, '2022-03-10 10:53:02', '2022-03-10 10:53:02'),
(26, 2, 4, 100, 33, 100, '2022-03-10 10:53:02', '2022-03-10 10:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Head Teacher1', '2022-03-11 05:49:35', '2022-03-11 05:59:29'),
(2, 'Assistant Teacher', '2022-03-11 05:51:24', '2022-03-11 05:51:24'),
(3, 'Teacher', '2022-03-11 05:52:05', '2022-03-11 05:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2022-03-27 11:45:04', '2022-03-27 11:45:04'),
(2, 2, 1, 10, '2022-03-27 11:54:34', '2022-03-27 11:54:34'),
(3, 3, 1, 10, '2022-04-05 12:02:14', '2022-05-30 02:01:11'),
(4, 4, 1, 10, '2022-05-11 11:51:17', '2022-05-11 11:51:17'),
(5, 5, 1, 0, '2022-05-28 04:04:40', '2022-05-28 04:04:40'),
(6, 6, 1, 0, '2022-05-28 04:47:51', '2022-05-28 04:47:51'),
(7, 7, 1, 10, '2022-05-28 06:06:35', '2022-05-28 06:06:35'),
(8, 8, 1, 10, '2022-05-28 07:29:24', '2022-05-28 07:29:24'),
(9, 9, 1, 10, '2022-05-29 11:47:26', '2022-05-29 11:47:26'),
(10, 10, 1, 10, '2022-05-29 11:48:23', '2022-05-29 11:48:23'),
(11, 11, 1, 10, '2022-05-30 05:00:32', '2022-05-30 05:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Terminal Exam', '2022-03-06 10:54:56', '2022-03-06 11:03:45'),
(2, '2nd Terminal Exam', '2022-03-06 10:55:30', '2022-03-06 11:08:03'),
(3, '3rd Terminal Exam', '2022-03-06 10:55:42', '2022-03-06 10:55:42');

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
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration Fee', '2022-01-31 11:36:00', '2022-02-04 10:40:12'),
(2, 'Monthly Fee', '2022-01-31 11:36:12', '2022-02-04 10:40:43'),
(3, 'Exam Fee', '2022-01-31 11:36:25', '2022-02-04 10:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(13, 2, 1, 60009, '2022-02-04 10:44:24', '2022-02-04 10:44:24'),
(14, 2, 2, 6000, '2022-02-04 10:44:24', '2022-02-04 10:44:24'),
(24, 2, 1, 350, '2022-02-10 23:37:33', '2022-02-10 23:37:33'),
(28, 3, 1, 1600, '2022-03-03 09:11:50', '2022-03-03 09:11:50'),
(29, 3, 2, 1700, '2022-03-03 09:11:50', '2022-03-03 09:11:50'),
(30, 1, 1, 300, '2022-03-06 10:21:25', '2022-03-06 10:21:25'),
(31, 1, 2, 600, '2022-03-06 10:21:25', '2022-03-06 10:21:25'),
(32, 1, 3, 800, '2022-03-06 10:21:25', '2022-03-06 10:21:25');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_16_165049_create_sessions_table', 1),
(8, '2022_01_27_171017_create_student_classes_table', 3),
(9, '2022_01_29_081718_create_student_years_table', 4),
(10, '2022_01_30_144445_create_student_groups_table', 5),
(11, '2022_01_30_173717_create_student_shifts_table', 6),
(12, '2022_01_31_165930_create_fee_categories_table', 7),
(13, '2022_02_01_163036_create_fee_category_amounts_table', 8),
(14, '2022_03_06_163156_create_exam_types_table', 9),
(15, '2022_03_07_132346_create_school_subjects_table', 10),
(16, '2022_03_07_152014_create_assign_subjects_table', 11),
(17, '2022_03_11_112445_create_designations_table', 12),
(18, '2014_10_12_000000_create_users_table', 13),
(19, '2022_03_11_160937_create_assign_students_table', 14),
(20, '2022_03_11_161830_create_discount_students_table', 14);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Health', '2022-03-07 08:37:40', '2022-03-07 08:48:24'),
(2, 'English', '2022-03-07 08:39:19', '2022-03-07 08:39:19'),
(3, 'Hindi', '2022-03-08 10:35:32', '2022-03-08 10:35:32'),
(4, 'Mathematics', '2022-03-08 10:35:44', '2022-03-08 10:35:44'),
(5, 'Arts', '2022-03-08 10:35:52', '2022-03-08 10:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0nbVEp4zLsAqC2HPQKvNQRzjih7Co0mbBbSsJ1B4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTnQzRnJZejVoQmd0b3V1NlZRRU1YeEcxbDBsejBVTm9LVnJCdHQwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy92aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHZ1NGNpWUwyOTFyU1NwblFaMDB0THVYaFZiNW5ESUlLMU1JMEphT1hTbW9aVkx2UHlOWEZPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2dTRjaVlMMjkxclNTcG5RWjAwdEx1WGhWYjVuRElJSzFNSTBKYU9YU21vWlZMdlB5TlhGTyI7fQ==', 1658744682);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Class One', '2022-01-27 11:48:29', '2022-01-29 11:35:43'),
(2, 'Class Two', '2022-01-27 11:49:17', '2022-01-27 11:49:17'),
(3, 'Class Three', '2022-01-27 11:49:29', '2022-01-27 11:49:29'),
(4, 'Class Four', '2022-03-08 10:35:05', '2022-03-08 10:35:05'),
(5, 'Class Five', '2022-03-08 10:35:17', '2022-03-08 10:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Humanities', '2022-01-30 08:56:16', '2022-01-30 08:56:16'),
(5, 'Commerce', '2022-01-30 09:07:54', '2022-01-30 09:07:54'),
(8, 'Science', '2022-01-30 12:10:29', '2022-01-30 12:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Shift A', '2022-01-30 12:02:51', '2022-01-30 12:02:51'),
(5, 'Shift B', '2022-01-30 12:10:04', '2022-01-30 12:10:04'),
(6, 'Shift C', '2022-01-30 12:10:15', '2022-01-30 12:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, '2019', '2022-01-29 11:26:13', '2022-01-29 11:26:13'),
(5, '2020', '2022-01-29 11:44:50', '2022-01-29 11:44:50'),
(6, '2021', '2022-01-30 08:20:20', '2022-01-30 08:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of software,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$vu4ciYL291rSSpnQZ00tLuXhVb5nDIIK1MI0JaOXSmoZVLvPyNXFO', '01713194588', 'Sirajganj', 'Male', '202205291751avaterico.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-05-29 11:51:20'),
(2, 'Admin', 'John', 'john@gmail.com', NULL, '$2y$10$vu4ciYL291rSSpnQZ00tLuXhVb5nDIIK1MI0JaOXSmoZVLvPyNXFO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6256', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-11 11:02:14', '2022-03-11 11:02:14'),
(3, 'student', 'Ali Khan', NULL, NULL, '$2y$10$3A9RNA5pZzh6vvRepBXEneOjJSYjXI7NWclfZokxiyFhnKOys5ovO', '343434', 'India', 'Male', '202203271745images.jpg', 'Abu Khan', 'Ma Khan', 'Islam', '20200001', '2017-06-03', '8315', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-27 11:45:04', '2022-03-27 11:45:04'),
(4, 'student', 'Najmul Hossain', NULL, NULL, '$2y$10$nLjniw3TLNS6iLQyY7iCuunNqXWyZjL08ZRTxp/yK1tfYCVYtBijy', '01713194588', 'Bangladesh', 'Male', '202203271754IMG_20220324_091853_Bokeh.jpg', 'Abdul Khalek', 'Nazma Begum', 'Islam', '20210004', '2016-02-27', '6443', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-27 11:54:34', '2022-03-27 11:54:34'),
(5, 'student', 'Abdul Korim', NULL, NULL, '$2y$10$RVn5wNPsrlRAOMotgF37WOo25IpRISjM8CrLZubttFsm.qQB3wpBe', '01713194586', 'Ullapara, Sirajganj', 'Male', '2022053008007837_Profile-2.rev.1572210489.jpg', 'Miru', 'Korimon', 'Islam', '20190005', '2002-02-06', '9378', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-04-05 12:02:14', '2022-05-30 02:01:59'),
(6, 'Admin', 'Najmul Hossain', 'najmul.hossain@gmail.com', NULL, '$2y$10$GKa7i1deLl6OTQvNNqyD6OQNWCqd4H5HYO4Ed2mj06xQLPKtEJ57K', '+8801714994952', 'Ullapara, Sirajganj.', 'Male', '202204161137avaterico.jpg', NULL, NULL, NULL, NULL, NULL, '4031', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-04-15 04:07:49', '2022-04-16 05:37:52'),
(7, NULL, 'Abdul Alim', 'alim@gmail.com', NULL, '$2y$10$qOravkKtMEPMxr5la/WmZ.IQfblV7X4bYGwxhzr0MQRZXYN1elvp6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-04-16 05:39:12', '2022-04-16 05:39:12'),
(8, 'student', 'Raju Ahmed', NULL, NULL, '$2y$10$Ftpk1SjuI7I2j6tRleO3..c.DZ3Cxad9CDHHvdlcQekuCcEP9/usG', '01711334455', 'Ullapara, Sirajganj,', 'Male', '2022051117512.jpg', 'Rafikul Islam', 'Nasima Begum', 'Islam', '20210006', '1999-10-11', '7121', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-11 11:51:17', '2022-05-11 11:51:17'),
(9, 'student', 'Amelia', NULL, NULL, '$2y$10$2k6CQUgpySF13b9Cdcc2PuvRoQ5RbU0QVy/dcHDaMCe7kbiY/KlBK', '01713194588', 'sarulia bazar demra dhaka', 'Female', '202205281004juliana-schneider.jpg', 'Alan', 'Heather', 'Islam', '20200009', '2000-02-20', '32', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-28 04:04:40', '2022-05-28 04:04:40'),
(10, 'student', 'Rohim', NULL, NULL, '$2y$10$FCNB.lGRZNYMCQadUGb5cOmNmNMWAv4VYchfCe28twfW1bz8zt.gC', '01714994953', 'Ullapara, Sirajganj', 'Male', '202205281047IMG_5509-375x500.jpg', 'Abdul Korim', 'Habiba', 'Islam', '20190010', '2000-11-28', '6893', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-28 04:47:51', '2022-05-28 04:47:51'),
(11, 'student', 'Alif', NULL, NULL, '$2y$10$It.H/u5PbRm4F4f40AlSM.ovgeR8kW8g88ANh5LbpE5..7ZbxIhf6', '374475080', 'Sirajganj', 'Male', '202205281206aamir-khalique.jpg', 'Habib', 'Deloyara', 'Islam', '20210011', '2010-02-21', '71', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-28 06:06:35', '2022-05-28 06:06:35'),
(12, 'student', 'Najmul Hossain', NULL, NULL, '$2y$10$CDVtZID.fYpKTpbCzCaZ7eHOP6BvD8lHDJBh6SXnjyg9uDkNKRPx6', '01714994952', 'Ullapara, Sirajganj', 'Male', '202205281329Ambrose-Chui-Cropped-200x200.jpg', 'Abdul Khalek', 'Nazma Begum', 'Islam', '20210012', '1999-10-01', '7122', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-28 07:29:24', '2022-05-28 07:29:24'),
(13, 'student', 'Hamid', NULL, NULL, '$2y$10$wyNAnvoLtYmTDoSTr1XKteBJiXSpsWmhpgXBG20wG/4KDZLMcUI5i', '90498574865', 'Ullapara', 'Male', '202205291747IMG_5509-375x500.jpg', 'Moja', 'Sondes', 'Islam', '20190013', '2019-01-29', '2899', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-29 11:47:26', '2022-05-29 11:47:26'),
(14, 'student', 'Rejaul', NULL, NULL, '$2y$10$9GoB2PPgZPrts.xKXHzClOfKSI2RcolAnn4i/u1GTcp3gi4JXeXr2', '23434666', 'Ullapara', 'Male', '202205291748Koos-Tamminga.jpg', 'Arif', 'Lota', 'Islam', '20190014', '2002-12-23', '5013', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-05-29 11:48:23', '2022-05-29 11:48:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
