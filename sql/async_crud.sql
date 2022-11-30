-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 04:16 PM
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
-- Database: `async_crud`
--
CREATE DATABASE IF NOT EXISTS `async_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `async_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`) VALUES
(1, 'Ali', 'ali@gmail.com', '2022-11-30 14:48:49'),
(2, 'Talha', 'talha@gmail.com', '2022-11-30 14:52:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `auth`
--
CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hassan', '1034156432', 'john@hostcry.com', NULL, '$2y$10$Rxj0UQe4ypdra8g5bTpZh.4hdVgDWXckJhpTNy4TLG9.0Anf/4Uje', NULL, '2022-11-29 01:34:15', '2022-11-29 01:34:15');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `crm`
--
CREATE DATABASE IF NOT EXISTS `crm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crm`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2022-03-07 20:58:19', '2022-03-07 20:58:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `alternative_phone_number` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) NOT NULL,
  `processing_fee_status_id` bigint(20) UNSIGNED NOT NULL,
  `processing_fee_mode_id` bigint(20) UNSIGNED NOT NULL,
  `processing_fee_amount` varchar(255) NOT NULL,
  `processing_fee_discount` varchar(255) NOT NULL DEFAULT '0',
  `processing_fee_currency_id` bigint(20) UNSIGNED NOT NULL,
  `added_by_id` bigint(20) UNSIGNED NOT NULL,
  `office_id` bigint(20) UNSIGNED NOT NULL,
  `counseling_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visa_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_counseling_member_active` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_language_member_active` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_visa_member_active` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_tb_test_ready_to_add` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_language_test_ready_to_add` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_visa_ready_to_add` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_tb_test_added` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_language_test_added` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_visa_added` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `intake_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `applied_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `applied_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `application_status` varchar(255) NOT NULL,
  `application_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_application_member_active` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_applied` tinyint(4) DEFAULT 0,
  `is_responded` tinyint(4) DEFAULT 0,
  `is_initial_fee_deposited` tinyint(4) DEFAULT 0,
  `is_interviewed` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Pakistan', '2022-06-04 14:03:16', '2022-06-04 14:03:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', '2022-03-07 16:02:00', '2022-03-07 16:02:00'),
(2, 'Canadian Dollar', 'C$', '2022-03-07 16:02:00', '2022-03-07 16:02:00'),
(3, 'Australian Dollar', 'A$', '2022-03-07 16:02:00', '2022-03-07 16:02:00'),
(4, 'GBP', '£', '2022-03-07 16:02:00', '2022-03-07 16:02:00'),
(5, 'Euro', '€', '2022-03-07 16:02:00', '2022-03-07 16:02:00'),
(6, 'PKR', 'Rs.', '2022-03-07 16:02:00', '2022-03-07 16:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intakes`
--

CREATE TABLE `intakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intakes`
--

