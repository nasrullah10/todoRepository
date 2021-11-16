-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2021 at 12:15 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myresume_todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment`, `task_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 22, 1, '2021-09-24 11:34:47', '2021-09-24 11:34:47'),
(2, 'comment one', 22, 1, '2021-09-24 11:36:26', '2021-09-24 11:36:26'),
(3, 'comment one', 22, 1, '2021-09-24 11:37:15', '2021-09-24 11:37:15'),
(4, 'update comment', 7, 1, '2021-10-01 11:50:43', '2021-10-01 15:50:43'),
(5, 'test comment', 22, 1, '2021-09-24 14:06:40', '2021-09-24 14:06:40'),
(6, 'test comment', 22, 1, '2021-09-24 14:06:58', '2021-09-24 14:06:58'),
(7, 'update comment', 22, 1, '2021-10-01 12:02:49', '2021-10-01 16:02:49'),
(8, 'test comment', 22, 1, '2021-09-24 14:10:00', '2021-09-24 14:10:00'),
(9, 'test comment', 22, 1, '2021-09-27 16:51:21', '2021-09-27 16:51:21'),
(11, 'again update comment', 105, 1, '2021-10-04 10:09:02', '2021-10-04 14:09:02'),
(13, NULL, 140, 1, '2021-10-06 21:02:55', '2021-10-06 21:02:55'),
(14, 'test comment', 22, 1, '2021-10-25 20:42:03', '2021-10-25 20:42:03'),
(15, 'test comment', 22, 1, '2021-10-25 20:51:41', '2021-10-25 20:51:41'),
(16, 'test comment', 22, 1, '2021-10-25 20:53:15', '2021-10-25 20:53:15'),
(17, 'test comment', 22, 1, '2021-10-25 20:54:13', '2021-10-25 20:54:13'),
(18, 'test comment', 22, 1, '2021-10-25 20:58:33', '2021-10-25 20:58:33'),
(19, 'test comment', 22, 1, '2021-10-25 21:00:06', '2021-10-25 21:00:06'),
(20, 'test comment', 22, 1, '2021-10-25 21:04:42', '2021-10-25 21:04:42'),
(21, 'test comment', 22, 1, '2021-10-25 21:05:36', '2021-10-25 21:05:36'),
(22, 'test comment', 22, 1, '2021-10-25 21:07:58', '2021-10-25 21:07:58'),
(23, 'test comment', 22, 1, '2021-10-25 21:19:03', '2021-10-25 21:19:03'),
(24, 'nice day', 31, 1, '2021-11-03 14:22:00', '2021-11-03 14:22:00'),
(25, 'nice', 41, 1, '2021-11-10 20:54:19', '2021-11-10 20:54:19'),
(26, 'nice', 41, 1, '2021-11-10 20:54:20', '2021-11-10 20:54:20'),
(27, 'fgg', 41, 1, '2021-11-10 20:54:43', '2021-11-10 20:54:43'),
(28, 'first comment', 37, 1, '2021-11-10 20:55:39', '2021-11-10 20:55:39'),
(29, 'haeis', 37, 1, '2021-11-10 20:57:53', '2021-11-10 20:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `all_day_event` varchar(255) DEFAULT NULL,
  `event_alarm_desc` longtext,
  `event_repeat_desc` longtext,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_start_time`, `event_end_time`, `event_title`, `event_date`, `all_day_event`, `event_alarm_desc`, `event_repeat_desc`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(8, '12:46:12', '12:46:12', 'Event title one', '2021-10-01', 'all day event', 'event alarm des', 'event repeat desc', 77, 1, '2021-10-29 12:00:25', '2021-10-29 21:00:25'),
(5, '04:14:10', '10:58:10', 'class update', '2021-09-29', 'All Day Event', '15 minutes before', 'Every month', 77, 1, '2021-10-29 12:16:53', '2021-10-29 21:16:53'),
(7, '05:00:01', '05:15:10', 'birthday', '2021-10-01', NULL, '30 minutes before', 'Every month', 77, 1, '2021-10-27 15:05:09', '2021-10-27 15:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `grocery_categories`
--

CREATE TABLE `grocery_categories` (
  `grocery_category_id` bigint(20) UNSIGNED NOT NULL,
  `grocery_list_id` int(11) DEFAULT NULL,
  `grocery_category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grocery_categories`
--

INSERT INTO `grocery_categories` (`grocery_category_id`, `grocery_list_id`, `grocery_category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'House Hold', 1, NULL, NULL),
(2, NULL, 'Fruits', 1, NULL, NULL),
(3, NULL, 'Vegetables', 1, NULL, NULL),
(4, NULL, 'Crockery', 1, NULL, NULL),
(5, NULL, 'Electronic Items', 1, NULL, NULL),
(6, NULL, 'Wearable Items', 1, NULL, NULL),
(7, NULL, 'Bread & Bakery', 1, NULL, NULL),
(8, NULL, 'Frozen Food', 1, NULL, NULL),
(9, NULL, 'Meat & SeaFood', 1, NULL, NULL),
(10, NULL, 'Dairy,Egg & Cheese', 1, NULL, NULL),
(11, NULL, 'Canned Goods', 1, NULL, NULL),
(12, NULL, 'Pharmacy', 1, NULL, NULL),
(13, NULL, 'Cleaning Items', 1, NULL, NULL),
(20, 2, 'GROCERY name', 1, '2021-10-18 16:24:46', '2021-10-18 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `grocery_items`
--

CREATE TABLE `grocery_items` (
  `grocery_item_id` bigint(20) UNSIGNED NOT NULL,
  `grocery_list_id` int(11) DEFAULT NULL,
  `item_grocery_name` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grocery_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_grocery_description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grocery_items`
--

INSERT INTO `grocery_items` (`grocery_item_id`, `grocery_list_id`, `item_grocery_name`, `user_id`, `grocery_category_id`, `item_grocery_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'banana', 77, 2, '2 dozen', 1, '2021-10-20 14:38:40', '2021-10-20 14:38:40'),
(3, NULL, 'Basket', 77, 1, '2 baskets', 1, '2021-10-20 14:55:23', '2021-10-20 14:55:23'),
(4, 2, 'Grocery  name One', 77, 6, 'item grocery description', 1, '2021-10-20 14:55:54', '2021-10-21 21:15:40'),
(5, 4, 'jeans pant', 77, 6, 'XL outfitter', 1, '2021-10-21 19:29:59', '2021-10-21 19:29:59'),
(6, 4, 'basket', 77, 1, 'a basket for houshold item plastic basket size large plastic basket not available bring small', 1, '2021-10-21 20:39:25', '2021-10-21 20:39:25'),
(8, 41, 'h', 85, 1, 'hhh', 2, '2021-11-10 21:01:43', '2021-11-10 21:02:15'),
(9, 41, 'cfr', 85, 1, 'ggg', 2, '2021-11-10 21:02:43', '2021-11-10 21:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `grocery_lists`
--

CREATE TABLE `grocery_lists` (
  `grocery_list_id` int(11) NOT NULL,
  `grocery_list_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(11) NOT NULL,
  `date` varchar(11) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grocery_lists`
--

INSERT INTO `grocery_lists` (`grocery_list_id`, `grocery_list_name`, `user_id`, `date`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'haris', 77, '2021-11-10', '14:46:11', 1, '2021-10-20 14:06:59', '2021-11-10 19:46:58'),
(2, 'haris list', 77, '2021-10-20', '10:07:10', 1, '2021-10-20 14:07:01', '2021-10-20 14:07:01'),
(3, 'abc', 85, '2021-11-03', '10:53:11', 1, '2021-11-03 14:53:54', '2021-11-03 14:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `habits`
--

CREATE TABLE `habits` (
  `habit_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `habit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `habit_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `habit_icons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `habits`
--

INSERT INTO `habits` (`habit_id`, `user_id`, `habit_name`, `habit_detail`, `habit_icons`, `status`, `created_at`, `updated_at`) VALUES
(2, 77, 'Drink Water', 'Stay hydrated', 'public/habiticons/water.png', 1, NULL, NULL),
(4, 77, 'Read', 'The more you read the more you will know', 'public/habiticons/read.png', 1, NULL, NULL),
(5, 77, 'Write', 'You are the writer of your own story', 'public/habiticons/write.png', 1, NULL, NULL),
(6, 77, 'do housework', 'A clean home is a happy home', 'public/habiticons/do_housework.png', 1, NULL, NULL),
(7, 77, 'Early to rise', 'Wake up and be awesome', 'public/habiticons/early_rise.png', 1, NULL, NULL),
(8, 77, 'Eat fruits', 'Eat better feel better', 'public/habiticons/eat_fruits.png', 2, NULL, '2021-11-04 20:05:12'),
(9, 77, 'Excercise', 'Good things comes to those who sweats', 'public/habiticons/exercise.png', 1, NULL, NULL),
(10, 77, 'Take a walk', 'Walking is the best medicine', 'public/habiticons/walk.png', 1, NULL, NULL),
(11, 77, 'Meditate', 'Quiet the mind and soul will speak', 'public/habiticons/meditate.png', 1, NULL, NULL),
(12, 77, 'Stay positive', 'More smiling, less worrying', 'public/habiticons/stay_positive.png', 1, NULL, NULL),
(13, 77, 'No Dirty words', 'You are what you say', 'public/habiticons/no_dirty_words.png', 1, NULL, NULL),
(14, 77, 'Early to bed', 'Dream lofty dream', 'public/habiticons/early_bed.png', 1, NULL, NULL),
(15, 77, 'Eat breakfast', 'Good breakfast is a start of good day', 'public/habiticons/breakfast.png', 1, NULL, NULL),
(16, 77, 'Listen to music', 'Music is life itslef', 'public/habiticons/music.png', 1, NULL, NULL),
(17, 77, 'Do skincare', 'Invest in your Skin', 'public/habiticons/skin_care.png', 1, NULL, NULL),
(18, 77, 'Save money', 'Save money and money will save you', 'public/habiticons/save_money.png', 1, NULL, NULL),
(19, 77, 'Help Others', 'Helping other is the way we help ourseleves', 'public/habiticons/help_others.png', 1, NULL, NULL),
(20, 77, 'Groom yourself', 'Make time for yourslef', 'public/habiticons/groom.png', 1, NULL, NULL),
(25, 85, 'Habit Two', 'Habbit Two A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, 1, '2021-11-03 14:27:16', '2021-11-03 14:27:16'),
(26, 77, 'Habit Two', 'Habbit Two A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, 2, '2021-11-04 20:36:02', '2021-11-04 21:00:16'),
(27, 77, 'Habit Two', 'Habbit Two A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, 2, '2021-11-04 20:36:50', '2021-11-04 21:00:51'),
(29, 77, 'Habit Two', 'Habbit Two A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, 2, '2021-11-04 20:40:28', '2021-11-04 21:00:26'),
(30, 77, 'Watch a movie', 'enhance your experience of life', NULL, 1, '2021-11-08 21:10:41', '2021-11-08 21:10:41'),
(31, 77, 'Watch a movie', 'enhance your experience of life', NULL, 2, '2021-11-08 21:30:07', '2021-11-08 21:37:00'),
(32, 77, 'Watch a movie', 'enhance your experience of life', NULL, 1, '2021-11-08 21:37:57', '2021-11-08 21:37:57'),
(36, 77, 'todo', 'todo description', NULL, 2, '2021-11-08 21:44:44', '2021-11-08 21:45:35'),
(40, 77, 'todo', 'todo description', NULL, 1, '2021-11-08 21:50:59', '2021-11-08 21:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `habit_details`
--

CREATE TABLE `habit_details` (
  `habit_details_id` int(11) NOT NULL,
  `habit_id` int(11) DEFAULT NULL,
  `types` varchar(20) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL,
  `achieve_it_all` varchar(255) DEFAULT NULL,
  `daily` int(11) DEFAULT NULL,
  `count_type` varchar(11) DEFAULT NULL,
  `when_checking` text,
  `select_days` varchar(20) DEFAULT NULL,
  `reminder` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habit_details`
--

INSERT INTO `habit_details` (`habit_details_id`, `habit_id`, `types`, `goals`, `achieve_it_all`, `daily`, `count_type`, `when_checking`, `select_days`, `reminder`, `created_at`, `updated_at`) VALUES
(19, 40, 'Weekly', 2, NULL, 3, 'Count', 'Auto', '5', '3:57AM,7:40AM,11:46AM', '2021-11-08 21:50:59', '2021-11-08 21:50:59'),
(7, 27, 'Daily', 2, NULL, 1, 'cont type', 'when checking', 'sunday', '11:44 AM,11:44 PM', '2021-11-04 20:36:50', '2021-11-04 20:36:50'),
(6, 26, 'Daily', 2, NULL, 1, 'cont type', 'when checking', 'sunday', '11:44 AM,11:44 PM', '2021-11-04 20:36:02', '2021-11-04 20:36:02'),
(4, 25, 'Daily', 2, NULL, 1, 'cont type', 'when checking', 'sunday', '11:44 AM,11:44 PM', '2021-11-03 14:27:16', '2021-11-03 14:27:16'),
(11, 32, 'Daily', 2, NULL, 2, 'Cup', 'Manual', 'Monday', '6:22AM,10:22AM,8:37AM', '2021-11-08 21:37:57', '2021-11-08 21:37:57'),
(9, 29, 'Daily', 2, NULL, 1, 'cont type', 'when checking', 'sunday', '11:44 AM,11:44 PM', '2021-11-04 20:40:28', '2021-11-04 20:40:28'),
(10, 31, 'Daily', 2, NULL, 5, 'Cup', 'Manual', 'Monday', '6:22AM,10:22AM,7:30AM', '2021-11-08 21:30:07', '2021-11-08 21:30:07'),
(15, 36, 'Weekly', 2, NULL, 3, 'Count', 'Auto', 'Tuesday', '3:57AM,7:40AM', '2021-11-08 21:44:44', '2021-11-08 21:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `habit_suggestions`
--

CREATE TABLE `habit_suggestions` (
  `habit_suggestion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_histories`
--

CREATE TABLE `level_histories` (
  `level_history_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `levels` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_level_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_histories`
--

INSERT INTO `level_histories` (`level_history_id`, `user_id`, `task_id`, `levels`, `change_level_on`, `status`, `time`, `created_at`, `updated_at`) VALUES
(13, 77, 142, 'Experience', 'Experience', 1, NULL, '2021-09-30 16:21:57', '2021-10-06 15:21:04'),
(14, 77, 142, 'Experience', 'Experience', 1, NULL, '2021-10-05 13:52:45', '2021-10-06 15:21:04'),
(15, 77, 142, 'Experience', 'Experience', 1, NULL, '2021-10-06 15:12:22', '2021-10-06 15:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`user_id`, `name`, `email`, `device_id`, `created_at`, `updated_at`) VALUES
(1, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-27 18:29:10', '2021-10-27 18:29:10'),
(2, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-27 18:29:10', '2021-10-27 18:29:10'),
(3, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:48:00', '2021-10-28 19:48:00'),
(4, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:48:00', '2021-10-28 19:48:00'),
(5, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:48:16', '2021-10-28 19:48:16'),
(6, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:48:16', '2021-10-28 19:48:16'),
(7, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:49:19', '2021-10-28 19:49:19'),
(8, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 19:50:07', '2021-10-28 19:50:07'),
(9, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 20:06:54', '2021-10-28 20:06:54'),
(10, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-28 21:00:36', '2021-10-28 21:00:36'),
(11, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-10-29 14:57:03', '2021-10-29 14:57:03'),
(12, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-01 19:37:59', '2021-11-01 19:37:59'),
(13, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-01 19:59:17', '2021-11-01 19:59:17'),
(14, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-01 20:00:03', '2021-11-01 20:00:03'),
(15, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-02 18:05:47', '2021-11-02 18:05:47'),
(16, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-02 20:26:10', '2021-11-02 20:26:10'),
(17, 'nasrullah', 'nasrullahkhan10111@gmail.com', NULL, '2021-11-02 21:13:10', '2021-11-02 21:13:10'),
(18, 'Haris Ejaz', 'harisejaz89@gmail.com', NULL, '2021-11-03 20:10:41', '2021-11-03 20:10:41'),
(19, 'Fawad', 'fawad@gmail.com', NULL, '2021-11-10 20:53:59', '2021-11-10 20:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `logs_details`
--

CREATE TABLE `logs_details` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `option_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_details`
--

INSERT INTO `logs_details` (`log_id`, `user_id`, `device_id`, `option_name`, `status`, `created_at`, `updated_at`, `option_type`) VALUES
(1, 77, NULL, 'Task', 1, '2021-10-25 15:19:04', '2021-10-25 15:19:04', 'Add Task'),
(2, 77, NULL, 'Project', 1, '2021-10-25 15:33:26', '2021-10-25 15:33:26', 'Add Project'),
(3, NULL, NULL, 'Section', 1, '2021-10-25 19:02:30', '2021-10-25 19:02:30', 'Add Section'),
(4, NULL, NULL, 'Section', 1, '2021-10-25 19:35:18', '2021-10-25 19:35:18', 'Add Section'),
(5, NULL, NULL, 'Section', 1, '2021-10-25 19:37:41', '2021-10-25 19:37:41', 'Add Section'),
(6, NULL, NULL, 'Section', 1, '2021-10-25 19:42:32', '2021-10-25 19:42:32', 'Add Section'),
(7, 77, NULL, 'Task', 1, '2021-10-25 19:43:15', '2021-10-25 19:43:15', 'Add Task'),
(8, 77, NULL, 'Task', 1, '2021-10-25 19:59:56', '2021-10-25 19:59:56', 'Add Task'),
(9, 77, NULL, 'Task', 1, '2021-10-25 20:06:20', '2021-10-25 20:06:20', 'Add Task'),
(10, NULL, NULL, 'Comment', 1, '2021-10-25 21:00:06', '2021-10-25 21:00:06', 'Add Comment'),
(11, NULL, NULL, 'Comment', 1, '2021-10-25 21:07:58', '2021-10-25 21:07:58', 'Add Comment'),
(12, NULL, NULL, 'Comment', 1, '2021-10-25 21:19:04', '2021-10-25 21:19:04', 'Add Comment'),
(13, 77, NULL, 'Task', 1, '2021-10-26 15:46:59', '2021-10-26 15:46:59', 'Add Task'),
(14, 77, NULL, 'Task', 1, '2021-10-26 15:49:30', '2021-10-26 15:49:30', 'Add Task'),
(15, 77, NULL, 'Task', 1, '2021-10-26 15:51:44', '2021-10-26 15:51:44', 'Add Task'),
(16, 77, NULL, 'Task', 1, '2021-10-26 15:58:48', '2021-10-26 15:58:48', 'Add Task'),
(17, 77, NULL, 'Task', 1, '2021-10-26 15:59:56', '2021-10-26 15:59:56', 'Add Task'),
(18, 77, NULL, 'Task', 1, '2021-10-26 16:00:17', '2021-10-26 16:00:17', 'Add Task'),
(19, 77, NULL, 'Task', 1, '2021-10-26 16:00:53', '2021-10-26 16:00:53', 'Add Task'),
(20, 77, NULL, 'Task', 1, '2021-10-26 16:01:58', '2021-10-26 16:01:58', 'Add Task'),
(21, NULL, NULL, 'Section', 1, '2021-10-26 16:27:32', '2021-10-26 16:27:32', 'Add Section'),
(22, 77, NULL, 'Task', 1, '2021-10-26 16:36:43', '2021-10-26 16:36:43', 'Add Task'),
(23, 77, NULL, 'Task', 1, '2021-10-26 16:55:13', '2021-10-26 16:55:13', 'Add Task'),
(24, NULL, NULL, 'Project', 1, '2021-10-26 17:03:56', '2021-10-26 17:03:56', 'Delete Project'),
(25, NULL, NULL, 'Project', 1, '2021-10-26 17:04:48', '2021-10-26 17:04:48', 'Delete Project'),
(26, NULL, NULL, 'Task', 1, '2021-10-26 17:04:59', '2021-10-26 17:04:59', 'Delete Task'),
(27, NULL, NULL, 'Event', 1, '2021-10-26 17:07:43', '2021-10-26 17:07:43', 'Delete Event'),
(28, NULL, NULL, 'Event', 1, '2021-10-26 17:08:49', '2021-10-26 17:08:49', 'Delete Event'),
(29, 77, NULL, 'Task', 1, '2021-10-26 18:58:01', '2021-10-26 18:58:01', 'Delete Task'),
(30, NULL, NULL, 'Task', 1, '2021-10-26 19:00:05', '2021-10-26 19:00:05', 'Delete Task'),
(31, 77, NULL, 'Task', 1, '2021-10-26 19:01:57', '2021-10-26 19:01:57', 'Add Task'),
(32, NULL, NULL, 'Task', 1, '2021-10-26 19:03:03', '2021-10-26 19:03:03', 'Delete Task'),
(33, 77, NULL, 'Grocery Item', 1, '2021-10-26 21:16:28', '2021-10-26 21:16:28', 'Update Grocery Item'),
(34, 77, NULL, 'Grocery Item', 1, '2021-10-26 21:16:53', '2021-10-26 21:16:53', 'Update Grocery Item'),
(35, 77, NULL, 'Grocery Item', 1, '2021-10-26 21:20:57', '2021-10-26 21:20:57', 'Update Grocery Item'),
(36, NULL, NULL, 'Event', 1, '2021-10-27 16:33:06', '2021-10-27 16:33:06', 'Delete Event'),
(37, 77, NULL, 'Task', 1, '2021-10-27 21:20:30', '2021-10-27 21:20:30', 'Add Task'),
(38, 77, NULL, 'Task', 1, '2021-10-27 21:20:59', '2021-10-27 21:20:59', 'Add Task'),
(39, 77, NULL, 'Task', 1, '2021-10-27 21:21:39', '2021-10-27 21:21:39', 'Add Task'),
(40, 77, NULL, 'Task', 1, '2021-10-28 14:21:13', '2021-10-28 14:21:13', 'Add Task'),
(41, 77, NULL, 'Task', 1, '2021-10-28 16:12:35', '2021-10-28 16:12:35', 'Add Task'),
(42, 77, NULL, 'Project', 1, '2021-10-28 18:14:36', '2021-10-28 18:14:36', 'Add Project'),
(43, 77, NULL, 'Project', 1, '2021-10-28 18:34:22', '2021-10-28 18:34:22', 'Delete Project'),
(44, 77, NULL, 'Project', 1, '2021-10-28 18:37:42', '2021-10-28 18:37:42', 'Add Project'),
(45, 77, NULL, 'Project', 1, '2021-10-28 18:38:49', '2021-10-28 18:38:49', 'Update Peoject'),
(46, 77, NULL, 'Project', 1, '2021-10-28 19:18:34', '2021-10-28 19:18:34', 'Update Peoject'),
(47, 77, NULL, 'Project', 1, '2021-10-28 19:22:18', '2021-10-28 19:22:18', 'Update Peoject'),
(48, 77, NULL, 'Project', 1, '2021-10-28 19:28:19', '2021-10-28 19:28:19', 'Update Peoject'),
(49, 77, NULL, 'Project', 1, '2021-10-28 19:46:46', '2021-10-28 19:46:46', 'Delete Project'),
(50, 77, NULL, 'Habit', 1, '2021-10-28 20:30:59', '2021-10-28 20:30:59', 'Add Habbit'),
(51, 77, NULL, 'Grocery Item', 1, '2021-10-29 21:00:25', '2021-10-29 21:00:25', 'Update Grocery Item'),
(52, 77, NULL, 'Grocery Item', 1, '2021-10-29 21:13:56', '2021-10-29 21:13:56', 'Update Grocery Item'),
(53, 77, NULL, 'Grocery Item', 1, '2021-10-29 21:16:53', '2021-10-29 21:16:53', 'Update Grocery Item'),
(54, 77, NULL, 'Task', 1, '2021-11-01 14:53:29', '2021-11-01 14:53:29', 'Add Task'),
(55, 77, NULL, 'Habit', 1, '2021-11-02 19:04:50', '2021-11-02 19:04:50', 'Add Habbit'),
(56, 77, NULL, 'Habit', 1, '2021-11-02 19:06:21', '2021-11-02 19:06:21', 'Add Habbit'),
(57, 77, NULL, 'Habit', 1, '2021-11-02 19:31:08', '2021-11-02 19:31:08', 'Add Habbit'),
(58, 77, NULL, 'Habit', 1, '2021-11-02 19:42:17', '2021-11-02 19:42:17', 'Add Habbit'),
(59, 77, NULL, 'Habit', 1, '2021-11-02 19:47:25', '2021-11-02 19:47:25', 'Add Habbit'),
(60, 77, NULL, 'Habit', 1, '2021-11-02 19:50:12', '2021-11-02 19:50:12', 'Add Habbit'),
(61, 77, NULL, 'Habit', 1, '2021-11-02 19:57:12', '2021-11-02 19:57:12', 'Add Habbit'),
(62, 85, NULL, 'Task', 1, '2021-11-02 21:14:45', '2021-11-02 21:14:45', 'Add Task'),
(63, 85, NULL, 'Task', 1, '2021-11-03 14:00:12', '2021-11-03 14:00:12', 'Add Task'),
(64, NULL, NULL, 'Sub Task', 1, '2021-11-03 14:17:53', '2021-11-03 14:17:53', 'Add Sub Task'),
(65, NULL, NULL, 'Sub Task', 1, '2021-11-03 14:19:58', '2021-11-03 14:19:58', 'Add Sub Task'),
(66, NULL, NULL, 'Comment', 1, '2021-11-03 14:22:00', '2021-11-03 14:22:00', 'Add Comment'),
(67, 85, NULL, 'Habit', 1, '2021-11-03 14:26:07', '2021-11-03 14:26:07', 'Add Habbit'),
(68, 85, NULL, 'Habit', 1, '2021-11-03 14:26:50', '2021-11-03 14:26:50', 'Add Habbit'),
(69, 85, NULL, 'Habit', 1, '2021-11-03 14:27:16', '2021-11-03 14:27:16', 'Add Habbit'),
(70, 85, NULL, 'Project', 1, '2021-11-03 14:28:40', '2021-11-03 14:28:40', 'Add Project'),
(71, 85, NULL, 'Task', 1, '2021-11-03 14:36:22', '2021-11-03 14:36:22', 'Add Task'),
(72, 85, NULL, 'Grocery List', 1, '2021-11-03 14:53:54', '2021-11-03 14:53:54', 'Add Grocery List'),
(73, 85, NULL, 'Grocery Item', 1, '2021-11-03 14:54:24', '2021-11-03 14:54:24', 'Add Grocery Item'),
(74, 85, NULL, 'Grocery Item', 1, '2021-11-03 14:54:59', '2021-11-03 14:54:59', 'Delete Grocery Item'),
(75, 77, NULL, 'Habit', 1, '2021-11-03 18:22:39', '2021-11-03 18:22:39', 'Add Habbit'),
(76, 77, NULL, 'Task', 1, '2021-11-04 14:09:02', '2021-11-04 14:09:02', 'Add Task'),
(77, NULL, NULL, 'Task', 1, '2021-11-04 14:13:03', '2021-11-04 14:13:03', 'Delete Task'),
(78, NULL, NULL, 'Habit', 1, '2021-11-04 20:05:12', '2021-11-04 20:05:12', 'Delete Habit Item'),
(79, 77, NULL, 'Habit', 1, '2021-11-04 20:36:02', '2021-11-04 20:36:02', 'Update Habbit'),
(80, 77, NULL, 'Habit', 1, '2021-11-04 20:36:50', '2021-11-04 20:36:50', 'Update Habbit'),
(81, 77, NULL, 'Habit', 1, '2021-11-04 20:39:44', '2021-11-04 20:39:44', 'Update Habbit'),
(82, 77, NULL, 'Habit', 1, '2021-11-04 20:40:28', '2021-11-04 20:40:28', 'Update Habbit'),
(83, NULL, NULL, 'Habit', 1, '2021-11-04 21:00:16', '2021-11-04 21:00:16', 'Delete Habit Item'),
(84, NULL, NULL, 'Habit', 1, '2021-11-04 21:00:26', '2021-11-04 21:00:26', 'Delete Habit Item'),
(85, NULL, NULL, 'Habit', 1, '2021-11-04 21:00:51', '2021-11-04 21:00:51', 'Delete Habit Item'),
(86, 77, NULL, 'Task', 1, '2021-11-04 21:13:15', '2021-11-04 21:13:15', 'Add Task'),
(87, NULL, NULL, 'Task', 1, '2021-11-04 21:16:50', '2021-11-04 21:16:50', 'Delete Task'),
(88, 77, NULL, 'Task', 1, '2021-11-04 21:23:37', '2021-11-04 21:23:37', 'Add Task'),
(89, NULL, NULL, 'Task', 1, '2021-11-04 21:23:47', '2021-11-04 21:23:47', 'Delete Task'),
(90, 77, NULL, 'Project', 1, '2021-11-05 20:25:32', '2021-11-05 20:25:32', 'Update Peoject'),
(91, 77, NULL, 'Habit', 1, '2021-11-08 21:30:07', '2021-11-08 21:30:07', 'Update Habbit'),
(92, NULL, NULL, 'Habit', 1, '2021-11-08 21:37:00', '2021-11-08 21:37:00', 'Delete Habit Item'),
(93, 77, NULL, 'Habit', 1, '2021-11-08 21:37:57', '2021-11-08 21:37:57', 'Update Habbit'),
(94, 77, NULL, 'Habit', 1, '2021-11-08 21:40:50', '2021-11-08 21:40:50', 'Update Habbit'),
(95, 77, NULL, 'Habit', 1, '2021-11-08 21:42:56', '2021-11-08 21:42:56', 'Update Habbit'),
(96, 77, NULL, 'Habit', 1, '2021-11-08 21:44:26', '2021-11-08 21:44:26', 'Update Habbit'),
(97, 77, NULL, 'Habit', 1, '2021-11-08 21:44:44', '2021-11-08 21:44:44', 'Update Habbit'),
(98, NULL, NULL, 'Habit', 1, '2021-11-08 21:45:35', '2021-11-08 21:45:35', 'Delete Habit Item'),
(99, 77, NULL, 'Habit', 1, '2021-11-08 21:45:56', '2021-11-08 21:45:56', 'Update Habbit'),
(100, 77, NULL, 'Habit', 1, '2021-11-08 21:46:32', '2021-11-08 21:46:32', 'Update Habbit'),
(101, 77, NULL, 'Habit', 1, '2021-11-08 21:50:39', '2021-11-08 21:50:39', 'Update Habbit'),
(102, 77, NULL, 'Habit', 1, '2021-11-08 21:50:59', '2021-11-08 21:50:59', 'Update Habbit'),
(103, NULL, NULL, 'Project', 1, '2021-11-08 22:29:36', '2021-11-08 22:29:36', 'Duplicate Peoject'),
(104, NULL, NULL, 'Project', 1, '2021-11-08 22:30:04', '2021-11-08 22:30:04', 'Duplicate Peoject'),
(105, NULL, NULL, 'Project', 1, '2021-11-08 22:30:46', '2021-11-08 22:30:46', 'Duplicate Peoject'),
(106, NULL, NULL, 'Project', 1, '2021-11-08 22:37:22', '2021-11-08 22:37:22', 'Duplicate Peoject'),
(107, NULL, NULL, 'Project', 1, '2021-11-08 22:38:07', '2021-11-08 22:38:07', 'Duplicate Peoject'),
(108, NULL, NULL, 'Project', 1, '2021-11-08 22:38:25', '2021-11-08 22:38:25', 'Duplicate Peoject'),
(109, NULL, NULL, 'Project', 1, '2021-11-08 22:39:17', '2021-11-08 22:39:17', 'Duplicate Peoject'),
(110, NULL, NULL, 'Project', 1, '2021-11-08 22:39:48', '2021-11-08 22:39:48', 'Duplicate Peoject'),
(111, NULL, NULL, 'Project', 1, '2021-11-08 22:55:37', '2021-11-08 22:55:37', 'Duplicate Peoject'),
(112, 77, NULL, 'Task', 1, '2021-11-09 14:34:11', '2021-11-09 14:34:11', 'Add Task'),
(113, NULL, NULL, 'Sub Task', 1, '2021-11-09 14:34:30', '2021-11-09 14:34:30', 'Add Sub Task'),
(114, 77, NULL, 'Task', 1, '2021-11-10 16:00:56', '2021-11-10 16:00:56', 'Add Task'),
(115, NULL, NULL, 'Section', 1, '2021-11-10 17:21:22', '2021-11-10 17:21:22', 'Add Section'),
(116, NULL, NULL, 'Section', 1, '2021-11-10 17:34:02', '2021-11-10 17:34:02', 'Delete Section'),
(117, NULL, NULL, 'Section', 1, '2021-11-10 17:34:36', '2021-11-10 17:34:36', 'Delete Section'),
(118, NULL, NULL, 'Section', 1, '2021-11-10 17:42:30', '2021-11-10 17:42:30', 'Update Section'),
(119, NULL, NULL, 'Section', 1, '2021-11-10 17:46:12', '2021-11-10 17:46:12', 'Update Section'),
(120, NULL, NULL, 'Section', 1, '2021-11-10 17:46:53', '2021-11-10 17:46:53', 'Update Section'),
(121, NULL, NULL, 'Section', 1, '2021-11-10 17:48:39', '2021-11-10 17:48:39', 'Delete Section'),
(122, NULL, NULL, 'Section', 1, '2021-11-10 17:48:54', '2021-11-10 17:48:54', 'Add Section'),
(123, NULL, NULL, 'Section', 1, '2021-11-10 17:52:34', '2021-11-10 17:52:34', 'Update Section'),
(124, NULL, NULL, 'Section', 1, '2021-11-10 17:54:17', '2021-11-10 17:54:17', 'Update Section'),
(125, NULL, NULL, 'Section', 1, '2021-11-10 19:24:48', '2021-11-10 19:24:48', 'Update Section'),
(126, 77, NULL, 'Grocery List', 1, '2021-11-10 19:33:37', '2021-11-10 19:33:37', 'Update Grocery List'),
(127, 77, NULL, 'Grocery List', 1, '2021-11-10 19:46:58', '2021-11-10 19:46:58', 'Update Grocery List'),
(128, 77, NULL, 'Task', 1, '2021-11-10 19:53:12', '2021-11-10 19:53:12', 'Add Task'),
(129, 77, NULL, 'Task', 1, '2021-11-10 20:08:50', '2021-11-10 20:08:50', 'Add Task'),
(130, 77, NULL, 'Task', 1, '2021-11-10 20:36:56', '2021-11-10 20:36:56', 'Add Task'),
(131, 85, NULL, 'Task', 1, '2021-11-10 20:54:02', '2021-11-10 20:54:02', 'Add Task'),
(132, NULL, NULL, 'Comment', 1, '2021-11-10 20:54:20', '2021-11-10 20:54:20', 'Add Comment'),
(133, NULL, NULL, 'Comment', 1, '2021-11-10 20:54:20', '2021-11-10 20:54:20', 'Add Comment'),
(134, NULL, NULL, 'Comment', 1, '2021-11-10 20:54:43', '2021-11-10 20:54:43', 'Add Comment'),
(135, NULL, NULL, 'Sub Task', 1, '2021-11-10 20:55:04', '2021-11-10 20:55:04', 'Add Sub Task'),
(136, NULL, NULL, 'Comment', 1, '2021-11-10 20:55:39', '2021-11-10 20:55:39', 'Add Comment'),
(137, 86, NULL, 'Task', 1, '2021-11-10 20:55:50', '2021-11-10 20:55:50', 'Add Task'),
(138, 85, NULL, 'Project', 1, '2021-11-10 20:57:43', '2021-11-10 20:57:43', 'Update Peoject'),
(139, NULL, NULL, 'Comment', 1, '2021-11-10 20:57:53', '2021-11-10 20:57:53', 'Add Comment'),
(140, 77, NULL, 'Task', 1, '2021-11-10 20:58:26', '2021-11-10 20:58:26', 'Add Task'),
(141, 86, NULL, 'Task', 1, '2021-11-10 20:59:22', '2021-11-10 20:59:22', 'Add Task'),
(142, 85, NULL, 'Grocery Item', 1, '2021-11-10 21:01:43', '2021-11-10 21:01:43', 'Add Grocery Item'),
(143, 85, NULL, 'Grocery Item', 1, '2021-11-10 21:02:15', '2021-11-10 21:02:15', 'Delete Grocery Item'),
(144, 85, NULL, 'Grocery Item', 1, '2021-11-10 21:02:43', '2021-11-10 21:02:43', 'Add Grocery Item'),
(145, 85, NULL, 'Grocery Item', 1, '2021-11-10 21:02:59', '2021-11-10 21:02:59', 'Delete Grocery Item');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('004079004b293194f8dc0a89e7116c9f64cb8440cced03e4da9e9956379be20b6ddae93bb7aec850', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:31:51', '2021-09-28 11:31:51', '2022-09-28 07:31:51'),
('00653c3c8613998198dcb1179709b1ffdde13dfb00d3b3000fe901c447abc30f9924364489227efc', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 14:18:05', '2021-10-05 14:18:05', '2022-10-05 10:18:05'),
('014b9bd1a834d92d901de465ace7c2c391e95d9ba6a4b80b92261309284dff2c429c74a5d5b35706', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:34:32', '2021-09-30 13:34:32', '2022-09-30 09:34:32'),
('015b0062461cd2e9d62e5c2c012dec91a762000de8281f1a56e1c7b7a05faedaa20f38335f2fc058', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 14:51:18', '2021-10-05 14:51:18', '2022-10-05 10:51:18'),
('020978c00b46c4ddf81b16ed8ab5f08283259b0e62709523377a0051c28af1e97cccbee1dcc74b9c', 76, 1, 'authToken', '[]', 0, '2021-09-22 15:48:20', '2021-09-22 15:48:20', '2022-09-22 11:48:20'),
('02ebab31ae618d8b2586ac5d4ba4de0dffcc3a183996c8e3e582227bbc75688a83097f7fc9075431', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:32:02', '2021-10-13 19:32:02', '2022-10-13 15:32:02'),
('0402a0101549f4435a08b24f7d3b396cdd96d17ac366a17857691ee68fbcebb3ca2c3a6982d00521', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 14:06:24', '2021-10-12 14:06:24', '2022-10-12 10:06:24'),
('054aca392c5a011b0390f59fd4707c93b4ba2fe7438a516f2a65852b82ba1839f97d689924e5b079', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 15:01:11', '2021-09-28 15:01:11', '2022-09-28 11:01:11'),
('065ab752ed254e1198b3c035f7e537b754f6b9b55d0c82d690150e25b43f780b3a0402c9c808ebf8', 79, 1, 'authToken', '[]', 0, '2021-09-23 11:32:52', '2021-09-23 11:32:52', '2022-09-23 07:32:52'),
('0910d29c52ebf21be0ec07ce17957b763b62c53791339d1201918fcdf9b58eb96a5ad8004114a8dc', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 13:45:03', '2021-10-12 13:45:03', '2022-10-12 09:45:03'),
('09b0be31201417526aa96091028804559626769de18980cd6b9891df2f563c82919e807774f80736', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:50:41', '2021-09-23 10:50:41', '2022-09-23 06:50:41'),
('0a7b1f90aaaba6f564bbbb408be32f59eee2685605a3d834a1cba7cb32ce820090692a11d34beaf8', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:52:37', '2021-09-30 13:52:37', '2022-09-30 09:52:37'),
('0b448444f4a121c4a14dce65903a31aab096a9b6983d6677cd55e7c9b2675df0d57f93b622f881dc', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:40:00', '2021-10-01 11:40:00', '2022-10-01 07:40:00'),
('0b77c56c19ac905303a3f8c21f170bf459b803dbf8d1dc114ba4e58f04981993352e4edbb614859a', 29, 1, 'authToken', '[]', 0, '2021-09-20 13:01:34', '2021-09-20 13:01:34', '2022-09-20 09:01:34'),
('0b9f787c66c1be382764c7618a50099ce481e712aa3fcbc1c255b2ca0b88c2a71b30c0c9e8bc228b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 16:24:35', '2021-09-28 16:24:35', '2022-09-28 12:24:35'),
('0cdec18c2e448e38cda71ecb20f4b1f575b89420b51ee471ea7e21bff1d28e6e8d79688c7827a623', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:06:44', '2021-10-13 16:06:44', '2022-10-13 12:06:44'),
('0d5f8f092e23d00a2c814e63a1f35c21128fb6719ef5d950b481efb5ad05562966ad5ab19537d3d7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 15:35:01', '2021-09-23 15:35:01', '2022-09-23 11:35:01'),
('0d7b8a751909a6bd5546e4c4f8a771e78fd0828a4a401dc9a6d9f0054c689c8171e3e9e3f3b4fca7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:22:12', '2021-09-27 14:22:12', '2022-09-27 10:22:12'),
('0d833d3424b6267f3fe498e7b377ad91aa68547fe063fb6947fafcfeea52658691e02861978a1929', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 13:34:46', '2021-09-23 13:34:46', '2022-09-23 09:34:46'),
('0dfab5372ae99a6d51d9926b73fe52941838f38f02bd8bab90e9a9b190e23fbb58bb9d3436ec3717', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 20:56:25', '2021-10-05 20:56:25', '2022-10-05 16:56:25'),
('0e2eea4fae302ad2b2a6e6a9e58dde6b55240888d68dc8912d377451eb91225ad1dafa477d300eb5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:50:16', '2021-10-05 09:50:16', '2022-10-05 05:50:16'),
('0f67917c960018b08fc5aed22e13e233be3ec6060bb1866b085b0c5d0f92aa09ec5c0abd310caa9c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 21:25:43', '2021-10-05 21:25:43', '2022-10-05 17:25:43'),
('1043a569bd5b15f0671b1444e9ab76a6e0c0fad6563a279460aa1d91d34832b23cd7a1809c40d747', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:28:07', '2021-09-23 09:28:07', '2022-09-23 05:28:07'),
('104642968c19e5bc9575630a5278613a2ebd7e6e78ffd9748c484c420c497bdc400391ea9b48a177', 26, 1, 'authToken', '[]', 0, '2021-09-20 11:16:20', '2021-09-20 11:16:20', '2022-09-20 07:16:20'),
('1048259e3b8226e3cead4800d24f4c96165032398d5fedb638dca7dafa4c650c5d8e593c9fed29c9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:24:09', '2021-09-30 13:24:09', '2022-09-30 09:24:09'),
('105e45efabb9b75a45e5eb432363a96d02afd214cd789377befab262c71bac324f021d386174e8d3', 75, 1, 'authToken', '[]', 0, '2021-09-22 15:21:00', '2021-09-22 15:21:00', '2022-09-22 11:21:00'),
('113b9d40cae64974724a86a6a4b7b52f917e9197511bc5b2e04a35faa78b957eed24c6ecd27c307c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:35:05', '2021-09-23 09:35:05', '2022-09-23 05:35:05'),
('11554814d5353dae4888c769694813c001f926f962b0817a59214238ad0b6b79c4f94b25a7451cfe', 11, 1, 'authToken', '[]', 0, '2021-09-13 15:27:16', '2021-09-13 15:27:16', '2022-09-13 11:27:16'),
('11cf4b88382198f83946f5c48980c54099d43f70af3431f2b118dde77f6d6d212eca60d300edc0c9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 14:08:47', '2021-10-04 14:08:47', '2022-10-04 10:08:47'),
('11fe0fa87a4bf82e8a2c630beb1333081118dee3ceccc8bae3b05ab9f494f64f0f4daed65093242c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:41:05', '2021-10-01 10:41:05', '2022-10-01 06:41:05'),
('124746a527603e5dfb72c3b191c9f6c488e25c0680de3821ff5ff598f5159d85873e7bb162129546', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:05:07', '2021-09-30 11:05:07', '2022-09-30 07:05:07'),
('12ed2d9bdbcb0755013caaf0211c5ec9bdafb3917c3b46d4632ad72a0f35c6190a7e01ad4b566070', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:22:43', '2021-09-23 09:22:43', '2022-09-23 05:22:43'),
('13d8642c815b55b39b23570c738e43ac5904b0757d91db673e8eb6efd1ccfd16fc22c70660a1aafc', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:40:40', '2021-09-27 15:40:40', '2022-09-27 11:40:40'),
('150c8f3bd2cfd4b4c21ca669f93d94bf24b9353183df1dc5a3ef80b6cce7a5805d2a9b79a64761af', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 10:47:23', '2021-10-05 10:47:23', '2022-10-05 06:47:23'),
('1606e03772f0248e557cd752a55cf67c419fab885790b6789314eaa50b0fe694c0503307311b2587', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:05:26', '2021-09-29 11:05:26', '2022-09-29 07:05:26'),
('16b001ea2947b5dd2a035bb1916998e3a09e1af27cc1217ad0e92565473f6badbecd6500969623df', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 10:59:26', '2021-10-05 10:59:26', '2022-10-05 06:59:26'),
('170eb3a98829a6ec5aea3b18550c8808ed15a5f94b3e1f604b83b47215310d23da5939defc7e786a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:55:53', '2021-09-28 09:55:53', '2022-09-28 05:55:53'),
('193da5c52784ccb1c3ace77333f649f3190593397d03f243879129ac2450893af44ef7245070ab56', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:59:34', '2021-09-27 15:59:34', '2022-09-27 11:59:34'),
('1b27c123791cd2800ff94eb8ce6a9d52afa663a26ceb6c3af0351d454c5689dd3a1ad11a9d32c91a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:53:35', '2021-09-28 09:53:35', '2022-09-28 05:53:35'),
('1bc780e997ffe6820175f264dec00361acc0f9feb4571c40b2f34a0a175461714307d18f5b6e4e78', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 15:10:41', '2021-10-13 15:10:41', '2022-10-13 11:10:41'),
('1bce7276a4c5ac8dc89118ada4b09f1be90fecc9f20c6ea646cd9d731f9c205e10b1189fde36d14f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:09:42', '2021-10-13 19:09:42', '2022-10-13 15:09:42'),
('1c045a9cff2fb60487181a2faab8f447c59dbdd95b5596d707101a695bda5bb7b8ba2bf8ae589adb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:51:10', '2021-09-28 09:51:10', '2022-09-28 05:51:10'),
('1e89a6bf26980a0f8c93a06aec8bf94ee27b6fa60ad18e90a33918ceb47cea2712864d774fa153eb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:34:24', '2021-09-23 11:34:24', '2022-09-23 07:34:24'),
('1edad87a589de2a8e474d3adf08bc051e0d859df25033b68dfbab77f246b63c48b07df41ee333c8a', 33, 1, 'authToken', '[]', 0, '2021-09-07 16:08:06', '2021-09-07 16:08:06', '2022-09-07 12:08:06'),
('1edfc1bead2b990348f873d5ca650d54b6291a219b5b1155067a7d567b22e64097a0607f19416a9f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:48:51', '2021-10-01 10:48:51', '2022-10-01 06:48:51'),
('219b7871285c8de3ee6c29f8ebbf382cf389d90176113541f76626a028155184d651b19aac193b41', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:05:13', '2021-10-12 15:05:13', '2022-10-12 11:05:13'),
('21daeedd8d5270d0b9086aa3828a3167f53cd84fea1911d6437971819c82fda77945ea1168eb0244', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 14:58:28', '2021-09-30 14:58:28', '2022-09-30 10:58:28'),
('21dd9e5b822aaf4927a84b84a5f303880daa6f0d8d37025ff8723294672645023859327eb9ffdbd3', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 08:38:15', '2021-09-28 08:38:15', '2022-09-28 04:38:15'),
('22865267e57905ee669c50b1711a33e0b7c37994e84355ef8e764d76b20e618fc6fbd1d4b409ada7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 15:48:51', '2021-09-23 15:48:51', '2022-09-23 11:48:51'),
('2409ab5295b44f2e122d2924519399e10f041ffd65bc2acbc0a78442c15e4d270a3dbe893296dd36', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:56:29', '2021-09-27 15:56:29', '2022-09-27 11:56:29'),
('2567694270c5f2096208cc18f0c5400ba9e7d88c4864d5476899d41d59a0c7270b34aa93cec31397', 53, 1, 'authToken', '[]', 0, '2021-09-22 12:35:23', '2021-09-22 12:35:23', '2022-09-22 08:35:23'),
('25858da30eba0c25aa2ccb6646d29efb7c726f163babd2fc596c60fdb6d3ea2374abc3806a70ff63', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:07:50', '2021-09-30 16:07:50', '2022-09-30 12:07:50'),
('25fc20f0a2d636a32a5ec9cf61f31abbd8cda8fc5e3f923745ef1b72494bdbd8015f10d959a2e296', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:42:44', '2021-09-23 09:42:44', '2022-09-23 05:42:44'),
('273946e7244f07011d3e02e764efdb806a90e6882641f43057f0064300474e2b110556cf31487de7', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 21:02:44', '2021-10-12 21:02:44', '2022-10-12 17:02:44'),
('275979b2f5d19f2d8e7000410a6e036102aeeb6bcfd6010106151eefe13934d284b6addb136180f5', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:45:30', '2021-09-30 15:45:30', '2022-09-30 11:45:30'),
('27beea81f86495951e9b5b098d328ddc617781b882f31bc37f020a75f13d5b802a1ac0f0b0cdcecd', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:42:09', '2021-10-01 11:42:09', '2022-10-01 07:42:09'),
('27cbc50ee3ebe535cbeaef131a5c7fd9adec0f365b87485539bf6d31f4ea7b174a23c79fc4ab1c22', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 19:50:07', '2021-10-28 19:50:07', '2022-10-28 15:50:07'),
('27ea9cfd6f63e9fc79ec7d6efea64be1531e22313077f495b05e7d12c649b7b5edfb50d46fcbd43c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:58:07', '2021-09-27 15:58:07', '2022-09-27 11:58:07'),
('28d09ff820f44b0e3c3d2dc22c3fa76d1e8861e4720f642bcf01a3fdc36b3f5ce6558f56d6072732', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:45:13', '2021-09-30 15:45:13', '2022-09-30 11:45:13'),
('293b4806b255d294dc3402b0221e80d9611e60551816307e51e0145df4df0456dc0f4643474afee4', 60, 1, 'authToken', '[]', 0, '2021-09-22 13:21:28', '2021-09-22 13:21:28', '2022-09-22 09:21:28'),
('294b4858b3f1992037950fd08a66176dec7457d16fa96574563533d6c12bfdf7adfe8715790d0fee', 9, 1, 'authToken', '[]', 0, '2021-09-13 14:57:16', '2021-09-13 14:57:16', '2022-09-13 10:57:16'),
('29bed92fda11965df88e3955532a002c201733cf41bbca65db9931748efff4ca1d3c70f316d2cc15', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 16:53:13', '2021-09-27 16:53:13', '2022-09-27 12:53:13'),
('2a9838ff476a932ccb0f00f7ef6d284b67c29a4b366cb1b6f471e66d8776b9d3eb1a48820f0fc604', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:46:25', '2021-09-28 09:46:25', '2022-09-28 05:46:25'),
('2ad936756c1310f382c253384c0619fc2a452391d2b772376e53dd4d502193068568d49ef4082c54', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:48:51', '2021-09-23 10:48:51', '2022-09-23 06:48:51'),
('2c11f80bf1157997078bd7ace91943c0cff3a4388551dfccda90e4bb8da97f5188c148327574a6db', 18, 1, 'authToken', '[]', 0, '2021-09-13 14:34:06', '2021-09-13 14:34:06', '2022-09-13 10:34:06'),
('2ce2a30a111f9f941cd64553b9665fffe5fc680df80ea8b9157fbf9d231ba24bf1236d540f12db28', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:04:57', '2021-09-30 16:04:57', '2022-09-30 12:04:57'),
('2d39cd52274586f6964c5918e75f66b10471f6f3e7673a104486bd264fdde600e6298af4801e2e43', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:52:18', '2021-10-01 10:52:18', '2022-10-01 06:52:18'),
('2db334000413c2bbcf268092d26fddb4bd06b79e8348fabed843e208768efdf033c797e4c30ad7ed', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:21:06', '2021-09-27 15:21:06', '2022-09-27 11:21:06'),
('2df7151dbf7bff040cf6ce3e04f60d1e546a92bb4c7d84c5838f11330da08c04f18a8bada517d7e5', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:53:18', '2021-09-22 13:53:18', '2022-09-22 09:53:18'),
('2e8022005954d25ab5be651d404226cd28c765d88f20257ac50a5a0852c5ba6310179a9a9c35fc9d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 14:47:14', '2021-09-23 14:47:14', '2022-09-23 10:47:14'),
('2f4a7305abf982ce4e735055b6a756b114e868e0afbd892841d6819b96e37c5df2e80e6e88eeca5b', 9, 1, 'Personal Access Token', '[]', 0, '2021-09-13 15:10:41', '2021-09-13 15:10:41', '2022-09-13 11:10:41'),
('2f55d8d4db151b655c368ddaf7c70d638672247dbeafb06231bc1cdf1fb498e8d09e0c7ff0471747', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:36:44', '2021-09-23 09:36:44', '2022-09-23 05:36:44'),
('2fca394bd4394d321072b32f398da5f5cee88a82892d34df37638734aa1b6da7fee6a08ecda296d9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 10:58:17', '2021-10-05 10:58:17', '2022-10-05 06:58:17'),
('301f556e044b93f12469845aafc09724f134a2d358a2fb39c4632e22775ac6486f5aa35ee7e837da', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:45:38', '2021-09-23 09:45:38', '2022-09-23 05:45:38'),
('30b7c24e0ce8fdf384f1ed9b1a8fb4886bfe7e10ed1bf6398bea22553c9d17586e1c32088d08538c', 70, 1, 'authToken', '[]', 0, '2021-09-22 14:56:36', '2021-09-22 14:56:36', '2022-09-22 10:56:36'),
('30e27b97914457a8f9dc895a9a27d8d78f96e26f0afe306da741e360a0295c0b417d33fa7f3247cf', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 11:05:45', '2021-10-04 11:05:45', '2022-10-04 07:05:45'),
('322ab2b46c1c84654beb8da21d76db3f04ffbbcf980b837227fc1c93def4a9dd27692bda03dfeb33', 16, 1, 'authToken', '[]', 0, '2021-09-13 16:28:19', '2021-09-13 16:28:19', '2022-09-13 12:28:19'),
('32719a74eed7b2858b39381f08616d60fb8437ac612022bb96be9cc7086ffc02ca4c3579ac0b4da2', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 10:51:20', '2021-09-29 10:51:20', '2022-09-29 06:51:20'),
('32e7292f8e810fc1c2ada4666cfb97229a3c678416203811f4f33542ac21dba544e0f33a76e122e9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:56:05', '2021-09-30 15:56:05', '2022-09-30 11:56:05'),
('339908fb7ee0f901aeee384d451f5acb7a9583362051b3b1eb433b758316a67f73d90a8593780da3', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:05:05', '2021-09-23 09:05:05', '2022-09-23 05:05:05'),
('33c9de7aa48ca5dca24d412411add3a8b67e527dff699b190f1b86b5049461e0ce468a58dfde0af9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:32:39', '2021-09-23 09:32:39', '2022-09-23 05:32:39'),
('356cb8227af74278b8fbc61f1328746974c4bf2e83f1d375383a9d04f675e90ffbebf2537a5564b7', 77, 1, 'Personal Access Token', '[]', 0, '2021-11-01 19:37:59', '2021-11-01 19:37:59', '2022-11-01 15:37:59'),
('35d6c0ca713a3af114cc1b19e0366bab525dfd75b49d3645f9ef4d1908a1ded1a8f5a4353edd6a55', 77, 1, 'API Token', '[]', 0, '2021-11-01 20:00:03', '2021-11-01 20:00:03', '2022-11-01 16:00:03'),
('36885ace40cbfbe7a190504b8791dd12b12f0308115ed63883d6ebebd727b17eed7484ae77c07678', 79, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:33:12', '2021-09-23 11:33:12', '2022-09-23 07:33:12'),
('36c4068449f76b27d03dcc2c2e4c480e6a856a94937084ad17a4a26bcfd88d1588f3cfcf9cdc66cb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 10:50:56', '2021-09-29 10:50:56', '2022-09-29 06:50:56'),
('36eb96a676e230469077fb32e20a306e0603fffa3a7bdd460d103237eae40ee28715024d4957f47a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 14:02:40', '2021-10-11 14:02:40', '2022-10-11 10:02:40'),
('38a69bb6714f355f8b20938e8adc50cb2283ffbe5781717f4eb8371b2d13a022ed5e58cb38fc9f6b', 20, 1, 'authToken', '[]', 0, '2021-09-14 13:17:08', '2021-09-14 13:17:08', '2022-09-14 09:17:08'),
('38c1405debe7b7d7e7eccf4a777d393d901cb6a9f3199781fd4a373fe179851329e68526d03e0ae8', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 14:33:17', '2021-10-01 14:33:17', '2022-10-01 10:33:17'),
('3960ebe35899f4ccb011db25c533afb89f5bd04f163896b91fd98aa60eef6357d1c92d4dfce3b750', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 16:28:22', '2021-09-27 16:28:22', '2022-09-27 12:28:22'),
('39cb8f8f6ce07b58c712f60807765fa4074f97d95bef24754940f301543b888c955d18873de29f86', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:16:53', '2021-09-28 09:16:53', '2022-09-28 05:16:53'),
('3a39e66d4bebab9a981356b0d4b6b7a268a477e96cdc1ac514bf9eeaac9cfe4308ab4dc246b50b4b', 69, 1, 'authToken', '[]', 0, '2021-09-22 14:54:12', '2021-09-22 14:54:12', '2022-09-22 10:54:12'),
('3ae20f0a53c66e840a13e4e368fa83b53fa5925b4d72fa8ef8911cef933cd96070f7eedd83fa154b', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-16 10:18:59', '2021-09-16 10:18:59', '2022-09-16 06:18:59'),
('3afe63ba343cf946aff5bda84fb5f84ea7ae58f0d0b6a95c71bf68d0299f51c1baf2426dd7592a72', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:40:57', '2021-10-12 15:40:57', '2022-10-12 11:40:57'),
('3b57b06a21f7d174771fef018fa0dc3988eb78a9407b53b1285fb929839d88884c9ea5c2537cd3b2', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 16:06:18', '2021-09-23 16:06:18', '2022-09-23 12:06:18'),
('3bca51958c6752edfd37ad9ca51932280861659c682bf66b7aac2218f8d454c3a66e0dbc9400bec4', 14, 1, 'authToken', '[]', 0, '2021-09-13 16:19:45', '2021-09-13 16:19:45', '2022-09-13 12:19:45'),
('3ca6adc04837932475ee22813ca0c0d281e9ed1a91f47a762f02303eaf4468c119b8e20607ae7fa1', 78, 1, 'authToken', '[]', 0, '2021-09-23 08:56:13', '2021-09-23 08:56:13', '2022-09-23 04:56:13'),
('3ccaddd32b27d1445b9b6ca7dd1d0d80065eedd05204ee4cda2854dc314e7e7df43520852a6d72b6', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:33:14', '2021-09-30 13:33:14', '2022-09-30 09:33:14'),
('3e41c1e88b23c40fdf9f761976af561bff2f4ac9927ec48c045a2f0070e8955a31c7be9d0253c41c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:47:48', '2021-09-23 10:47:48', '2022-09-23 06:47:48'),
('3e9ed3d146b0b3199ee7128244e6e3bb62d57a048607703923549d3b9c8c498500779529768ae603', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:44:25', '2021-10-01 10:44:25', '2022-10-01 06:44:25'),
('3ed7770069a8c61348c3b361f80a498735df0d86f55dc9c29eab6781da24127aab459461cf94c093', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 18:36:03', '2021-10-12 18:36:03', '2022-10-12 14:36:03'),
('40889d730d83d408357016d5b6a294b232aca01c7240fec17b3383e9109d790ab8eb1bfca287dd1e', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 14:26:48', '2021-09-28 14:26:48', '2022-09-28 10:26:48'),
('4268ce68a1dbd7da2889313e1875797c0445fc954320acc44818e1487dd700cad9ce2ef2567aa932', 17, 1, 'authToken', '[]', 0, '2021-09-13 16:32:00', '2021-09-13 16:32:00', '2022-09-13 12:32:00'),
('4456be187033c23333df5c8d8afddbd762a94338d0dcbea3c397694da007be34dafc01781d4cebb2', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 13:09:18', '2021-09-28 13:09:18', '2022-09-28 09:09:18'),
('45682e8b8563565a4d20e161ff4e8e643c849a19353238b90ef0956272e6c878df36bc9c25965d57', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:42:27', '2021-09-28 11:42:27', '2022-09-28 07:42:27'),
('45774fdbe24c7713f83801a47f92b144f52aae73ffdd0ce7d519acb9a6a3c32c37127f5f079dd4c8', 15, 1, 'authToken', '[]', 0, '2021-09-13 16:21:19', '2021-09-13 16:21:19', '2022-09-13 12:21:19'),
('459ea6a46f94af78c2ca29445f143cb95ba166ffaaa975e2bee3443c457d02771253946fb0343d65', 21, 1, 'authToken', '[]', 0, '2021-09-16 09:26:26', '2021-09-16 09:26:26', '2022-09-16 05:26:26'),
('45a5788b796839ca1dd44c3ddf2c3fbc16230170f040ed0fc42cb85d6a2246c4f820422f8fe397ae', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 14:44:28', '2021-09-28 14:44:28', '2022-09-28 10:44:28'),
('4600af73b0a69d39938d45cc8ee6f9459035b749dfe35c6d47643eb36deb7513b207663c457ea589', 68, 1, 'authToken', '[]', 0, '2021-09-22 14:52:54', '2021-09-22 14:52:54', '2022-09-22 10:52:54'),
('46255148d19b026acc051471afdb3617a5c6caced876cb3d5ff706bf38890f71b974a83e43a0c30d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:30:06', '2021-09-23 09:30:06', '2022-09-23 05:30:06'),
('464b6eb6a880eab620ea42c319bbc4f132a9c45938b258b62791a2f65eeb40d440f57339a9067443', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:29:59', '2021-10-12 15:29:59', '2022-10-12 11:29:59'),
('4678b763ba0b671f73398a1133ba2b96d3dd2fb3a4f57f8e617aa735d09f3e09b6fa3d9a737f2e7e', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:07:15', '2021-09-29 11:07:15', '2022-09-29 07:07:15'),
('46b296042912ff99830df071d8ea68d1aafe2f660dfa363f4d480a6f9050937c6208f91f7327276e', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:42:50', '2021-09-27 14:42:50', '2022-09-27 10:42:50'),
('47014fd9f8d7ef820a1f99de280cbf824eb234d91f3a9a3483c2963949d581c2c992c3f79d38a812', 33, 1, 'authToken', '[]', 0, '2021-09-20 13:48:00', '2021-09-20 13:48:00', '2022-09-20 09:48:00'),
('470d1be3848381b57acb349b0c85beed6bfda24db676465c47e8981d05ad4f74f8f4c56db42d4a65', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 15:48:43', '2021-09-28 15:48:43', '2022-09-28 11:48:43'),
('4740736229aae25b55da1789e8b97993f7e3be77d5dc42448ae10664f295d2abb1a3871e4d933734', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:53:02', '2021-10-05 09:53:02', '2022-10-05 05:53:02'),
('479d94193e1d1875b6dcbe6b1882a0a922b515a1db0c9c70680179a220ddb7cf68698c5d7ab2bb4b', 77, 1, 'authToken', '[]', 0, '2021-09-22 15:50:17', '2021-09-22 15:50:17', '2022-09-22 11:50:17'),
('47aeeb96d8041ceebff4c562ff550f964d0ba29ab66e9db93c636b150a738846222ccef18f8c1a5c', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-05 21:03:15', '2021-10-05 21:03:15', '2022-10-05 17:03:15'),
('482cc5b7cc12f410eb0978a656236d8f0d23a7003bd81dda166db51e0d5cb978fddc1817489add48', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 21:00:50', '2021-10-12 21:00:50', '2022-10-12 17:00:50'),
('4885cf02f278d008ab404a04be2f102e71dcddc8f0fb6055421c92b925b5ba3ce607f5e3644d516a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 09:33:02', '2021-10-04 09:33:02', '2022-10-04 05:33:02'),
('4947db1394db315925d36086a630459370a70e138a402963e6509fda57b1b08283bb9a7f25073668', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:56:20', '2021-10-01 11:56:20', '2022-10-01 07:56:20'),
('49cdbfd0e3351d76063ddecfa16885eb209d74a5f4cfd923710671914c4c0e6d412493e93710a407', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 09:17:28', '2021-09-30 09:17:28', '2022-09-30 05:17:28'),
('49db51ffab35df02dca25efc020463df120861b57db30bb1e3e1130d4e8c2f2872e824ace8f65975', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:28:41', '2021-09-29 11:28:41', '2022-09-29 07:28:41'),
('49ee0a7df7052200ae2116f66b2fa86316e2e55a2c7bd55b7c5f8aed7cef24243c8e3a1f83c168cb', 66, 1, 'authToken', '[]', 0, '2021-09-22 14:45:52', '2021-09-22 14:45:52', '2022-09-22 10:45:52'),
('4a26f6fea8738b5e565df34ca6d03030314f556f50c3f3a0a7ae305230bf4f6d1617037c53410fda', 27, 1, 'authToken', '[]', 0, '2021-09-20 11:19:30', '2021-09-20 11:19:30', '2022-09-20 07:19:30'),
('4aac84d71dee178f9d0c8d059c2f149d23b906ef290d0a504e18a6a0d2f1960340748301e7507e20', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:14:50', '2021-09-23 10:14:50', '2022-09-23 06:14:50'),
('4ac5f16d0566e554f2c91c070bbcb3ee8a8f04b5060bf8bb9abc875241c3aedb066bd1fd201385b0', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 14:56:22', '2021-09-30 14:56:22', '2022-09-30 10:56:22'),
('4b407875bf075ed272e213edcfefa72696e9e80ee3d70bfb9443ede7a37f8a101e8654a4cc3cc06c', 65, 1, 'authToken', '[]', 0, '2021-09-22 14:43:26', '2021-09-22 14:43:26', '2022-09-22 10:43:26'),
('4babafcde7cd22ff8bff53689c5487ec3b15757b8eaaf52c62d2389b5d2c32326eb2b3866db10242', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-24 14:09:07', '2021-09-24 14:09:07', '2022-09-24 10:09:07'),
('4bb58967d6594061bdfd28f9ddac6cb25ce1ace0aac882843fa48708c2858e557bed03c070eaffac', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:11:02', '2021-10-01 11:11:02', '2022-10-01 07:11:02'),
('4c5d60b871c7303364975a2c8d7102d9432ac8b53a0521836f2bf2cbe1d9e910dc557d33de89f3d8', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:07:55', '2021-09-30 11:07:55', '2022-09-30 07:07:55'),
('4caf0d3de76eaa3f262fe54ef4ed03228415c93a0e1b566a24b4ebbfd7cb0ca2bdb8e41e92339382', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 15:45:12', '2021-10-27 15:45:12', '2022-10-27 11:45:12'),
('4e3a081bca4879db22d0ed2c490df8bc821e140d53fd1376f7673f165a3ee126929da4c3cd1b20d9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:25:37', '2021-09-29 11:25:37', '2022-09-29 07:25:37'),
('4e6a7fbb1fff80bc30a7a35f6f7682f8d6c1b73d915f296008eacf43c82349926257accca47e2a58', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 14:46:23', '2021-09-23 14:46:23', '2022-09-23 10:46:23'),
('4ebf77d8fdc8d0c53ec70b02a21ca8b72ae65a3ce5f67e2f9752eb343e689f1b05d3d9c134bd7dd9', 31, 1, NULL, '[]', 0, '2021-09-07 16:05:41', '2021-09-07 16:05:41', '2022-09-07 12:05:41'),
('4ee24de4baeb38ae39c521c0881cd1fb000ca164dd2a1769c117f1ce1c95bf33a00eb2e0e9179194', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:29:49', '2021-09-22 13:29:49', '2022-09-22 09:29:49'),
('516275e49bd2c10e31d93b8fc88cd5f2ddfd6594b615261ff44b5513372dce4ab63cb4fd26a1fb92', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:41:08', '2021-09-30 13:41:08', '2022-09-30 09:41:08'),
('5297cb488fc3abe49f32bf54a09d6b65167f4282ad6a5286bdede5a71acdaf4a1467dcc748da6118', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:47:36', '2021-09-30 13:47:36', '2022-09-30 09:47:36'),
('52dc37b8fb6fe841dcb0c29b7053e3d03c12cdc0a52456a121cfab7fda395b3a126affd50e1871f1', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 19:41:59', '2021-10-12 19:41:59', '2022-10-12 15:41:59'),
('52e80af5650681df42c401807a42a3fbdaeb3cf4f474f2369fa4caafec36a119e7c60bd263fb01d5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 16:02:47', '2021-10-12 16:02:47', '2022-10-12 12:02:47'),
('52fa58b8b3ea09d8a4c04f6b8e8c8a58fe46b54b3514c4340c8e540932172d62aa71d19220185ab8', 28, 1, 'authToken', '[]', 0, '2021-09-07 15:54:13', '2021-09-07 15:54:13', '2022-09-07 11:54:13'),
('536759fe767fdc5167e865e0fc7fa7b1ac3b5629e023201f48104b2380d29e316d98d03005ae0441', 1, 1, 'authToken', '[]', 0, '2021-09-13 14:35:03', '2021-09-13 14:35:03', '2022-09-13 10:35:03'),
('537319c898395ca59e1212b8a37d531be38c31169f4bec32e999f2f097c23e16b46d2f24126d0ec7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 14:35:03', '2021-09-28 14:35:03', '2022-09-28 10:35:03'),
('53daac78d9854fe2de8338d714a3f33c21253598cd04b63df4272649cdcd5044003cac04d043d8e7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 16:05:43', '2021-09-27 16:05:43', '2022-09-27 12:05:43'),
('53e5afe335b60103a8d2fb85ec906ee1c8c8eda7901629f5aaa14369b8ae36ec61ed7cacabccf5d9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:08:56', '2021-10-27 16:08:56', '2022-10-27 12:08:56'),
('5447a44eca12feaa7d5661634aceeb5958e1f323d94a80684b6e97062ced4c13b31544eff24443b3', 64, 1, 'authToken', '[]', 0, '2021-09-22 14:41:41', '2021-09-22 14:41:41', '2022-09-22 10:41:41'),
('54cdf843dcde9acab80b475916ecc7c66b7b1f8e47a99e68873251c98dc0009c8990fbf75c2a5ad1', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 14:48:16', '2021-10-11 14:48:16', '2022-10-11 10:48:16'),
('54d1e214c0e3522d7526253bdcb2781af323ba009d344eea34bde3ac9637d69d22cd7d29f46254da', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:48:29', '2021-09-22 13:48:29', '2022-09-22 09:48:29'),
('5568a22397cda53a14f98ae0be9e23f65982f2c1d2f8955f7094877f0af1b2054a415624d379869a', 40, 1, 'authToken', '[]', 0, '2021-09-20 14:47:24', '2021-09-20 14:47:24', '2022-09-20 10:47:24'),
('56efc88ca9bd6b27a0686691f8057684bc4921b55acda3f660724d8ebeae85d9e2c93860f1ebdf69', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:46:58', '2021-10-01 10:46:58', '2022-10-01 06:46:58'),
('571d9e597afc2537828fa66902a9e36832007c4dc953495f694991574a98e0f60fd21e5c6faead85', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:02:39', '2021-10-27 16:02:39', '2022-10-27 12:02:39'),
('583493649ecbfff2716b4b206cf801ab2fa5ea2d7b9185ea86cc18e8820bd3bbf42b249ad8924a62', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 16:23:03', '2021-09-23 16:23:03', '2022-09-23 12:23:03'),
('59711b18f7b44ff6a81249a0fc4057bc5669aa49529cfe6ee6cc9a1d41e2f8e436fb1055275a174f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 20:38:08', '2021-10-05 20:38:08', '2022-10-05 16:38:08'),
('5be4ceaed6117bab9b243565b4175ad305538b3a28f6bd1172c1ea0650989ba5807335a99f82272b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 18:33:39', '2021-10-12 18:33:39', '2022-10-12 14:33:39'),
('5cb9330bbfa756d64d162cee09c6c76776db159454fe2abff3ea46a6a92dfe1213686b7abbbab6ae', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 18:43:18', '2021-10-11 18:43:18', '2022-10-11 14:43:18'),
('5e5c144e302fc81a6a6c03ea40a949faa76bd696756ef3bff06e5ca58eaa9cecb8d88573aab00aba', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:54:08', '2021-09-22 13:54:08', '2022-09-22 09:54:08'),
('5f0308f95cea69e21fcf92385c4dd459b8bdc45ea2cd437d44e918b0e62040a88cd8591eb1f54aa3', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 20:54:41', '2021-10-12 20:54:41', '2022-10-12 16:54:41'),
('5f06705cce474ce4be719958db9a971aabecdeda8c378e7c35492270ebec48775461eca0cf28322f', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:20:40', '2021-09-27 15:20:40', '2022-09-27 11:20:40'),
('5f1e1984f63fcce7c1933fef1645cd6cc96154820b921811bda939cf9b72b7c25f30abd02164d318', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-29 14:57:03', '2021-10-29 14:57:03', '2022-10-29 10:57:03'),
('5f6ad3f67c0df78c5a91d771b541ca65430dcae2520a613745487515499ad3b606c9f6fbbbcca532', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 15:00:19', '2021-10-11 15:00:19', '2022-10-11 11:00:19'),
('5f76fc3e5f8e8415d5e162f60474304484ba65ec0554c0aaf2aff299649722de743d4914129ac74f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 15:25:57', '2021-10-27 15:25:57', '2022-10-27 11:25:57'),
('60882b9d34c2aec7ab80c5335a2edaff7f5bed4778c3341cc8637d0005f8db4df11f8d53f844aa93', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 18:26:34', '2021-10-12 18:26:34', '2022-10-12 14:26:34'),
('616c240c89c07a0aa27e93ee53db1df82e63c66ab6905bdb7d300de86f2a2816d8cd7bdbdbc471a7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:33:42', '2021-09-27 14:33:42', '2022-09-27 10:33:42'),
('61f5b08ea1e1e62e37dd86724a7ad1c87e6e22b90acd6f0486909b156fdbbb334aee22c26c194167', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 14:45:40', '2021-09-23 14:45:40', '2022-09-23 10:45:40'),
('629e37a4692631b7899465cfacc0a6a9d81d6a97bd92dc20e62f629c2dcc5f77cd5fbae2efd130d2', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:27:13', '2021-10-13 14:27:13', '2022-10-13 10:27:13'),
('632acc0902df423dbb1833708684efefe91d4ef4a17307669c37fa3f0dc716ee9630af8b2f8807ad', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 20:24:51', '2021-10-05 20:24:51', '2022-10-05 16:24:51'),
('63d4303915efc50bcbc0f649ab49a8850e4811db27cae6ce8822828842819d84cfa10ded5d243d7f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 09:30:57', '2021-10-04 09:30:57', '2022-10-04 05:30:57'),
('641758c2e17269e824ae61ae3f1052a0532302938e7564a5f9181bb17c1e882d7931703cf34eb899', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 20:55:18', '2021-10-05 20:55:18', '2022-10-05 16:55:18'),
('6435741044b33c59a043ceb23b471840c3e17a3e08bbee26ee5176eaa7493a251895f9b287be3cb4', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:04:06', '2021-09-23 10:04:06', '2022-09-23 06:04:06'),
('661d84df6beaee96e3c667cf43bbd6eaae52a24aeaf4f822bd3dcf750f67e2b6771fc6a576680a77', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:23:51', '2021-09-29 11:23:51', '2022-09-29 07:23:51'),
('6620117dc4261ce3a0871db35db2bbd2fa4ea1c5dcbffeb51df19c5a292b7f9923d0e5676fc60e5f', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:48:43', '2021-09-27 15:48:43', '2022-09-27 11:48:43'),
('66ccb548c99052ad905c7209b0e3ddbcaa83d3df41eedd734df3e33790b036d9dbf6f59351dd2380', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 16:04:21', '2021-10-12 16:04:21', '2022-10-12 12:04:21'),
('6740172b2e500c54c39133e937ba14cb770dfd73f906f8f97ace0c9d4ea71cdcb2644e09b794dfb2', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 21:05:21', '2021-10-05 21:05:21', '2022-10-05 17:05:21'),
('6768ff02920ebc449ee99a706a3d2db8fec57ed9e1ce51740da1a75b5527cdc7a83af0ccb57de895', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:34:28', '2021-10-13 18:34:28', '2022-10-13 14:34:28'),
('67cf1dec855b30b90b75c8db1c452590ac246746b81fcaf6b73e95fe0140acb543703b573c1945b9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:18:30', '2021-09-30 11:18:30', '2022-09-30 07:18:30'),
('67f014a6b05787ce014c57ae082880fd11fb1c3cf409cfbff1bd03c1c7bdb81b1ad63ecb7abd41cb', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 14:35:02', '2021-10-12 14:35:02', '2022-10-12 10:35:02'),
('68246f06f83a09a21a00001593c29b0551482c7f12bbd8c089a9411c6c61252e2aed49f43eb6c9eb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:32:16', '2021-09-27 14:32:16', '2022-09-27 10:32:16'),
('683220a8ec9f94128548b0ca75d23c03f3ccd471058b376a79482fdf4c3b62dfb686c1c99f614467', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 13:05:28', '2021-09-29 13:05:28', '2022-09-29 09:05:28'),
('684b546cb7b4153ea1568268ac2582b45e431a675357efe5c12cfc268e7af9d1dc2a3df9272ae81b', 42, 1, 'authToken', '[]', 0, '2021-09-20 14:59:56', '2021-09-20 14:59:56', '2022-09-20 10:59:56'),
('68dcc14ebeb37b452f0d8be7831279a9a386dbc79e5476b74d3c9f7602097bbabc2ab4cdacade84a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:57:14', '2021-09-28 11:57:14', '2022-09-28 07:57:14'),
('6915ccc2c4057bc7f1f9841aff4bc1e024c796245bb69eca43c02c92eb4c60315e63c1e30459c84c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:17:12', '2021-10-13 19:17:12', '2022-10-13 15:17:12'),
('69424a555e262294dabfd553f142c6df55627e816c90ea3713d7a14fd213993cf3b0fdd281902639', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 20:57:40', '2021-10-11 20:57:40', '2022-10-11 16:57:40'),
('69479862eae3231f022118f2901893fc7bf35c79b1338d92c63913b4db96799051b320d2044309c7', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 14:56:08', '2021-10-11 14:56:08', '2022-10-11 10:56:08'),
('6948ddb8ec3cd752550e833231270bf2b1834506422b4a0cd7c1c36a0c8c73d1b89f820c6d9ade74', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 10:02:58', '2021-09-28 10:02:58', '2022-09-28 06:02:58'),
('69824a2262a0ed16a31a6931b57349c706d33b45edb32ad86d2d8b3a502619ee15406a3b0bbc778f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:29:10', '2021-10-13 19:29:10', '2022-10-13 15:29:10'),
('69d51bda920f9fb6a2e8d5864c85f7fe15b5bfa9278d99d3de552501db847baacf749989148de1dd', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:09:27', '2021-09-30 11:09:27', '2022-09-30 07:09:27'),
('6a70f971637360d9d98b7125c53cc34ed8bd27c6f391a3c85c9e43597d8bbbf8bad88de6cd209e5b', 25, 1, 'authToken', '[]', 0, '2021-09-20 11:00:38', '2021-09-20 11:00:38', '2022-09-20 07:00:38'),
('6bdd9750569f7ba360beb7c64f39f8c2f3bc99492a69f75d3d0c0bcb0cff3e6dc2e4c826a63c9dc3', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 13:20:10', '2021-09-23 13:20:10', '2022-09-23 09:20:10'),
('6cc853c10dd666d85ff7b518d43bf946ad31230d33e9af5c92ff6198e5624d06c8612fcb3c94716b', 84, 1, 'authToken', '[]', 0, '2021-09-30 14:01:50', '2021-09-30 14:01:50', '2022-09-30 10:01:50'),
('6d1fda707202bb31d18900dc064d38183076f2182e4bfb426adc922dcb0a28ea184ce5fa35ad74bb', 85, 1, 'Personal Access Token', '[]', 0, '2021-11-02 21:13:10', '2021-11-02 21:13:10', '2022-11-02 17:13:10'),
('6dd2fd8a799a3ed7ab21cca8259f42ad71018bdf64864ba7a3bed8a93bcc1807c1283663f7845e4e', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:10:57', '2021-09-23 10:10:57', '2022-09-23 06:10:57'),
('6fec78f343f5769d957a808815ab13f62815873f8243da48b0265386744cdda4b1ed20cacbf76923', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 14:53:38', '2021-09-30 14:53:38', '2022-09-30 10:53:38'),
('7034382522fda1e0c04d3897b3ae174ad9c5c9e699a45156f31a40e41a10659f8a992c9b1866e23f', 83, 1, 'authToken', '[]', 0, '2021-09-23 14:36:15', '2021-09-23 14:36:15', '2022-09-23 10:36:15'),
('7050b430809992f447c35280ed2e635bb8418b29ad9f1c9e6f5a8317e89f8c447c30f8e4ed610158', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:32:31', '2021-10-13 14:32:31', '2022-10-13 10:32:31'),
('712af486dbae736b3d8ac33fe306f28c5ba191031bd5f70c9115e4c86b7ea3b97b7dbbdbea0c8610', 41, 1, 'authToken', '[]', 0, '2021-09-20 14:53:49', '2021-09-20 14:53:49', '2022-09-20 10:53:49'),
('729cb25fa2a3ae13ccfbecf0a541744c80fa02821f966bc2c921ad568d81794c230ba858942a23ad', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 14:54:45', '2021-09-30 14:54:45', '2022-09-30 10:54:45'),
('73a9d1e927d063e1efef3fac5658a616b26b1cc151ec7a4d26b5cc4d7673528565b2e164572e7f5b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:04:30', '2021-09-29 11:04:30', '2022-09-29 07:04:30'),
('75166806b2363d7b244e7cd5f57ffe018de121190c3ebd276d9fc7e2c88f95dad52093325884a380', 36, 1, 'authToken', '[]', 0, '2021-09-09 14:23:51', '2021-09-09 14:23:51', '2022-09-09 10:23:51'),
('754e7be5a2bfbcf023add7d2ae58a8952229c5979c55f51429206f96164611aa3f0a2d88cea41f0a', 23, 1, 'authToken', '[]', 0, '2021-09-16 16:25:20', '2021-09-16 16:25:20', '2022-09-16 12:25:20'),
('757d2c95ee7973e93e6967ca7eb70ff2bc2982454b3f017f34d2c40bc835459faefc30e45156c20d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:20:05', '2021-09-23 09:20:05', '2022-09-23 05:20:05'),
('765bfa00a5b1523221eb562d01901384f413e39d9f4848313f2e431dff42dc40a076b07acffe95ad', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 10:57:18', '2021-09-29 10:57:18', '2022-09-29 06:57:18'),
('772440b1b9d3717d99f7e47796b437be5c68ed97319aecf84860227bccd78b2650b0b42383b27c31', 35, 1, 'authToken', '[]', 0, '2021-09-09 14:12:57', '2021-09-09 14:12:57', '2022-09-09 10:12:57'),
('77b96d23eaa7409ed43be0a5db902c8d2e633cf3a430f65b27a722eaffb870e636387b3d5468c3e9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:05:05', '2021-10-12 15:05:05', '2022-10-12 11:05:05'),
('7821c424b1aeb0970124a10dc99ea8d345d7cdd29b0dc4a0ed9a0e8a932c4a656e7ad20b9c137009', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:04:16', '2021-10-27 16:04:16', '2022-10-27 12:04:16'),
('789af71b1383c2c5b0ff3cf4edc28b22ad16a2e2020483c030520b0949ca80fd08e9e3bf278a026b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 20:59:58', '2021-10-05 20:59:58', '2022-10-05 16:59:58'),
('78f84ff5c5217380efe53dfdfad33080423c1ac357a9c042ea3747c76016b6c465d29c86b945b5c5', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 10:40:49', '2021-09-23 10:40:49', '2022-09-23 06:40:49'),
('7912db27acfcba9d7c8d184986cd6fae912cc554ab5f0436433b7707b9cdf2c0536b9e8a147940b3', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:28:44', '2021-09-28 11:28:44', '2022-09-28 07:28:44'),
('7970cb7fcc07784b983082c9fb6c6097ae0ecf76a5adc30a5320bf7b74acbcd7862fd4daeb73350c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:25:55', '2021-09-23 09:25:55', '2022-09-23 05:25:55'),
('79792a7de979fff3f6409ef24c13b382fc207480a588930b69431e242d1b9344748aa851de32e639', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:09:07', '2021-09-27 15:09:07', '2022-09-27 11:09:07'),
('7a25c9e2c5b25603267dbd4f5d297bcb4c298fef0c531645f74af88eb99df19285d7515c5ea97210', 30, 1, NULL, '[]', 0, '2021-09-07 15:59:52', '2021-09-07 15:59:52', '2022-09-07 11:59:52'),
('7a59913bba061e923badf95b05e00e7822a3935179fc363d9a800f719df0ec2c95ca83109b6890b4', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 15:49:23', '2021-09-28 15:49:23', '2022-09-28 11:49:23'),
('7b5af669110dd5873f739a5c64f93f685d39dfdc71a4d9e9770f1be446ca6840ec4b5ecc330eb4ed', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:23:12', '2021-09-30 13:23:12', '2022-09-30 09:23:12'),
('7cb6bec452ce1f5b971f7c435c2c10c7e633089585f812c7ecce38778ce68f3a3fb80027da49f41c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:30:19', '2021-09-29 11:30:19', '2022-09-29 07:30:19'),
('7d152280e20ccf48912b77a40de74d946f654a7bfe592d8e1fa0508899e97d67247a9cb5d0b14ebd', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-26 16:58:53', '2021-10-26 16:58:53', '2022-10-26 12:58:53'),
('7d6bcc28be6c5b9ffccfce8169780b7f36f94f4112177272873050a7a921122632782bcf124239b8', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:31:51', '2021-10-12 15:31:51', '2022-10-12 11:31:51'),
('7e886d7ce5d56500b96e016595d7bc5c9d7027f7be39a5da7ad487bbdf3c64119ddf7b8db4f84365', 52, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:12:48', '2021-09-22 13:12:48', '2022-09-22 09:12:48'),
('7f2c67c07ef5da9e3e92ae87193036062af5140883858f6ed315b6014d379701e0c6aa5ec1243b23', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 10:38:58', '2021-09-30 10:38:58', '2022-09-30 06:38:58'),
('824170ff3bfa2712c58a0b955c6a65aa96e3f3a92671a05b6483e0094fc4af9be1da03aeca2e810c', 30, 1, 'authToken', '[]', 0, '2021-09-20 13:25:09', '2021-09-20 13:25:09', '2022-09-20 09:25:09'),
('8248f5fc46519f012f3d39f1f4889e4c6c1b6bd8ccae74e4c6acc4874f42bb6c28df5d731f0733f9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:47:24', '2021-10-05 09:47:24', '2022-10-05 05:47:24'),
('82cb443dc97bc3d0dfe36d098a0ec74e6f85c3c3d6977651f0515e8f9f06e8fc7d3583261b922815', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:04:45', '2021-10-13 18:04:45', '2022-10-13 14:04:45'),
('8451f50453442f55fa148ba6dc6e416429d427f3e1f3fa15ed3e19f315d536304f377c80c37bb124', 13, 1, 'authToken', '[]', 0, '2021-09-13 16:01:30', '2021-09-13 16:01:30', '2022-09-13 12:01:30'),
('845a874c44a9abf5bbb98f3d0c09bb563774cd977a9d5db1bd32747cf7a0ec3b319c64cc0fc90711', 34, 1, 'authToken', '[]', 0, '2021-09-08 13:48:48', '2021-09-08 13:48:48', '2022-09-08 09:48:48'),
('86e8e685f11c59e40f29bbbfc8f3d254fd1c3b6f1ec386558919c970d1851270f6871ee643cd0810', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:11:05', '2021-10-27 16:11:05', '2022-10-27 12:11:05'),
('87418df858a536a65ea19486a861c56c562bb82e100c2c44fae6d46a58708d5fe791a77b0cea7ce6', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 21:00:36', '2021-10-28 21:00:36', '2022-10-28 17:00:36'),
('8786737f4302642186bac02bd36460ee4113dda87967180f567f05980a0d4a95ff12f589bbe2abb4', 18, 1, 'authToken', '[]', 0, '2021-09-14 09:08:37', '2021-09-14 09:08:37', '2022-09-14 05:08:37'),
('8820b4c7ad2d0282c416154aa2b1746109da82e2f425e1595e01f1c2336c69e77d875b1e80614283', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-16 10:19:32', '2021-09-16 10:19:32', '2022-09-16 06:19:32'),
('8922b4251262868567f0703e6f6608c0684df4829f4d5ab4061d3389ea1d13a6e72345f7c9383e32', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 18:38:33', '2021-10-11 18:38:33', '2022-10-11 14:38:33'),
('8980e7ca4c525429ea6df55f7edb266780217cfb868a766988f4f65a1508c3ef27868dae0aa95b0e', 32, 1, NULL, '[]', 0, '2021-09-07 16:06:37', '2021-09-07 16:06:37', '2022-09-07 12:06:37'),
('8a60e60779fd41721ac29cf9f7ef6a908a101face6b835a8726ffdeb813cb0a02837da553f15fb15', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 20:06:54', '2021-10-28 20:06:54', '2022-10-28 16:06:54'),
('8ab48d61f176ce73fdf97dad2f29b7b245b3a9479b4b2b8505b21a009b4e2a356452b1c06d699ead', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:26:28', '2021-09-30 13:26:28', '2022-09-30 09:26:28'),
('8b3f3477ca03e5937fabfc03907e9eae54cf2fcb66a5c71a45a16b486c1628a73c642fcf7e2b36c1', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:12:40', '2021-09-29 11:12:40', '2022-09-29 07:12:40'),
('8bdec5fb55fda13841b0f5c3a92c5c11d1545d51aa61fd63948066ebb7d7dd9a323c09566b19509d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-22 15:52:14', '2021-09-22 15:52:14', '2022-09-22 11:52:14'),
('8c9181cc834499701c92b97e49cebe00e4985be230401912aa271dd2c16166f359143f7b66a0475e', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-16 09:51:07', '2021-09-16 09:51:07', '2022-09-16 05:51:07'),
('8d19ea867baf068f895e0e8ca2d7e584b682ee3811cb5e12f8a8437e20792c3cb383927d497ad8ee', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:14:05', '2021-10-13 18:14:05', '2022-10-13 14:14:05'),
('8e395476ee52acd309963410aab7a11baf6b7310cbfd55738ca9735df1668f6028f367893d3a8c2b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:16:09', '2021-09-27 15:16:09', '2022-09-27 11:16:09'),
('8ef8a29d3f57b052a1aefdb9ad3b4030125ca30d25b8cfcdc22775c666ff59ff3feeb01e160812ff', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:29:17', '2021-09-29 11:29:17', '2022-09-29 07:29:17'),
('90caed4a762fc972df31d328ac8a46235f30d30aab4e4dba6519c6d17c45b5813395352ff49133cb', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 19:48:16', '2021-10-28 19:48:16', '2022-10-28 15:48:16'),
('9113dd9156bfee652efb590dc13c211172053851fdb33fdfb8d11a7319c3dba0ff9bc8e0294660d6', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:30:54', '2021-09-27 15:30:54', '2022-09-27 11:30:54'),
('91cf8845f3b694ad340c5224a4ce49e81da1f25090270b7f2d1f1c9bc073e7f303906742749bcee5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:21:58', '2021-10-13 14:21:58', '2022-10-13 10:21:58'),
('923583548069c9277be6b57869e5c66ff5cd1ebc26f92db4170ead2d16bc36dbecc00f52c641a923', 81, 1, 'authToken', '[]', 0, '2021-09-23 14:23:08', '2021-09-23 14:23:08', '2022-09-23 10:23:08'),
('9358b58aa7b3642b088116b382a677cd2c1654bb5b293713d4a3e42de62a165645ebe6187bb092b1', 51, 1, 'authToken', '[]', 0, '2021-09-22 12:02:59', '2021-09-22 12:02:59', '2022-09-22 08:02:59'),
('950033662e180815adcf0a9e5cc18eed0e073712b9481adc2e639baf8efe37bdb3e1cf4c229897ae', 36, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:53:54', '2021-09-09 14:53:54', '2022-09-09 10:53:54'),
('95aa6148fb642cb64031ecf5fc438b6c1131c12ff0ce41ce19b176ef1e49b6d9d90f361b361d3ba3', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 15:40:58', '2021-10-27 15:40:58', '2022-10-27 11:40:58'),
('95f8a1c10d93c83e54e300143cc0331eb8097397dd9d0b8972b1d5c05e38b8f154b6b84042d2641a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:41:55', '2021-09-27 14:41:55', '2022-09-27 10:41:55'),
('9687e39b76143eaf082490b9d0e674443b4e2fa77c88c2b4810a657413a78f6afa5979afb48ac255', 5, 1, 'authToken', '[]', 0, '2021-09-13 14:49:55', '2021-09-13 14:49:55', '2022-09-13 10:49:55'),
('96c335ba7a97fa87001744a99f68a4750e688167e761cbeb42d69847dfe4c00bee2b8894e0fc3e07', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 15:31:37', '2021-10-11 15:31:37', '2022-10-11 11:31:37'),
('98d59619a65d08e79f93d4e0270919f98040cc735082b277b0fe1474963e01c21c121fa645d6a55e', 71, 1, 'authToken', '[]', 0, '2021-09-22 14:59:12', '2021-09-22 14:59:12', '2022-09-22 10:59:12'),
('993e9eb52ae495d09ecf7943a6fb05034a7e670e2d0c30b1225bbcdbba9facff33c133781a9fd860', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 14:58:33', '2021-09-23 14:58:33', '2022-09-23 10:58:33'),
('99b897790a56f9c1c3a87fbb73535cd7d7efa0a9e1bb743227f19bb05166f3ef25f3f4f00e199bc3', 77, 1, 'Personal Access Token', '[]', 0, '2021-11-02 18:05:47', '2021-11-02 18:05:47', '2022-11-02 14:05:47'),
('99cfb2ead300f56ee0812adb5774133052b61484c6791f3bee05978a6d09e3a1f2fbc3c549087141', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-22 16:47:11', '2021-09-22 16:47:11', '2022-09-22 12:47:11'),
('9a6299aedb3993c71cec0c75235cef95f70d070d819e0f107da729f1e2dd7cda807b80d7c665a3e6', 77, 1, 'Personal Access Token', '[]', 0, '2021-11-03 20:10:41', '2021-11-03 20:10:41', '2022-11-03 16:10:41'),
('9bd33b9d4450876cbc6af6ae55bb91bf0edeba96755afd5aff5bdbdb237d77b4e7e0a20db6635d09', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 14:54:37', '2021-10-11 14:54:37', '2022-10-11 10:54:37'),
('9c35ec82876650e736157ae8e1d9d358005658099482480b770e62f7fe0bcf0f98fc12e0d15652b3', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:51:23', '2021-10-05 09:51:23', '2022-10-05 05:51:23'),
('9c6af5e9ddf7b2d0002ed7a13a07f0a0b3798551e4f40ed322c6513cd4de2baf76a4e7053cc29aae', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 13:19:02', '2021-09-23 13:19:02', '2022-09-23 09:19:02'),
('9e0eed20cb507a853e0370ccd3b8a89191631ca330b72e092035cad58ba06ed5749c8826e6bdaa4a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:05:24', '2021-10-13 14:05:24', '2022-10-13 10:05:24'),
('9e1409379282097b694a33099787a65b7726468b3e340200c2d1f9ea22a2111d41952e5957624486', 51, 1, 'Personal Access Token', '[]', 0, '2021-09-22 12:06:42', '2021-09-22 12:06:42', '2022-09-22 08:06:42'),
('9e73e58ebc500e73b29e382d9a08121fa611deab5e6900764e9e610457638abc2839562cb146fb55', 35, 1, 'authToken', '[]', 0, '2021-09-20 14:07:36', '2021-09-20 14:07:36', '2022-09-20 10:07:36'),
('9ec058dec7d5aa3c16e7f0f68a6c522758b079917f31b67cec6ca37bb29c678e533a57e7efd20c73', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:49:22', '2021-10-01 11:49:22', '2022-10-01 07:49:22'),
('9f39d8dd90c45da8942a1d3c7d662f358acdf4546d90e36e248e8f2160b7fa6556010c2a9846df74', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 10:11:34', '2021-10-04 10:11:34', '2022-10-04 06:11:34'),
('a2075622e08f8b5186d14bad1e7bde371f50fbb8abf8c85519bc3ee241c16f77902d46a4d407eb38', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:05:27', '2021-10-13 16:05:27', '2022-10-13 12:05:27'),
('a2c93e49cf550a1ed7d86c129308ac7c77577794e25515fa7a387b74a89b23a9cbf046c280a79320', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 13:52:11', '2021-09-28 13:52:11', '2022-09-28 09:52:11');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a36e7215a72b7287babca956f67f08447710f19e96031cf9406aa664ae613d69df4a5358b0308ce1', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 18:08:24', '2021-10-27 18:08:24', '2022-10-27 14:08:24'),
('a478e77dc34568be08fb9080f62f4f96f25b7d592e7ccbfe604e75eafee9d6fd6f9fe484f9fde8fd', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 10:45:15', '2021-09-30 10:45:15', '2022-09-30 06:45:15'),
('a5b4e6490c598197d9f72204c0607b1fbbca6462bae2092636f43e476d898c1ed02939e5a470ba9f', 67, 1, 'authToken', '[]', 0, '2021-09-22 14:50:09', '2021-09-22 14:50:09', '2022-09-22 10:50:09'),
('a75180237cdd298a30df97c315d6261c28fa90d40f825bb867e54aa33618357a52b5865a6825959d', 82, 1, 'authToken', '[]', 0, '2021-09-23 14:34:52', '2021-09-23 14:34:52', '2022-09-23 10:34:52'),
('a7d32743b4d906b86dca9d0c73a9662d01a963797fd2856b947f3dc990303aa3193b97618f40829c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:36:32', '2021-10-01 10:36:32', '2022-10-01 06:36:32'),
('a807d38011b1a85b780a0782f3576951443552c0a3ab6be52752829918deb9e347b6f4a16a241c9a', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-16 10:18:42', '2021-09-16 10:18:42', '2022-09-16 06:18:42'),
('a8249695292a7e7cd7ee6b709433d75ccda00283cf075c5cba8f74ec4f85ca86acff70ce24abe9b0', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:00:15', '2021-09-30 16:00:15', '2022-09-30 12:00:15'),
('a85242777f52e059b60a24120e7b34409feaf4cfba680136ce24303d5d5f4faea53f0021792246b9', 24, 1, 'authToken', '[]', 0, '2021-09-20 10:51:12', '2021-09-20 10:51:12', '2022-09-20 06:51:12'),
('a8a63bb1069f7bd0a4a1316b833811be171866a0df9fa9b91ccdf0a6ff828f413b2278800d3dd171', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:02:13', '2021-10-13 19:02:13', '2022-10-13 15:02:13'),
('a9667530f061c3f946c025afde949a4cf30812b484910cf35b5868526fe8bef67c883947fd6a7366', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 15:47:19', '2021-09-23 15:47:19', '2022-09-23 11:47:19'),
('aa790152f9b350fe0975fdb5ab6ec6349de3e2265f6f0b4bf820f8070bbc7ab54ae75833278a2311', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:39:16', '2021-09-22 13:39:16', '2022-09-22 09:39:16'),
('aaa5a84cf8f3e0204b4a16b366a71c4ae35df0e60f09972bc0aa05eca7c7a2cf93cb4964df1e0487', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:15:22', '2021-09-27 15:15:22', '2022-09-27 11:15:22'),
('ab554dcce3a841e7db670da7ca9c6b9e2c66689cd37f19695e7d2f0c7828f39f4c3a57ce3b726cf6', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:43:59', '2021-09-27 14:43:59', '2022-09-27 10:43:59'),
('abadbe4913101bbfb811c05b8f44558b7040550d2407c64e161757defeb88a9111c4a13393c0537b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-24 14:09:26', '2021-09-24 14:09:26', '2022-09-24 10:09:26'),
('ac53cdfa499c730da03fb005efec0d30b36602aa01546462b2805a655e700148aecf0c3c42e57754', 73, 1, 'authToken', '[]', 0, '2021-09-22 15:07:53', '2021-09-22 15:07:53', '2022-09-22 11:07:53'),
('ac58baf376088fb4015fe5e824ad08aef3b269d2127f692af3f77d513cef9227baf9ea4edfb4ee34', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:09:16', '2021-10-13 16:09:16', '2022-10-13 12:09:16'),
('ae15f1d18b9d023ac4c9eeba9ff1133e7e129038123771c936e7a1f83b2f464baa74e4da8495bf1e', 86, 1, 'authToken', '[]', 0, '2021-11-10 20:53:30', '2021-11-10 20:53:30', '2022-11-10 15:53:30'),
('ae7168675564761370c56170c9b5fd978ce843a14645db43eeedd34af7108a33024659df6c906599', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 16:19:35', '2021-09-28 16:19:35', '2022-09-28 12:19:35'),
('aed167d0650fd08bd40dcd8de79cbccc20a22d526d68a3ded2908ef700b066ae7f2d8dc08d6b021b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:59:58', '2021-09-23 11:59:58', '2022-09-23 07:59:58'),
('aedbf6109d61eff793f8662dcc194245c0d5f2908f838537a5b113383c7bf4eb717540c792e34718', 63, 1, 'authToken', '[]', 0, '2021-09-22 14:30:11', '2021-09-22 14:30:11', '2022-09-22 10:30:11'),
('af41b21ceca0f2d7ade23b6be5f5411406e0dcc226719f365643722bfa7058e56165ef226665591c', 38, 1, 'authToken', '[]', 0, '2021-09-20 14:17:35', '2021-09-20 14:17:35', '2022-09-20 10:17:35'),
('af55ab388a29c56555490a5049afa93b1fd1a81bad43376cd916fcb2afcbd5d37dbc8cf1cae2b8b6', 9, 1, 'Personal Access Token', '[]', 0, '2021-09-13 15:06:50', '2021-09-13 15:06:50', '2022-09-13 11:06:50'),
('b03688672f1afe926aeba0e0f7e580ce00589153eb51ad0c2692df097472e3d22a82f7d370809b75', 12, 1, 'authToken', '[]', 0, '2021-09-13 15:27:43', '2021-09-13 15:27:43', '2022-09-13 11:27:43'),
('b098a21138d97d41e4f5cf71e24ddc7d73aad1b64ab08884d3e192452638bfd6effecf81ad44edc2', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 14:56:22', '2021-10-01 14:56:22', '2022-10-01 10:56:22'),
('b10f93886bf644cc6e852e07fc968b2711b34fde9caacae25747bf29c35061ecaf7dc9112f13e6b8', 52, 1, 'authToken', '[]', 0, '2021-09-22 12:04:07', '2021-09-22 12:04:07', '2022-09-22 08:04:07'),
('b140ff7046f2b9163b4fdd605fdbc29d8c0fd20728e1427cfd5b2fc5fdb6b76384bf4d235a86ac52', 19, 1, 'authToken', '[]', 0, '2021-09-14 09:41:47', '2021-09-14 09:41:47', '2022-09-14 05:41:47'),
('b149aa159fcdeae28065e00ec03fac20d10a07a1c91f388ddfb3d0f5591dcab27fa281968d7a8aa7', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 15:43:30', '2021-10-11 15:43:30', '2022-10-11 11:43:30'),
('b2ae293a7d1558f635299c4ae627e0c57f36fb8186aac73f4921e67b099ee0287ec87b017d6e54af', 79, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:49:40', '2021-09-23 11:49:40', '2022-09-23 07:49:40'),
('b38b1c68b4ec75e19e1a84fcfaec6c299a2944beeba9fbc40266e08e8e76f6351a76497e2ec9e690', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 09:17:38', '2021-09-30 09:17:38', '2022-09-30 05:17:38'),
('b5ed657dab6c211b538fde04e72aeee49be3fa5b8a185b99fd2b1995894ed5bcf026103e840a0142', 74, 1, 'authToken', '[]', 0, '2021-09-22 15:13:46', '2021-09-22 15:13:46', '2022-09-22 11:13:46'),
('b61db0b952ea1d186e32c0d2d6f642da387c43b79e5d7a8a10d284043fcd56824632eaa81d72faf0', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 19:48:00', '2021-10-28 19:48:00', '2022-10-28 15:48:00'),
('b6fea7643c82eada00e775311b37db641b11d3f4e78e0b9080a1a6af9d26c0c892d1477c1129158e', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 18:14:02', '2021-10-12 18:14:02', '2022-10-12 14:14:02'),
('b7fda6a433b7630266c7a1e93749f7aa2727a8af92482f7087805c28646725d80a2bc3e534d982fe', 8, 1, 'authToken', '[]', 0, '2021-09-13 14:56:01', '2021-09-13 14:56:01', '2022-09-13 10:56:01'),
('b80161c9c4cd82fd723872360ce471c45c7f382e46669593bcb58d89c94442c54dcf71806b121ee1', 3, 1, 'Personal Access Token', '[]', 0, '2021-09-08 13:49:06', '2021-09-08 13:49:06', '2022-09-08 09:49:06'),
('b86848a103ca46db83df804fad191c3e90684fc5f85cfb19ac1480fbe39d4b7114867702ebc2e8b8', 36, 1, 'authToken', '[]', 0, '2021-09-20 14:10:05', '2021-09-20 14:10:05', '2022-09-20 10:10:05'),
('b95fb5d1d9dea2a7ea87fdeb5a75dce77e67e063288005e34104b98c8998bf14b2cf907c4b93801b', 86, 1, 'Personal Access Token', '[]', 0, '2021-11-10 20:53:59', '2021-11-10 20:53:59', '2022-11-10 15:53:59'),
('b97120955817e395205499cf57affd3f833e44c2ced8436fb2a6bdec1af398dbee15bca1bb022d85', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 14:30:37', '2021-09-27 14:30:37', '2022-09-27 10:30:37'),
('baa871019d86d070fa752cc4c99da1c9dbc3b9f6899db15327b63ed21c171774806880a7075f3044', 6, 1, 'authToken', '[]', 0, '2021-09-13 14:51:30', '2021-09-13 14:51:30', '2022-09-13 10:51:30'),
('baf3e9ef870cc225bfee5af487b246fca548efbdb636e0c8c142690c6fa322c7f86c9a2c039feb98', 37, 1, 'authToken', '[]', 0, '2021-09-20 14:13:04', '2021-09-20 14:13:04', '2022-09-20 10:13:04'),
('bb304a77aa687160075f22f410b57bb8110ce53fb64bad2c992b17fa352f550708124220594a5a79', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:42:17', '2021-10-12 15:42:17', '2022-10-12 11:42:17'),
('bb87a8fe266a52c7aa90e541f8cb30bb8b67898afaea5a5e38b217a1506cde7f418d058d06917709', 77, 1, 'Personal Access Token', '[]', 0, '2021-11-02 20:26:10', '2021-11-02 20:26:10', '2022-11-02 16:26:10'),
('bbe25d9feb844d65cd79655701de16fd7c43ebc681aa491b502303fd3f468038d2711c4676cd909a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:21:52', '2021-09-23 09:21:52', '2022-09-23 05:21:52'),
('bc974cf481b2dbba64a1dd0b62ecd1f06b9d932a96a2007604dae936975debea43c15383a8de175d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:02:17', '2021-09-30 15:02:17', '2022-09-30 11:02:17'),
('bd0953dec11604946cfba5df5307fc61b53ae6456eeb1dff987c039ccaed4c966d8aa6b1b8532626', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 14:16:30', '2021-09-23 14:16:30', '2022-09-23 10:16:30'),
('bf46a952d774ef1f97c838d8ba2e50e579fec62c13a3480052a857753b558572330b18add646803b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:47:48', '2021-09-23 11:47:48', '2022-09-23 07:47:48'),
('c12046ed7fdf2e7f943ca237c69b9fa40c28be722487bc82aff767508578a92fb33387eeb8f6029a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-22 15:57:16', '2021-09-22 15:57:16', '2022-09-22 11:57:16'),
('c135767f39ff66ea39bf650eeb1f323cdc7eb99fc73b79266b5878046555136c64221ccdfdcb1f0d', 3, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:33:08', '2021-09-09 14:33:08', '2022-09-09 10:33:08'),
('c3aec64bd079ed6e31c79eaaa61d512284a7acccf1d428716600a26b7c88149783908e012f252eb7', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:38:59', '2021-10-01 10:38:59', '2022-10-01 06:38:59'),
('c4133ed57f1b198f54e31ba46170dab25ae98cb4fa77cd5c39400d36d02e1fddb7c57fcbec71ee0d', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:17:22', '2021-09-28 09:17:22', '2022-09-28 05:17:22'),
('c48a0f7b3080d3a8a0d521731a61d511470523c5e5d1caa5e8aab5c78b0d38451405c2121b4394f8', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:36:06', '2021-09-28 11:36:06', '2022-09-28 07:36:06'),
('c4976a5fcf61bde5f9fa3ea2c2070fc6d64e482830d10b1c40cafc4b9e5733b9b666b0c6be72d669', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 14:00:47', '2021-09-30 14:00:47', '2022-09-30 10:00:47'),
('c5eeb1d1baf7b0547f45e0dc824708f323efd889f8543bca992cac5f3076b2ecfb33d443af70fe2b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 16:54:48', '2021-10-12 16:54:48', '2022-10-12 12:54:48'),
('c60a0d7794dd81f0141e33d95bbd5fe0eccea1207800476b1d4222783b08e197d870c9c420afb71b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 19:25:37', '2021-10-13 19:25:37', '2022-10-13 15:25:37'),
('c6f3bea0daf4f04097275acfa5336a51359a9401415f889b5eccdcdfe3ca53dd8b7db5647bdefc09', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:40:03', '2021-10-13 14:40:03', '2022-10-13 10:40:03'),
('c786e23cb71f41426c5af5dbac1a580085f64702db529c8709043fd391ca8366c68a907c0cbed55a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-22 15:50:34', '2021-09-22 15:50:34', '2022-09-22 11:50:34'),
('c7b8410699a1a43267c203ae8365b0abdb71a3c259dd24f7f78b529a7647f4e5adff1c046ba7eb75', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:17:14', '2021-09-27 15:17:14', '2022-09-27 11:17:14'),
('c7cd94c47aeb7a273d4d075abc715aa77078cc55202da8fa4308b250ce34538f7767f17938931239', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 09:14:30', '2021-09-28 09:14:30', '2022-09-28 05:14:30'),
('c828cea852a4e377e61aa5fd72403e63289c2be87d6ee7e1857009ae171d3bf21455a40688566df5', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 16:28:58', '2021-09-28 16:28:58', '2022-09-28 12:28:58'),
('c84a423aad8dc0cc642125b17616a1f3f6f468b1638db95494b24597fb868e1774b84063eea28849', 39, 1, 'authToken', '[]', 0, '2021-09-20 14:25:40', '2021-09-20 14:25:40', '2022-09-20 10:25:40'),
('c89e1fe8f23165b1b780562195c84a2c27e46bd5320122a3815437b1f97e736a7a37862c7b8c3835', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:25:32', '2021-09-23 11:25:32', '2022-09-23 07:25:32'),
('c9c9fb4de59fe226931830692af506a6e7c08738575c9a026b7bf20d9434eb9863a7fd7dd171fb7c', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:48:44', '2021-09-22 13:48:44', '2022-09-22 09:48:44'),
('c9fe495839eef9bda56930a95a61ba757ab4dda51afe75f7a2142d737f0711fdbf76a8b51e06d795', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:56:25', '2021-10-05 09:56:25', '2022-10-05 05:56:25'),
('ca2f462c45d19f2a42d02eda55eb5bdb24dd5ff73356575ae639bb8165c4cebed67b2dc14d45d599', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-22 16:04:18', '2021-09-22 16:04:18', '2022-09-22 12:04:18'),
('cacba6eea021da4ebf02d24a3856d9c572246430a81f5983713ba77abfcf5ce637197637935b68bb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-24 08:43:15', '2021-09-24 08:43:15', '2022-09-24 04:43:15'),
('cbdd60183318544bb081a30087f9301ff20eaf1f21ff845d8f178d1495e46116a06d16a6a77c1e4c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 09:49:12', '2021-10-05 09:49:12', '2022-10-05 05:49:12'),
('cc288878c7114b54852d13794b579518fb8ddf21d0aedea5fc59a7f80fca58b0f438bb9780c45bb0', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 15:24:40', '2021-10-27 15:24:40', '2022-10-27 11:24:40'),
('cc567a61f6ab7f4eed66c901878363a1e23dbcc1b9ce8a7930affe6d63bafe9db47765dea2255621', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 14:28:48', '2021-10-01 14:28:48', '2022-10-01 10:28:48'),
('cc7c916f868d89dedd73c8f4583d0824d068806b724d9f83c78da62f789a8cabb4b9b5b7d4742010', 7, 1, 'authToken', '[]', 0, '2021-09-13 14:54:10', '2021-09-13 14:54:10', '2022-09-13 10:54:10'),
('cd500fe8ec6bb2523670fbfd7d19931bbee52d944df6ea69262d928a1d44379cbe9278aa87024e1a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-14 16:47:35', '2021-10-14 16:47:35', '2022-10-14 12:47:35'),
('ce1107e63d011f0af69b7fa47601150c29dda269da3850a32d09d014969536cb14d7dfbba71cd33d', 10, 1, 'authToken', '[]', 0, '2021-09-13 15:24:29', '2021-09-13 15:24:29', '2022-09-13 11:24:29'),
('ce36b6e9f04c7a9c064ddba7389d997c88a5802a712a96960b9b116578deaf65b51fbbb7700193e0', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:05:53', '2021-09-30 16:05:53', '2022-09-30 12:05:53'),
('cee3e7dde2530b18ff21ad57b47ceac73f3db205a7c721b3cb9cbdf18ced66bd39b31d00645f22c0', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:12:16', '2021-09-30 11:12:16', '2022-09-30 07:12:16'),
('d0d18497edfd3572e93e2961262e8de193e3b7ea226b845bf1c71818e89e469eeb136fb2eca2cdb2', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 21:49:47', '2021-10-11 21:49:47', '2022-10-11 17:49:47'),
('d1fbba4e06b3789d347d27e8df3ee71ca3c5ec8dc78466d9492e498d6c725210b05199afd34760c5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:03:51', '2021-10-13 16:03:51', '2022-10-13 12:03:51'),
('d211edbfefde55c2568dc4da8a6e0679bb67b0944a3d873cb0176c5fdcda2593fd3d0a369ff12a0a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:04:31', '2021-10-01 11:04:31', '2022-10-01 07:04:31'),
('d34f5687207c606418b034fbebfb2acbb768ac87f49a2145cadcbd289f5b77724fe59cfeead76f9f', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:45:32', '2021-10-01 10:45:32', '2022-10-01 06:45:32'),
('d3e298f49f744f6f7cd712959db720ec250c4aad0e59fac3f456100d8aef9741df536c56cb157a0b', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 10:58:43', '2021-09-29 10:58:43', '2022-09-29 06:58:43'),
('d3e4c2e75df9c485ba32d6d4c8ab1c970c5f4c72e78ee658d1663834cce2dfa575f994a0a81bf9ce', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-22 21:50:05', '2021-10-22 21:50:05', '2022-10-22 17:50:05'),
('d4093fbf42ac2e58245e640ee41f01ed1ca664fe1007f3bc6283c81f00bbd1ba39f849dab45cefeb', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:03:14', '2021-09-30 16:03:14', '2022-09-30 12:03:14'),
('d432b50c62fd9dfe39a02ab021ebbb4078cfc5ae0defb53f96826297774b094ef62cce8772994a0c', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 11:14:02', '2021-09-30 11:14:02', '2022-09-30 07:14:02'),
('d50785fd89c9821f7d2eead18cc40e8f5f4fa2ada75977babca7b6bd5e4a03accb94e6f3d508550d', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-14 16:19:51', '2021-10-14 16:19:51', '2022-10-14 12:19:51'),
('d69b89c90bd3ce665ff6f07d28111df149b71c5ffb45131bfdc65f768f404324e61da1474ac870bf', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-22 14:53:27', '2021-10-22 14:53:27', '2022-10-22 10:53:27'),
('d76b62a7b5c7a80f8927611444d24087ddb7401c1c1dc259fb7c1981c746d3f36669e87e067d156a', 36, 1, 'Personal Access Token', '[]', 0, '2021-09-09 15:36:30', '2021-09-09 15:36:30', '2022-09-09 11:36:30'),
('d8469fce5125f01d8ae086c8e56f0682bd8065194a50138657d407c914130b75a4b3234b409ae3aa', 85, 1, 'authToken', '[]', 0, '2021-11-02 21:12:40', '2021-11-02 21:12:40', '2022-11-02 17:12:40'),
('d93a906f72a761978a7218da976bafe0b9a0da593e2633cb9d9f4b11336df954a5299f60eb7ce3fa', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:31:37', '2021-10-12 15:31:37', '2022-10-12 11:31:37'),
('daad828c8ceafaa0f617d6b874dfc45161c41b9283f27f10949e7c85ba6db7f95b8a8994a64965a7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 10:49:08', '2021-09-29 10:49:08', '2022-09-29 06:49:08'),
('daf9530e34bb6ba952168c2694eadf9add5edf7fa89d6aabe3476fd39c51ca3effcd0f78bc73c5e8', 28, 1, 'authToken', '[]', 0, '2021-09-20 11:45:19', '2021-09-20 11:45:19', '2022-09-20 07:45:19'),
('db98f874595308d534097198e8d651058eab6db3373d44408a1b7520822054f634e06e2dd3794756', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:51:06', '2021-10-01 10:51:06', '2022-10-01 06:51:06'),
('dc52d4bdd40d8efb841d196f2a9f023a63c0d57ff65a7bfcafb67e40c87b0ed87fca242b7d58082d', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 18:29:10', '2021-10-27 18:29:10', '2022-10-27 14:29:10'),
('dc535b63ea0269dab0c6ac6ded3a1b39e6df4ed609569a39483bad62fce8869ed5002d4c373619e3', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 15:00:45', '2021-10-13 15:00:45', '2022-10-13 11:00:45'),
('dc76edafeef4a967256a300d4a089f76469a6204b72a2513b5521bbd62329b61bfe929b0d6fb55e1', 62, 1, 'authToken', '[]', 0, '2021-09-22 14:25:27', '2021-09-22 14:25:27', '2022-09-22 10:25:27'),
('dcbf5793498f3abbedbc0d481be5f15470214003931260d714d6bac64c7f55735a317a81090882ac', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-28 19:49:19', '2021-10-28 19:49:19', '2022-10-28 15:49:19'),
('de5eed476731719733df03379671bffee92a17c843d9304558dcbc6667b504b6f8962d10e4ad3649', 61, 1, 'authToken', '[]', 0, '2021-09-22 13:29:41', '2021-09-22 13:29:41', '2022-09-22 09:29:41'),
('df4f426f27dd4e4f1524164410cc4966e63b55db4030174154f24d29f57f134f1a758681f5d06d99', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:07:10', '2021-09-23 11:07:10', '2022-09-23 07:07:10'),
('dfd4cc4cf21a025142f2b48dabc587f15549ebe5fe9029e0ac1108101d4cb7541878a1899e597353', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:10:28', '2021-10-27 16:10:28', '2022-10-27 12:10:28'),
('e006672c9ea0d23cdbef8096fd0be8e0a76bcceb5c7e4ec6d4e0bf3a9cc488500227a8512f568985', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 16:44:14', '2021-09-27 16:44:14', '2022-09-27 12:44:14'),
('e035f13b0b1a5cb940ab621a78f9dad783b5fdac17a3655be99673a3f00f7b0e8b4d6bc0900b54f5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:38:21', '2021-10-01 10:38:21', '2022-10-01 06:38:21'),
('e07f913cc904635016765de105f50b8bca142124e5c922a8a90b23fa57bbd217632970c61adb3462', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:57:14', '2021-09-30 15:57:14', '2022-09-30 11:57:14'),
('e086e03e88d5f66de2c1c209529d09b4e04fd9c785c0d0bc7a92ea2630549c2281c1170b991d7661', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-28 11:44:45', '2021-09-28 11:44:45', '2022-09-28 07:44:45'),
('e1836da2612b8b250b2e1382be089cfb1e3bdb244c68b34a2c4bc1c8e2088db25c3232b2d21d843f', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 10:52:26', '2021-09-30 10:52:26', '2022-09-30 06:52:26'),
('e1b1062cb3dfa3c46e601d704cec8385304e7fb238daf69065c561a3a762e642cd374d96219f6115', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 16:08:34', '2021-09-30 16:08:34', '2022-09-30 12:08:34'),
('e3547d09e55ffcde29a21492e3e3b368fd8f60507f0e04620da210a25f9413954482e35a71dcc2f8', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-23 13:23:53', '2021-09-23 13:23:53', '2022-09-23 09:23:53'),
('e41dd7d0f1553fc1065445cb62c91f6040c144b3bb48caeda42adf9b8f28b377cee24520e1fe43b4', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 09:21:13', '2021-09-23 09:21:13', '2022-09-23 05:21:13'),
('e45740d9cf3d4083240683d69ca2adc10fdee7832d77b8745c0fc01efd6c717bd8f3c7f346831465', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 10:33:42', '2021-10-04 10:33:42', '2022-10-04 06:33:42'),
('e52d56ace5387d91b992d54a115f3b1ae79365b993bf5b4fc82d8fc6aad3566b2da0ee2a25e16a58', 29, 1, NULL, '[]', 0, '2021-09-07 15:57:44', '2021-09-07 15:57:44', '2022-09-07 11:57:44'),
('e53ecc1a86c4d73d0fffdb15e997d684f16d1caca115680113c4921d9220865f37a9a84a3d53fe8a', 43, 1, 'authToken', '[]', 0, '2021-09-20 15:02:02', '2021-09-20 15:02:02', '2022-09-20 11:02:02'),
('e731595cab62d531bd40ea2a9c8ceabebe89d1bab97893506ee03e6b6116e3eee3929ac8646cd822', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-27 15:42:01', '2021-09-27 15:42:01', '2022-09-27 11:42:01'),
('e7a4d29170076ed155ff245436711b536d9c83a748fa21702e8a9596eab2bc6633a4132e367fbbb8', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:09:39', '2021-09-23 11:09:39', '2022-09-23 07:09:39'),
('e876e442664f5dfd9e58c16c506195a6abf7f2dd254a89b278e82d5c81acd734f5bf6a1fda955760', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:27:11', '2021-09-23 11:27:11', '2022-09-23 07:27:11'),
('e88134a6a3feeeff1afb7703bf9a7f47c4ec8b109b128154d4121c9c0e90aca3cbe286613c06911a', 27, 1, 'authToken', '[]', 0, '2021-09-07 15:53:39', '2021-09-07 15:53:39', '2022-09-07 11:53:39'),
('e8e56b9dacd61c2d6ae4039c2e5f88e4f433610b71dd1345d6bba82a94eb896775b4d427eacb0cea', 77, 1, 'API Token', '[]', 0, '2021-11-01 19:59:17', '2021-11-01 19:59:17', '2022-11-01 15:59:17'),
('e972dd54cca593f8140cc414d43b213d7f0bafc2fc9f01a23a654abf97472fea4a6332ffa49a75f3', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:20:17', '2021-09-23 11:20:17', '2022-09-23 07:20:17'),
('e9e75d3c1a61f53e582ec167750772f264d01d7241a1db7beaf42a5b2dd2b0bf58398a6b5d089814', 36, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:54:54', '2021-09-09 14:54:54', '2022-09-09 10:54:54'),
('ea627a9f166795d0376278c4e2acff22312addcc2b4ca81978a6d37ec99bcdd718b094f6f84aef8b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-13 14:38:05', '2021-10-13 14:38:05', '2022-10-13 10:38:05'),
('ea85a2dabce357044fcbe29cc0256a640bbbbd76ec8a578af3e6bd179fed0de5034177ffbffbadb3', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:03:52', '2021-10-27 16:03:52', '2022-10-27 12:03:52'),
('eae1868b4ce3427d82ed96976f6853aeacedbc7f0c97eb26a8d0f4baa3c8dcd758910019fe8f92ca', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 15:39:48', '2021-10-01 15:39:48', '2022-10-01 11:39:48'),
('ebe34a5084edf412ebe04791078c78910881c547ba19e3de09ce6bb2b903d21318096070ed57799d', 72, 1, 'authToken', '[]', 0, '2021-09-22 15:05:40', '2021-09-22 15:05:40', '2022-09-22 11:05:40'),
('ec4926e6bf0bb24ca46f126a2cd3d7463d37e080373b8c45693a82583c2d6df724e4b524d5ccba8a', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 19:33:41', '2021-10-12 19:33:41', '2022-10-12 15:33:41'),
('ec8f3afce4f9bcbe2ba5ff385bfc233755780853681431c6518a056be756e1959d657ab820556802', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-11 15:54:11', '2021-10-11 15:54:11', '2022-10-11 11:54:11'),
('ecf0cc8b26139c7bbd3cef0c56815c3654bd29313cf87da2ce78b117291dc3056eea258b6959ea2b', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-04 10:01:42', '2021-10-04 10:01:42', '2022-10-04 06:01:42'),
('ed66a13d7b1f731633fd46ce247834edd8a0a8037539158ebd9c6298fc54974be973ae03a66dd812', 44, 1, 'authToken', '[]', 0, '2021-09-21 13:05:31', '2021-09-21 13:05:31', '2022-09-21 09:05:31'),
('ed97bae24787d6f3018507fa5b3ec9cf7889a5886e212bca1ec49ff0db7e92446278614af1102a71', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 16:08:59', '2021-09-23 16:08:59', '2022-09-23 12:08:59'),
('ee7b54c428ddc0a7ec321a8ac223d6452a0be78dd67b5c3fac1fd854641412f417b9b4ab54d3d0e9', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 13:24:36', '2021-09-30 13:24:36', '2022-09-30 09:24:36'),
('eea412f7e1d02c002612380e9c8a7a9aae7434cedc37ddb3f7b8cf7f36f7d31a3d5c4fadd7d3086a', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:54:27', '2021-09-23 11:54:27', '2022-09-23 07:54:27'),
('ef0fda60a77ad49111764d005ca831a8cdf39ccbf2593f8f898cabb4954d09cba7e53f1c113af472', 22, 1, 'authToken', '[]', 0, '2021-09-16 10:21:32', '2021-09-16 10:21:32', '2022-09-16 06:21:32'),
('f10c57875b3e3426121445229dd9e8f00ad9a572c10e92ce3b95be1393bb4e1bec6fbd12fc780081', 79, 1, 'Personal Access Token', '[]', 0, '2021-09-23 11:33:38', '2021-09-23 11:33:38', '2022-09-23 07:33:38'),
('f155194f23c8fd5ffad8580b405d29a5f9e2d663de8285f37e70133f863a54af67752a255235cdd9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 10:50:02', '2021-10-01 10:50:02', '2022-10-01 06:50:02'),
('f1d6d9cde0e4edfd26361cec1db05010e9362f0f26c5bbdb545282f7b9d40870574ac4f2604e0f15', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-05 21:25:18', '2021-10-05 21:25:18', '2022-10-05 17:25:18'),
('f320e6386b8a2fb09c6ea6daf6cac7d1917f04352b20e25a9bdba82b91a5e242a0b1f8a3d4f7e1f5', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-12 21:06:31', '2021-10-12 21:06:31', '2022-10-12 17:06:31'),
('f342dfc2ee10aedc8dfc57d0e2ba8c49d99c28c7a3552718ae39e1b8980534905378e973a2148979', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:47:05', '2021-09-22 13:47:05', '2022-09-22 09:47:05'),
('f46fbeb99b0069b855f5c0501549aeea593f30ad4cf15d05b9b0f52abfcc12a1c2619a7ea52e70f1', 3, 1, 'authToken', '[]', 0, '2021-09-13 14:47:23', '2021-09-13 14:47:23', '2022-09-13 10:47:23'),
('f56259a3527c2d2888838f32fe045e6afd5867d272570114d88fcf0e3b49aa3ddd158eba3d1e0ec9', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-27 16:13:45', '2021-10-27 16:13:45', '2022-10-27 12:13:45'),
('f62c330a19efd27eeefe5163444e8c740b174679dbef49054b9f16da35b2d9cda66dbb902e42c9f8', 61, 1, 'Personal Access Token', '[]', 0, '2021-09-22 13:53:03', '2021-09-22 13:53:03', '2022-09-22 09:53:03'),
('f7098e7a357956836b642f722452ac56bd7805863d57d79b884f6d021c290dde97eb986bc46da3c8', 4, 1, 'authToken', '[]', 0, '2021-09-13 14:47:52', '2021-09-13 14:47:52', '2022-09-13 10:47:52'),
('f81092e6ff58600eaf6b2fe3e5d24e993e69166ef61b2ef942e1f37fcad26b331949c3c6d78190e7', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-30 15:58:53', '2021-09-30 15:58:53', '2022-09-30 11:58:53'),
('f9a92eaf806e3fc50526a6b95a5de7566c47491dd45ceda37207d8330bb65e6119388eea889d3c62', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:03:20', '2021-09-29 11:03:20', '2022-09-29 07:03:20'),
('fdc892db1dfc1a2ad4c643fe7c35ef816be2443b4628f0044619cd79c83074766435854df813b61c', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:09:18', '2021-10-01 11:09:18', '2022-10-01 07:09:18'),
('fea36f047928f80de53fb01131daf8b49a27595328c722015244525459dd4d63b01c83533812a17d', 77, 1, 'Personal Access Token', '[]', 0, '2021-10-01 11:47:45', '2021-10-01 11:47:45', '2022-10-01 07:47:45'),
('ff01f14e2db74c3cb8a39c40642fa79570e08e51498c4c390f65642efe8853cdd38207dd683a4554', 77, 1, 'Personal Access Token', '[]', 0, '2021-09-29 11:32:30', '2021-09-29 11:32:30', '2022-09-29 07:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'PxZ24DTMYY69g7OzSl1X9SHmsudo0OZeKwWLie27', NULL, 'http://localhost', 1, 0, 0, '2021-09-07 15:53:23', '2021-09-07 15:53:23'),
(2, NULL, 'Laravel Password Grant Client', 'zjB1CURsK5zaIDwQ4JXE0QB1YlOqRRhORrGevMQk', 'users', 'http://localhost', 0, 1, 0, '2021-09-07 15:53:23', '2021-09-07 15:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-07 15:53:23', '2021-09-07 15:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favourite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `date` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `user_id`, `name`, `favourite`, `priority`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(10, 77, 'update Project two', 'Low', 'High Priority', 1, NULL, NULL, '2021-09-23 15:59:40', '2021-11-05 20:25:32'),
(11, 21, 'Project two', NULL, 'Medium Priority', 1, NULL, NULL, '2021-09-23 15:59:42', '2021-09-23 15:59:42'),
(12, 77, 'updated', NULL, 'High Priority', 1, NULL, NULL, '2021-09-23 16:06:43', '2021-10-28 19:28:19'),
(13, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-09-23 16:53:18', '2021-09-23 16:53:18'),
(14, 21, 'Project two', 'High', 'Low Priority', 1, '2021-09-23', '12:53:09', '2021-09-23 16:53:53', '2021-09-23 16:53:53'),
(15, 21, 'Project two', 'High', 'Low Priority', 1, '2021-09-23', '12:55:09', '2021-09-23 16:55:17', '2021-09-23 16:55:17'),
(16, 21, 'Project two', 'High', 'Low Priority', 1, '2021-09-23', '12:56:09', '2021-09-23 16:56:17', '2021-09-23 16:56:17'),
(17, 21, 'Project two', 'High', 'Low Priority', 1, '2021-09-23', '12:57:09', '2021-09-23 16:57:00', '2021-09-23 16:57:00'),
(18, 21, 'Project two', NULL, 'Medium Priority', 1, '2021-09-27', '09:30:09', '2021-09-27 13:30:58', '2021-09-27 13:30:58'),
(19, 21, 'Project two', NULL, 'High Priority', 1, '2021-09-27', '10:24:09', '2021-09-27 14:24:26', '2021-09-27 14:24:26'),
(20, 77, 'project one', NULL, 'High Priority', 1, '2021-09-27', '10:25:09', '2021-09-27 14:25:04', '2021-09-27 14:25:04'),
(22, 77, 'project three', NULL, 'Low Priority', 1, '2021-09-27', '10:25:09', '2021-09-27 14:25:57', '2021-09-27 14:25:57'),
(23, 21, 'Project two', 'High', 'Low Priority', 1, '2021-10-20', '12:24:10', '2021-10-20 16:24:38', '2021-10-20 16:24:38'),
(24, 21, 'Project two', 'High', 'Low Priority', 1, '2021-10-20', '12:25:10', '2021-10-20 16:25:15', '2021-10-20 16:25:15'),
(25, NULL, NULL, NULL, 'Medium Priority', 1, '2021-10-20', '12:37:10', '2021-10-20 16:37:02', '2021-10-20 16:37:02'),
(26, 77, 'Project two', 'High', 'Low Priority', 1, '2021-10-20', '16:51:10', '2021-10-20 20:51:08', '2021-10-20 20:51:08'),
(27, 77, 'Project two', 'High', 'Low Priority', 1, '2021-10-20', '17:00:10', '2021-10-20 21:00:32', '2021-10-20 21:00:32'),
(28, 77, 'Project two', 'High', 'Low Priority', 1, '2021-10-20', '17:00:10', '2021-10-20 21:00:49', '2021-10-20 21:00:49'),
(29, 77, 'Project two', 'High', 'Medium Priority', 1, '2021-10-25', '11:33:10', '2021-10-25 15:33:26', '2021-10-25 15:33:26'),
(31, 77, 'update Project two', 'Low', 'High Priority', 1, '2021-10-28', '14:37:10', '2021-10-28 18:37:42', '2021-10-28 18:37:42'),
(32, 85, 'test pro update', NULL, 'Low Priority', 1, '2021-11-03', '10:28:11', '2021-11-03 14:28:40', '2021-11-10 20:57:43'),
(33, 77, 'update Project two', 'Low', 'High Priority', 1, NULL, NULL, '2021-11-08 22:20:41', '2021-11-08 22:20:41'),
(34, 77, 'update Project two', 'Low', 'High Priority', 1, NULL, NULL, '2021-11-08 22:21:45', '2021-11-08 22:21:45'),
(35, 77, 'update Project two', 'Low', 'High Priority', 1, NULL, NULL, '2021-11-08 22:22:23', '2021-11-08 22:22:23'),
(36, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-11-08 22:22:55', '2021-11-08 22:22:55'),
(37, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-11-08 22:29:36', '2021-11-08 22:29:36'),
(38, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-11-08 22:30:04', '2021-11-08 22:30:04'),
(39, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-11-08 22:30:46', '2021-11-08 22:30:46'),
(40, 21, 'Project two', 'High', 'Medium Priority', 1, '2021-09-23', '12:53:09', '2021-11-08 22:55:37', '2021-11-08 22:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `section_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date` varchar(11) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `project_id`, `section_name`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 24, 'updates', 1, '2021-11-10', '12:54:11', '2021-11-10 07:54:17', '2021-11-10 17:54:17'),
(2, 20, 'todo section', 1, '2021-11-10', '14:24:11', '2021-11-10 09:24:48', '2021-11-10 19:24:48'),
(3, 10, 'haris section', 2, '2021-11-10', '12:21:11', '2021-11-10 07:48:39', '2021-11-10 17:48:39'),
(4, 24, 'update', 2, '2021-11-10', '12:46:11', '2021-11-10 17:46:12', '2021-11-10 17:46:12'),
(5, 24, 'update', 2, '2021-11-10', '12:46:11', '2021-11-10 17:46:53', '2021-11-10 17:46:53'),
(6, 10, 'haris section', 1, '2021-11-10', '12:48:11', '2021-11-10 17:48:54', '2021-11-10 17:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tasks`
--

CREATE TABLE `sub_tasks` (
  `sub_task_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `sub_task` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_tasks`
--

INSERT INTO `sub_tasks` (`sub_task_id`, `task_id`, `sub_task`, `created_at`, `updated_at`) VALUES
(1, 31, 'add sub', '2021-11-03 14:17:53', '2021-11-03 14:17:53'),
(2, 31, 'sub task', '2021-11-03 14:19:58', '2021-11-03 14:19:58'),
(3, 36, 'task 1', '2021-11-09 14:34:30', '2021-11-09 14:34:30'),
(4, 41, 'sub', '2021-11-10 20:55:04', '2021-11-10 20:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notes` text,
  `voice` text,
  `reminder` text,
  `date` date DEFAULT NULL,
  `month` varchar(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `task_expiration_date` timestamp NULL DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `repeated` varchar(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `repeat_days` varchar(11) DEFAULT NULL,
  `repeat_months` varchar(11) DEFAULT NULL,
  `repeat_weaks` varchar(11) DEFAULT NULL,
  `repeat_day_name` varchar(11) DEFAULT NULL,
  `repeat_how_many_months` varchar(11) DEFAULT NULL,
  `repeat_how_many_year` varchar(11) DEFAULT NULL,
  `repeat_by` varchar(11) DEFAULT NULL,
  `repeat_description` longtext,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `user_id`, `project_id`, `section_id`, `tags`, `title`, `description`, `notes`, `voice`, `reminder`, `date`, `month`, `time`, `task_expiration_date`, `priority`, `repeated`, `start_date`, `start_time`, `repeat_days`, `repeat_months`, `repeat_weaks`, `repeat_day_name`, `repeat_how_many_months`, `repeat_how_many_year`, `repeat_by`, `repeat_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 77, 26, 1, 'tag one', 'Hmazasas', 'A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, NULL, 'reminder one', '2021-10-14', '10', '09:40:10', NULL, 2, NULL, '2021-10-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 2, '2021-10-20 20:43:24', '2021-11-09 19:05:15'),
(23, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '08', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, 'repeat every 2 days', 1, '2021-10-26 19:01:57', '2021-10-26 19:01:57'),
(27, 77, NULL, NULL, NULL, 'pinky', 'pinky day', NULL, NULL, 'Today at 4:00 PM 28-Oct-2021', '2021-10-29', '10', '04:20:10', NULL, 1, NULL, '2021-10-29', '10:21:10', '2 days', 'March', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-10-28 14:21:13', '2021-10-29 16:19:09'),
(24, 77, NULL, NULL, NULL, 'high task', 'high taskk', NULL, NULL, 'Tomorrow at 09:00 AM 28-Oct-2021', '2021-10-29', '10', '05:20:10', NULL, 1, NULL, '2021-10-29', '17:20:10', '3 days', 'February', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-10-27 21:20:30', '2021-10-29 16:20:59'),
(25, 77, NULL, NULL, NULL, 'low task', 'low task', NULL, NULL, 'Tomorrow at 09:00 AM 28-Oct-2021', '2021-10-29', '10', '05:20:10', NULL, 3, NULL, '2021-10-29', '17:20:10', '2 days', 'February', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-27 21:20:59', '2021-10-27 21:20:59'),
(26, 77, NULL, NULL, NULL, 'no priority', 'no priority task', NULL, NULL, 'Tomorrow at 09:00 AM 28-Oct-2021', '2021-10-31', '10', '05:21:10', NULL, 4, NULL, '2021-10-31', '17:21:10', '2 days', 'March', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-27 21:21:39', '2021-10-27 21:21:39'),
(4, 77, 26, 1, 'tag one', 'Hmazasas', 'A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-20 20:51:08', '2021-10-20 20:51:08'),
(5, 77, 27, NULL, 'tag one', 'Hmazasas', 'A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-20 21:00:32', '2021-10-20 21:00:32'),
(6, 77, 28, NULL, 'tag one', 'Hmazasas', 'A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-20 21:00:49', '2021-10-20 21:00:49'),
(7, 77, 26, 1, 'tag one', 'Hmazasas', 'A paragraph is a group of related sentences that support one main idea. In general, paragraphs consist of three parts: the topic sentence, body sentences, and the concluding or the bridge sentence to the next paragraph or section.', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-21 19:24:59', '2021-10-21 19:24:59'),
(9, 77, NULL, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-25 15:19:04', '2021-10-25 15:19:04'),
(11, 77, 20, 1, NULL, 'todo', 'todo section task 1', NULL, NULL, 'Tomorrow at 09:00 AM 26-Oct-2021', '2021-10-29', '10', '05:20:10', NULL, 2, NULL, '2021-10-29', '15:59:10', '2 days', 'February', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-25 19:59:56', '2021-10-25 19:59:56'),
(12, 77, 20, NULL, NULL, 'project', 'project Todo taskk', NULL, NULL, 'Today at 6:00 PM 25-Oct-2021', '2021-10-28', '10', '05:00:01', NULL, 2, NULL, '2021-10-28', '16:06:10', '2 days', 'February', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-25 20:06:20', '2021-10-25 20:06:20'),
(13, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 15:46:59', '2021-10-26 15:46:59'),
(14, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 15:49:30', '2021-10-26 15:49:30'),
(15, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 15:51:44', '2021-10-26 15:51:44'),
(16, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, 'repeat every 2 days', 1, '2021-10-26 15:58:48', '2021-10-26 15:58:48'),
(17, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 15:59:56', '2021-10-26 15:59:56'),
(18, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 16:00:17', '2021-10-26 16:00:17'),
(19, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, NULL, 1, '2021-10-26 16:00:53', '2021-10-26 16:00:53'),
(20, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, 'repeat every 2 days', 1, '2021-10-26 16:01:57', '2021-10-26 16:01:57'),
(21, 77, NULL, NULL, NULL, 'haris', 'haris ejaz todo taskk', NULL, NULL, 'Today at 4:00 PM 26-Oct-2021', '2021-10-28', '10', '04:25:10', NULL, 2, NULL, '2021-10-28', '12:36:10', '4 days', 'March', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-26 16:36:43', '2021-10-26 16:36:43'),
(22, 77, NULL, NULL, NULL, 'ahmedd', 'ahmedd todo taskk', NULL, NULL, 'Today at 4:00 PM 26-Oct-2021', '2021-10-28', '10', '04:25:10', NULL, 2, NULL, '2021-10-28', '12:54:10', '4 days', 'April', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-10-26 16:55:13', '2021-10-26 16:55:13'),
(28, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2022-08-14', '8', '09:40:10', NULL, 3, NULL, '2022-08-14', '12:46:10', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, 'repeat every 2 days', 1, '2021-10-28 16:12:35', '2021-10-28 16:12:35'),
(29, 77, 8, 1, 'tag one', 'Haris task', 'task one of todo', NULL, NULL, 'reminder one', '2021-01-11', '01', '09:40:11', NULL, 3, NULL, '2021-01-11', '12:46:11', NULL, 'january', NULL, 'Monday', NULL, NULL, NULL, 'repeat every 2 days', 1, '2021-11-01 14:53:29', '2021-11-01 14:53:29'),
(30, 85, NULL, NULL, NULL, 'today', 'task test', NULL, NULL, 'Tomorrow at 09:00 AM 03-Nov-2021', '2021-11-03', '11', '07:14:11', NULL, 1, NULL, '2021-11-02', '17:14:11', '1 day', 'January', NULL, NULL, NULL, NULL, NULL, 'repeat every 1 day on 02-11-2021', 1, '2021-11-02 21:14:45', '2021-11-02 21:14:45'),
(31, 85, NULL, NULL, NULL, 'to', 'tody', NULL, NULL, 'Today at 6:00 PM 03-Nov-2021', '2021-11-03', '11', '09:59:11', NULL, 2, NULL, '2021-11-03', '10:00:11', '1 day', 'January', NULL, NULL, NULL, NULL, NULL, 'repeat every 1 day on 03-11-2021', 1, '2021-11-03 14:00:12', '2021-11-03 14:00:12'),
(32, 85, NULL, NULL, NULL, 'time chk', 'chke', NULL, NULL, 'Today at 6:00 PM 03-Nov-2021', '2021-11-03', '11', '11:35:11', NULL, 1, NULL, '2021-11-03', '10:36:11', '1 day', 'January', NULL, NULL, NULL, NULL, NULL, 'repeat every 1 day on 03-11-2021', 1, '2021-11-03 14:36:22', '2021-11-03 14:36:22'),
(33, 77, NULL, NULL, NULL, 'task 1', 'task1', NULL, NULL, 'Today at 4:00 PM 04-Nov-2021', '2021-11-25', '11', '05:00:01', NULL, 2, NULL, '2021-11-25', '10:08:11', NULL, 'February', NULL, NULL, NULL, NULL, 'Wednesday', 'repeat every 3 month on 04-11-2021', 2, '2021-11-04 14:09:02', '2021-11-04 14:13:03'),
(34, 77, NULL, NULL, NULL, 'haris ejaz', 'haris ejaz task', NULL, NULL, 'Tomorrow at 09:00 AM 05-Nov-2021', '2021-11-26', '11', '05:12:11', NULL, 2, NULL, '2021-11-26', '17:13:11', '3 days', 'February', NULL, NULL, NULL, NULL, NULL, 'repeat every 3 days on 04-11-2021', 2, '2021-11-04 21:13:15', '2021-11-04 21:16:50'),
(35, 77, NULL, NULL, NULL, 'haris', 'haris', NULL, NULL, 'Tomorrow at 09:00 AM 05-Nov-2021', '2021-11-30', '11', '04:23:11', NULL, 2, NULL, '2021-11-30', '17:23:11', '2 days', 'February', NULL, NULL, NULL, NULL, NULL, 'repeat every 2 days on 04-11-2021', 2, '2021-11-04 21:23:37', '2021-11-04 21:23:47'),
(36, 77, NULL, NULL, NULL, 'todo', 'todo task', NULL, NULL, 'Today at 6:00 PM 09-Nov-2021', '2021-11-24', '11', '05:33:11', NULL, 1, NULL, '2021-11-24', '09:33:11', '4 days', 'April', NULL, NULL, NULL, NULL, NULL, 'repeat every 4 days on 09-11-2021', 2, '2021-11-09 14:34:11', '2021-11-09 19:38:38'),
(37, 77, NULL, NULL, NULL, 'haris', 'haris ejaz task', NULL, NULL, 'Repeat On Monday Nov 15, 2021', '2021-11-18', '11', '04:25:11', NULL, 1, NULL, '2021-11-18', '11:00:11', '4 days', 'April', NULL, NULL, NULL, NULL, NULL, 'repeat every 4 days on 10-11-2021', 1, '2021-11-10 16:00:56', '2021-11-10 16:00:56'),
(38, 77, 10, NULL, NULL, 'project task', 'project', NULL, NULL, 'Tomorrow at 09:00 AM 11-Nov-2021', '2021-11-16', '11', '06:52:11', NULL, 2, NULL, '2021-11-16', '14:53:11', '4 days', 'February', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-11-10 19:53:12', '2021-11-10 19:53:33'),
(39, 77, 20, NULL, NULL, 'todo', 'todo', NULL, NULL, 'Tomorrow at 09:00 AM 11-Nov-2021', '2021-11-16', '11', '01:15:11', NULL, 1, NULL, '2021-11-16', '15:08:11', '2 days', 'May', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-10 20:08:50', '2021-11-10 20:08:50'),
(40, 77, 20, 2, NULL, 'how', 'hoefgh', NULL, NULL, 'Remind me On 6: 25 am  17-10-2021', '2021-11-30', '11', '06:36:11', NULL, 2, NULL, '2021-11-30', '15:36:11', '4 days', 'March', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-11-10 20:36:56', '2021-11-10 20:37:06'),
(41, 85, NULL, NULL, NULL, 'nasr', 'nasr', NULL, NULL, 'Today at 6:00 PM 10-Nov-2021', '2021-11-10', '11', '08:53:11', NULL, 2, NULL, '2021-11-10', '15:53:11', '1 day', 'January', NULL, NULL, NULL, NULL, NULL, 'repeat every 1 day on 10-11-2021', 2, '2021-11-10 20:54:02', '2021-11-10 20:57:02'),
(42, 77, NULL, NULL, NULL, 'todo', 'hdhzh', NULL, NULL, 'Some Day', '2021-11-25', '11', '05:20:11', NULL, 2, NULL, '2021-11-25', '15:58:11', '2 days', 'February', NULL, NULL, NULL, NULL, NULL, 'repeat every 2 days on 10-11-2021', 1, '2021-11-10 20:58:26', '2021-11-10 20:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_level` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `device_id`, `facebook_id`, `google_id`, `twitter_id`, `name`, `phone_number`, `email`, `email_verified_at`, `password`, `current_level`, `status`, `verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'phpbasic2ss019@gmail.com', NULL, '$2y$10$.QjmVm1Pe7eQJCp3vjJdLe0LUkCRkzL7laIvfp2fVSwEvwDxCUjQa', NULL, 1, 0, NULL, '2021-09-13 14:35:03', '2021-09-13 14:35:03'),
(2, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'phpbadsic2019@gmail.com', NULL, '$2y$10$tPaOdRK3ikjrxsTuOi5Vb.2BwMqRM/JjoAR2lBcvM2bBBXESqEm76', NULL, 1, 0, NULL, '2021-09-13 14:37:28', '2021-09-13 14:37:28'),
(3, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'phpbasic20d19@gmail.com', NULL, '$2y$10$8/l3bHXhL7BxSBjD/DziUOnS2Ap0VpKz1Y/rEfW.GrHtRGe/lx.5S', NULL, NULL, 0, NULL, '2021-09-13 14:47:21', '2021-09-13 14:47:21'),
(4, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'pdhpbadsic2019@gmail.com', NULL, '$2y$10$.ZrGLmmqEpc9J6y1RI4UTOS8NOvjKyggLt.qAR8Y2W8Z9jLcDX4i2', NULL, NULL, 0, NULL, '2021-09-13 14:47:50', '2021-09-13 14:47:50'),
(5, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'phpbasdic2019@gmail.com', NULL, '$2y$10$UMMhmsMpfUpK1mEbJaYTa.u7UIrWfHg.1XBEwwjO1941z/dQ/k2wC', NULL, NULL, 0, NULL, '2021-09-13 14:49:54', '2021-09-13 14:49:54'),
(6, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'phpbasissc2019@gmail.com', NULL, '$2y$10$nBEKwj4G6dMz27gYPg6Kt.Tfdwc34K/Ljcpf7QuCQDa/AWYwZaeIG', NULL, NULL, 0, NULL, '2021-09-13 14:51:29', '2021-09-22 13:07:42'),
(7, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasruslslahkhan1011@gmail.com', NULL, '$2y$10$CgsNjJeGnLu9ow2B0/RkWuNF6XJpqMstWbKoxkSYtcqI5VNJdZXG2', NULL, NULL, 0, NULL, '2021-09-13 14:54:09', '2021-09-13 14:54:09'),
(8, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasrulslahkhan1011@gmail.com', NULL, '$2y$10$2hbRmJrNGHOSCN5Aveb8L.oXVBZ9qMmxNZVRsXIdtpOak3MTeHOmO', NULL, NULL, 0, NULL, '2021-09-13 14:56:00', '2021-09-13 14:56:00'),
(9, '0', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasrullahkhan1011@gmail.com', NULL, '$2y$10$lhR9WLcOXum.ID69z9bTtOwEXj6vjQrdsaCMRLzsrO8ljegX/G4yK', NULL, NULL, 0, NULL, '2021-09-13 14:57:15', '2021-09-13 14:57:15'),
(10, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasrulddlahkhan1011@gmail.com', NULL, '$2y$10$dWfmUQf1EiDUkDr2Sqf5GO6XMg/WaBWpraNQ0uwY4h/gklrTb/kkm', NULL, NULL, 0, NULL, '2021-09-13 15:24:27', '2021-09-13 15:24:27'),
(11, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasrulddddlahkhan1011@gmail.com', NULL, '$2y$10$Kk2h2STBP3Lna4X.ks9bDOq9CjCSNzaoOGa/ln7p6hDEGEBoREb3u', NULL, NULL, 0, NULL, '2021-09-13 15:27:15', '2021-09-13 15:27:15'),
(12, '1', NULL, NULL, NULL, NULL, 'nasr', '2343324342', 'nasruldddddlahkhan1011@gmail.com', NULL, '$2y$10$QuyWdrpWXwx4oPklvzkHru3yY9JATLk5s6hPhVh6EvogvInmDeu4O', NULL, NULL, 0, NULL, '2021-09-13 15:27:42', '2021-09-13 15:27:42'),
(13, '1', NULL, NULL, NULL, NULL, 'nasr', '23423', 'abc@gmail.com', NULL, '$2y$10$LhLZofoLGnXXTOE3jJpdeewjK5A/cIqf/3Iq7wVbxhNGb/V0mL0jW', NULL, NULL, 0, NULL, '2021-09-13 16:01:29', '2021-09-13 16:01:29'),
(14, '1', NULL, NULL, NULL, NULL, 'nasr', '2345', 'abddddc@gmail.com', NULL, '$2y$10$qwdd.0bx9MbJBG1m1UHV5uSNhYD/mRrBSvE9AdnaBAI/cXNzV8YSO', NULL, NULL, 0, NULL, '2021-09-13 16:19:44', '2021-09-13 16:19:44'),
(15, '1', NULL, NULL, NULL, NULL, 'nasr', '232332', 'sddf@gmail.com', NULL, '$2y$10$T6XnYRwgypMR3DexmCpqu.PwLVt330.FqhjsvZp6qY4Strol7l/sS', NULL, NULL, 0, NULL, '2021-09-13 16:21:18', '2021-09-13 16:21:18'),
(16, '1', NULL, NULL, NULL, NULL, 'nasd', NULL, 'asdfsd@gmail.com', NULL, '$2y$10$Gc9w3r.oI6JdfVzbBs1Yre4z.6eUNTAYZJ.3Bk3DiROZ86Bxu0GzS', NULL, NULL, 0, NULL, '2021-09-13 16:28:18', '2021-09-13 16:28:18'),
(17, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssd@gmail.com', NULL, '$2y$10$GQtCj9H0Zw3EnxNdFi5SruDqiurMZfOiqPqyoKO64uM9ekZJDyFr.', NULL, NULL, 0, NULL, '2021-09-13 16:31:59', '2021-09-13 16:31:59'),
(18, '1', NULL, NULL, NULL, NULL, 'nasr', '23423', 'nasr@gmail.com', NULL, '$2y$10$J7NL/01tLTpLZQCMqtWeaugRFAMuZy3VOAaFM9LzbXavzfkhA7eWq', NULL, NULL, 0, NULL, '2021-09-14 09:08:35', '2021-09-14 09:08:35'),
(19, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssd@gmail.coms', NULL, '$2y$10$WaPJXDzvNm1nWte7SpkMXe9wTkJnfvjd6vAq/hx265GS4xELzutxC', NULL, NULL, 0, NULL, '2021-09-14 09:41:45', '2021-09-14 09:41:45'),
(20, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssd@gmail.comsd', NULL, '$2y$10$p2se1ugFCa78fDcaTvHVzu7E78QMKHCJvVCoSQF7i6SZBqtsWXd56', '3', 1, 0, NULL, '2021-09-14 13:17:06', '2021-09-14 13:17:06'),
(21, '0', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssdx@gmail.comsd', NULL, '$2y$10$HKFa8aVO/DYhl/59Z1AIUu3pighTw/JuBjqb5bPxs0sc3OVIHVvXi', '3', 1, 0, NULL, '2021-09-16 09:26:23', '2021-09-16 09:26:23'),
(22, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssb@gmail.com', NULL, '$2y$10$IvwZj3oz6YJ2.SLf2G4rmOFnjXm5fdOEIDtuaFRDeO.fg4KPkoC.y', '2', 1, 0, NULL, '2021-09-16 10:21:30', '2021-09-16 10:21:30'),
(23, '1', NULL, NULL, NULL, NULL, 'Ahmed', '279712390', 'razasyedahmed86@gmail.com', NULL, '$2y$10$b50Mmh0VGlI8Ax7tOruARu1Pjt3A6w.iE3yb8unkmVJOiDiDjgJZG', '1', 1, 0, NULL, '2021-09-16 16:25:18', '2021-09-16 16:25:18'),
(24, '1', NULL, NULL, NULL, NULL, 'Ahmed', '2797123904', 'razasyedahmed864@gmail.com', NULL, '$2y$10$.qzxDqAvgnDqBnhGSU3X8OUy26ADjdnwZ6pGfntWXy7xnerQkQcc2', '1', 1, 0, NULL, '2021-09-20 10:51:09', '2021-09-20 10:51:09'),
(25, '1', NULL, NULL, NULL, NULL, 'Ahmed8', '2797123908', 'razasyedahmed868@gmail.com', NULL, '$2y$10$owVP/q7lW8KuXBTJc7fXD.JrsLZWOkCZGnqOJytmzQt5yttWsvIty', '1', 1, 0, NULL, '2021-09-20 11:00:37', '2021-09-20 11:00:37'),
(26, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'asdfssdx1@gmail.comsd', NULL, '$2y$10$MnAcyV18eekGqAut7fPGWuYeILt7ICjVtjF1oRk2JhJFC/ZTgWpMq', NULL, NULL, 0, NULL, '2021-09-20 11:16:19', '2021-09-20 14:51:42'),
(59, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'engrnasrullaxh0786@gmail.com', NULL, '$2y$10$Pn61bf3eXrcTY./FRolXDeKLQJNyNk9BZoD/0N3DBlErFxh89hroW', NULL, 1, 0, NULL, '2021-09-22 13:20:47', '2021-09-22 13:20:47'),
(67, '1', NULL, NULL, NULL, NULL, 'jbinkn', '283535353535', 'gugug@yvuv.com', NULL, '$2y$10$sbcIN6rcnEcKVoKmjhfuEOY3zIAcJL5z38GsUSbuvegFE7m5xa6Yq', NULL, 1, 0, NULL, '2021-09-22 14:50:08', '2021-09-22 14:50:08'),
(68, '1', NULL, NULL, NULL, NULL, 'update name', '333333', 'updateemail@gmail.com', NULL, '$2y$10$GEGzEodjEE5JpXc4aQypU.3huDWk35uU3A0GgeCyx18lg68ha5Ij.', NULL, 1, 0, NULL, '2021-09-22 14:52:54', '2021-09-28 09:53:00'),
(69, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'engrnasrullah0786@gmail.com', NULL, '$2y$10$E0FUfwcqzlYBVj4ZY1lwZuPI/KTP3ZNdLRkDAFqzZCj84bYSgimsm', NULL, 1, 0, NULL, '2021-09-22 14:54:12', '2021-09-22 14:54:12'),
(70, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'engrnasrullddah0786@gmail.com', NULL, '$2y$10$Pl5glkYFyaUp7vA30lguOe/JbgUhTEY0ekfZjgxx2017NUWg5x36O', NULL, 1, 0, NULL, '2021-09-22 14:56:36', '2021-09-22 14:56:36'),
(77, '1', NULL, NULL, NULL, NULL, 'Haris Ejaz', '324234', 'harisejaz89@gmail.com', NULL, '$2y$10$Bcux4Va1sktdIeZQuo0T5uLZm4QLYQj6/Z0uRbeVDyKs.IXHNKTg6', NULL, 1, 0, NULL, '2021-09-22 15:50:17', '2021-09-30 10:44:34'),
(78, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'engrnasrudllddah0786@gmail.com', NULL, '$2y$10$p8FJsiZi6/mdohe7V.qrsON.3rDv.J4f6PnZBI.8QDAhG5KAu2IBm', NULL, 1, 0, NULL, '2021-09-23 08:56:12', '2021-09-23 08:56:12'),
(79, '1', NULL, NULL, NULL, NULL, 'nasd', '234423324', 'bbbbb@gmail.com', NULL, '$2y$10$0bTT0.0Ml8y1LYCbH6CdYumMdQ7mxusKW2zRjb6g096NZKKSXHa5O', NULL, 1, 0, NULL, '2021-09-23 11:32:52', '2021-09-23 11:32:52'),
(80, '1', NULL, NULL, NULL, NULL, 'nasrullah', '12345', 'sm-it@gmail.com', NULL, '$2y$10$83UXZFEVIXCavPK0nE/Un.ajQ5UlmW4eZPavi6oPwFSVQaFRPr4BW', NULL, 1, 0, NULL, '2021-09-23 14:11:58', '2021-09-23 14:11:58'),
(81, '1', NULL, NULL, NULL, NULL, 'nasrullah', '3223', 'testsss@gmail.com', NULL, '$2y$10$/i3H9SrTEvwaanX9T8TlauJpDxs3gr/gx.0Ozyftw/Z.1z8nlqVHC', NULL, 1, 0, NULL, '2021-09-23 14:23:07', '2021-09-23 14:23:07'),
(82, '1', NULL, NULL, NULL, NULL, 'nasrullah', '443343', 'nasrullahfffffkhan1011@gmail.com', NULL, '$2y$10$hWWPgNuZRvs5Mlmh6bW48eTO4TLpnn5gH8v1lIZRPoVlRubYp/zOK', NULL, 1, 0, NULL, '2021-09-23 14:34:50', '2021-09-23 14:34:50'),
(83, '1', NULL, NULL, NULL, NULL, 'nasrullah', '1234', 'phpbasic2019@gmail.com', NULL, '$2y$10$/myxVsOKhFT6K1EM31YCZ.jcsM84OB9RPIZlHRYD.2yHCb30IKlHq', NULL, 1, 0, NULL, '2021-09-23 14:36:14', '2021-09-23 14:36:14'),
(84, '1', NULL, NULL, NULL, NULL, 'haris', '03112797424', 'harsisejaz89@gmail.com', NULL, '$2y$10$iWWPBG.5QAYJ0iEyGyWLseAbh9MtsETjXXqszEyP54qEZBerzMLJC', '1', 1, 0, NULL, '2021-09-30 14:01:50', '2021-09-30 14:01:50'),
(85, '1', NULL, NULL, NULL, NULL, 'nasrullah', '03152401099', 'nasrullahkhan10111@gmail.com', NULL, '$2y$10$wxtNjCTjQ8kAy3.6y3BCFeoDGTofhBzn5Imr2.WSldMtiTTTTEPhe', '1', 1, 0, NULL, '2021-11-02 21:12:39', '2021-11-10 20:52:46'),
(86, '1', NULL, NULL, NULL, NULL, 'Fawad', '03478888888888888888', 'fawad@gmail.com', NULL, '$2y$10$a55tn1E7rp1HONrPac4WTeZ8GYmDu1X1B.VLgGQIq5bOF778etjW6', '1', 1, 0, NULL, '2021-11-10 20:53:29', '2021-11-10 20:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `grocery_categories`
--
ALTER TABLE `grocery_categories`
  ADD PRIMARY KEY (`grocery_category_id`);

--
-- Indexes for table `grocery_items`
--
ALTER TABLE `grocery_items`
  ADD PRIMARY KEY (`grocery_item_id`),
  ADD KEY `grocery_items_user_id_foreign` (`user_id`),
  ADD KEY `grocery_items_grocery_category_id_foreign` (`grocery_category_id`);

--
-- Indexes for table `grocery_lists`
--
ALTER TABLE `grocery_lists`
  ADD PRIMARY KEY (`grocery_list_id`);

--
-- Indexes for table `habits`
--
ALTER TABLE `habits`
  ADD PRIMARY KEY (`habit_id`),
  ADD KEY `habits_user_id_foreign` (`user_id`);

--
-- Indexes for table `habit_details`
--
ALTER TABLE `habit_details`
  ADD PRIMARY KEY (`habit_details_id`);

--
-- Indexes for table `habit_suggestions`
--
ALTER TABLE `habit_suggestions`
  ADD PRIMARY KEY (`habit_suggestion_id`);

--
-- Indexes for table `level_histories`
--
ALTER TABLE `level_histories`
  ADD PRIMARY KEY (`level_history_id`),
  ADD KEY `level_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `logs_details`
--
ALTER TABLE `logs_details`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `sub_tasks`
--
ALTER TABLE `sub_tasks`
  ADD PRIMARY KEY (`sub_task_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grocery_categories`
--
ALTER TABLE `grocery_categories`
  MODIFY `grocery_category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `grocery_items`
--
ALTER TABLE `grocery_items`
  MODIFY `grocery_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grocery_lists`
--
ALTER TABLE `grocery_lists`
  MODIFY `grocery_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `habits`
--
ALTER TABLE `habits`
  MODIFY `habit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `habit_details`
--
ALTER TABLE `habit_details`
  MODIFY `habit_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `habit_suggestions`
--
ALTER TABLE `habit_suggestions`
  MODIFY `habit_suggestion_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_histories`
--
ALTER TABLE `level_histories`
  MODIFY `level_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `logs_details`
--
ALTER TABLE `logs_details`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_tasks`
--
ALTER TABLE `sub_tasks`
  MODIFY `sub_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grocery_items`
--
ALTER TABLE `grocery_items`
  ADD CONSTRAINT `grocery_items_grocery_category_id_foreign` FOREIGN KEY (`grocery_category_id`) REFERENCES `grocery_categories` (`grocery_category_id`),
  ADD CONSTRAINT `grocery_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `habits`
--
ALTER TABLE `habits`
  ADD CONSTRAINT `habits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `level_histories`
--
ALTER TABLE `level_histories`
  ADD CONSTRAINT `level_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