INSERT INTO `intakes` (`id`, `month`, `year`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jan', '2022', '2022-02-08 14:57:24', '2022-02-08 14:57:24', NULL),
(2, 'Sep', '2023', '2022-04-09 02:25:32', '2022-04-09 02:25:49', NULL),
(3, 'Jul', '2023', '2022-04-09 02:26:57', '2022-04-09 02:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_tests`
--

CREATE TABLE `language_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `test_status_id` bigint(20) UNSIGNED NOT NULL,
  `result_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lrw_date` date DEFAULT NULL,
  `speaking_date` date DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `listening_score` varchar(255) DEFAULT NULL,
  `reading_score` varchar(255) DEFAULT NULL,
  `writing_score` varchar(255) DEFAULT NULL,
  `speaking_score` varchar(255) DEFAULT NULL,
  `overall_score` varchar(255) DEFAULT NULL,
  `test_price` varchar(255) NOT NULL,
  `test_price_currency_id` varchar(255) NOT NULL,
  `payment_status_id` bigint(20) UNSIGNED NOT NULL,
  `payment_mode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `office_id` bigint(20) UNSIGNED DEFAULT NULL,
  `emergency_phone_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_09_093245_create_countries_table', 1),
(6, '2022_02_09_093343_create_teams_table', 1),
(7, '2022_02_09_093426_create_universities_table', 1),
(8, '2022_02_09_093515_create_courses_table', 1),
(9, '2022_02_09_093603_create_currencies_table', 1),
(10, '2022_02_09_093626_create_intakes_table', 1),
(11, '2022_02_09_093726_create_status_types_table', 1),
(12, '2022_02_09_093749_create_statuses_table', 1),
(13, '2022_02_09_093941_create_admins_table', 1),
(14, '2022_02_09_094016_create_offices_table', 1),
(15, '2022_02_09_094126_create_members_table', 1),
(16, '2022_02_09_100255_create_applicants_table', 1),
(17, '2022_02_16_154438_create_applications_table', 1),
(18, '2022_02_18_114303_create_tb_tests_table', 1),
(19, '2022_02_18_115926_create_language_tests_table', 1),
(20, '2022_03_05_090255_create_responses_table', 1),
(21, '2022_03_06_072442_create_visas_table', 1),
(22, '2022_03_26_071529_create_tasks_table', 1),
(23, '2022_04_07_124225_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `is_for_admin` tinyint(4) NOT NULL DEFAULT 0,
  `is_for_member` tinyint(4) NOT NULL DEFAULT 0,
  `is_for_applicant` tinyint(4) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `incharge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `remarks` text DEFAULT NULL,
  `required_initial_deposit` varchar(255) DEFAULT NULL,
  `university_fee` varchar(255) DEFAULT NULL,
  `granted_scholarship` varchar(255) DEFAULT NULL,
  `response_currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interview_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  `interview_result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interview_result_date` date DEFAULT NULL,
  `initial_deposit_paid_to_id` bigint(20) UNSIGNED DEFAULT NULL,
  `initial_deposit_date` date DEFAULT NULL,
  `initial_deposit_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_initial_deposit` varchar(255) DEFAULT NULL,
  `initial_deposit_currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `status_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Applied', 1, '2022-02-08 04:57:14', '2022-02-08 04:57:14', NULL),
(2, 'Not Applied', 1, '2022-02-08 04:57:21', '2022-02-08 04:57:21', NULL),
(3, 'Paid', 2, '2022-02-08 04:57:42', '2022-02-08 04:57:42', NULL),
(4, 'Unpaid', 2, '2022-02-08 04:57:49', '2022-02-08 04:57:49', NULL),
(5, 'Bank', 3, '2022-02-08 04:58:25', '2022-02-08 04:58:25', NULL),
(6, 'Cash', 3, '2022-02-08 04:58:30', '2022-02-08 04:58:30', NULL),
(7, 'Islamabad', 4, '2022-02-08 04:58:30', '2022-02-08 04:58:30', NULL),
(8, 'Lahore', 4, '2022-02-08 04:58:30', '2022-02-08 04:58:30', NULL),
(9, 'Mirpur AJK', 4, '2022-02-08 04:58:30', '2022-02-08 04:58:30', NULL),
(10, 'Karachi', 4, '2022-02-08 04:58:30', '2022-02-08 04:58:30', NULL),
(11, 'Pending', 5, '2022-02-17 20:50:25', '2022-02-17 20:50:25', NULL),
(12, 'Booked', 5, '2022-02-17 20:50:25', '2022-02-17 20:50:25', NULL),
(13, 'Completed', 5, '2022-02-17 20:50:25', '2022-02-17 20:50:25', NULL),
(14, 'Booked', 6, '2022-02-17 20:53:50', '2022-02-17 20:53:50', NULL),
(15, 'Canceled', 6, '2022-02-17 20:53:50', '2022-02-17 20:53:50', NULL),
(16, 'Done', 6, '2022-02-17 20:54:33', '2022-02-17 20:54:33', NULL),
(17, 'Rescheduled', 6, '2022-02-17 20:54:33', '2022-02-17 20:54:33', NULL),
(18, 'Announced', 7, '2022-02-17 20:55:18', '2022-02-17 20:55:18', NULL),
(19, 'Awaiting', 7, '2022-02-17 20:55:18', '2022-02-17 20:55:18', NULL),
(20, 'IEIS Bank', 8, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(21, 'IEIS Cash', 8, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(22, 'Self', 8, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(23, 'Conditional', 9, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(24, 'Unconditional', 9, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(25, 'Rejected', 9, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(26, 'Booked', 10, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(27, 'Done', 10, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(28, 'Resechuled', 10, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(29, 'Passed', 11, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(30, 'Failed', 11, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(31, 'N/A', 11, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(32, 'IEIS', 12, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(33, 'University', 12, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(34, 'Completed', 14, '2022-02-17 20:55:18', '2022-02-17 20:55:18', NULL),
(35, 'Started', 14, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(36, 'Issued', 15, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(37, 'Requested', 15, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(38, 'Issued', 16, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(39, 'Pending', 16, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL),
(40, 'Rejected', 16, '2022-02-17 20:57:22', '2022-02-17 20:57:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_types`
--

CREATE TABLE `status_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_types`
--

INSERT INTO `status_types` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Applied', '2022-02-08 04:53:14', '2022-02-08 04:53:14', NULL),
(2, 'Payment', '2022-02-08 04:54:22', '2022-02-08 04:54:22', NULL),
(3, 'Payment Mode', '2022-02-08 04:54:33', '2022-02-08 04:54:33', NULL),
(4, 'TB Test Center', '2022-02-08 04:54:43', '2022-02-08 04:54:43', NULL),
(5, 'TB Test Status', '2022-02-15 20:26:32', '2022-02-15 20:26:32', NULL),
(6, 'Language Test Status', '2022-02-17 20:52:20', '2022-02-17 20:52:20', NULL),
(7, 'Language Test Result', '2022-02-17 20:52:20', '2022-02-17 20:52:20', NULL),
(8, 'Language Test Payment Mode', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(9, 'Offer Type', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(10, 'Interview Status', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(11, 'Interview Result', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(12, 'Initial Deposit Paid To', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(14, 'Bank Statment Status', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(15, 'CAS Request', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL),
(16, 'Visa Status', '2022-02-17 20:53:20', '2022-02-17 20:53:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `response` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tests`
--

CREATE TABLE `tb_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `center_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Counseling Team', '2022-02-08 14:56:30', '2022-02-08 14:56:30', NULL),
(2, 'Application Team', '2022-02-16 19:32:57', '2022-02-16 19:32:57', NULL),
(3, 'Test Team', '2022-03-06 10:54:49', '2022-03-06 10:54:49', NULL),
(4, 'Visa Team', '2022-03-06 10:54:58', '2022-03-06 10:54:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `profile_picture`, `address`, `phone_number`, `dob`, `user_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'The', 'Admin', 'admin@gmail.com', NULL, '$2y$10$KM81S90SQpicaEGTT1NMPeZ3niQagUyRuZRPkz.EiHTsDX4IGA.fW', NULL, NULL, NULL, '03091765432', '2022-03-24', 'Admin', '2022-02-08 14:54:56', '2022-03-25 02:29:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visas`
--

CREATE TABLE `visas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `bank_statement_status_id` bigint(20) UNSIGNED NOT NULL,
  `bank_statement_date` date NOT NULL,
  `cas_request_id` bigint(20) UNSIGNED NOT NULL,
  `cas_date` date NOT NULL,
  `visa_appointment_date` date DEFAULT NULL,
  `visa_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_secondary_email_unique` (`secondary_email`),
  ADD UNIQUE KEY `applicants_passport_number_unique` (`passport_number`),
  ADD UNIQUE KEY `applicants_alternative_phone_number_unique` (`alternative_phone_number`),
  ADD KEY `applicants_user_id_foreign` (`user_id`),
  ADD KEY `applicants_processing_fee_status_id_foreign` (`processing_fee_status_id`),
  ADD KEY `applicants_processing_fee_mode_id_foreign` (`processing_fee_mode_id`),
  ADD KEY `applicants_processing_fee_currency_id_foreign` (`processing_fee_currency_id`),
  ADD KEY `applicants_added_by_id_foreign` (`added_by_id`),
  ADD KEY `applicants_office_id_foreign` (`office_id`),
  ADD KEY `applicants_counseling_member_id_foreign` (`counseling_member_id`),
  ADD KEY `applicants_language_member_id_foreign` (`language_member_id`),
  ADD KEY `applicants_visa_member_id_foreign` (`visa_member_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_applicant_id_foreign` (`applicant_id`),
  ADD KEY `applications_course_id_foreign` (`course_id`),
  ADD KEY `applications_university_id_foreign` (`university_id`),
  ADD KEY `applications_intake_id_foreign` (`intake_id`),
  ADD KEY `applications_created_by_id_foreign` (`created_by_id`),
  ADD KEY `applications_applied_status_id_foreign` (`applied_status_id`),
  ADD KEY `applications_application_member_id_foreign` (`application_member_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_name_unique` (`name`),
  ADD KEY `courses_university_id_foreign` (`university_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `intakes`
--
ALTER TABLE `intakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_tests`
--
ALTER TABLE `language_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_tests_applicant_id_foreign` (`applicant_id`),
  ADD KEY `language_tests_test_status_id_foreign` (`test_status_id`),
  ADD KEY `language_tests_result_status_id_foreign` (`result_status_id`),
  ADD KEY `language_tests_payment_status_id_foreign` (`payment_status_id`),
  ADD KEY `language_tests_payment_mode_id_foreign` (`payment_mode_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_emergency_phone_number_unique` (`emergency_phone_number`),
  ADD KEY `members_user_id_foreign` (`user_id`),
  ADD KEY `members_team_id_foreign` (`team_id`),
  ADD KEY `members_office_id_foreign` (`office_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_admin_id_foreign` (`admin_id`),
  ADD KEY `notifications_member_id_foreign` (`member_id`),
  ADD KEY `notifications_applicant_id_foreign` (`applicant_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offices_email_unique` (`email`),
  ADD UNIQUE KEY `offices_phone_number_unique` (`phone_number`),
  ADD KEY `offices_country_id_foreign` (`country_id`);

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
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_application_id_foreign` (`application_id`),
  ADD KEY `responses_offer_id_foreign` (`offer_id`),
  ADD KEY `responses_response_currency_id_foreign` (`response_currency_id`),
  ADD KEY `responses_interview_status_id_foreign` (`interview_status_id`),
  ADD KEY `responses_interview_result_id_foreign` (`interview_result_id`),
  ADD KEY `responses_initial_deposit_paid_to_id_foreign` (`initial_deposit_paid_to_id`),
  ADD KEY `responses_initial_deposit_status_id_foreign` (`initial_deposit_status_id`),
  ADD KEY `responses_initial_deposit_currency_id_foreign` (`initial_deposit_currency_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_status_type_id_foreign` (`status_type_id`);

--
-- Indexes for table `status_types`
--
ALTER TABLE `status_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_types_title_unique` (`title`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_applicant_id_foreign` (`applicant_id`),
  ADD KEY `tasks_member_id_foreign` (`member_id`),
  ADD KEY `tasks_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `tb_tests`
--
ALTER TABLE `tb_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_tests_applicant_id_foreign` (`applicant_id`),
  ADD KEY `tb_tests_status_id_foreign` (`status_id`),
  ADD KEY `tb_tests_center_id_foreign` (`center_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_title_unique` (`title`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `universities_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visas`
--
ALTER TABLE `visas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visas_application_id_foreign` (`application_id`),
  ADD KEY `visas_applicant_id_foreign` (`applicant_id`),
  ADD KEY `visas_bank_statement_status_id_foreign` (`bank_statement_status_id`),
  ADD KEY `visas_cas_request_id_foreign` (`cas_request_id`),
  ADD KEY `visas_visa_status_id_foreign` (`visa_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intakes`
--
ALTER TABLE `intakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_tests`
--
ALTER TABLE `language_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `status_types`
--
ALTER TABLE `status_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tests`
--
ALTER TABLE `tb_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `visas`
--
ALTER TABLE `visas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_added_by_id_foreign` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_counseling_member_id_foreign` FOREIGN KEY (`counseling_member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_language_member_id_foreign` FOREIGN KEY (`language_member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_processing_fee_currency_id_foreign` FOREIGN KEY (`processing_fee_currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_processing_fee_mode_id_foreign` FOREIGN KEY (`processing_fee_mode_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_processing_fee_status_id_foreign` FOREIGN KEY (`processing_fee_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_visa_member_id_foreign` FOREIGN KEY (`visa_member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_application_member_id_foreign` FOREIGN KEY (`application_member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_applied_status_id_foreign` FOREIGN KEY (`applied_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_intake_id_foreign` FOREIGN KEY (`intake_id`) REFERENCES `intakes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `language_tests`
--
ALTER TABLE `language_tests`
  ADD CONSTRAINT `language_tests_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `language_tests_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `language_tests_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `language_tests_result_status_id_foreign` FOREIGN KEY (`result_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `language_tests_test_status_id_foreign` FOREIGN KEY (`test_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_initial_deposit_currency_id_foreign` FOREIGN KEY (`initial_deposit_currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_initial_deposit_paid_to_id_foreign` FOREIGN KEY (`initial_deposit_paid_to_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_initial_deposit_status_id_foreign` FOREIGN KEY (`initial_deposit_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_interview_result_id_foreign` FOREIGN KEY (`interview_result_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_interview_status_id_foreign` FOREIGN KEY (`interview_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_response_currency_id_foreign` FOREIGN KEY (`response_currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_status_type_id_foreign` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tasks_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tests`
--
ALTER TABLE `tb_tests`
  ADD CONSTRAINT `tb_tests_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_tests_center_id_foreign` FOREIGN KEY (`center_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_tests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visas`
--
ALTER TABLE `visas`
  ADD CONSTRAINT `visas_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visas_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visas_bank_statement_status_id_foreign` FOREIGN KEY (`bank_statement_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visas_cas_request_id_foreign` FOREIGN KEY (`cas_request_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visas_visa_status_id_foreign` FOREIGN KEY (`visa_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `created_at`) VALUES
(5, 'Shirts', 'shirts', '2022-09-26 11:31:32'),
(6, 'Shoes', 'shoes', '2022-09-26 11:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `pictures` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `product_desc`, `thumbnail`, `pictures`, `stock`, `created_at`) VALUES
(14, 5, 'Hassan', '300', 'asgdasd,asdas das,asdasdas asd asd,asd asd asd qwedasd, dwasdadwd,awdawasdgds', './uploads/img (30).16643660609133.jpeg', './uploads/1_3HR1asSfIVdOVcPcoApvDQ.1664366060622.jpeg,./uploads/Capture.16643660606753.png,./uploads/css-table-price-hosting.16643660606255.jpeg', '20', '2022-09-28 11:54:20'),
(15, 6, 'admin check', '30', 'kjsdgh kasfgkasdfasdf, asdfgadfs ga, asdfgasdf a,asdfasdf ,asdfasdf, kuch or bhi add kar deta hu.', './uploads/photo-1562664377-709f2c337eb2.16644507956148.jpeg', './uploads/download (6).16644513485994.jpeg,./uploads/images.16644513483565.jpeg,./uploads/photo-1562664377-709f2c337eb2.16644513484521.jpeg', '50', '2022-09-29 10:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `role`, `password`, `created_at`) VALUES
(1, 'Hassan asdf', 'asdasd@gmail.com', '03468457485', 'address 123 street abc town 123', 0, '$2y$10$fqme2DhsnQDbo55AF.WtberDrdcRVUo.rUC6GPQfrISZk6rHP1MUG', '2022-09-22 11:49:59'),
(2, 'john doe', 'john@gmail.com', '1034156432', 'this street that street', 0, '$2y$10$kcJWm1AaXJbDvPPToyVVFej4u1K09tP0LMMxaXZK5AnMvgDWIQMKO', '2022-09-22 11:53:34'),
(6, 'Hassan asdf', 'john1@gmail.com', '03468457485', 'Rawalpindi', 0, '$2y$10$3VWng0dgcMJYj31xpeWGaOi2c98JlIckIXpTuLyCP5rYy708Zvsh2', '2022-09-23 10:05:10'),
(7, 'Admin', 'admin@gmaal.com', '03468457485', 'Rawalpindi', 1, '$2y$10$ZyHr3R8mINSyXK4mjxcww.tx8ZLhMYA5wkjOai8AZ/.MoxJiKAsVy', '2022-09-23 11:09:36'),
(8, 'Admin', 'admin1@gmaal.com', '03468457485', 'Rawalpindi', 1, '$2y$10$wZcvUl2fk0hTAJhUBdbe3.0z5GLvA6BPZLpep2zUon6DRd9vAR8XO', '2022-09-23 11:10:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `first_lara`
--
CREATE DATABASE IF NOT EXISTS `first_lara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `first_lara`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_11_17_060501_create_post_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `discription` text NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image_path`, `discription`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Fuga.', 'temp_img.png', 'Inventore qui vel est minima laudantium. Sunt vel molestiae sit iste.', 'Occaecati repellendus vel impedit et dignissimos ipsam suscipit. Quaerat amet et animi omnis dolor. Nemo quia hic est. Ut rem rerum a fuga molestias corporis consequuntur. Corporis quo pariatur deserunt. Dolor quia et soluta corporis. Commodi officiis sit illo rerum quia consequatur voluptatem.', '2022-11-30 04:19:33', '2022-11-30 04:19:33'),
(2, 'Sed.', 'temp_img.png', 'Non et necessitatibus enim illo. Et non molestiae nulla optio.', 'Voluptatem est sed consequatur commodi. Cupiditate vitae aut ut aspernatur culpa aut. Perspiciatis mollitia aliquid quo quo quaerat modi mollitia.', '2022-11-30 04:19:33', '2022-11-30 04:19:33'),
(3, 'Rem.', 'temp_img.png', 'Qui id neque in ducimus modi perferendis. Et iste impedit quis temporibus.', 'Odit doloribus officia nihil. Ut voluptatem et sequi quo excepturi. Excepturi neque nihil quaerat eaque quidem. Deleniti soluta sunt pariatur minima iste. Eos ut velit nemo unde ea. Quia sunt accusantium dignissimos deleniti voluptates.', '2022-11-30 04:19:33', '2022-11-30 04:19:33'),
(4, 'Nemo.', 'temp_img.png', 'Assumenda voluptas rerum optio natus. Eum magni debitis a. Laborum neque et et aut.', 'Quam et aliquid facilis eum earum harum. Commodi consequuntur aut sed et. Ut nihil dicta et ipsa. Ipsum molestias consequatur est ut aut. Ut sit numquam tempore architecto. Rerum qui iste aliquid sit architecto non voluptatem. Harum officia corporis repudiandae molestias molestiae.', '2022-11-30 04:19:33', '2022-11-30 04:19:33'),
(5, 'Illum.', 'temp_img.png', 'Nulla molestiae sit aut autem illo maxime minus. Ipsam ut saepe rem error esse dolores.', 'Velit et at in ipsum qui dolores ut. Distinctio veniam officiis quasi et atque dicta aliquam. Amet molestias quia veniam et omnis. Id minus qui ut totam dolore quia dignissimos corrupti. Saepe pariatur sint et. Nihil nobis veniam aut. Molestias aut autem quo quisquam nostrum.', '2022-11-30 04:19:33', '2022-11-30 04:19:33'),
(6, 'Rerum.', 'temp_img.png', 'Adipisci saepe labore ut quas dicta et. Ut et qui blanditiis.', 'Rerum repellendus sint id ipsum veniam qui ut. Ex incidunt ea perspiciatis omnis omnis. Aut officia voluptas rem ex est officiis amet molestiae. Aut voluptatum quia sunt consequatur voluptatem eveniet velit. Voluptatibus minus voluptas consequatur.', '2022-11-30 04:19:33', '2022-11-30 04:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `ims`
--
CREATE DATABASE IF NOT EXISTS `ims` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ims`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('john@gmail.com', '$2y$10$iDn8r7e.GnacgTrd.jou9OxffDkWTqOROuBA6jpbCw2AuRELczddu', '2022-11-30 02:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hassan', 'john@gmail.com', NULL, '$2y$10$xFCZwiQ7kfBFUrvEAwazEORhhP8myTXtSzGJbOd5k7cgfOKuf.Kyy', NULL, '2022-11-30 01:49:24', '2022-11-30 01:49:24'),
(2, 'new', 'new@user.com', NULL, '$2y$10$kOudiGb.hQ3FXmAgnYLb4.CxJDMW9SywOA3RbUxi92uYXKl/XBT3C', NULL, '2022-11-30 02:20:49', '2022-11-30 02:20:49'),
(3, 'xfsdf', 'asdasd@gmail.com', NULL, '$2y$10$mgKklqF6aIFxKYv99h1ELObd6sDYbfYw7W8cS05BZe/PU2vfrSfMu', NULL, '2022-11-30 05:59:30', '2022-11-30 05:59:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `join`
--
CREATE DATABASE IF NOT EXISTS `join` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `join`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `number`, `country`) VALUES
(1, 'John Doe', 168465168, 'KoiNahi'),
(2, 'John doe 2', 218465163, 'country'),
(3, 'john doe 3', 354186, 'country 2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product`, `order_date`) VALUES
(1, 1, 'apple', '2022/09/16'),
(2, 2, 'apple, banana, cell phone, Shair', '2022/09/16'),
(3, 2, 'shir, iphone 14 pro max ultra', '2022/09/16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `listings`
--
CREATE DATABASE IF NOT EXISTS `listings` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `listings`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Et itaque vel quis molestiae.', 'larave, developer, api', 'Koepp, Braun and Champlin', 'Walkermouth', 'nwolf@koelpin.org', 'https://www.hartmann.com/veritatis-cum-est-ut-in', 'Voluptates aliquid voluptatem ea mollitia quidem. Reiciendis non blanditiis quia magnam eos unde similique sapiente. Quaerat id beatae ipsam consequatur voluptatem temporibus tempora. Totam sequi ea tempora quaerat. Delectus quia ea accusamus maiores tempora et velit earum. Nemo eius fuga nemo mollitia fugit distinctio maiores.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(2, 'Animi vitae qui esse accusamus molestiae sit.', 'larave, developer, full stach etc', 'O\'Keefe, Halvorson and Frami', 'South Alberthatown', 'bryon39@beahan.com', 'http://www.wilkinson.org/harum-dolores-rerum-veniam-qui', 'Exercitationem nobis atque tempore consectetur facere velit necessitatibus qui. Facilis dignissimos nostrum harum ullam aliquid aperiam. Est tenetur quo quisquam ipsam. Doloremque ducimus qui occaecati voluptatibus. Maiores id ut quidem aut. Et ipsam est dolor quod sit nesciunt. Provident beatae voluptas sapiente consequatur.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(3, 'Atque consequatur atque voluptates autem.', 'larave, developer, full stach etc', 'Dickinson, Hackett and Beer', 'Lolabury', 'garrison.volkman@ratke.biz', 'http://wintheiser.biz/unde-similique-corporis-sapiente-rerum-vel.html', 'Et numquam aut numquam beatae voluptatem. Dignissimos aut asperiores vitae qui nisi a asperiores aut. Reprehenderit laudantium voluptatem cumque enim repellendus officiis quisquam. Doloremque commodi qui asperiores accusamus hic quia a. Facere et ad minus unde deserunt nam.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(4, 'Itaque eum perferendis quibusdam beatae rerum.', 'larave, developer, backend', 'Schulist, Ruecker and Rippin', 'West Raeganshire', 'ray.medhurst@harris.com', 'http://www.boyle.com/sunt-omnis-harum-magni-amet-excepturi-non-aut', 'Deserunt et in nobis rem natus sequi. Temporibus consequatur a porro iure sapiente sit. Maxime quia autem ullam aut voluptatem fugit. Fugit esse est quod explicabo nam eum.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(5, 'Aut assumenda voluptatum ex expedita.', 'larave, developer, full stach etc', 'Kerluke-Schinner', 'West Jessycaside', 'nyasia.abernathy@kunze.net', 'http://www.armstrong.net/iure-vitae-atque-amet-occaecati-consequatur-mollitia', 'Debitis rerum facere dolores iusto quaerat. Sed accusamus esse voluptatem. Tenetur ipsam enim sed tenetur officiis. Ex tempora vero praesentium velit.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(6, 'Facere dolor natus veritatis iure libero ut.', 'larave, developer, full stach etc', 'Boyle-Lindgren', 'New Oleta', 'diego.willms@kshlerin.info', 'http://ziemann.net/', 'Cupiditate aut consequuntur non sapiente sequi explicabo minus. A corporis et cupiditate recusandae magnam veritatis. Reprehenderit sequi maxime fugiat numquam dicta. Non vel rerum consectetur qui. Neque illo est et cupiditate est.', '2022-11-11 04:00:00', '2022-11-11 04:00:00'),
(7, 'Senior Laravel Developer', 'Laravel, PHP, API, Backend', 'Hostcry', 'Islamabad', 'arsalrajput173@gmail.com', 'https://hostcry.com', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates cumque officia quidem consectetur pariatur commodi atque, vel a facere deleniti, reprehenderit fugiat impedit quis qui ratione culpa? Perspiciatis ad dolore hic? Ex expedita perferendis vel numquam a qui assumenda odit, minus excepturi odio, quos laudantium quidem ducimus? Temporibus, error sit.', '2022-11-13 12:40:41', '2022-11-13 12:40:41'),
(8, 'Laravel Developer', 'Laravel, PHP, API, Backend', 'Softcob', 'Haripur', 'john@hostcry.com', 'https://hostcry.com', 'The GET method is not supported for this route. Supported methods: POST.', '2022-11-13 12:45:49', '2022-11-13 12:45:49'),
(9, 'laravel developer', 'Laravel, PHP, API, Backend', 'Stark Ind', 'Islamabad', 'john@gmail.com', 'https://hostcry.com', 'The GET method is not supported for this route. Supported methods: POST.', '2022-11-13 12:46:41', '2022-11-13 12:46:41'),
(10, 'Frontend developer', 'Laravel, PHP, API, Backend', 'Hostcry', 'Islamabad', 'doe@hostcry.com', 'https://hostcry.com', 'The GET method is not supported for this route. Supported methods: POST.', '2022-11-13 12:47:47', '2022-11-13 12:47:47'),
(11, 'PHP Developer', 'Laravel, PHP, API, Backend', 'Wain Interprises', 'Islamabad', 'johnny@hostcry.com', 'https://hostcry.com', 'The GET method is not supported for this route. Supported methods: POST.', '2022-11-13 12:52:19', '2022-11-13 12:52:19'),
(12, 'JavaScript Developer', 'Laravel, PHP, API, Backend', 'Wain Interprises', 'Islamabad', 'john@wain.com', 'https://wain.com', 'return redirect(\'/\')->with(\'message\', \'Listing Added Successfully\');', '2022-11-13 12:59:15', '2022-11-13 12:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_11_10_120631_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`) VALUES
(2, 'arsalrajput173@gmail.com', '$2y$10$p1GVnBg9TYkxUvEdGvJ3uOTuCa3Av7tBBNR3s3I3T7oA.rEekuvH.', '2022-09-07 10:40:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `magicians`
--
CREATE DATABASE IF NOT EXISTS `magicians` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `magicians`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(13, 'Aimal', 'aimal@gmail.com', '123456', '2022-11-23 14:03:15'),
(14, 'Ali', 'ali@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-11-24 14:00:31'),
(17, 'Ali', 'ali1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-11-24 14:00:31'),
(18, 'Waleed Khan', 'waleed@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-11-25 14:02:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `oop`
--
CREATE DATABASE IF NOT EXISTS `oop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oop`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `course`, `mobile`) VALUES
(1, 'john doe', 'Programming', 31541684),
(2, 'Doe John', 'PHP', 318548454),
(3, 'Johnny', 'OOP', 3548496);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `opp_crud`
--
CREATE DATABASE IF NOT EXISTS `opp_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `opp_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`) VALUES
(4, 'Aness', 'anees@gmail.com', 35468463);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `orange`
--
CREATE DATABASE IF NOT EXISTS `orange` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `orange`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Hassan asdf', '$2y$10$kb7eIUCDAIwMaogPGJfBtu8M2Zwxl2UWZHJbwBPcZ9RKmsOtFFxyK', '2022-10-24 06:25:13'),
(2, 'admin', '$2y$10$s.2.Mr0fFxpPF1E2RDE/BuE8HTWt/DSYdV91LoK9Tjc3nAp9xvjQy', '2022-10-24 06:25:39'),
(3, 'admin1', '$2y$10$fZ0N1jUBmRX6U/p79835l.f1HTev0CWiLBGuonb5ClLsxRdtainYO', '2022-10-24 06:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(69, '1234855415', 'arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-20 07:13:41'),
(70, 'admin87', 'Arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-20 07:14:20'),
(73, 'admin87', 'Arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-21 06:06:23'),
(80, 'Hassan asdf', 'test11@m.com', 'PMf*iQ*C%X43dInCWn', '2022-10-21 08:10:06'),
(82, 'Arsalrajput173@gmail.com', 'Arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-24 05:56:36'),
(83, '55555', 'arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-24 05:56:37'),
(84, '55555', 'arsalrajput173@gmail.com', 'PMf*iQ*C%X43dInCWn', '2022-10-24 05:56:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
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
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"opp_crud\",\"table\":\"users\"},{\"db\":\"oop\",\"table\":\"users\"},{\"db\":\"listings\",\"table\":\"listings\"},{\"db\":\"listings\",\"table\":\"users\"},{\"db\":\"listings\",\"table\":\"migrations\"},{\"db\":\"listings\",\"table\":\"failed_jobs\"},{\"db\":\"todo\",\"table\":\"todos\"},{\"db\":\"todo\",\"table\":\"user\"},{\"db\":\"orange\",\"table\":\"login\"},{\"db\":\"orange\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'opp_crud', 'users', '{\"sorted_col\":\"`users`.`email` ASC\"}', '2022-11-14 06:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-14 06:02:54', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":202}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `password`, `created_at`) VALUES
(1, 'John', 'john@gmail.com', 'blah blah blah', '12345678', '2022-09-02 10:10:00'),
(8, 'test user', 'test@testuser.com', 'test address han ji', '87654321', '2022-09-05 11:17:22'),
(9, 'asdf asdf', 'asdfasdf@ASasdf.ciom', 'asdf asdf asdf asdf asdf asdf asdf asdf', '12345678', '2022-09-05 11:17:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `srs`
--
CREATE DATABASE IF NOT EXISTS `srs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srs`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'The Admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-11-29 13:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `created_at`) VALUES
(1, 'Chappa Class', '2022-11-28 13:51:45'),
(2, 'GD', '2022-11-28 13:51:45'),
(3, 'DM', '2022-11-28 13:51:45'),
(4, 'VE', '2022-11-28 13:51:45'),
(5, 'CB', '2022-11-28 13:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `student_id`, `course_id`, `created_at`) VALUES
(1, 3, 3, '2022-11-30 13:39:12'),
(2, 2, 2, '2022-11-28 13:55:59'),
(3, 3, 1, '2022-11-28 13:55:59'),
(4, 4, 3, '2022-11-28 13:55:59'),
(5, 5, 5, '2022-11-28 13:55:59'),
(6, 3, 2, '2022-11-29 15:26:23'),
(7, 1, 1, '2022-11-30 11:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `reg_no`, `created_at`) VALUES
(1, 'Ali Saab', '1', '2022-11-28 13:53:35'),
(2, 'Ahmad', '2', '2022-11-28 13:53:35'),
(3, 'Talha', '3', '2022-11-28 13:53:35'),
(4, 'Haris', '4', '2022-11-28 13:53:35'),
(5, 'Babar', '5', '2022-11-28 13:53:35'),
(6, 'Rizwan', '6', '2022-11-28 13:53:35'),
(7, 'Shadab', '7', '2022-11-28 13:53:35'),
(8, 'Ramiz', '8', '2022-11-28 13:53:35'),
(9, 'Waleed Khan', '10', '2022-11-28 14:46:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test_lara`
--
CREATE DATABASE IF NOT EXISTS `test_lara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_lara`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_11_20_153827_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Impedit repellat rerum cupiditate dolorum. Et voluptas sit inventore animi corporis aliquid ea.', 'Aperiam recusandae quam velit. Quae expedita cumque rerum animi consequatur porro. Id aut reprehenderit ut assumenda non sunt provident.', 'Laboriosam unde itaque ut accusamus culpa sunt. Minima omnis earum et ut vel labore. A pariatur vel nisi quia aperiam magni itaque. Aut doloribus qui dolores et laudantium. Minima quis debitis qui. Consequatur dolor beatae ratione voluptatem cupiditate quaerat dolor. Excepturi nulla vel et et beatae aliquid rerum reiciendis. Reprehenderit laboriosam in rem. Sed commodi molestiae et autem distinctio eaque. Dolorem omnis quis optio a dicta. Voluptatum temporibus sint sint hic. Voluptas ratione eligendi id nihil.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(2, 'Consequatur aut est omnis quia unde nostrum. Doloremque quam quia consequatur distinctio.', 'Qui quia rerum aut omnis. Dolores voluptatem et necessitatibus laudantium ducimus in. Officiis perspiciatis numquam illo ipsum. Sed nemo enim quia.', 'Perspiciatis qui nihil veniam repudiandae omnis. Aperiam aut libero magni quidem labore dicta velit. Molestiae magnam ex rerum. Ipsa quis saepe illum veritatis aperiam omnis. Ullam temporibus tempora dolorum ullam in quam culpa. Inventore et temporibus et. Soluta ipsum ex porro consectetur neque et. Suscipit alias illum quo ea aut sint. Fugiat eius temporibus incidunt iste maxime. Fugit nostrum dolorem deserunt harum doloremque labore. Eum eaque est quasi magnam. Dicta placeat amet voluptatem molestias. Numquam ex aspernatur soluta vel delectus ex.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(3, 'Quam officiis recusandae qui debitis quia id velit. Perspiciatis eveniet nesciunt dolores maxime.', 'Dolor quas cumque a culpa sed explicabo sunt. Sunt excepturi sit quam nesciunt sequi qui. Aliquid delectus iure quasi et. Reiciendis et est nulla nihil laborum ea non quia.', 'Sit voluptate eius nihil id. Qui voluptas quo quidem itaque est. Perspiciatis provident tenetur voluptas quod magnam quo mollitia. Velit saepe a consequuntur quae consectetur. Est saepe aliquid voluptatem qui nemo atque cumque. Repellendus consequatur necessitatibus corporis. Asperiores sed nostrum quidem rerum ut earum nihil. At delectus atque autem suscipit mollitia. Sunt ipsa id neque in. Atque alias eius laborum tempora sunt temporibus voluptate nobis. Sint aliquid a officiis deserunt.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(4, 'Voluptas amet aut ut voluptatum fugit nam. Asperiores natus omnis eos aspernatur.', 'Sunt delectus quia voluptatibus facere aperiam quidem voluptates aperiam. Excepturi modi debitis illum quia eius odio. Fugit aut rem at ut nesciunt. Laudantium officia ut rerum amet et velit. Non rerum est quo magni impedit rerum.', 'Id recusandae quo ut iusto. Atque quibusdam tenetur vel. Ea ut et nisi voluptas ut aut. In dolor voluptatem magnam in perferendis. Deserunt quo sapiente ea. Sapiente ratione facere et ipsam. Assumenda consectetur delectus veritatis maiores soluta vel reiciendis. Quo aut ut et repellendus minima quia. Cupiditate ut vitae omnis maxime enim et. Dolor est in recusandae tenetur repellendus vero. Voluptas doloribus quia explicabo eaque expedita repellendus odio. Sed labore delectus necessitatibus rerum repudiandae.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(5, 'Esse ipsam et deserunt qui in. Eius maiores dolores et et nemo eos. Libero a incidunt deserunt et.', 'Ducimus sint facilis magni culpa et temporibus. Sapiente et voluptatum totam voluptas id est earum. Officiis sint excepturi porro non iusto qui voluptas. Dolor culpa ducimus ratione qui et recusandae qui ut.', 'Officiis dolorum ipsum voluptatum voluptate sunt nam. Et quas ipsum et voluptas illum voluptatibus. Labore quae quibusdam quaerat eveniet at ut saepe. Eos non magnam a quasi voluptatibus est aperiam aut. Voluptates nam aut eos voluptate. Quae eligendi laborum eum eveniet quis sit. Quaerat eos pariatur est rerum quo voluptas sunt nisi. Doloribus illo non quo temporibus quibusdam. Non saepe aut neque amet. Et quia itaque accusamus distinctio sint qui aspernatur. Non hic est odit nobis aut omnis eveniet. Velit ea autem atque eius occaecati et.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(6, 'Unde vel doloremque eius culpa. Nihil officia recusandae vero quo ea officia ratione.', 'Fuga maiores sapiente quas quia at est accusamus. Voluptas eum eaque natus voluptatem aliquam. Qui quas sed aut et voluptatum. Explicabo doloribus architecto praesentium voluptatem dolorem nisi.', 'Repudiandae suscipit vel et omnis et. Porro enim odit aut dicta et nesciunt. Praesentium ut ducimus dolores eligendi dolor quasi explicabo. Aspernatur maiores laboriosam dicta cum tempora ut. Aut commodi architecto officia et est. Omnis perspiciatis perferendis minus at et voluptatem nostrum. Quo voluptate hic error voluptatem. Voluptas officia voluptate ipsum autem. Facilis omnis quis natus quidem. Ut aut occaecati officiis deleniti ea voluptatem non qui. Accusamus occaecati ea eius dolore.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(7, 'Sunt amet tempora et consequuntur. Asperiores est et eius enim. Sed est dicta occaecati quia magni.', 'Perferendis est officia vero veritatis alias. Praesentium maxime nulla delectus natus consequatur. Est aut eum maxime ipsam ut aliquid quos.', 'Totam et ut odit ut sequi nobis voluptatem ratione. Quae perferendis voluptas sunt. Dolorum tempora impedit quia qui. Non fugiat eaque numquam molestiae. Architecto magnam necessitatibus laudantium sint vel. Autem earum consequatur quod eum. Vel fugit dolorem eaque assumenda. Quod nostrum rerum voluptas id soluta. Quibusdam qui aspernatur et minima nulla. Quo perspiciatis aut et temporibus numquam possimus qui. Est aliquid id ut consequatur a sint quia. Laudantium sed dolorem nulla consectetur omnis rerum.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(8, 'Beatae odio in perferendis dolor. Aliquid non et eligendi perferendis dolorem.', 'Iste commodi harum hic quam tempora. Voluptas minima non eum explicabo pariatur nihil rerum. Tempore placeat voluptatem asperiores rerum.', 'Fugiat aut mollitia nobis alias aut nulla voluptas nemo. Sit odio sint qui ut sed esse eum rerum. Accusantium debitis voluptatem omnis et sed ad minima. Dolores id nesciunt et amet. Nihil harum neque amet similique. Ducimus ut repudiandae id quos nam. Reprehenderit quis minus accusamus ea qui. Ea qui eos ab architecto sunt omnis voluptas. Voluptatem aperiam iure illo. Tenetur dolores libero maiores autem nulla id. Et dolorum ut delectus soluta quibusdam qui repellendus natus. Tempora vero accusantium quidem reprehenderit at deleniti.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(9, 'Quod non harum et quam. Cumque voluptatum ea unde. Eligendi autem placeat accusamus animi.', 'Reiciendis voluptates assumenda sapiente et ut quos sed. Vitae voluptates magnam repellat aut. Assumenda sapiente ut est reiciendis ea iure. Neque animi in tempore. Delectus adipisci velit unde qui exercitationem. Quis vero possimus necessitatibus sunt neque ex. Neque autem nulla dolores nostrum.', 'Ut explicabo accusantium sequi sit sint. Et accusamus recusandae et dicta sapiente culpa. Sed rem praesentium rerum quaerat sit tenetur. In assumenda blanditiis minima incidunt impedit. Beatae blanditiis rerum similique rem voluptas tempora et atque. Et est modi omnis eaque veritatis est rerum possimus. Voluptatibus vel ullam ex aspernatur numquam maiores sit architecto. Veritatis magni repellat saepe cumque sapiente fugit qui. Hic qui et ipsum consequatur dicta praesentium. Architecto vero in blanditiis amet. Ut sit sit est ut ut corporis.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(10, 'Magnam maiores sint quia sed quos in. Amet quia deleniti voluptas quam unde quidem.', 'Quod optio ipsam molestias accusantium. Fuga et iste et labore. Rerum expedita quia qui odit iure quo dignissimos ut. Quia deleniti illo cupiditate dolor libero provident inventore. Et mollitia amet sunt earum omnis dolores tempora.', 'Recusandae voluptatem non qui nisi ex cum. Explicabo et ipsam aliquam accusantium non omnis eligendi. Eos sunt rerum neque et iure qui. Quisquam voluptatem minus rerum. Odit accusantium accusantium dolorem optio eum. Non reprehenderit aut doloremque et dicta quis magnam nam. Dolor magni autem aut quis voluptate qui. Praesentium quis sunt aut explicabo ea. Distinctio sed modi iusto commodi omnis. Eveniet modi veritatis esse harum. Dolor commodi consequatur voluptates rerum consequuntur sint ipsum.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(11, 'Doloribus illo iste molestias tenetur vero. Sunt qui doloribus quo consequatur inventore vel vero.', 'Quidem autem aspernatur non illum similique. Accusamus temporibus magnam natus exercitationem consectetur expedita qui quo. Quasi quis quia odit assumenda quo minus dolor adipisci. Iste quia quasi consequatur quasi est.', 'Quam quam nesciunt tempora quaerat in. Sint et impedit quisquam ut magnam dolore. Ex quo sed et. Quibusdam sunt est dicta inventore et nisi error. Veritatis porro deserunt delectus tempore praesentium. Eum quia totam nostrum maxime repellendus nisi. Nostrum quod incidunt corrupti dicta corrupti et. Minus et molestiae et nihil necessitatibus et dolorem repellendus. Ea doloribus odio pariatur nemo. Consequuntur omnis omnis ut sit quae. Vel aut laborum voluptatem natus impedit quasi vel. Voluptatum odit consequatur id consequatur quia.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(12, 'Sunt in ipsa soluta impedit consectetur sed. Vel perferendis voluptatibus aut aut impedit.', 'Eum sunt nemo eaque vero dicta est sit. Consectetur omnis ex vel rerum quae ipsum eveniet. Dolorum velit asperiores quibusdam sit quo accusamus qui corporis. Ab error et et consequatur et non quasi.', 'Tempora possimus est quas error numquam. Fugit eum quam ut totam doloremque. Eius ea error et. Quos et quisquam culpa quia. Non voluptas a doloremque velit consequuntur iste voluptatibus. Dolor et animi excepturi porro quibusdam itaque facilis natus. Sint sed veniam voluptas dolore. Et fugit ipsum accusamus aliquid ratione repudiandae vero. Voluptatem et assumenda in nihil et molestiae. Animi voluptas fugit perspiciatis. Ut porro molestiae et dolores magni. Qui eius et dolor ratione praesentium facilis.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(13, 'Et aut quia ut fuga mollitia qui cumque nisi. Enim fugit fuga ut veniam dolorum.', 'Officiis ad similique rerum. Repellendus minus in corrupti qui error sapiente rem quos. Ab ex eaque explicabo eveniet. Minus officiis qui non amet. Et sed aut eos recusandae sunt reiciendis. Maxime nihil et possimus quod. Eos dolorum nam provident officia. Nam dolor et quos rem.', 'Ut corrupti repudiandae ut necessitatibus assumenda dolores. Autem enim eum nemo facilis velit. Veritatis voluptatum et et. Cumque non nihil amet exercitationem. Officiis dolore iusto illum laboriosam qui ipsam tempora voluptates. Qui itaque nam quam. Facilis perferendis aliquam omnis eius natus est. Qui et doloremque nulla maxime aut. Et ex blanditiis illum officiis. Hic quaerat occaecati qui voluptate maiores odit. Nesciunt cumque non sit dolores vel. Magni qui reiciendis sit ducimus voluptatum qui suscipit dignissimos. Ut ut ratione rerum eum excepturi quia.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(14, 'Perspiciatis voluptatibus velit neque neque repellendus. Totam debitis et id.', 'Ea laboriosam fugiat fugit accusamus inventore. Blanditiis suscipit ratione id fuga quia rerum. Reiciendis id aliquid occaecati dolores quaerat sint.', 'Sed sit itaque laboriosam ut nam. Expedita tempora nesciunt necessitatibus iusto necessitatibus. Adipisci enim esse dignissimos incidunt veritatis recusandae vero. Harum ex accusantium ipsum. Consequatur amet aperiam quidem quo nihil et. Dolorum porro sit architecto aspernatur eum. Accusamus est rerum inventore ipsam maiores nulla. Et nulla asperiores aperiam ipsa modi. Debitis eveniet vel qui unde quam aspernatur doloribus dolor. Voluptas culpa quo sunt iusto consectetur doloribus.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(15, 'Et earum laborum iure. Eligendi cupiditate ut et. Voluptatem quod nesciunt rerum aperiam illo.', 'Maxime aut sunt et repellat. Facilis voluptas quis velit iste iure consequatur. Nostrum et totam aut dolor maxime fugiat libero quos. Cumque accusamus adipisci recusandae ratione. Voluptatem velit ea amet explicabo doloremque cum.', 'Inventore placeat rerum voluptatem eos quia voluptatem enim. Non sit aut perspiciatis. Vero numquam voluptatem quisquam deleniti. Assumenda similique enim mollitia dolor corrupti ipsum. Excepturi tempora dignissimos officiis ut facere debitis necessitatibus. Illo recusandae vitae sequi illo quibusdam. Deleniti dolorem nihil ducimus. Aut et nihil inventore earum hic blanditiis deleniti. Voluptatem a reiciendis deleniti iure explicabo voluptatem. Expedita sed officiis omnis ea. Earum eos pariatur quia et cum quas. Aut sit et pariatur commodi facilis deleniti ab.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(16, 'Alias quae et quam odit illum molestiae. Possimus omnis assumenda animi beatae aliquid qui.', 'Incidunt sunt hic quis velit exercitationem ad ab. Expedita ratione debitis molestias non veniam asperiores. Culpa consectetur non sed expedita eos. Consequuntur sit ut nostrum ipsum vel dolore autem. Omnis asperiores eum voluptates sapiente quis.', 'Sit voluptatem autem provident. Quia blanditiis ut similique labore rerum ad. Nihil nesciunt ea recusandae voluptatibus. Velit assumenda quas facere et aut. Eum sit eum hic praesentium qui ipsam. Sed dolorum consequatur et minima natus fugit placeat. Rerum id voluptatibus magni mollitia. Et est a corrupti animi non ea voluptas. Eum ex enim ea labore laboriosam et id. Non ut qui magni vitae animi. Dolor rem inventore repudiandae ipsam dignissimos sit. Rem beatae laudantium aliquid est quo ut.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(17, 'Cumque nesciunt odio nihil blanditiis minus minima. Sapiente id earum est iure laboriosam modi.', 'Est rerum aut reprehenderit reprehenderit porro aliquid. Voluptas ipsam totam placeat iure et. Quia earum soluta nisi quae. Blanditiis necessitatibus modi nisi excepturi. Et temporibus molestiae est sed dolores sunt nesciunt. Maiores quia illo ex. Ut quo nostrum dolorum repellat aliquid.', 'Et consectetur sunt voluptatem animi quis unde dolorem. Quos recusandae et ratione laudantium facilis saepe sunt. Est et quisquam doloribus nulla qui eos qui. Officiis illo autem odit. Officiis harum voluptatibus doloribus omnis veniam nam. Distinctio aut atque quasi aut commodi dolorem. Necessitatibus amet quis quia. Ratione nisi laborum ea delectus. Ab est fugiat quo occaecati ullam ea dolor tempora. Laudantium est porro consequatur sapiente quidem. Non aliquam quasi consectetur nobis voluptas tempora.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(18, 'Qui est eveniet enim debitis nihil perferendis facere ad. Velit pariatur aperiam non reprehenderit.', 'Ipsam non consequatur omnis inventore accusantium et et quas. Quia facere cupiditate veritatis est optio non est. Dolore fugit aut accusantium recusandae ex reiciendis. Alias quia eius molestiae velit et deserunt perspiciatis est.', 'Enim et consectetur dolores. Voluptate fugiat esse qui cum enim. Dignissimos esse consectetur velit eos ut consequuntur assumenda. Modi occaecati minus dolores quisquam. Ducimus recusandae unde cum a quo totam eligendi inventore. Hic perferendis est corrupti laborum qui et. Quasi ab nobis perspiciatis corporis dolores ab praesentium et. Vero fuga odit maxime et. Omnis possimus ut ut sit animi et pariatur nihil. Ut distinctio ut qui possimus ut.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(19, 'Et ducimus sint ut ut perferendis officia et. Nihil voluptas exercitationem fuga et.', 'Consequatur similique id possimus iste quasi. Atque alias aut quaerat qui. A optio sit non natus ab tempora. Magni possimus et quae nihil quo aut tempora. Deleniti quasi aspernatur possimus sunt sint.', 'Vitae delectus quasi dicta quia velit. Omnis quia occaecati corporis consectetur eos aut quae. Veniam eaque quos cumque animi sed. Molestiae quibusdam cumque id corporis sequi commodi. Excepturi maxime sequi dolorem modi sunt similique. Magni odit nihil amet dolorem debitis. Voluptatem autem qui mollitia sunt veritatis rem quia itaque. Voluptatem voluptatem eius pariatur nihil et cupiditate est id. Odit vitae illum et harum ullam sed. Nihil a enim mollitia ex. Corrupti iure aspernatur ipsum doloribus. Voluptates inventore deleniti amet est.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(20, 'Quia ratione quam quia nemo velit. Voluptatem nisi quod illo at. Quisquam nihil iste hic quia at.', 'Nesciunt minus non sunt qui sed quas. Accusamus quae aut atque nihil qui. At ea enim praesentium in rerum amet. Laudantium fuga non et repellendus sequi adipisci.', 'Sunt ipsum veritatis esse perferendis. Quasi officia tempore culpa ea quia. Eaque quas sequi debitis dolorum minima ea provident. Quidem est officiis iste quasi molestiae alias totam. Repellat repellat occaecati et. Pariatur minima cum et vitae. Omnis ipsa dolor eaque doloribus provident odio quaerat. Et dolores fugit asperiores consequatur quis. Autem quo perspiciatis cum ad error vero eaque.', '2022-11-20 10:46:42', '2022-11-20 10:46:42'),
(21, 'Post one', 'this is Post One', 'this is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post Onethis is Post One', '2022-11-20 12:33:48', '2022-11-20 12:33:48'),
(22, 'Post two', 'this is Post tow', 'this is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post twothis is post two this is post two this is post two this is post two this is post two', '2022-11-20 12:35:11', '2022-11-20 12:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `todo`, `created_at`) VALUES
(94, 1, 'new value', '2022-10-27 06:23:42'),
(96, 1, 'asdas', '2022-10-27 06:26:13'),
(98, 1, 'aert', '2022-10-27 06:26:14'),
(110, 2, 'ye to ap ne app bna de hai', '2022-10-27 07:09:17'),
(111, 3, 'first todo YEAH!!!!', '2022-10-27 07:11:22'),
(112, 1, 'hello', '2022-10-28 06:39:30'),
(113, 1, 'asdwda', '2022-10-28 06:39:34'),
(116, 2, 'dfgdfgdf', '2022-10-31 11:42:31'),
(117, 2, 'asd', '2022-10-31 11:42:31'),
(118, 2, 'awr', '2022-10-31 11:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'admin1@gmaal.com', '$2y$10$9Bwuk0SGNgm/dIhpAEqt3uEXx7LVXuMAvfgF0ooTadGRpW0w/X4YK', '2022-10-26 06:13:24'),
(2, 'Hassan', 'john@gmail.com', '$2y$10$evVgyS.7IkLXEfmPZnT7xeynXNpQxl2ldm7WuOwO8D/XFSs26TVQe', '2022-10-26 07:08:39'),
(3, 'john', 'john@hostcry.com', '$2y$10$5/33.yFoTkfEr.kXqGnyROYOjQvSlzbDBXC./VE78z4MA1A3q6hme', '2022-10-27 07:09:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `zanana`
--
CREATE DATABASE IF NOT EXISTS `zanana` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zanana`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `password`, `gender`, `created_at`) VALUES
(1, 'admin', 'arsal@hostcry.com', '1316532165', '546as4d3sa1d6sa4', '$2y$10$2k9pvU0qNySkCVjDvHXmUeEQTHcLEOI0o2PCC8.oATofkTz6OcD4C', 0, '2022-06-07 21:51:28'),
(2, 'naveed', 'soraha@hai.com', '32432', 'sadsadsad', '$2y$10$CwEDUZSBEvEhJ20Ka5qpHOTBcSos0EgyrkVzwUtzhQ/Viqx0DGCAG', 0, '2022-06-07 22:10:25'),
(3, 'khizer', 'khizer@adaywala.com', '32432', 'sadsadsad', '$2y$10$ZGCrg3rBQOCWpg56ruDaWeLBAMmpBrc2qvmFHhWWtpRlx6BobE2ye', 0, '2022-06-07 22:11:15'),
(4, 'testUser', 'test@gmail.com', '03126546', 'deliver karo mujhy idr', '$2y$10$IuMJ2nMqv6r/5.DU/WEc9eDKMXeof78X53YmIGZe8/gMnk4gB1Lv6', 0, '2022-06-08 23:33:17'),
(5, 'test2', 'test2@gmail.com', '03131561968', 'idhr deliver karo product.', '$2y$10$RbV5ZyJnEkfmShhFmudqvutylTd24OkbYkqMfrhqrsZDsKFiKubHe', 0, '2022-06-08 23:36:11'),
(6, 'admin173', 'admin173@gmail.com', '231684651', 'kasj hdjashg lsajd fgldsaflasdh fgldsa hgfldsah', '$2y$10$nRTAzByhblbeqvqjcmR1Vu3d0mujVT.zLevWb0qF2a4qKa8kC8x5.', 0, '2022-06-09 21:26:50'),
(7, 'Hassan asdf', 'arsalrajput173@gmail.com', '0354168463', 'address', '$2y$10$mSnWDEAnRfaOWud5.zyGhuKWYrGGrt7i2TjoaSfbX9WsLNnkMti6i', 0, '2022-09-19 10:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Order Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `products`, `total_price`, `status`, `created_at`) VALUES
(31, 1, '12', '2035.5', 'Order Returned', '2022-06-08 23:16:49'),
(32, 5, '11', '127.5', 'Order Deliverd', '2022-06-08 23:36:19'),
(33, 1, '12', '2035.5', 'Order Canceled', '2022-06-09 21:00:20'),
(34, 1, '11', '58.5', 'Order Deliverd', '2022-06-09 21:09:29'),
(35, 1, '13', '635.5', 'Order Deliverd', '2022-06-09 21:25:14'),
(36, 6, '11', '104.5', 'Order Canceled', '2022-06-09 21:26:57'),
(37, 6, '12', '2035.5', 'Order Deliverd', '2022-06-09 21:42:54'),
(38, 1, '11,12', '2104.5', 'Order Pending', '2022-06-14 23:43:11'),
(39, 1, '11', '104.5', 'Order Pending', '2022-06-14 23:44:57'),
(40, 7, '12,13', '7035.5', 'Order Pending', '2022-09-19 10:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_short_desc` text NOT NULL,
  `product_long_desc` longtext NOT NULL,
  `product_images` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `product_thumbnail` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category`, `product_title`, `product_short_desc`, `product_long_desc`, `product_images`, `product_price`, `product_quantity`, `discount`, `product_thumbnail`, `created_at`) VALUES
(11, 15, 'Fit Product', 'this is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsa', 'asdasthis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsa', '2034867327.jpeg,1602412489.jpeg,1333149291.jpeg', '23', 123, '23', '1654815304.jpeg', '2022-05-31 13:32:42'),
(12, 15, 'Amazing Product', 'short desc sa dsad sa a ldshflkajdgflahdgf hdslas hdlads lsad fla', 'lognas ksaj hdkasj hdlsajk h;lakshflahfl;aksjd;fkajs a as dsakj hdksa hdksa hdsa d', '1875822894.jpeg,242309313.jpeg,1072614601.jpeg', '2000', 20, '0', '1654214544.jpeg', '2022-06-02 22:40:25'),
(13, 9, 'new prodcut', 'this is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short', 'this is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsathis is short discription blahg balaha a dakjs aksjhd;sajk h;ashf;asjdfh ;asjdfdsa lsa', '601529920.jpeg,1412826892.jpeg,1272274069.jpeg', '300', 500, '0', '1654214557.jpeg', '2022-06-02 22:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `category_slug`, `created_at`) VALUES
(9, 'Creams', 'Creams', '2022-05-26 10:51:48'),
(13, 'new category', 'test-category', '2022-05-27 10:41:40'),
(14, 'chita kary cream', 'cream-chita-kary', '2022-05-27 10:45:36'),
(15, 'testing cream', 'testing-cream', '2022-05-27 10:45:40'),
(18, 'mota kary cream', 'mota-kary-cream', '2022-05-30 10:56:55'),
(19, 'adon se buchaye cream', 'adon-se-buchaye-cream', '2022-05-30 10:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `productRead` tinyint(4) NOT NULL DEFAULT 0,
  `productAdd` tinyint(4) NOT NULL DEFAULT 0,
  `productUpdate` tinyint(4) NOT NULL DEFAULT 0,
  `productDelete` tinyint(4) NOT NULL DEFAULT 0,
  `categoryRead` tinyint(4) NOT NULL DEFAULT 0,
  `categoryAdd` tinyint(4) NOT NULL DEFAULT 0,
  `categoryUpdate` tinyint(4) NOT NULL DEFAULT 0,
  `categoryDelete` tinyint(4) NOT NULL DEFAULT 0,
  `userRead` tinyint(4) NOT NULL DEFAULT 0,
  `userAdd` tinyint(4) NOT NULL DEFAULT 0,
  `userUpdate` tinyint(4) NOT NULL DEFAULT 0,
  `userDelete` tinyint(4) NOT NULL DEFAULT 0,
  `roleRead` tinyint(4) NOT NULL DEFAULT 0,
  `roleAdd` tinyint(4) NOT NULL DEFAULT 0,
  `roleUpdate` tinyint(4) NOT NULL DEFAULT 0,
  `roleDelete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `productRead`, `productAdd`, `productUpdate`, `productDelete`, `categoryRead`, `categoryAdd`, `categoryUpdate`, `categoryDelete`, `userRead`, `userAdd`, `userUpdate`, `userDelete`, `roleRead`, `roleAdd`, `roleUpdate`, `roleDelete`, `created_at`) VALUES
(2, 'SuperAdmin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-01 11:59:58'),
(6, 'SuperDuperSabSeUper', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-02 22:16:56'),
(7, 'Categories and Products', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2022-06-02 22:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `created_at`) VALUES
(1, 'admin', '$2y$10$NZ6lMXLwzAAgEOMSk28Xguxx0cvQ3mQWJP9yiF8xDzv9DDE5HNxf6', 2, '2022-06-01 12:23:40'),
(7, 'root', '$2y$10$4pbaRwptLAvCGKvmZcsYUuqJCA.0TxdGDPopQ2VS4Zalss7gGNjGm', 6, '2022-06-02 22:17:04'),
(8, 'cpro', '$2y$10$wH1jUjaxxm1lv1Rd6s2cAOxushZM84cvU1icxtqUhwU4offc81LZq', 7, '2022-06-02 22:33:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
