-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2023 at 09:10 PM
-- Server version: 8.0.32-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devgenius_ondemand`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_processes`
--

CREATE TABLE `account_processes` (
  `id` int NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_processes`
--

INSERT INTO `account_processes` (`id`, `icon`, `title`, `details`, `created_at`, `updated_at`) VALUES
(6, '3I1dKeWm1678786126.png', 'Enjoy the Service', '<p>Sit back, relax, and let our skilled professional take care of the task at hand. They will arrive promptly at the scheduled time and provide the service you requested.<br></p>', '2023-03-14 09:16:14', '2023-06-11 18:36:48'),
(7, 'p83DLD501678786214.png', 'Pick Your Schedule', '<p>After selecting a service provider, it\'s time to book an appointment. Choose a date and time that works best for you, and provide any specific instructions or requirements. <br></p>', '2023-03-14 09:30:14', '2023-06-11 18:37:25'),
(8, 'ty0gCeEx1678786289.png', 'Select The Service', 'Start by browsing through our wide range of services. You\'ll find various categories to choose from, such as home cleaning, handyman services, pet care, tutoring, and more. ', '2023-03-14 09:31:29', '2023-06-11 18:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` tinyint NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, 'jGGiHtPj1686563549.png', '$2y$10$NSxBfIBeDdxRjisT83p/0uN4GN4LcbYvKzuazAfyekwPffExwBUpO', 1, 'FTnQ7nfGcTrPMHRZ8HhtRc7xwJRm05kPFdweFrLmjSF5bxsLrdfjo7J4PYfm', '2018-02-28 23:27:08', '2023-06-12 22:52:29'),
(10, 'admin@gmail.com', 'farhadwts@gmail.com', '01779002302', 11, '6KSh1d7b1685265179.png', '$2y$10$B1sIQ7FVO.cDVqqw8OG46uR/yvpKQs01qPXzx/vLlWwulcLdWlc42', 1, NULL, '2023-05-28 22:12:59', '2023-05-28 22:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 1, 'En', '1603880510hWH6gk7S.json', '1603880510hWH6gk7S', 0, NULL, NULL),
(23, 0, 'BN', '1649840015gHLfDWu0.json', '1649840015gHLfDWu0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `user_id`, `ticket_number`, `subject`, `message`, `attachment`, `created_at`, `updated_at`) VALUES
(25, 86, '#TKT559332', 'asdfdsf', 'sadfasdfasd', 'ixgfzHA01682851252.jpg', '2023-04-30 10:40:52', '2023-04-30 10:40:52'),
(26, 99, '#TKT222827', 'Test Message', 'sdgfsdfdasf', 'suyN1YYA1683002129.jpg', '2023-05-02 04:35:29', '2023-05-02 04:35:29'),
(27, 102, NULL, 'xczxcc', 'zxczxcx', NULL, '2023-05-28 21:29:10', '2023-05-28 21:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `user_id`, `conversation_id`, `message`, `photo`, `created_at`, `updated_at`) VALUES
(48, 86, 25, 'sadfasdfasd', 'ixgfzHA01682851252.jpg', '2023-04-30 10:40:52', '2023-04-30 10:40:52'),
(49, 99, 26, 'sdgfsdfdasf', 'suyN1YYA1683002129.jpg', '2023-05-02 04:35:29', '2023-05-02 04:35:29'),
(50, 99, 26, 'Hello sir', NULL, '2023-05-02 04:41:49', '2023-05-02 04:41:49'),
(51, 102, 27, 'zxczxcx', NULL, '2023-05-28 21:29:10', '2023-05-28 21:29:10'),
(55, 86, 25, 'sdasdasd', NULL, '2023-06-04 18:14:19', '2023-06-04 18:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int NOT NULL,
  `country_id` int NOT NULL,
  `city_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `country_id`, `city_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 'Uttara-sector-10', 1, '2023-01-30 09:28:56', '2023-01-30 09:29:39'),
(2, 19, 3, 'Kandirpar', 1, '2023-02-02 09:47:24', '2023-02-02 09:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(41, 12, 'The Rise of On-Demand Services: Simplifying Your Life, One Task at a Time', 'the-rise-of-ondemand-services-simplifying-your-life-one-task-at-a-time', '<p>In today\'s fast-paced world, time is a precious commodity. People are constantly seeking ways to simplify their lives and save valuable time. This growing need has given rise to the popularity of on-demand services. From home cleaning to grocery delivery and everything in between, on-demand services have become an integral part of our modern lifestyle. In this blog post, we will explore the rise of on-demand services, their benefits, and how they are revolutionizing the way we approach daily tasks.</p><p><br></p><p>The Convenience Factor:</p><p>On-demand services offer unmatched convenience. Gone are the days of spending hours searching for service providers or waiting in long queues. With just a few taps on a mobile app or clicks on a website, you can access a wide range of services tailored to your needs. Whether you need a plumber, a personal trainer, or a massage therapist, you can have them at your doorstep within hours.</p><p><br></p><p>Time-Saving Solutions:</p><p>Time is a valuable resource, and on-demand services help us reclaim it. Instead of spending weekends cleaning the house or running errands, you can delegate these tasks to professionals while you focus on more important things in life. On-demand services allow you to free up time for family, hobbies, self-care, or simply enjoying moments of relaxation.</p><p><br></p><p>Access to Expertise:</p><p>One of the significant advantages of on-demand services is access to a pool of skilled professionals. Service providers undergo rigorous screening processes, ensuring that they possess the necessary qualifications and experience. Whether you need a specialized repair or assistance with a complex task, you can rely on the expertise of these professionals to get the job done efficiently.</p><p><br></p><p>Increased Flexibility:</p><p>On-demand services provide flexibility in terms of scheduling and availability. Whether you require assistance during regular working hours or late at night, many on-demand platforms operate 24/7 to cater to your needs. This flexibility allows you to fit services into your busy schedule without disrupting your routine.</p><p><br></p><p>Enhanced Transparency and Trust:</p><p>On-demand service platforms prioritize transparency and trust. They provide detailed information about service providers, including reviews, ratings, and past customer experiences. This transparency helps you make informed decisions and choose professionals who align with your requirements and expectations. Additionally, most platforms offer secure payment systems, ensuring that you only pay for satisfactory services.</p><p><br></p><p>The Gig Economy and Job Creation:</p><p>On-demand services have also contributed to the growth of the gig economy. Many individuals now have the opportunity to become independent service providers and earn a living on their terms. This has created a new avenue for job opportunities, empowering individuals to utilize their skills and talents while providing convenience to customers.</p>', 'pSmjbECF1686473172.jpg', 'https://dev.geniusocean.net/ondemand', 3, 1, NULL, NULL, 'blog,blog-post,blogs', '2023-06-11 21:46:12'),
(42, 12, 'The Evolution of On-Demand Services: Reshaping the Way We Live and Work', 'the-evolution-of-ondemand-services-reshaping-the-way-we-live-and-work', '<p>The world is evolving at a rapid pace, driven by technological advancements and changing consumer demands. One of the significant transformations we\'ve witnessed in recent years is the rise of on-demand services. These services have revolutionized the way we live and work, offering convenience, efficiency, and flexibility like never before. In this blog post, we will delve into the evolution of on-demand services, exploring their impact on various industries and the ways they are reshaping our daily lives.</p><p><br></p><p>The Emergence of On-Demand Economy:</p><p>The on-demand economy has emerged as a result of technological innovations and the desire for instant gratification. This new economic model leverages mobile applications and digital platforms to connect service providers directly with consumers. From transportation and food delivery to home services and professional expertise, on-demand services span a wide range of industries, offering quick access to services at the tap of a button.</p><p><br></p><p>Transforming Traditional Industries:</p><p>On-demand services have disrupted traditional industries and challenged conventional business models. For example, ridesharing platforms have transformed the transportation industry, providing convenient alternatives to traditional taxis. Similarly, food delivery services have changed the way we order and enjoy meals, offering a vast selection of cuisines delivered right to our doorsteps. These disruptions have sparked innovation, improved efficiency, and enhanced the overall customer experience.</p><p><br></p><p>Empowering Service Providers:</p><p>On-demand services have empowered individuals to become entrepreneurs and independent service providers. Through platforms that facilitate gig work, individuals can leverage their skills and expertise to offer services on their terms. This flexible work arrangement allows them to create their own schedules, pursue multiple income streams, and achieve a better work-life balance.</p><p><br></p><p>Consumer-Centric Convenience:</p><p>One of the key benefits of on-demand services is the unparalleled convenience they offer consumers. Whether it\'s getting a ride, ordering groceries, or hiring a personal trainer, on-demand platforms provide instant access to services, saving valuable time and effort. The ability to request services anytime, anywhere has elevated customer expectations and reshaped our perception of convenience.</p><p><br></p><p>Enhancing Efficiency and Productivity:</p><p>On-demand services have streamlined processes, enabling individuals and businesses to operate more efficiently. For instance, businesses can quickly hire freelancers for specific projects, eliminating the need for lengthy recruitment processes. Individuals can outsource tasks that are outside their area of expertise, freeing up time to focus on core responsibilities. This increased efficiency and productivity have a ripple effect on our personal and professional lives.</p><p><br></p><p>Building Trust and Transparency:</p><p>Trust and transparency are critical components of successful on-demand service platforms. Reviews, ratings, and user feedback systems play a vital role in building trust between service providers and consumers. These mechanisms help ensure quality standards, improve service delivery, and hold providers accountable for their performance. Trust and transparency are the foundation of long-term relationships between service providers and their customers.</p>', 'vZ17INGf1686474111.jpg', 'https://dev.geniusocean.net/ondemand', 0, 1, NULL, NULL, 'ondemand,blogs,blog', '2023-06-11 22:01:51'),
(44, 13, 'The Power of On-Demand Services: Redefining Convenience and Efficiency', 'the-power-of-ondemand-services-redefining-convenience-and-efficiency', '<p>The world is evolving at a rapid pace, driven by technological advancements and changing consumer demands. One of the significant transformations we\'ve witnessed in recent years is the rise of on-demand services. These services have revolutionized the way we live and work, offering convenience, efficiency, and flexibility like never before. In this blog post, we will delve into the evolution of on-demand services, exploring their impact on various industries and the ways they are reshaping our daily lives.</p><p><br></p><p><br></p><p><br></p><p>The Emergence of On-Demand Economy:</p><p><br></p><p>The on-demand economy has emerged as a result of technological innovations and the desire for instant gratification. This new economic model leverages mobile applications and digital platforms to connect service providers directly with consumers. From transportation and food delivery to home services and professional expertise, on-demand services span a wide range of industries, offering quick access to services at the tap of a button.</p><p><br></p><p><br></p><p><br></p><p>Transforming Traditional Industries:</p><p><br></p><p>On-demand services have disrupted traditional industries and challenged conventional business models. For example, ridesharing platforms have transformed the transportation industry, providing convenient alternatives to traditional taxis. Similarly, food delivery services have changed the way we order and enjoy meals, offering a vast selection of cuisines delivered right to our doorsteps. These disruptions have sparked innovation, improved efficiency, and enhanced the overall customer experience.</p><p><br></p><p><br></p><p><br></p><p>Empowering Service Providers:</p><p><br></p><p>On-demand services have empowered individuals to become entrepreneurs and independent service providers. Through platforms that facilitate gig work, individuals can leverage their skills and expertise to offer services on their terms. This flexible work arrangement allows them to create their own schedules, pursue multiple income streams, and achieve a better work-life balance.</p><p><br></p><p><br></p><p><br></p><p>Consumer-Centric Convenience:</p><p><br></p><p>One of the key benefits of on-demand services is the unparalleled convenience they offer consumers. Whether it\'s getting a ride, ordering groceries, or hiring a personal trainer, on-demand platforms provide instant access to services, saving valuable time and effort. The ability to request services anytime, anywhere has elevated customer expectations and reshaped our perception of convenience.</p><p><br></p><p><br></p><p><br></p><p>Enhancing Efficiency and Productivity:</p><p><br></p><p>On-demand services have streamlined processes, enabling individuals and businesses to operate more efficiently. For instance, businesses can quickly hire freelancers for specific projects, eliminating the need for lengthy recruitment processes. Individuals can outsource tasks that are outside their area of expertise, freeing up time to focus on core responsibilities. This increased efficiency and productivity have a ripple effect on our personal and professional lives.</p><p><br></p><p><br></p><p><br></p><p>Building Trust and Transparency:</p><p><br></p><p>Trust and transparency are critical components of successful on-demand service platforms. Reviews, ratings, and user feedback systems play a vital role in building trust between service providers and consumers. These mechanisms help ensure quality standards, improve service delivery, and hold providers accountable for their performance. Trust and transparency are the foundation of long-term relationships between service providers and their customers.</p>', 'ZRMNEYIg1686474550.jpg', 'https://dev.geniusocean.net/ondemand', 0, 1, NULL, NULL, 'blog,blogs,blog-post', '2023-06-11 22:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(12, 'Services', 'Services'),
(13, 'Jobs', 'Jobs');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_seller_messages`
--

CREATE TABLE `buyer_seller_messages` (
  `id` bigint NOT NULL,
  `seller_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_type` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `service_id` bigint DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci,
  `attachment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_seller_messages`
--

INSERT INTO `buyer_seller_messages` (`id`, `seller_id`, `buyer_id`, `user_type`, `work_type`, `job_id`, `service_id`, `message`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 86, 99, 'buyer', 'job', 2, NULL, 'Hello sir.', NULL, NULL, NULL),
(2, 86, 99, 'seller', 'job', 2, NULL, 'Hello, How can i help you?', NULL, NULL, NULL),
(3, 86, 99, 'buyer', 'job', 3, NULL, 'sdftgfdgsdf', NULL, NULL, NULL),
(4, 86, 99, 'seller', 'job', 3, NULL, 'asdfsdfads', NULL, NULL, NULL),
(5, 86, 99, 'seller', 'service', NULL, 3, 'Hello, I am Seller.', NULL, NULL, NULL),
(6, 86, 99, 'seller', 'service', NULL, 3, 'Hello', NULL, NULL, NULL),
(7, 86, 99, 'seller', 'service', NULL, 3, 'Are you there?', NULL, NULL, NULL),
(8, 86, 99, 'buyer', 'service', NULL, 3, 'xfgsdfgsdfg', NULL, NULL, NULL),
(9, 86, 99, 'seller', 'job', 4, NULL, 'Hello', NULL, NULL, NULL),
(10, 86, 99, 'buyer', 'job', 4, NULL, 'fgsdfgsfdg', NULL, NULL, NULL),
(11, 86, 99, 'seller', 'job', 4, NULL, 'fsdfdf', NULL, NULL, NULL),
(12, 86, 99, 'seller', 'job', 4, NULL, 'dsdsfsd', '/tmp/php7cJ0la', NULL, NULL),
(13, 86, 99, 'seller', 'service', NULL, 4, 'asdasda', '/tmp/php0HY8hi', NULL, NULL),
(14, 86, 99, 'seller', 'service', NULL, 4, 'ewrwer', '/tmp/php7Q2N17', NULL, NULL),
(15, 86, 99, 'seller', 'service', NULL, 4, 'bxcvxcvxc', '/tmp/phpecRagu', NULL, NULL),
(16, 86, 99, 'seller', 'job', 4, NULL, 'sadasd', '1685958162.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `color`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Home Clean', 'home-clean', '#000000', 'WZOlERR51686111200.png', 1, '2023-01-17 11:46:45', '2023-06-07 17:13:20'),
(4, 'Car & Care', 'car-and-care', '#1b676b', 'zETqD7VA1686111159.png', 1, '2023-03-07 05:27:35', '2023-06-07 17:12:39'),
(5, 'AC Servicing', 'ac-servicing', '#ff6635', 'KYBdzOAY1686111137.png', 1, '2023-03-07 05:29:09', '2023-06-07 17:12:17'),
(14, 'Kitchen Cleaner', 'kitchen-cleaner', '#e9eaee', 'ECLJxSUI1686111295.png', 1, '2023-06-07 17:14:55', '2023-06-07 23:41:01'),
(15, 'Water Tank Clean', 'water-tank-clean', '#ce1567', 'jVYTqoeE1686113613.png', 1, '2023-06-07 17:53:33', '2023-06-07 23:40:27'),
(16, 'Office Clean', 'office-clean', '#76b51b', 'uJ4EOxGl1686134284.png', 1, '2023-06-07 23:38:04', '2023-06-07 23:40:09'),
(17, 'Online Services', 'online-services', '#000000', '8lzxFI3g1686544160.png', 1, '2023-06-12 17:29:20', '2023-06-12 17:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `country_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, 'Dhaka', 1, NULL, NULL),
(3, 19, 'Comilla', 1, NULL, NULL),
(4, 228, 'Taiwan-city-one', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` int NOT NULL,
  `commision_from` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commision_charge` double NOT NULL,
  `commission_method` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `commision_from`, `commision_charge`, `commission_method`, `created_at`, `updated_at`) VALUES
(1, 'seller', 13, 'joborder', NULL, NULL),
(2, 'seller', 13.175675675676, 'joborder', NULL, NULL),
(3, 'seller', 7.5, 'serviceorder', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `count` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `count`, `created_at`, `updated_at`) VALUES
(1, 'Deposit', '235', '2022-02-20 22:56:47', '2022-04-09 06:01:56'),
(3, 'Total Wallet', '30', '2022-02-20 23:15:03', '2022-04-09 06:01:21'),
(4, 'Happy Users', '56', '2022-02-20 23:16:18', '2023-06-11 18:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` int NOT NULL,
  `postcode_required` tinyint NOT NULL DEFAULT '0',
  `is_eu` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso2`, `iso3`, `phone_code`, `postcode_required`, `is_eu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', 'AND', 376, 0, 0, 0, NULL, NULL),
(2, 'United Arab Emirates', 'AE', 'ARE', 971, 0, 0, 0, NULL, NULL),
(3, 'Afghanistan', 'AF', 'AFG', 93, 0, 0, 0, NULL, NULL),
(4, 'Antigua and Barbuda', 'AG', 'ATG', 1268, 0, 0, 0, NULL, NULL),
(5, 'Anguilla', 'AI', 'AIA', 1264, 0, 0, 0, NULL, NULL),
(6, 'Albania', 'AL', 'ALB', 355, 0, 0, 0, NULL, NULL),
(7, 'Armenia', 'AM', 'ARM', 374, 0, 0, 0, NULL, NULL),
(8, 'Angola', 'AO', 'AGO', 244, 0, 0, 0, NULL, NULL),
(9, 'Antarctica', 'AQ', 'ATA', 672, 0, 0, 0, NULL, NULL),
(10, 'Argentina', 'AR', 'ARG', 54, 0, 0, 0, NULL, NULL),
(11, 'American Samoa', 'AS', 'ASM', 1684, 0, 0, 0, NULL, NULL),
(12, 'Austria', 'AT', 'AUT', 43, 0, 0, 0, NULL, NULL),
(13, 'Australia', 'AU', 'AUS', 61, 0, 0, 0, NULL, NULL),
(14, 'Aruba', 'AW', 'ABW', 297, 0, 0, 0, NULL, NULL),
(15, 'Åland Islands', 'AX', 'ALA', 0, 0, 0, 0, NULL, NULL),
(16, 'Azerbaijan', 'AZ', 'AZE', 994, 0, 0, 0, NULL, NULL),
(17, 'Bosnia and Herzegovina', 'BA', 'BIH', 387, 0, 0, 0, NULL, NULL),
(18, 'Barbados', 'BB', 'BRB', 1246, 0, 0, 0, NULL, NULL),
(19, 'Bangladesh', 'BD', 'BGD', 880, 0, 0, 1, NULL, '2022-06-01 10:25:09'),
(20, 'Belgium', 'BE', 'BEL', 32, 0, 0, 0, NULL, NULL),
(21, 'Burkina Faso', 'BF', 'BFA', 226, 0, 0, 0, NULL, NULL),
(22, 'Bulgaria', 'BG', 'BGR', 359, 0, 0, 0, NULL, NULL),
(23, 'Bahrain', 'BH', 'BHR', 973, 0, 0, 0, NULL, NULL),
(24, 'Burundi', 'BI', 'BDI', 257, 0, 0, 0, NULL, NULL),
(25, 'Benin', 'BJ', 'BEN', 229, 0, 0, 0, NULL, NULL),
(26, 'Saint Barthélemy', 'BL', 'BLM', 0, 0, 0, 0, NULL, NULL),
(27, 'Bermuda', 'BM', 'BMU', 1441, 0, 0, 0, NULL, NULL),
(28, 'Brunei Darussalam', 'BN', 'BRN', 673, 0, 0, 0, NULL, NULL),
(29, 'Bolivia', 'BO', 'BOL', 591, 0, 0, 0, NULL, NULL),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 0, 0, 0, 0, NULL, NULL),
(31, 'Brazil', 'BR', 'BRA', 55, 0, 0, 0, NULL, NULL),
(32, 'Bahamas', 'BS', 'BHS', 1242, 0, 0, 0, NULL, NULL),
(33, 'Bhutan', 'BT', 'BTN', 975, 0, 0, 0, NULL, NULL),
(34, 'Bouvet Island', 'BV', 'BVT', 44, 0, 0, 0, NULL, NULL),
(35, 'Botswana', 'BW', 'BWA', 267, 0, 0, 0, NULL, NULL),
(36, 'Belarus', 'BY', 'BLR', 375, 0, 0, 0, NULL, NULL),
(37, 'Belize', 'BZ', 'BLZ', 501, 0, 0, 0, NULL, NULL),
(38, 'Canada', 'CA', 'CAN', 1, 0, 0, 0, NULL, NULL),
(39, 'Cocos (Keeling) Islands', 'CC', 'CCK', 61, 0, 0, 0, NULL, NULL),
(40, 'Congo (Democratic Republic of the)', 'CD', 'COD', 243, 0, 0, 0, NULL, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 236, 0, 0, 0, NULL, NULL),
(42, 'Congo', 'CG', 'COG', 242, 0, 0, 0, NULL, NULL),
(43, 'Switzerland', 'CH', 'CHE', 41, 0, 0, 0, NULL, NULL),
(44, 'Ivory Coast', 'CI', 'CIV', 225, 0, 0, 0, NULL, NULL),
(45, 'Cook Islands', 'CK', 'COK', 682, 0, 0, 0, NULL, NULL),
(46, 'Chile', 'CL', 'CHL', 56, 0, 0, 0, NULL, NULL),
(47, 'Cameroon', 'CM', 'CMR', 237, 0, 0, 0, NULL, NULL),
(48, 'China', 'CN', 'CHN', 86, 0, 0, 0, NULL, NULL),
(49, 'Colombia', 'CO', 'COL', 57, 0, 0, 0, NULL, NULL),
(50, 'Costa Rica', 'CR', 'CRI', 506, 0, 0, 0, NULL, NULL),
(51, 'Cuba', 'CU', 'CUB', 53, 0, 0, 0, NULL, NULL),
(52, 'Cape Verde', 'CV', 'CPV', 238, 0, 0, 0, NULL, NULL),
(53, 'Curaçao', 'CW', 'CUW', 0, 0, 0, 0, NULL, NULL),
(54, 'Christmas Island', 'CX', 'CXR', 61, 0, 0, 0, NULL, NULL),
(55, 'Cyprus', 'CY', 'CYP', 357, 0, 0, 0, NULL, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 420, 0, 0, 0, NULL, NULL),
(57, 'Germany', 'DE', 'DEU', 49, 0, 0, 0, NULL, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 253, 0, 0, 0, NULL, NULL),
(59, 'Denmark', 'DK', 'DNK', 45, 0, 0, 0, NULL, NULL),
(60, 'Dominica', 'DM', 'DMA', 1767, 0, 0, 0, NULL, NULL),
(61, 'Dominican Republic', 'DO', 'DOM', 1809, 0, 0, 0, NULL, NULL),
(62, 'Algeria', 'DZ', 'DZA', 213, 0, 0, 0, NULL, NULL),
(63, 'Ecuador', 'EC', 'ECU', 593, 0, 0, 0, NULL, NULL),
(64, 'Estonia', 'EE', 'EST', 372, 0, 0, 0, NULL, NULL),
(65, 'Egypt', 'EG', 'EGY', 20, 0, 0, 0, NULL, NULL),
(66, 'Western Sahara', 'EH', 'ESH', 0, 0, 0, 0, NULL, NULL),
(67, 'Eritrea', 'ER', 'ERI', 291, 0, 0, 0, NULL, NULL),
(68, 'Spain', 'ES', 'ESP', 34, 0, 0, 0, NULL, NULL),
(69, 'Ethiopia', 'ET', 'ETH', 251, 0, 0, 0, NULL, NULL),
(70, 'Finland', 'FI', 'FIN', 358, 0, 0, 0, NULL, NULL),
(71, 'Fiji', 'FJ', 'FJI', 679, 0, 0, 0, NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 500, 0, 0, 0, NULL, NULL),
(73, 'Micronesia (Federated States of)', 'FM', 'FSM', 691, 0, 0, 0, NULL, NULL),
(74, 'Faroe Islands', 'FO', 'FRO', 298, 0, 0, 0, NULL, NULL),
(75, 'France', 'FR', 'FRA', 33, 0, 0, 0, NULL, NULL),
(76, 'Gabon', 'GA', 'GAB', 241, 0, 0, 0, NULL, NULL),
(77, 'United Kingdom', 'GB', 'GBR', 44, 1, 0, 0, NULL, NULL),
(78, 'Grenada', 'GD', 'GRD', 1473, 0, 0, 0, NULL, NULL),
(79, 'Georgia', 'GE', 'GEO', 995, 0, 0, 0, NULL, NULL),
(80, 'French Guiana', 'GF', 'GUF', 594, 0, 0, 0, NULL, NULL),
(81, 'Guernsey', 'GG', 'GGY', 0, 0, 0, 0, NULL, NULL),
(82, 'Ghana', 'GH', 'GHA', 233, 0, 0, 0, NULL, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 350, 0, 0, 0, NULL, NULL),
(84, 'Greenland', 'GL', 'GRL', 299, 0, 0, 0, NULL, NULL),
(85, 'Gambia', 'GM', 'GMB', 220, 0, 0, 0, NULL, NULL),
(86, 'Guinea', 'GN', 'GIN', 224, 0, 0, 0, NULL, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 590, 0, 0, 0, NULL, NULL),
(88, 'Equatorial Guinea', 'GQ', 'GNQ', 240, 0, 0, 0, NULL, NULL),
(89, 'Greece', 'GR', 'GRC', 30, 0, 0, 0, NULL, NULL),
(90, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 44, 0, 0, 0, NULL, NULL),
(91, 'Guatemala', 'GT', 'GTM', 502, 0, 0, 0, NULL, NULL),
(92, 'Guam', 'GU', 'GUM', 1671, 0, 0, 0, NULL, NULL),
(93, 'Guinea-Bissau', 'GW', 'GNB', 245, 0, 0, 0, NULL, NULL),
(94, 'Guyana', 'GY', 'GUY', 592, 0, 0, 0, NULL, NULL),
(95, 'Hong Kong', 'HK', 'HKG', 852, 0, 0, 0, NULL, NULL),
(96, 'Heard Island and McDonald Islands', 'HM', 'HMD', 44, 0, 0, 0, NULL, NULL),
(97, 'Honduras', 'HN', 'HND', 504, 0, 0, 0, NULL, NULL),
(98, 'Croatia (Hrvatska)', 'HR', 'HRV', 385, 0, 0, 0, NULL, NULL),
(99, 'Haiti', 'HT', 'HTI', 509, 0, 0, 0, NULL, NULL),
(100, 'Hungary', 'HU', 'HUN', 36, 0, 0, 0, NULL, NULL),
(101, 'Indonesia', 'ID', 'IDN', 62, 0, 0, 0, NULL, NULL),
(102, 'Ireland', 'IE', 'IRL', 353, 0, 0, 0, NULL, NULL),
(103, 'Israel', 'IL', 'ISR', 972, 0, 0, 0, NULL, NULL),
(104, 'Isle of Man', 'IM', 'IMN', 0, 0, 0, 0, NULL, NULL),
(105, 'India', 'IN', 'IND', 91, 0, 0, 0, NULL, NULL),
(106, 'British Indian Ocean Territory', 'IO', 'IOT', 0, 0, 0, 0, NULL, NULL),
(107, 'Iraq', 'IQ', 'IRQ', 964, 0, 0, 0, NULL, NULL),
(108, 'Iran (Islamic Republic of)', 'IR', 'IRN', 98, 0, 0, 0, NULL, NULL),
(109, 'Iceland', 'IS', 'ISL', 354, 0, 0, 0, NULL, NULL),
(110, 'Italy', 'IT', 'ITA', 39, 0, 0, 0, NULL, NULL),
(111, 'Jersey', 'JE', 'JEY', 0, 0, 0, 0, NULL, NULL),
(112, 'Jamaica', 'JM', 'JAM', 1876, 0, 0, 0, NULL, NULL),
(113, 'Jordan', 'JO', 'JOR', 962, 0, 0, 0, NULL, NULL),
(114, 'Japan', 'JP', 'JPN', 81, 0, 0, 0, NULL, NULL),
(115, 'Kenya', 'KE', 'KEN', 254, 0, 0, 0, NULL, NULL),
(116, 'Kyrgyzstan', 'KG', 'KGZ', 996, 0, 0, 0, NULL, NULL),
(117, 'Cambodia', 'KH', 'KHM', 855, 0, 0, 0, NULL, NULL),
(118, 'Kiribati', 'KI', 'KIR', 686, 0, 0, 0, NULL, NULL),
(119, 'Comoros', 'KM', 'COM', 269, 0, 0, 0, NULL, NULL),
(120, 'Saint Kitts and Nevis', 'KN', 'KNA', 1869, 0, 0, 0, NULL, NULL),
(121, 'Korea (Democratic People\'s Republic of)', 'KP', 'PRK', 850, 0, 0, 0, NULL, NULL),
(122, 'Korea (Republic of)', 'KR', 'KOR', 82, 0, 0, 0, NULL, NULL),
(123, 'Kuwait', 'KW', 'KWT', 965, 0, 0, 0, NULL, NULL),
(124, 'Cayman Islands', 'KY', 'CYM', 1345, 0, 0, 0, NULL, NULL),
(125, 'Kazakhstan', 'KZ', 'KAZ', 7, 0, 0, 0, NULL, NULL),
(126, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 856, 0, 0, 0, NULL, NULL),
(127, 'Lebanon', 'LB', 'LBN', 961, 0, 0, 0, NULL, NULL),
(128, 'Saint Lucia', 'LC', 'LCA', 1758, 0, 0, 0, NULL, NULL),
(129, 'Liechtenstein', 'LI', 'LIE', 423, 0, 0, 0, NULL, NULL),
(130, 'Sri Lanka', 'LK', 'LKA', 94, 0, 0, 0, NULL, NULL),
(131, 'Liberia', 'LR', 'LBR', 231, 0, 0, 0, NULL, NULL),
(132, 'Lesotho', 'LS', 'LSO', 266, 0, 0, 0, NULL, NULL),
(133, 'Lithuania', 'LT', 'LTU', 370, 0, 0, 0, NULL, NULL),
(134, 'Luxembourg', 'LU', 'LUX', 352, 0, 0, 0, NULL, NULL),
(135, 'Latvia', 'LV', 'LVA', 371, 0, 0, 0, NULL, NULL),
(136, 'Libya', 'LY', 'LBY', 218, 0, 0, 0, NULL, NULL),
(137, 'Morocco', 'MA', 'MAR', 212, 0, 0, 0, NULL, NULL),
(138, 'Monaco', 'MC', 'MCO', 377, 0, 0, 0, NULL, NULL),
(139, 'Moldova (Republic of)', 'MD', 'MDA', 373, 0, 0, 0, NULL, NULL),
(140, 'Montenegro', 'ME', 'MNE', 382, 0, 0, 0, NULL, NULL),
(141, 'Saint Martin (French part)', 'MF', 'MAF', 0, 0, 0, 0, NULL, NULL),
(142, 'Madagascar', 'MG', 'MDG', 261, 0, 0, 0, NULL, NULL),
(143, 'Marshall Islands', 'MH', 'MHL', 692, 0, 0, 0, NULL, NULL),
(144, 'Macedonia', 'MK', 'MKD', 389, 0, 0, 0, NULL, NULL),
(145, 'Mali', 'ML', 'MLI', 223, 0, 0, 0, NULL, NULL),
(146, 'Myanmar', 'MM', 'MMR', 95, 0, 0, 0, NULL, NULL),
(147, 'Mongolia', 'MN', 'MNG', 976, 0, 0, 0, NULL, NULL),
(148, 'Macau', 'MO', 'MAC', 853, 0, 0, 0, NULL, NULL),
(149, 'Northern Mariana Islands', 'MP', 'MNP', 1670, 0, 0, 0, NULL, NULL),
(150, 'Martinique', 'MQ', 'MTQ', 596, 0, 0, 0, NULL, NULL),
(151, 'Mauritania', 'MR', 'MRT', 222, 0, 0, 0, NULL, NULL),
(152, 'Montserrat', 'MS', 'MSR', 1664, 0, 0, 0, NULL, NULL),
(153, 'Malta', 'MT', 'MLT', 356, 0, 0, 0, NULL, NULL),
(154, 'Mauritius', 'MU', 'MUS', 230, 0, 0, 0, NULL, NULL),
(155, 'Maldives', 'MV', 'MDV', 960, 0, 0, 0, NULL, NULL),
(156, 'Malawi', 'MW', 'MWI', 265, 0, 0, 0, NULL, NULL),
(157, 'Mexico', 'MX', 'MEX', 52, 0, 0, 0, NULL, NULL),
(158, 'Malaysia', 'MY', 'MYS', 60, 0, 0, 0, NULL, NULL),
(159, 'Mozambique', 'MZ', 'MOZ', 258, 0, 0, 0, NULL, NULL),
(160, 'Namibia', 'NA', 'NAM', 264, 0, 0, 0, NULL, NULL),
(161, 'New Caledonia', 'NC', 'NCL', 687, 0, 0, 0, NULL, NULL),
(162, 'Niger', 'NE', 'NER', 227, 0, 0, 0, NULL, NULL),
(163, 'Norfolk Island', 'NF', 'NFK', 672, 0, 0, 0, NULL, NULL),
(164, 'Nigeria', 'NG', 'NGA', 234, 0, 0, 0, NULL, NULL),
(165, 'Nicaragua', 'NI', 'NIC', 505, 0, 0, 0, NULL, NULL),
(166, 'Netherlands', 'NL', 'NLD', 31, 0, 0, 0, NULL, NULL),
(167, 'Norway', 'NO', 'NOR', 47, 0, 0, 0, NULL, NULL),
(168, 'Nepal', 'NP', 'NPL', 977, 0, 0, 0, NULL, NULL),
(169, 'Nauru', 'NR', 'NRU', 674, 0, 0, 0, NULL, NULL),
(170, 'Niue', 'NU', 'NIU', 683, 0, 0, 0, NULL, NULL),
(171, 'New Zealand', 'NZ', 'NZL', 64, 0, 0, 0, NULL, NULL),
(172, 'Oman', 'OM', 'OMN', 968, 0, 0, 0, NULL, NULL),
(173, 'Panama', 'PA', 'PAN', 507, 0, 0, 0, NULL, NULL),
(174, 'Peru', 'PE', 'PER', 51, 0, 0, 0, NULL, NULL),
(175, 'French Polynesia', 'PF', 'PYF', 689, 0, 0, 0, NULL, NULL),
(176, 'Papua New Guinea', 'PG', 'PNG', 675, 0, 0, 0, NULL, NULL),
(177, 'Philippines', 'PH', 'PHL', 63, 0, 0, 0, NULL, NULL),
(178, 'Pakistan', 'PK', 'PAK', 92, 0, 0, 0, NULL, NULL),
(179, 'Poland', 'PL', 'POL', 48, 0, 0, 0, NULL, NULL),
(180, 'Saint Pierre and Miquelon', 'PM', 'SPM', 508, 0, 0, 0, NULL, NULL),
(181, 'Pitcairn', 'PN', 'PCN', 870, 0, 0, 0, NULL, NULL),
(182, 'Puerto Rico', 'PR', 'PRI', 1, 0, 0, 0, NULL, NULL),
(183, 'Palestine, State of', 'PS', 'PSE', 0, 0, 0, 0, NULL, NULL),
(184, 'Portugal', 'PT', 'PRT', 351, 0, 0, 0, NULL, NULL),
(185, 'Palau', 'PW', 'PLW', 680, 0, 0, 0, NULL, NULL),
(186, 'Paraguay', 'PY', 'PRY', 595, 0, 0, 0, NULL, NULL),
(187, 'Qatar', 'QA', 'QAT', 974, 0, 0, 0, NULL, NULL),
(188, 'Reunion', 'RE', 'REU', 262, 0, 0, 0, NULL, NULL),
(189, 'Romania', 'RO', 'ROU', 40, 0, 0, 0, NULL, NULL),
(190, 'Serbia', 'RS', 'SRB', 381, 0, 0, 0, NULL, NULL),
(191, 'Russian Federation', 'RU', 'RUS', 7, 0, 0, 0, NULL, NULL),
(192, 'Rwanda', 'RW', 'RWA', 250, 0, 0, 0, NULL, NULL),
(193, 'Saudi Arabia', 'SA', 'SAU', 966, 0, 0, 0, NULL, NULL),
(194, 'Solomon Islands', 'SB', 'SLB', 677, 0, 0, 0, NULL, NULL),
(195, 'Seychelles', 'SC', 'SYC', 248, 0, 0, 0, NULL, NULL),
(196, 'Sudan', 'SD', 'SDN', 249, 0, 0, 0, NULL, NULL),
(197, 'Sweden', 'SE', 'SWE', 46, 0, 0, 0, NULL, NULL),
(198, 'Singapore', 'SG', 'SGP', 65, 0, 0, 0, NULL, NULL),
(199, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 290, 0, 0, 0, NULL, NULL),
(200, 'Slovenia', 'SI', 'SVN', 386, 0, 0, 0, NULL, NULL),
(201, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 0, 0, 0, 0, NULL, NULL),
(202, 'Slovakia', 'SK', 'SVK', 421, 0, 0, 0, NULL, NULL),
(203, 'Sierra Leone', 'SL', 'SLE', 232, 0, 0, 0, NULL, NULL),
(204, 'San Marino', 'SM', 'SMR', 378, 0, 0, 0, NULL, NULL),
(205, 'Senegal', 'SN', 'SEN', 221, 0, 0, 0, NULL, NULL),
(206, 'Somalia', 'SO', 'SOM', 252, 0, 0, 0, NULL, NULL),
(207, 'Suriname', 'SR', 'SUR', 597, 0, 0, 0, NULL, NULL),
(208, 'South Sudan', 'SS', 'SSD', 0, 0, 0, 0, NULL, NULL),
(209, 'Sao Tome and Principe', 'ST', 'STP', 239, 0, 0, 0, NULL, NULL),
(210, 'El Salvador', 'SV', 'SLV', 503, 0, 0, 0, NULL, NULL),
(211, 'Sint Maarten (Dutch part)', 'SX', 'SXM', 0, 0, 0, 0, NULL, NULL),
(212, 'Syrian Arab Republic', 'SY', 'SYR', 963, 0, 0, 0, NULL, NULL),
(213, 'Swaziland', 'SZ', 'SWZ', 268, 0, 0, 0, NULL, NULL),
(214, 'Turks and Caicos Islands', 'TC', 'TCA', 1649, 0, 0, 0, NULL, NULL),
(215, 'Chad', 'TD', 'TCD', 235, 0, 0, 0, NULL, NULL),
(216, 'French Southern Territories', 'TF', 'ATF', 44, 0, 0, 0, NULL, NULL),
(217, 'Togo', 'TG', 'TGO', 228, 0, 0, 0, NULL, NULL),
(218, 'Thailand', 'TH', 'THA', 66, 0, 0, 0, NULL, NULL),
(219, 'Tajikistan', 'TJ', 'TJK', 992, 0, 0, 0, NULL, NULL),
(220, 'Tokelau', 'TK', 'TKL', 690, 0, 0, 0, NULL, NULL),
(221, 'Timor-Leste', 'TL', 'TLS', 670, 0, 0, 0, NULL, NULL),
(222, 'Turkmenistan', 'TM', 'TKM', 993, 0, 0, 0, NULL, NULL),
(223, 'Tunisia', 'TN', 'TUN', 216, 0, 0, 0, NULL, NULL),
(224, 'Tonga', 'TO', 'TON', 676, 0, 0, 0, NULL, NULL),
(225, 'Turkey', 'TR', 'TUR', 90, 0, 0, 0, NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', 'TTO', 1868, 0, 0, 0, NULL, NULL),
(227, 'Tuvalu', 'TV', 'TUV', 688, 0, 0, 0, NULL, NULL),
(228, 'Taiwan', 'TW', 'TWN', 886, 0, 0, 1, NULL, '2022-06-29 22:06:59'),
(229, 'Tanzania, United Republic of', 'TZ', 'TZA', 255, 0, 0, 0, NULL, NULL),
(230, 'Ukraine', 'UA', 'UKR', 380, 0, 0, 0, NULL, NULL),
(231, 'Uganda', 'UG', 'UGA', 256, 0, 0, 1, NULL, '2023-05-28 18:45:05'),
(232, 'United States Minor Outlying Islands', 'UM', 'UMI', 44, 0, 0, 0, NULL, NULL),
(233, 'United States of America', 'US', 'USA', 1, 0, 0, 0, NULL, NULL),
(234, 'Uruguay', 'UY', 'URY', 598, 0, 0, 0, NULL, NULL),
(235, 'Uzbekistan', 'UZ', 'UZB', 998, 0, 0, 0, NULL, NULL),
(236, 'Vatican City State', 'VA', 'VAT', 39, 0, 0, 0, NULL, NULL),
(237, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1784, 0, 0, 0, NULL, NULL),
(238, 'Venezuela', 'VE', 'VEN', 58, 0, 0, 0, NULL, NULL),
(239, 'Virgin Islands (British)', 'VG', 'VGB', 1284, 0, 0, 0, NULL, NULL),
(240, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1340, 0, 0, 0, NULL, NULL),
(241, 'Viet Nam', 'VN', 'VNM', 84, 0, 0, 0, NULL, NULL),
(242, 'Vanuatu', 'VU', 'VUT', 678, 0, 0, 0, NULL, NULL),
(243, 'Wallis and Futuna', 'WF', 'WLF', 681, 0, 0, 0, NULL, NULL),
(244, 'Samoa', 'WS', 'WSM', 685, 0, 0, 0, NULL, NULL),
(245, 'Yemen', 'YE', 'YEM', 967, 0, 0, 1, NULL, '2022-06-29 22:07:02'),
(246, 'Mayotte', 'YT', 'MYT', 262, 0, 0, 0, NULL, NULL),
(247, 'South Africa', 'ZA', 'ZAF', 27, 0, 0, 0, NULL, NULL),
(248, 'Zambia', 'ZM', 'ZMB', 260, 0, 0, 0, NULL, '2022-06-29 22:06:19'),
(249, 'Zimbabwe', 'ZW', 'ZWE', 263, 0, 0, 1, NULL, '2023-01-16 05:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 82.92649841308594, 0),
(6, 'EUR', '€', 0.864870011806488, 0),
(8, 'NGN', '₦', 410.94, 0),
(9, 'INR', '₹', 74, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int NOT NULL,
  `deposit_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `coin_amount` double DEFAULT NULL,
  `notify_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('pending','complete') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `deposit_number`, `user_id`, `amount`, `coin_amount`, `notify_id`, `currency_id`, `txnid`, `method`, `charge_id`, `status`, `created_at`, `updated_at`) VALUES
(187, 'pGwiLkyr4KaP', 99, 200, NULL, NULL, 1, 'txn_3MdAKXJlIV5dN9n705IzWCGr', 'stripe', 'ch_3MdAKXJlIV5dN9n70g1jv0E1', 'complete', '2023-02-19 10:41:18', '2023-02-19 10:41:18'),
(188, 'qrS2d2ZrQ5yg', 99, 50, NULL, NULL, 1, 'txn_3MdAkJJlIV5dN9n70V8C4Zuc', 'stripe', 'ch_3MdAkJJlIV5dN9n70REQ3zuZ', 'complete', '2023-02-19 11:07:55', '2023-02-19 11:07:55'),
(189, 'GWCNvNe12WRU', 99, 20, NULL, NULL, 1, 'QWRERQWETQWERQERQWE', 'Manual', NULL, 'pending', '2023-02-19 11:16:19', '2023-02-19 11:16:19'),
(190, 'DDv0JKQWA7JQ', 99, 10, NULL, NULL, 1, 'styteyertyety', 'Manual', NULL, 'pending', '2023-02-19 11:20:32', '2023-02-19 11:20:32'),
(191, 'bnEMHmYJ5j8v', 99, 10, NULL, NULL, 1, '1LW26768TH4139502', 'paypal', NULL, 'complete', '2023-02-20 03:46:25', '2023-02-20 03:48:12'),
(192, 'qJSJ9yGyjPNF', 99, 1, NULL, NULL, 9, NULL, 'paytm', NULL, 'pending', '2023-02-20 05:47:09', '2023-02-20 05:47:09'),
(193, '3CkHhtWQIFKv', 99, 1, NULL, NULL, 9, NULL, 'paytm', NULL, 'pending', '2023-02-20 05:49:52', '2023-02-20 05:49:52'),
(194, 'hDqJCtemDDtX', 99, 1, NULL, NULL, 9, NULL, 'paytm', NULL, 'pending', '2023-02-20 06:11:52', '2023-02-20 06:11:52'),
(195, 'C0zXdTRtrqi9', 99, 1, NULL, NULL, 9, '20230220111212800110168745504531694', 'paytm', NULL, 'complete', '2023-02-20 06:19:33', '2023-02-20 06:19:48'),
(196, 'Gwr8LsHEDPbs', 99, 1, NULL, NULL, NULL, 'order_LIbUt3UYHJHuUQ', 'razorpay', NULL, 'complete', '2023-02-20 06:44:05', '2023-02-20 06:44:05'),
(197, 'niRWQxaG8E5l', 99, 1, NULL, NULL, NULL, 'order_LId8xR4r4vVOmo', 'razorpay', NULL, 'complete', '2023-02-20 08:20:18', '2023-02-20 08:20:18'),
(198, 'niRWQxaG8E5l', 99, 1, NULL, NULL, NULL, 'order_LId8xR4r4vVOmo', 'razorpay', NULL, 'complete', '2023-02-20 08:21:38', '2023-02-20 08:21:38'),
(199, 'vgkK2JdMyihy', 99, 1, NULL, NULL, 1, NULL, 'authorize.net', NULL, 'complete', '2023-02-20 09:01:38', '2023-02-20 09:01:38'),
(200, 'rjK2PxgOlhLL', 99, 1, NULL, NULL, 1, NULL, 'authorize.net', NULL, 'complete', '2023-02-20 09:07:42', '2023-02-20 09:07:42'),
(201, 'ULjhZcov9Ud9', 99, 1, NULL, NULL, 1, NULL, 'flutterwave', NULL, 'complete', '2023-02-20 09:27:39', '2023-02-20 09:29:55'),
(202, 'zJ4gxTuUJgcg', 86, 10, NULL, NULL, 1, 'txn_3Mut5PJlIV5dN9n718NoiHRp', 'stripe', 'ch_3Mut5PJlIV5dN9n71tRzw0fn', 'complete', '2023-04-09 07:54:56', '2023-04-09 07:54:56'),
(203, '3ROJ7t7rjYrp', 86, 10, NULL, NULL, 1, 'txn_3Mut6WJlIV5dN9n71GcBOGib', 'stripe', 'ch_3Mut6WJlIV5dN9n7178v3Dkm', 'complete', '2023-04-09 07:56:05', '2023-04-09 07:56:05'),
(204, 'wp0ca4Sfo7gE', 99, 5, NULL, NULL, 1, 'txn_3MvFlZJlIV5dN9n71Vaq7JhV', 'stripe', 'ch_3MvFlZJlIV5dN9n71M9HiXSA', 'complete', '2023-04-10 08:07:57', '2023-04-10 08:07:57'),
(205, 'rngLYkQBiKMO', 99, 10, NULL, NULL, 1, '1NL96681D2096583P', 'paypal', NULL, 'complete', '2023-05-03 05:00:19', '2023-05-03 05:01:36'),
(206, 's7pDB6XqASkP', 86, 100, NULL, NULL, 1, 'txn_3NCxiXJlIV5dN9n70aN7flT6', 'stripe', 'ch_3NCxiXJlIV5dN9n70jspU0Ts', 'complete', '2023-05-29 17:30:02', '2023-05-29 17:30:02'),
(207, 'DDNCY9qbabem', 86, 100, NULL, NULL, 1, 'txn_3NCxiyJlIV5dN9n70LG6WWOk', 'stripe', 'ch_3NCxiyJlIV5dN9n70KGHocs4', 'complete', '2023-05-29 17:30:29', '2023-05-29 17:30:29'),
(208, '1cG2iVL6rVlS', 86, 1.3513513513514, NULL, NULL, 9, NULL, 'paytm', NULL, 'pending', '2023-06-04 18:09:45', '2023-06-04 18:09:45'),
(209, 'PIYOj3VSkbJ1', 86, 13.513513513514, NULL, NULL, 9, 'c01e783b703c48a682495dbe95cd2117', 'instamojo', NULL, 'complete', '2023-06-04 18:10:55', '2023-06-04 18:10:55'),
(210, 'uZ0wi1uEXCZB', 86, 1.3513513513514, NULL, NULL, NULL, 'order_LxjV9h2fO0RVF4', 'razorpay', NULL, 'complete', '2023-06-04 18:12:25', '2023-06-04 18:12:25'),
(211, 'FI0kSZBEPBWy', 99, 1.3264758805087, NULL, NULL, 4, '123456789', 'Manual', NULL, 'pending', '2023-06-12 19:18:18', '2023-06-12 19:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int NOT NULL,
  `email_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8mb3_unicode_ci,
  `email_body` longtext COLLATE utf8mb3_unicode_ci,
  `sms` longtext COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `sms`, `status`) VALUES
(1, 'welcome', 'Welcome to our website.', '<p>Hello {customer_name},<br>Your registration successfully completed.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your registration successfully completed.</p><p>Thank You<br></p>', 1),
(2, 'credited', 'Your Account has been credited', '<p>Hello {customer_name},<br>Your account has been credited by admin.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your account has been credited by admin.</p><p>Thank You<br></p>', 1),
(3, 'plan', 'Your have purchased a Plan', '<p>Hello {customer_name},<br>You have Purchased new Subscription.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>You have Purchased new Subscription.</p><p>Thank You<br></p>', 1),
(4, 'Withdraw', 'Your withdraw is completed successfully.', '<p>Hello {customer_name},<br>Your withdraw is completed successfully.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your withdraw is completed successfully.</p><p>Thank You<br></p>', 1),
(5, 'Deposit', 'You have invested successfully.', '<p>Hello {customer_name},<br>You have deposited successfully.</p><p>Transaction ID:&nbsp;<span style=\"color: rgb(33, 37, 41);\">{order_number}.</span></p><p>Thank You.</p>', '<p>Hello {customer_name},<br>You have deposited successfully.</p><p>Transaction ID:&nbsp;<span style=\"color: rgb(33, 37, 41);\">{order_number}.</span></p><p>Thank You.</p>', 1),
(6, 'Service Order', 'Your invest successfully completed.', '<p>Hello {customer_name},<br>Your invest successfully completed.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your invest successfully completed.</p><p>Thank You<br></p>', 1),
(7, 'password changed', 'Your password has been changed', '<p>Hello {customer_name},<br>Your password has been changed successfully.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your password has been changed successfully.</p><p>Thank You<br></p>', 1),
(8, 'profile update', 'Your profile has been update', '<p>Hello {customer_name},<br>Your profile has been updated successfully.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>Your profile has been updated successfully.</p><p>Thank You<br></p>', 1),
(9, 'job order', 'job order', '<p>Hello {customer_name},<br>You got bonus from referral.</p><p>Thank You<br></p>', '<p>Hello {customer_name},<br>You got bonus from referral.</p><p>Thank You<br></p>', 1),
(10, 'balance transfer', 'Balance Transfer', '<p>Hello {customer_name},<br>You got amount from your friend.</p><p>Thank You!<br></p>', '<p>Hello {customer_name},<br>You got amount from your friend.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', 'Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\r\n \r\nFacilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!', 1),
(3, 'Man particular insensible celebrated', 'Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\r\n \r\nFacilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!', 1),
(4, 'Qui ducimus praesentium ullam voluptatem?', 'Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\r\n \r\nFacilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!', 0),
(5, 'Sunt soluta laborum dolore voluptas natus?', 'Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\r\n\r\n Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!', 0),
(6, 'Possimus expedita dolorum fugit mollitia, optio quo?', 'Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\r\n \r\nFacilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `details`, `icon`) VALUES
(8, 'Daily Profit', 'We take great care in selecting and vetting our service providers. Each professional undergoes a thorough screening process.', 'fas fa-money-check-alt'),
(9, 'Special Security', 'We understand the importance of trust and privacy. That\'s why we employ robust security measures to protect your personal information.', 'fas fa-user-secret'),
(10, 'Extreme Support', 'Your satisfaction is our utmost priority. We value your feedback and continuously work to improve our platform and services based on your input.', 'fas fa-cog'),
(11, 'Ensuring Masks', '<span style=\"font-size:15px;\">We believe in transparency, especially when it comes to pricing. Our platform provides clear and upfront pricing information for each service.</span><br>', 'fas fa-ambulance');

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `font_family`, `font_value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Rubik', 'Rubik', 0, '2021-09-07 22:34:28', '2023-05-28 22:18:50'),
(2, 'Roboto', 'Roboto', 1, '2021-09-07 22:35:10', '2023-05-28 22:18:50'),
(3, 'New Tegomin', 'New+Tegomin', 0, '2021-09-07 22:35:23', '2023-05-28 22:18:50'),
(5, 'Open Sans', 'Open+Sans', 0, '2021-09-07 22:44:49', '2023-05-28 22:18:50'),
(11, 'Manrope', 'Manrope', 0, '2022-03-03 09:24:26', '2023-05-28 22:18:50'),
(12, 'Teko', 'Teko', 0, '2023-05-16 09:48:07', '2023-05-28 22:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `day_of` longtext COLLATE utf8mb4_unicode_ci,
  `withdraw_status` tinyint NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_currency` tinyint(1) NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe_success` text COLLATE utf8mb4_unicode_ci,
  `subscribe_error` text COLLATE utf8mb4_unicode_ci,
  `error_title` text COLLATE utf8mb4_unicode_ci,
  `error_text` text COLLATE utf8mb4_unicode_ci,
  `error_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcumb_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` double NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `gap_limit` int NOT NULL DEFAULT '300',
  `isWallet` tinyint NOT NULL DEFAULT '0',
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pm` tinyint DEFAULT '0',
  `cc_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_account_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_default_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_status` tinyint NOT NULL DEFAULT '0',
  `nexmo_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_default_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_status` tinyint NOT NULL DEFAULT '0',
  `send_sms` tinyint NOT NULL DEFAULT '1',
  `two_factor` tinyint NOT NULL DEFAULT '0',
  `kyc` tinyint NOT NULL DEFAULT '0',
  `menu` text COLLATE utf8mb4_unicode_ci,
  `module_section` longtext COLLATE utf8mb4_unicode_ci,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ssl` tinyint NOT NULL DEFAULT '0',
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_price` double DEFAULT NULL,
  `is_cookie` tinyint DEFAULT '1',
  `cookie_button` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `loader`, `admin_loader`, `banner`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `is_maintain`, `maintain_text`, `day_of`, `withdraw_status`, `smtp_host`, `smtp_port`, `smtp_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_currency`, `currency_format`, `subscribe_success`, `subscribe_error`, `error_title`, `error_text`, `error_photo`, `breadcumb_banner`, `is_admin_loader`, `currency_code`, `currency_sign`, `is_verification_email`, `withdraw_fee`, `withdraw_charge`, `is_affilate`, `affilate_charge`, `affilate_banner`, `gap_limit`, `isWallet`, `footer_logo`, `is_pm`, `cc_api_key`, `twilio_account_sid`, `twilio_auth_token`, `twilio_default_number`, `twilio_status`, `nexmo_key`, `nexmo_secret`, `nexmo_default_number`, `nexmo_status`, `send_sms`, `two_factor`, `kyc`, `menu`, `module_section`, `phone_code`, `is_ssl`, `latitude`, `longitude`, `version`, `time_zone`, `commission_type`, `commission_price`, `is_cookie`, `cookie_button`, `cookie_text`) VALUES
(1, '7FcQfcQH1678794760.svg', 'bIHzvrD81684232725.png', 'TCEHrsgg1680596180.gif', 'waBwQZw01680596187.gif', '1563350277herobg.jpg', 'Ondemand Service', 'Info@example.com', '0123 456789', 'On-demand services cover a wide range of sectors, including transportation, food delivery, home services, healthcare, and more.', 'COPYRIGHT © 2023. Created By <a href=\"http://geniusocean.com/\">GeniusOcean.com</a>', '#d5a953', 1, '5bc2019c61d0b77092512d03', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 1, 'Ondemand', 1, 1, 0, 'Website under Maintenance', NULL, 1, 'sandbox.smtp.mailtrap.io', '2525', 'tls', 'c5bc263e846474', '62ca63bc4e51a6', 'ondemandService@gmail.com', 'GeniusOcean!', 0, 1, 0, 'You are subscribed Successfully.', 'This email has already been taken.', 'OOPS ! ... PAGE NOT FOUND!', 'THE PAGE YOU ARE LOOKING FOR MIGHT HAVE BEEN REMOVED, HAD ITS NAME CHANGED, OR IS TEMPORARILY UNAVAILABLE.', 'FYUN139M1684233219.png', '4NZAAyYV1678858677.png', 1, 'USD', '$', 0, 5, 5, 1, 5, '16406712051566471347add.jpg', 3000, 1, 'ZErUqyqk1678094670.svg', 1, 'cdb2163c-91cc-4fa6-b3fc-7de11bdcdf1a', 'ACd265bfb214658e0a059aad4df96a9543', '0df1506100f991f8c9b144c745e9b133', '19793786208', 0, 'ba9111b8', 'cgxbAg4KnE80bcKx', '01976814812', 1, 1, 1, 1, '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"Plans\":{\"title\":\"Plans\",\"dropdown\":\"no\",\"href\":\"\\/plans\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"no\",\"href\":\"\\/about\",\"target\":\"self\"},\"Blog\":{\"title\":\"Blog\",\"dropdown\":\"no\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"All-Jobs\":{\"title\":\"All Jobs\",\"dropdown\":\"no\",\"href\":\"\\/all\\/jobs\",\"target\":\"self\"},\"All-Services\":{\"title\":\"All Services\",\"dropdown\":\"no\",\"href\":\"\\/all\\/services\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"no\",\"href\":\"\\/contact\",\"target\":\"self\"}}', 'Deposits , Job Order', '+880', 0, '23.8759', '90.3795', '2.0', 'Asia/Dhaka', '1', 5, 1, 'Accept Cookie', '<p><b>This website collects cookies to deliver better user experience</b><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `jobrequests`
--

CREATE TABLE `jobrequests` (
  `id` bigint NOT NULL,
  `job_id` bigint DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `job_type` tinyint DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seller_offer` double DEFAULT NULL,
  `buyer_offer` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `hired_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobrequests`
--

INSERT INTO `jobrequests` (`id`, `job_id`, `buyer_id`, `seller_id`, `job_type`, `job_title`, `seller_offer`, `buyer_offer`, `description`, `hired_status`, `created_at`, `updated_at`) VALUES
(4, 5, 99, 86, 1, 'Branding your company with us at reasonable price.', 263.51, 250, 'Obtain pain of because is pain, but because you nally circumstances more than some work um soluta nobis est eligendi optio cumque nihil impedit quo minus id quodOne advanced diverted domestic repeated bringing you old. Possible procured her trifling', 1, '2023-05-11 04:52:40', '2023-05-11 05:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `job_country_id` int DEFAULT NULL,
  `job_city_id` int DEFAULT NULL,
  `job_area_id` int DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_slug` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `is_service_available` tinyint NOT NULL DEFAULT '1',
  `budget` double DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  `is_job_online` tinyint DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  `request` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category_id`, `subcategory_id`, `buyer_id`, `job_country_id`, `job_city_id`, `job_area_id`, `job_title`, `job_slug`, `description`, `image`, `status`, `is_service_available`, `budget`, `deadline`, `is_job_online`, `views`, `request`, `created_at`, `updated_at`) VALUES
(5, 17, NULL, 99, 0, 0, 0, 'Need Content Writers for a Big Projects', 'Need-Content-Writers-for-a-Big-Projects', 'Content writing involves the creation and development of written material for various purposes, such as websites, blogs, articles, social media, marketing collateral, and more. The goal of content writing is to engage readers, convey information effectively, and achieve specific objectives, such as educating, entertaining, or persuading the target audience. Here is a description of content writing services:\n\n\"Our content writing services are designed to help businesses and individuals communicate their message effectively and engage their target audience through compelling written content. We have a team of experienced and skilled writers who specialize in crafting high-quality, engaging, and well-researched content across various industries and niches.\n\nWhether you need website content, blog articles, product descriptions, press releases, social media posts, or any other form of written material, our team can deliver content that meets your specific requirements. We understand the importance of aligning content with your brand\'s tone, voice, and target audience, and we strive to create content that resonates with your readers and supports your business goals.\n\nOur content writing process begins with a thorough understanding of your objectives, target audience, and key messaging. We collaborate closely with you to gather information, conduct research, and develop a clear content strategy that aligns with your goals. We can work with your existing ideas or assist you in brainstorming and developing fresh content concepts.', '1686547781.jpg', 1, 1, 250, '2023-08-28 07:00:00', 1, 0, 0, '2023-04-10 09:57:07', '2023-06-12 18:39:15'),
(6, 17, NULL, 99, 0, 0, 0, 'Professional Web designer for Business Website', 'Professional-Web-designer-for-Business-Website', 'Our website design process begins with a thorough understanding of your business objectives, target audience, and brand identity. We collaborate closely with you to gather your requirements, preferences, and any specific features or functionalities you desire. Our team conducts comprehensive research to analyze your industry, competitors, and user expectations, ensuring that your website stands out and meets the latest design trends and best practices.\n\nUsing cutting-edge design tools and technologies, we create visually appealing website layouts that reflect your brand\'s personality and values. We pay meticulous attention to detail, ensuring that the design elements, color schemes, typography, and imagery align with your brand identity and resonate with your target audience.\n\nOur team of skilled developers then takes the design concept and transforms it into a fully functional website. We utilize industry-standard coding languages and frameworks to build responsive websites that seamlessly adapt to different screen sizes and devices. Our development process focuses on ensuring fast loading times, smooth navigation, and optimized performance to enhance the user experience.', '1686548332.jpg', 1, 1, 200, '2023-10-12 07:00:00', 1, 0, 0, '2023-06-12 18:38:52', '2023-06-12 18:39:12'),
(7, 17, NULL, 99, 19, 1, 1, 'Branding your company with us by Professionals', 'Branding-your-company-with-us-by-Professionals', 'Branding is the strategic process of creating and shaping a unique identity and perception for a product, service, company, or individual. It involves crafting a cohesive and consistent brand image, positioning, and messaging to differentiate oneself from competitors and establish a meaningful connection with the target audience. Here is a description of branding:\n\n\"At its core, branding is the art and science of creating a distinct and memorable identity that resonates with your target audience. It goes beyond just a logo or a tagline; it encompasses every touchpoint and interaction that your audience has with your brand.\n\nThrough careful research and analysis, we delve deep into understanding your business goals, target market, values, and unique selling propositions. We collaborate closely with you to develop a comprehensive branding strategy that captures the essence of your brand and aligns with your long-term vision.', '1686548440.jpg', 1, 1, 100, '2023-10-12 07:00:00', 0, 0, 0, '2023-06-12 18:40:40', '2023-06-12 21:14:02'),
(9, 17, NULL, 99, 0, 0, 0, 'Need PowerPoint Specialist for 25 or more Slides', 'Need-Powerpoint-Specialist-for-25-or-more-Slides', 'We are seeking a talented and detail-oriented PowerPoint Specialist to join our team. As a PowerPoint Specialist, you will be responsible for creating visually engaging and impactful presentations that effectively convey information and captivate our audience. Your expertise in PowerPoint design, layout, and storytelling will play a vital role in enhancing our brand\'s communication and overall success.\n\nResponsibilities:\n\nCollaborate with various teams and stakeholders to understand their presentation needs and objectives.\nDevelop creative and visually appealing PowerPoint presentations that align with our brand guidelines and visual identity.\nUtilize your design skills to create visually compelling slides, incorporating appropriate graphics, images, and animations to enhance the message and engage the audience.\nTransform complex information and data into easily understandable and visually appealing charts, graphs, and infographics.\nEnsure consistency in design elements, color schemes, fonts, and formatting throughout the presentation.\nEdit and enhance existing presentations to improve their visual impact and effectiveness.\nStay updated with the latest design trends, tools, and techniques to continuously improve the quality of our presentations.\nCollaborate with colleagues to develop templates, guidelines, and best practices for creating consistent and professional presentations across the organization.\nMaintain a high level of attention to detail, ensuring accuracy, grammar, and proofreading of all presentation materials.\nManage multiple projects and meet deadlines while maintaining the highest quality standards.\nRequirements:\n\nProven experience as a PowerPoint Specialist or similar role, showcasing a strong portfolio of visually appealing and effective presentations.\nProficient in using Microsoft PowerPoint and other relevant software tools.\nExcellent design skills with a keen eye for aesthetics, layout, and typography.\nSolid understanding of visual communication principles, storytelling, and data visualization techniques.\nStrong knowledge of graphic design principles and best practices.\nAbility to work collaboratively with cross-functional teams and stakeholders, incorporating their feedback while maintaining the project\'s vision.\nExcellent time management and organizational skills, with the ability to prioritize and handle multiple projects simultaneously.\nStrong attention to detail, ensuring accuracy and quality in all deliverables.\nExcellent communication skills, both written and verbal.\nKnowledge of additional design software, such as Adobe Creative Suite, is a plus.\nJoin our team as a PowerPoint Specialist and utilize your design skills to create impactful presentations that drive our business forward. Your creative approach and attention to detail will be instrumental in delivering visually stunning and compelling presentations to our clients and stakeholders.', '1686559148.jpg', 1, 1, 2.41, '2023-11-11 07:00:00', 1, 0, 0, '2023-06-12 21:39:08', '2023-06-12 21:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_orders`
--

CREATE TABLE `job_orders` (
  `id` bigint NOT NULL,
  `job_id` bigint DEFAULT NULL,
  `job_request_id` bigint NOT NULL,
  `seller_id` bigint DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `admin_commission_price` double DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `currency_sign` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_code` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_status` varchar(155) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `order_type` tinyint DEFAULT NULL,
  `order_complete_request` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_orders`
--

INSERT INTO `job_orders` (`id`, `job_id`, `job_request_id`, `seller_id`, `buyer_id`, `transaction_no`, `txnid`, `price`, `admin_commission_price`, `currency_id`, `currency_sign`, `currency_code`, `payment_status`, `payment_method`, `order_status`, `order_type`, `order_complete_request`, `created_at`, `updated_at`) VALUES
(2, 5, 4, 86, 99, 't3V2631570', 'Not Available', 263.51351351351, 13.175675675676, 9, '₹', 'INR', 'Completed', 'Wallet', 'completed', 1, 'completed', '2023-05-11 05:23:51', '2023-05-11 06:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_forms`
--

CREATE TABLE `kyc_forms` (
  `id` int NOT NULL,
  `user_type` tinyint DEFAULT NULL,
  `type` int DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `required` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kyc_forms`
--

INSERT INTO `kyc_forms` (`id`, `user_type`, `type`, `label`, `name`, `required`, `created_at`, `updated_at`) VALUES
(9, 1, 1, 'Full Name', 'full_name', 1, '2022-03-06 06:08:28', '2022-03-06 06:08:28'),
(10, 1, 2, 'NID', 'nid', 1, '2022-03-06 06:08:38', '2022-03-06 06:08:38'),
(11, 1, 3, 'Present Address', 'present_address', 1, '2022-03-06 06:08:51', '2022-03-06 06:08:51'),
(12, 1, 3, 'Parmanent Address', 'parmanent_address', 1, '2022-03-06 06:09:04', '2022-03-06 06:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `rtl` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `rtl`, `is_default`, `language`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'EN', '1636017050KyjRNauw', '1636017050KyjRNauw.json', NULL, NULL),
(16, 0, 0, 'BN', '1649839916bibFwlDe', '1649839916bibFwlDe.json', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `title`, `subtitle`, `photo`, `facebook`, `twitter`, `linkedin`) VALUES
(2, 'Ervin Kim', 'CEO of Apple', '1561539258comment2.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(3, 'Ervin Kim', 'CEO of Apple', '1561539242comment2.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(4, 'Ervin Kim', 'CEO of Apple', '1561539231comment2.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(5, 'Ervin Kim', 'CEO of Apple', '1561539222comment2.png', NULL, 'https://www.twitter.com', 'https://www.linkedin.com'),
(6, 'Ervin Kim', 'CEO of Apple', '1561539213comment2.png', NULL, 'https://www.twitter.com', 'https://www.linkedin.com'),
(7, 'Ervin Kim', 'CEO of Apple', '1561539184comment2.png', 'https://www.facebook.com', NULL, 'https://www.linkedin.com'),
(8, 'Ervin Kim', 'CEO of Apple', '1561539197comment2.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com'),
(9, 'Ervin Kim', 'CEO of Apple', '1561539345comment2.png', 'https://www.facebook.com', 'https://www.twitter.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_26_221915_create_coinpayment_transactions_table', 1),
(2, '2020_11_30_030150_create_coinpayment_transaction_items_table', 1),
(3, '2022_02_06_050222_create_wire_transfer_banks_table', 1),
(4, '2022_02_13_094244_create_bank_plans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `message` text,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(155) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `message`, `is_read`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 86, 'Your Subscription is completed successfully', 0, 'subscription', '2023-04-30 05:19:28', '2023-04-30 05:19:28'),
(2, 2, 86, 'Your Subscription is completed successfully', 0, 'subscription', '2023-04-30 05:21:54', '2023-04-30 05:21:54'),
(3, 1, 86, 'Your Subscription is completed successfully', 0, 'subscription', '2023-04-30 05:30:44', '2023-04-30 05:30:44'),
(4, 2, 86, 'New Subscription Added!', 0, 'subscription', '2023-05-03 10:36:57', '2023-05-03 10:36:57'),
(5, 3, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-09 11:03:47', '2023-05-09 11:03:47'),
(6, 1, 86, 'You have a new service order', 0, 'service', '2023-05-09 11:40:58', '2023-05-09 11:40:58'),
(7, 8, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 06:10:53', '2023-05-10 06:10:53'),
(8, 9, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 06:15:29', '2023-05-10 06:15:29'),
(9, 10, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 06:16:53', '2023-05-10 06:16:53'),
(10, 11, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 06:37:32', '2023-05-10 06:37:32'),
(11, 13, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 06:47:42', '2023-05-10 06:47:42'),
(12, 2, 86, 'Payment Successfull.', 0, 'service', '2023-05-10 09:06:22', '2023-05-10 09:06:22'),
(13, 3, 86, 'You have a new service order', 0, 'service', '2023-05-10 10:30:38', '2023-05-10 10:30:38'),
(14, 16, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 10:55:15', '2023-05-10 10:55:15'),
(15, 17, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 10:58:37', '2023-05-10 10:58:37'),
(16, 18, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-10 11:04:02', '2023-05-10 11:04:02'),
(17, NULL, 100, NULL, 0, NULL, '2023-05-15 09:09:12', '2023-05-15 09:09:12'),
(18, NULL, 101, NULL, 0, NULL, '2023-05-15 09:39:05', '2023-05-15 09:39:05'),
(19, 21, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-15 10:12:51', '2023-05-15 10:12:51'),
(20, 22, 86, 'New Subscription Added.', 0, 'subscription', '2023-05-15 10:13:56', '2023-05-15 10:13:56'),
(21, NULL, 102, NULL, 0, NULL, '2023-05-24 17:53:14', '2023-05-24 17:53:14'),
(22, 23, 86, 'Your Subscription is completed successfully', 0, 'subscription', '2023-06-04 18:00:10', '2023-06-04 18:00:10'),
(23, 24, 86, 'New Subscription Added!', 0, 'subscription', '2023-06-04 18:02:16', '2023-06-04 18:02:16'),
(24, 28, 86, 'New Subscription Added.', 0, 'subscription', '2023-06-04 18:03:46', '2023-06-04 18:03:46'),
(25, 29, 86, 'New Subscription Added.', 0, 'subscription', '2023-06-04 18:09:04', '2023-06-04 18:09:04'),
(26, NULL, 103, NULL, 0, NULL, '2023-06-05 20:45:16', '2023-06-05 20:45:16'),
(27, 30, 103, 'New Subscription Added.', 0, 'subscription', '2023-06-05 20:53:18', '2023-06-05 20:53:18'),
(28, 31, 103, 'Your Subscription is completed successfully', 0, 'subscription', '2023-06-05 20:54:15', '2023-06-05 20:54:15'),
(29, 32, 103, 'New Subscription Added.', 0, 'subscription', '2023-06-05 20:59:49', '2023-06-05 20:59:49'),
(30, NULL, 104, NULL, 0, NULL, '2023-06-05 23:36:05', '2023-06-05 23:36:05'),
(31, NULL, 105, NULL, 0, NULL, '2023-06-05 23:37:21', '2023-06-05 23:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`, `status`) VALUES
(2, 'Privacy & Policy', 'privacy', 'we are committed to protecting the privacy and personal information of our users. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information we gather through our on-demand service website. By accessing or using our website, you agree to the terms of this Privacy Policy.\n\nInformation We Collect:\na. Personal Information: When you use our on-demand service website, we may collect certain personally identifiable information, such as your name, email address, phone number, and payment details. We collect this information only when you voluntarily provide it to us.\nb. Usage Information: We may collect non-personal information about your use of our website, such as your IP address, browser type, operating system, and referring URL. This information helps us analyze trends, administer the site, and improve our services.\n\nUse of Information:\na. Personal Information: We may use the personal information we collect to provide and improve our on-demand services, process transactions, respond to inquiries, and personalize your experience. We may also use this information to send you promotional and marketing communications if you have opted-in to receive them. You can opt-out of receiving these communications at any time.\nb. Usage Information: The non-personal information we collect is used for statistical analysis, site administration, and to improve the usability of our website. We may also use this information for research and development purposes.\n\nDisclosure of Information:\na. We may share your personal information with third-party service providers, contractors, and affiliated entities who assist us in operating our website and providing our on-demand services. These third parties are obligated to keep your information confidential and use it only for the purposes for which we disclose it to them.\nb. We may disclose your personal information to comply with legal obligations, enforce our site policies, or protect our rights, property, or safety, as required by law.\nc. We do not sell, trade, or transfer your personal information to third parties for their marketing purposes without your consent.\n\nSecurity:\nWe implement appropriate technical and organizational measures to protect the security and confidentiality of your personal information. However, please be aware that no data transmission over the internet or method of electronic storage is 100% secure. We cannot guarantee the absolute security of your information.\n\nCookies:\nOur website may use cookies and similar technologies to enhance your user experience, gather usage information, and improve our services. You can adjust your browser settings to refuse cookies or notify you when cookies are being sent, but please note that some features of our website may not function properly if cookies are disabled.\n\nThird-Party Links:\nOur website may contain links to third-party websites or services. These third-party sites have separate and independent privacy policies. We have no control over the content and practices of these sites and are not responsible for their privacy practices.\n\nChanges to the Privacy Policy:\nWe reserve the right to modify or update this Privacy Policy at any time. Any changes will be posted on this page, and the updated Privacy Policy will be effective upon posting. We encourage you to review this Privacy Policy periodically.\n\nIf you have any questions, concerns, or requests regarding our Privacy Policy or the handling of your personal information, please contact us using the information provided on our website.', NULL, NULL, 0, 1, 1),
(4, 'Supports', 'supports', 'We are dedicated to providing exceptional customer support and assistance to ensure a smooth and satisfying experience with our on-demand services. Here, you\'ll find all the resources and information you need to resolve any queries or issues you may encounter.\n\nOur knowledgeable support team is ready to assist you with any questions or concerns you may have. Whether you need help navigating our website, understanding our services, or troubleshooting technical problems, we are here to provide timely and effective solutions.\n\nOn this support page, you\'ll find a range of helpful resources, including:\n\nFrequently Asked Questions (FAQs): Browse through our comprehensive list of frequently asked questions to find quick answers to common inquiries. We\'ve compiled detailed responses to address the most common concerns of our users.\n\nUser Guides and Tutorials: Access our user guides and tutorials to get step-by-step instructions on how to use our on-demand services. These guides cover various aspects, from account setup to utilizing specific features and functionalities.\n\nTroubleshooting Guides: If you encounter any technical issues or challenges, our troubleshooting guides can assist you in resolving them. We provide detailed troubleshooting steps to help you overcome common problems and ensure a seamless experience.\n\nContact Information: If you require personalized assistance, our support team is just a message or phone call away. We provide our contact information, including email addresses and phone numbers, so you can reach out to us directly for prompt and friendly support.\n\nService Status Updates: In the event of scheduled maintenance, system updates, or any service disruptions, we keep our users informed about the status of our services. We provide real-time updates to minimize any inconvenience and keep you informed of any potential impacts.\n\nWe are committed to providing exceptional customer support, and your satisfaction is our top priority. If you can\'t find the information you need or require further assistance, please don\'t hesitate to contact us. Our support team is dedicated to resolving your issues and ensuring your experience with our on-demand services exceeds your expectations.', NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `login_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_subtitle` text COLLATE utf8mb4_unicode_ci,
  `hero_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `pricing_plan` tinyint(1) NOT NULL DEFAULT '0',
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_subtitle` text COLLATE utf8mb4_unicode_ci,
  `blog_subtitle` text COLLATE utf8mb4_unicode_ci,
  `blog_title` text COLLATE utf8mb4_unicode_ci,
  `blog_text` text COLLATE utf8mb4_unicode_ci,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_subtitle` text COLLATE utf8mb4_unicode_ci,
  `about_photo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_photo2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_photo3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_details` longtext COLLATE utf8mb4_unicode_ci,
  `footer_top_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_top_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_top_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_title` text COLLATE utf8mb4_unicode_ci,
  `banner_text` text COLLATE utf8mb4_unicode_ci,
  `banner_link1` text COLLATE utf8mb4_unicode_ci,
  `banner_link2` text COLLATE utf8mb4_unicode_ci,
  `app_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_text` text COLLATE utf8mb4_unicode_ci,
  `start_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_service_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_service_text` longtext COLLATE utf8mb4_unicode_ci,
  `choose_us_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choose_us_text` longtext COLLATE utf8mb4_unicode_ci,
  `choose_us_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_text` longtext COLLATE utf8mb4_unicode_ci,
  `partner_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_text` longtext COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_text` longtext COLLATE utf8mb4_unicode_ci,
  `brand_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_text` text COLLATE utf8mb4_unicode_ci,
  `brand_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit_text` text COLLATE utf8mb4_unicode_ci,
  `call_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_module` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `login_banner`, `login_title`, `login_subtitle`, `hero_title`, `hero_subtitle`, `hero_photo`, `review_blog`, `pricing_plan`, `category_title`, `category_subtitle`, `blog_subtitle`, `blog_title`, `blog_text`, `faq_title`, `faq_subtitle`, `about_photo1`, `about_photo2`, `about_photo3`, `about_title`, `about_link`, `about_video_link`, `about_details`, `footer_top_photo`, `footer_top_title`, `footer_top_text`, `banner_title`, `banner_text`, `banner_link1`, `banner_link2`, `app_banner`, `start_title`, `start_text`, `start_photo`, `best_service_title`, `best_service_text`, `popular_service_title`, `popular_service_text`, `choose_us_title`, `choose_us_text`, `choose_us_photo`, `featured_title`, `featured_text`, `partner_title`, `partner_text`, `testimonial_title`, `testimonial_text`, `brand_title`, `brand_text`, `brand_photo`, `testimonial_banner`, `profit_title`, `profit_text`, `call_title`, `call_subtitle`, `call_link`, `call_bg`, `home_module`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'demo@example.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #1f71d4;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', 'Get in Touch with US!', 'Get in touch\" is a concise and inviting call-to-action that encourages individuals to reach out and establish contact.', '134 Fifth Ave, New York, NY 12004, United States', '+0123456789', '00 000 000 000', 'admin@geniusocean.com', 'https://geniusocean.com/', 'CkzTngcE1649742892.png', 'Turn Your ideas into Reality', 'Change your lifestyle signing up here. Invest and easily earn money for much better life', 'Fast Response - Quality Works!', 'Nonstop Services That Make Life Better.', 'mn56KX5d1678102160.png', 1, 1, 'Category', 'These categories help in understanding the nature and scope of services offered by different providers. While the specific categories can vary across industries<br>', 'Latest Blog', 'Latest Post', '<div>This section provides a brief description of the topics covered in the blog and the value it brings to readers.</div>', 'Frequently Asked Questions', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga.', 'qrw9pNdT1679378708.jpg', '5prUYNM41679378708.jpg', 'fNopNIg01679378708.jpg', 'Welcome to our on-demand services platform', 'https://www.google.com/', 'https://youtu.be/D0UnqGm_miA', '<p>Our platform offers a diverse range of on-demand services, tailored to meet your unique requirements. Whether you need home cleaning, handyman services, pet care, tutoring, or even a personal chef, we\'ve got you covered. Our network of experienced service providers ensures that you receive exceptional service and peace of mind.</p><p>Using our platform is simple and hassle-free. Just sign up, browse through our service categories, and select the service you need.<br><br></p>', '1639561929call-to-action-bg.jpg', 'GET STARTED TODAY WITH BITCOIN', 'Open account for free and start trading Bitcoins!', '<h4 class=\"subtitle\" style=\"font-weight: 600; line-height: 1.2381; font-size: 24px; color: rgb(31, 113, 212);\">More convenient than others</h4>', '<h2 class=\"title\" style=\"font-weight: 600; line-height: 60px; font-size: 50px; color: rgb(23, 34, 44);\">Find Value &amp; Build confidence</h2>', 'https://www.google.com/', 'https://www.google.com/', 'gFNRbRDL1645425298.png', 'How It Works', '3 Step To Take Our Services', 'MBLGLHNW1678784916.png', 'Best Services', '<div>Services Description refers to a description of the various services offered by a service provider. The specific services provided can vary depending on the industry and the nature of the business.</div>', 'Popular Services', '<div>Popular Services Description refers to a description of some commonly sought-after or popular services provided by service providers. These services are often in high demand due to their relevance and value to customers.</div>', 'Why Choose Us!', '<div><b>Our platform aims to bridge this gap by connecting you with skilled professionals who can handle various tasks efficiently, allowing you to focus on what matters most to you.</b></div>', '3oU1Apfh1678705547.jpg', 'Featured Services', '<span style=\"background-color:rgb(255,255,255);\">This section highlights the key features or attributes that make a service provider stand out from its competitors. These features demonstrate the provider\'s unique strengths and advantages.</span><br>', 'New Company Has Joined Us', 'This section aims to showcase the strategic alliances and relationships that contribute to the company\'s success and add value to its customers. ', 'Testimonial', '<div><span style=\"text-align:center;\">This section aims to build credibility, trust, and confidence in the company\'s products or services by featuring real-life experiences and positive reviews.</span></div>', 'Our Payment Gateway', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni', '2YHwEVzE1649492380.png', 'GbRCV5531678782209.jpg', 'Quick Profit Calculate', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.', 'Are You Convenced', 'Let\'s Get started with us', 'https://www.google.com/', '#400768', '[\"Hero\",\"Category\",\"Best service\",\"Popular Service\",\"Why Choose\",\"Featured Service\",\"Partner\",\"Testimonials\",\"How To Works\",\"Blogs\"]');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'pBIS0so91686457829.png', '2022-04-09 07:33:40', '2023-06-11 17:30:29'),
(5, 'VvliMZOI1686457813.png', '2022-04-09 07:33:43', '2023-06-11 17:30:13'),
(6, '8IwJJyd31686457796.png', '2022-04-09 07:33:46', '2023-06-11 17:29:56'),
(7, 'G7co9JwX1686457778.png', '2022-04-09 07:33:50', '2023-06-11 17:29:38'),
(8, 'wX125RHI1686457758.png', '2022-04-09 07:34:43', '2023-06-11 17:29:18'),
(9, 'aWnioPed1686457746.png', '2022-04-09 07:33:31', '2023-06-11 17:29:06'),
(10, 'sRyP0jU81686457730.png', '2022-04-09 07:33:35', '2023-06-11 17:28:50'),
(11, 'deqPZE0j1686457716.png', '2022-04-09 07:33:40', '2023-06-11 17:28:36'),
(12, 'NDZcmhjG1686457703.png', '2022-04-09 07:33:43', '2023-06-11 17:28:23'),
(13, 'LqHsVe0l1686457690.png', '2022-04-09 07:33:46', '2023-06-11 17:28:10'),
(14, 'J7cAYLub1686457678.png', '2022-04-09 07:33:50', '2023-06-11 17:27:58'),
(15, 'm2hCha2A1686456995.png', '2022-04-09 07:34:43', '2023-06-11 17:16:35'),
(18, 'g3mmzTIM1686563418.png', '2023-06-12 22:50:18', '2023-06-12 22:50:18'),
(19, 'LMIZ07vX1686563467.png', '2023-06-12 22:51:07', '2023-06-12 22:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `status`) VALUES
(1, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\"]', 1),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 1),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 1),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_jePgBjaRV5rUdzWc44rb2fUxgM2dM9\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 1),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 1),
(13, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"sandbox_check\":1,\"text\":\"Pay via your Instamojo account.\"}', 'instamojo', '[\"8\"]', 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1),
(27, 'mobile money', 'bKash', '<p><span style=\"font-weight: bolder;\">Please send money using number<br>123456789</span><br></p>', 'Bkash', 'manual', '{\"text\":\"01976814812\"}', 'manual', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `connect` int DEFAULT NULL,
  `job` int DEFAULT NULL,
  `service` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `subtitle`, `price`, `plan_type`, `connect`, `job`, `service`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Standard', 'Standard Price Plan', 10, 'monthly', 20, 20, 20, 1, '2023-05-25 23:27:58', '2023-06-05 20:43:27'),
(11, 'Basic', 'Basic Price Plan', 0, 'monthly', 10, 10, 10, 1, '2023-06-05 20:43:10', '2023-06-05 20:43:10'),
(12, 'Premium', 'Premium Price Plan', 20, 'monthly', 50, 50, 50, 1, '2023-06-05 20:44:06', '2023-06-12 00:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `buyer_id` bigint DEFAULT NULL,
  `service_id` bigint DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(11, 'ytuytuu', 'Menu Builder , Request Money', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int NOT NULL,
  `day` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `schedule` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day`, `seller_id`, `schedule`, `status`, `created_at`, `updated_at`) VALUES
(4, 'wednesday', 86, '2.00Pm - 3:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(5, 'thursday', 86, '1.00Pm - 2:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(6, 'thursday', 86, '12.00Pm - 1:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(7, 'thursday', 86, '3.00Pm - 4:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(8, 'friday', 86, '12.00Pm - 1:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(9, 'friday', 86, '1.00Pm - 2:00 PM', 1, '2023-03-01 09:37:18', '2023-03-01 09:37:18'),
(10, 'monday', 86, '12.00PM - 1.00PM', 1, '2023-04-09 06:47:09', '2023-04-09 06:47:09'),
(11, 'monday', 86, '1.00PM-2.00PM', 1, '2023-04-09 06:47:30', '2023-04-09 06:47:30'),
(12, 'tuesday', 86, '12.00PM-1.00PM', 1, '2023-04-09 06:47:51', '2023-04-09 06:47:51'),
(13, 'tuesday', 86, '1.00PM-2.00PM', 1, '2023-04-09 06:48:19', '2023-04-09 06:48:19'),
(14, 'wednesday', 86, '12.00PM-1.00PM', 1, '2023-04-09 06:49:54', '2023-04-09 06:49:54'),
(15, 'wednesday', 86, '2.00Pm - 3:00 PM', 1, '2023-05-10 11:17:04', '2023-05-10 11:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-1\"></script>  <script>    window.dataLayer = window.dataLayer || [];    function gtag(){dataLayer.push(arguments);}    gtag(\'js\', new Date());    gtag(\'config\', \'UA-137437974-1\');  </script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `serviceadditionals`
--

CREATE TABLE `serviceadditionals` (
  `id` bigint NOT NULL,
  `service_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `additional_service_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_service_price` double DEFAULT NULL,
  `additional_service_quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceadditionals`
--

INSERT INTO `serviceadditionals` (`id`, `service_id`, `seller_id`, `additional_service_title`, `additional_service_price`, `additional_service_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 86, 'fourth', 100, 1, NULL, NULL),
(2, 1, 86, 'fourth', 100, 2, NULL, NULL),
(3, 3, 86, 'Ambulance with Life Support', 30, 1, NULL, NULL),
(4, 3, 86, 'Freezing Ambulance', 50, 1, NULL, NULL),
(7, 4, 86, 'Ac Service', 10, 1, NULL, NULL),
(8, 4, 86, 'Ambulance with Life Support', 10, 1, NULL, NULL),
(9, 4, 86, 'Freezing Ambulance', 0.07, 1, NULL, NULL),
(10, 7, 86, 'Sponge or dish scrubber', 5, 1, NULL, NULL),
(11, 7, 86, 'Toilet brush', 5, 1, NULL, NULL),
(12, 9, 86, 'Polish the exterior of your appliances.', 5, 1, NULL, NULL),
(13, 9, 86, 'Wipe away any fingerprints or smudges.', 5, 1, NULL, NULL),
(14, 9, 86, 'Shine faucets and cabinet hardware.', 5, 1, NULL, NULL),
(15, 8, 86, 'Wiping surfaces including appliances and fixtures.', 5, 1, NULL, NULL),
(16, 8, 86, 'Cleaning the bathrooms – bath, toilet, sink, mirrors.', 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicebenefits`
--

CREATE TABLE `servicebenefits` (
  `id` bigint NOT NULL,
  `service_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `benefits` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicebenefits`
--

INSERT INTO `servicebenefits` (`id`, `service_id`, `seller_id`, `benefits`, `created_at`, `updated_at`) VALUES
(1, 1, 86, 'hello benefits two', NULL, NULL),
(2, 1, 86, 'hello benefits two', NULL, NULL),
(3, 3, 86, 'Standard Ambulance with Proper equipment', NULL, NULL),
(4, 3, 86, 'Stretchers are available to carrying the patient', NULL, NULL),
(5, 3, 86, 'Service available to go anywhere in Bangladesh', NULL, NULL),
(6, 3, 86, 'Clean & Hygienic Ambulance', NULL, NULL),
(14, 9, 86, 'Minimises the chance of the Coronavirus spreading', NULL, NULL),
(15, 9, 86, 'Increases your overall hygiene', NULL, NULL),
(16, 9, 86, 'Reduces the spread of food born diseases', NULL, NULL),
(17, 8, 86, 'Promote Physical Health', NULL, NULL),
(18, 8, 86, 'Lower Your Stress', NULL, NULL),
(19, 8, 86, 'Increase Your Productivity', NULL, NULL),
(20, 8, 86, 'Save Time', NULL, NULL),
(21, 8, 86, 'Creating a Welcoming Environment for Guests', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `serviceincludes`
--

CREATE TABLE `serviceincludes` (
  `id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  `include_service_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `include_service_price` double NOT NULL,
  `include_service_quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceincludes`
--

INSERT INTO `serviceincludes` (`id`, `service_id`, `seller_id`, `include_service_title`, `include_service_price`, `include_service_quantity`, `created_at`, `updated_at`) VALUES
(4, 3, 86, 'Emergency Ambulance', 50, 1, '2023-03-12 06:48:35', '2023-03-12 07:56:34'),
(5, 3, 86, '24/7 hour service', 0, 1, '2023-03-26 04:16:23', '2023-03-26 04:16:23'),
(6, 3, 86, 'ICU Service', 10, 1, '2023-03-26 04:16:23', '2023-03-26 04:16:23'),
(7, 3, 86, 'Automatic external defibrillator (AED)', 5, 1, '2023-03-26 04:16:23', '2023-03-26 04:16:23'),
(8, 3, 86, 'Cardiac monitor', 5, 1, '2023-03-26 04:16:23', '2023-03-26 08:47:26'),
(12, 7, 86, 'Broom and dustpan', 5, 1, '2023-06-13 00:14:03', '2023-06-13 00:14:03'),
(13, 7, 86, 'Vacuum cleaner', 5, 1, '2023-06-13 00:14:03', '2023-06-13 00:14:03'),
(14, 7, 86, 'Toilet bowl cleaner', 5, 1, '2023-06-13 00:14:03', '2023-06-13 00:14:03'),
(15, 9, 86, 'Dust and wipe your countertops and eliminate crumbs', 10, 1, '2023-06-13 17:01:19', '2023-06-13 17:01:19'),
(16, 9, 86, 'Clean cooktops.', 5, 1, '2023-06-13 17:01:19', '2023-06-13 17:01:19'),
(17, 9, 86, 'Clean inside and outside your microwave.', 5, 1, '2023-06-13 17:01:19', '2023-06-13 17:01:19'),
(18, 9, 86, 'Vacuum and clean floors.', 5, 1, '2023-06-13 17:01:19', '2023-06-13 17:01:19'),
(19, 8, 86, 'Wiping windows and mirrors.', 10, 1, '2023-06-13 17:09:08', '2023-06-13 17:09:08'),
(20, 8, 86, 'Vacuuming carpets and rugs.', 5, 1, '2023-06-13 17:09:08', '2023-06-13 17:09:08'),
(21, 8, 86, 'Tidying up the house', 3, 1, '2023-06-13 17:09:08', '2023-06-13 17:09:08'),
(22, 8, 86, 'Removing cobwebs', 5, 1, '2023-06-13 17:09:08', '2023-06-13 17:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `service_country_id` bigint DEFAULT NULL,
  `service_city_id` bigint DEFAULT NULL,
  `service_area_id` bigint DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `image_gallery` varchar(255) DEFAULT NULL,
  `video` longtext,
  `status` tinyint NOT NULL DEFAULT '0',
  `is_service_on` tinyint NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `online_service_price` double NOT NULL DEFAULT '0',
  `delivery_days` bigint NOT NULL DEFAULT '0',
  `revision` bigint NOT NULL DEFAULT '0',
  `is_service_online` tinyint NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `view` int NOT NULL DEFAULT '0',
  `sold_count` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint DEFAULT '0',
  `is_popular` tinyint NOT NULL DEFAULT '0',
  `is_trending` tinyint NOT NULL DEFAULT '0',
  `is_new` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `seller_id`, `service_country_id`, `service_city_id`, `service_area_id`, `title`, `slug`, `description`, `image`, `image_gallery`, `video`, `status`, `is_service_on`, `price`, `online_service_price`, `delivery_days`, `revision`, `is_service_online`, `tax`, `view`, `sold_count`, `is_featured`, `is_best`, `is_popular`, `is_trending`, `is_new`, `created_at`, `updated_at`) VALUES
(7, 16, NULL, 86, 19, 1, 1, 'Clean your whole office within 2 hour by Professionals', 'Clean-your-whole-office-within-2-hour-by-Professionals', 'If you\'re looking for an office cleaning service, there are several options available to you. Here are some steps you can take to find a reliable and professional office cleaning service:Define your cleaning needs: Determine the specific cleaning tasks you require, such as vacuuming, dusting, mopping, window cleaning, or restroom sanitation. Consider the frequency of cleaning you need, whether it\'s daily, weekly, or monthly.Seek recommendations: Ask other business owners or colleagues for recommendations on office cleaning services they may have used. Personal referrals can provide valuable insights into the quality of service.Online search: Conduct an online search for office cleaning services in your area. Look for companies with positive customer reviews and ratings. Many companies have websites that provide information about their services, pricing, and testimonials.Check credentials: Verify that the cleaning service is licensed, insured, and bonded. This ensures that you are protected in case of any damages or accidents that may occur during the cleaning process.Request quotes: Contact multiple office cleaning services and request detailed quotes for your specific cleaning requirements. Ask about their pricing structure, including whether they charge per visit or have a monthly contract.Inquire about their cleaning process: Ask about the cleaning methods and products used by the service providers. Ensure they use environmentally friendly and safe cleaning practices, especially if you have any specific requirements or concerns.Schedule an on-site consultation: Once you have shortlisted a few cleaning services, schedule an on-site consultation. This will allow the cleaning company to assess your office space and provide a more accurate quote.Discuss terms and conditions: During the consultation, discuss the terms and conditions of the cleaning service. Clarify any doubts you may have regarding their services, such as scheduling, cancellation policies, or additional charges for special requests.Check references: Ask the cleaning service for references from their existing clients. Contact these references to get feedback on their experience with the service provider.Contract agreement: Before finalizing the service, review and sign a contract that outlines the services to be provided, the frequency of cleaning, the cost, and any other agreed-upon terms.Remember, it\'s essential to communicate your expectations clearly with the office cleaning service to ensure they meet your specific needs. Regularly evaluate their performance and provide feedback to maintain a satisfactory cleaning standard in your office.', '1686542922.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 15, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:08:42', '2023-06-13 00:14:03'),
(8, 3, NULL, 86, 19, 3, 2, 'Clean your home by professional cleaner', 'Clean-your-home-by-professional-cleaner', '<p>If you\'re looking for a home cleaning service, here are some steps you can take to find a reliable and professional provider:</p><p><br></p><p>Determine your cleaning needs: Assess the specific cleaning tasks you require. This may include general cleaning, dusting, vacuuming, mopping, bathroom cleaning, kitchen cleaning, or additional services like laundry or organizing. Consider the frequency of cleaning you need, whether it\'s a one-time deep cleaning or regular recurring service.</p><p><br></p><p>Seek recommendations: Ask friends, family, or neighbors if they have any recommendations for home cleaning services they have used and trust. Personal referrals can provide valuable insights and help you find a reliable service.</p><p><br></p><p>Research online: Conduct an online search for home cleaning services in your area. Look for companies with positive customer reviews and ratings. Many cleaning services have websites where you can find information about their services, pricing, and customer testimonials.</p><p><br></p><p>Check credentials: Verify that the cleaning service is licensed, insured, and bonded. This ensures that you are protected in case of any damages or accidents that may occur during the cleaning process.</p><p><br></p><p>Request quotes: Contact multiple home cleaning services and request detailed quotes for your specific cleaning needs. Provide them with information about the size of your home, the number of rooms, and any specific requirements you have. Inquire about their pricing structure, whether it\'s an hourly rate or a fixed price based on the scope of work.</p><p><br></p><p>Inquire about their cleaning process and supplies: Ask the cleaning service about the cleaning methods and products they use. Ensure that they use safe and eco-friendly cleaning products that align with your preferences and any specific needs you may have, such as allergies or sensitivities.</p><p><br></p><p>Schedule an in-home consultation: Consider scheduling an in-home consultation with a few shortlisted cleaning services. This allows them to assess your home, understand your specific requirements, and provide a more accurate quote. It also gives you an opportunity to ask any questions and get a sense of their professionalism.</p><p><br></p><p>Discuss terms and conditions: During the consultation, discuss the terms and conditions of the cleaning service. Clarify any doubts you may have, such as scheduling, cancellation policies, or additional charges for special requests.</p><p><br></p><p>Check references: Ask the cleaning service for references from their existing clients. Contact these references to inquire about their experience with the service provider, their reliability, and the quality of their cleaning.</p><p><br></p><p>Review and sign a contract: Before finalizing the service, review and sign a contract that outlines the services to be provided, the frequency of cleaning, the cost, and any other agreed-upon terms. Ensure that both parties are clear on the expectations.</p><p><br></p><p>Remember to communicate your expectations clearly with the cleaning service, provide any specific instructions or preferences, and offer feedback to maintain a satisfactory cleaning standard in your home. Regularly assess the quality of their service to ensure it meets your needs.</p>', '1686543050.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 23, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:10:50', '2023-06-13 17:09:08'),
(9, 14, 9, 86, 19, 1, 1, 'Clean your kitchen By Professional Cleaners', 'Clean-your-kitchen-By-Professional-Cleaners', '<p>If you\'re specifically looking for a kitchen cleaning service, here are some steps you can take to find a reliable and professional provider:</p><p><br></p><p>Define your kitchen cleaning needs: Determine the specific cleaning tasks you require for your kitchen. This may include cleaning countertops, appliances (such as oven, refrigerator, and microwave), sink, backsplash, cabinets, floors, and any other areas in the kitchen that need attention.</p><p><br></p><p>Seek recommendations: Ask friends, family, or neighbors if they have any recommendations for kitchen cleaning services they have used and are satisfied with. Personal referrals can provide valuable insights and help you find a reliable service.</p><p><br></p><p>Research online: Conduct an online search for kitchen cleaning services in your area. Look for companies that specialize in kitchen cleaning and have positive customer reviews and ratings. Check their websites for information about their services, pricing, and customer testimonials.</p><p><br></p><p>Check credentials: Verify that the kitchen cleaning service is licensed, insured, and bonded. This ensures that you are protected in case of any damages or accidents that may occur during the cleaning process.</p><p><br></p><p>Request quotes: Contact multiple kitchen cleaning services and request detailed quotes for your specific kitchen cleaning needs. Provide them with information about the size of your kitchen, specific tasks you require, and any other relevant details. Inquire about their pricing structure, whether it\'s based on the size of the kitchen, the scope of work, or an hourly rate.</p><p><br></p><p>Inquire about their cleaning process and supplies: Ask the cleaning service about their cleaning methods and the types of cleaning products they use. Ensure that they use safe and appropriate cleaning products for kitchen surfaces and appliances. If you have any preferences or concerns about specific cleaning products, communicate them with the service provider.</p><p><br></p><p>Schedule an in-person consultation: Consider scheduling an in-person consultation with a few shortlisted kitchen cleaning services. This will allow them to assess your kitchen, understand your specific requirements, and provide a more accurate quote. It also gives you an opportunity to ask any questions and gauge their professionalism.</p><p><br></p><p>Discuss terms and conditions: During the consultation, discuss the terms and conditions of the kitchen cleaning service. Clarify any doubts you may have, such as scheduling, cancellation policies, or additional charges for special requests.</p><p><br></p><p>Check references: Ask the kitchen cleaning service for references from their existing clients. Contact these references to inquire about their experience with the service provider, the quality of their kitchen cleaning, and their reliability.</p><p><br></p><p>Review and sign a contract: Before finalizing the service, review and sign a contract that outlines the specific kitchen cleaning tasks to be provided, the frequency of cleaning, the cost, and any other agreed-upon terms. Ensure that both parties are clear on the expectations.</p><p><br></p><p>By following these steps, you can find a professional kitchen cleaning service that meets your specific needs and helps maintain a clean and hygienic kitchen space.</p>', '1686544073.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 25, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:27:53', '2023-06-13 17:01:19'),
(10, 17, NULL, 86, 19, 3, 2, '500 Lead generation within a Day by Professional', '500-Lead-generation-within-a-Day-by-Professional', 'A lead generation service is a service provided by a company or agency that focuses on generating potential customer leads for businesses. The goal of a lead generation service is to identify individuals or companies who have shown interest in a particular product or service and gather their contact information to pass on to the client.Here\'s a description of a lead generation service:\"Our lead generation service is designed to help businesses find and connect with potential customers who have expressed interest in their products or services. We employ various strategies and techniques to identify and capture leads, ensuring a consistent stream of potential customers for our clients.Our team utilizes a combination of online and offline methods to generate leads. This may include targeted digital marketing campaigns, content marketing, social media outreach, email marketing, search engine optimization (SEO), and more. We tailor our approach to suit the specific needs and target audience of each client.Once leads are generated, we carefully qualify and verify each lead to ensure their relevance and potential as prospective customers. We provide our clients with comprehensive lead profiles, including contact information, demographic data, and any relevant details that can help them effectively engage and convert these leads into sales.Our lead generation service offers the following benefits to our clients:Increased sales opportunities: By providing a steady flow of qualified leads, we help our clients expand their customer base and increase their sales opportunities.Time and cost savings: Our service saves valuable time and resources by eliminating the need for businesses to search for leads themselves, allowing them to focus on their core operations.Targeted approach: We employ targeted strategies to reach individuals or companies that fit the client\'s ideal customer profile, ensuring higher conversion rates and better return on investment.Scalability: Whether you need a few leads or a large volume of leads, our service is flexible and scalable to accommodate your specific requirements.We understand that each business has unique goals and requirements, so we work closely with our clients to develop a customized lead generation strategy that aligns with their objectives. Our dedicated team of experts constantly monitors and optimizes our lead generation efforts to ensure maximum effectiveness and results.Partner with our lead generation service to fuel your business growth and gain a competitive edge in your industry. Contact us today to discuss how we can help you generate high-quality leads and drive your sales success.\"', '1686544329.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 200, 0, 2, 3, 1, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:32:09', '2023-06-12 17:42:23'),
(11, 17, NULL, 86, NULL, NULL, NULL, 'Get your Landing page website within 3days', 'Get-your-Landing-page-website-within-3days', '<p>Website design services involve the creation, development, and implementation of visually appealing and user-friendly websites for businesses, organizations, or individuals. These services aim to create an engaging online presence, enhance brand identity, and provide an optimal user experience for visitors. Here is a description of website design services:</p><p><br></p><p>\"Our website design services are tailored to meet the unique needs and goals of our clients. We specialize in crafting visually stunning, responsive, and functional websites that leave a lasting impression on visitors. Whether you need a simple informational website, an e-commerce platform, or a complex web application, our team of skilled designers and developers is ready to bring your vision to life.</p><p><br></p><p>Our website design process begins with a thorough understanding of your business objectives, target audience, and brand identity. We collaborate closely with you to gather your requirements, preferences, and any specific features or functionalities you desire. Our team conducts comprehensive research to analyze your industry, competitors, and user expectations, ensuring that your website stands out and meets the latest design trends and best practices.</p>', '1686544454.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 200, 0, 3, 5, 1, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:34:14', '2023-06-12 17:34:55'),
(12, 17, NULL, 86, 19, NULL, NULL, 'Get Professional SEO Content writing for 3 Hours', 'Get-Professional-SEO-Content-writing-for-3-Hours', '<p>Content writing involves the creation and development of written material for various purposes, such as websites, blogs, articles, social media, marketing collateral, and more. The goal of content writing is to engage readers, convey information effectively, and achieve specific objectives, such as educating, entertaining, or persuading the target audience. Here is a description of content writing services:</p><p><br></p><p>\"Our content writing services are designed to help businesses and individuals communicate their message effectively and engage their target audience through compelling written content. We have a team of experienced and skilled writers who specialize in crafting high-quality, engaging, and well-researched content across various industries and niches.</p><p><br></p><p>Whether you need website content, blog articles, product descriptions, press releases, social media posts, or any other form of written material, our team can deliver content that meets your specific requirements. We understand the importance of aligning content with your brand\'s tone, voice, and target audience, and we strive to create content that resonates with your readers and supports your business goals.</p><p><br></p><p>Our content writing process begins with a thorough understanding of your objectives, target audience, and key messaging. We collaborate closely with you to gather information, conduct research, and develop a clear content strategy that aligns with your goals. We can work with your existing ideas or assist you in brainstorming and developing fresh content concepts.</p><p><br></p><p>Our team of writers then creates original, engaging, and informative content that captures your brand\'s essence and effectively communicates your message. We pay attention to readability, clarity, and grammar to ensure that your content is easy to understand and error-free. We incorporate relevant keywords and optimize the content for search engine optimization (SEO) to enhance its visibility and reach.</p>', '1686544743.jpg', NULL, 'https://youtu.be/D0UnqGm_miA', 1, 1, 40, 0, 2, 2, 1, 0, 0, 0, 1, 1, 1, 1, 1, '2023-06-12 17:39:03', '2023-06-12 17:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` int NOT NULL,
  `service_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `faq_detail` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `seller_id`, `faq_title`, `faq_detail`) VALUES
(1, 3, 86, '01. How can OnDemand Services help me?', 'Auction sites present consumers with a thrilling, competitive way to buy the goods and services they need most. But getting your own auction site up and running has always required learning complex coding languages, or hiring an expensive design.'),
(2, 3, 86, '02. What is the Printing Quality?', 'Auction sites present consumers with a thrilling, competitive way to buy the goods and services they need most. But getting your own auction site up and running has always required learning complex coding languages, or hiring an expensive design.'),
(3, 3, 86, '03.Can I request a service with an on-site consultant?', 'Auction sites present consumers with a thrilling, competitive way to buy the goods and services they need most. But getting your own auction site up and running has always required learning complex coding languages, or hiring an expensive design.'),
(4, 4, 86, 'When is the waiting charge applicable?', 'After 4 hours, additional hours will cost approximately BDT 700.'),
(5, 4, 86, 'Is the driver allowance Included?', 'Yes. The Driver Allowance is included along Service Charge and Fuel Cost .'),
(6, 8, 86, 'How do I make a cleaning appointment?', 'Simply click the button from details page.'),
(7, 8, 86, 'Do I need a Deep Clean?', 'We highly recommend a Deep Clean for first-time customers or customers who haven\'t had a professional clean in the last few months.');

-- --------------------------------------------------------

--
-- Table structure for table `service_orders`
--

CREATE TABLE `service_orders` (
  `id` bigint NOT NULL,
  `service_id` int NOT NULL,
  `seller_id` bigint NOT NULL,
  `buyer_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_general_ci,
  `country_id` bigint DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `area_id` bigint DEFAULT NULL,
  `date` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `package_fee` double DEFAULT NULL,
  `include` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_service_cost` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `commission_type` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commission_charge` double DEFAULT NULL,
  `commission_amount` double DEFAULT NULL,
  `payment_method` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(155) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `status` tinyint NOT NULL DEFAULT '0',
  `schedule_status` tinyint NOT NULL DEFAULT '0',
  `is_online` tinyint NOT NULL DEFAULT '0',
  `transaction_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `charge_id` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_complete_request` tinyint NOT NULL DEFAULT '0',
  `currency_sign` varchar(155) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_value` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint NOT NULL DEFAULT '1',
  `g_status` tinyint NOT NULL DEFAULT '1',
  `t_status` tinyint NOT NULL DEFAULT '1',
  `l_status` tinyint NOT NULL DEFAULT '1',
  `d_status` tinyint NOT NULL DEFAULT '1',
  `f_check` tinyint DEFAULT NULL,
  `g_check` tinyint DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 0, 1, 1, 0, 0, 0, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://dev.geniusocean.net/ondemand/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://dev.geniusocean.net/ondemand/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `status`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 1, 'fab fa-facebook-f', 'https://www.facebook.com/', '2022-04-24 09:53:35', '2022-04-24 09:53:35'),
(2, 'Twitter', 1, 'fab fa-twitter', 'https://twitter.com/', '2022-04-24 09:54:37', '2022-04-24 09:54:37'),
(3, 'Linkedin', 1, 'fab fa-linkedin-in', 'https://www.linkedin.com/', '2022-04-24 09:55:23', '2022-04-24 10:03:21'),
(5, 'asas', 1, 'fas fa-moon', 'https://demo.royalscripts.com/smm', '2023-05-28 22:25:25', '2023-05-28 22:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(3, 17, '102485372716947456487', 'google', '2019-06-19 17:06:00', '2019-06-19 17:06:00'),
(4, 18, '109955884428371086401', 'google', '2019-06-19 17:17:04', '2019-06-19 17:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, 4, 'Car Wheel', 'car-wheel', '6eglmdGr1686113666.png', 1, '2023-05-28 18:43:58', '2023-06-07 17:54:26'),
(9, 14, 'Kitchen Sink', 'kitchen-sink', 'i9W9zDv71686118513.png', 1, '2023-06-07 19:15:13', '2023-06-07 19:15:25'),
(10, 5, 'AC Repair', 'ac-repair', 'EQwMm5EN1686118610.png', 1, '2023-06-07 19:16:50', '2023-06-07 22:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `country_id`, `tax`, `status`, `updated_at`, `created_at`) VALUES
(2, 19, 2, 1, '2023-05-28 22:04:41', '2023-01-16 08:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(1, 'FY0HOXd71680681170.jpg', 'Johan Martinal', 'CEO Founder', '<p>I recently used this platform to find a pet sitter while I was away on vacation. The process was seamless, and I felt at ease knowing my furry friend was in good hands. The pet sitter sent me updates and photos, which was a nice touch. I\'m impressed with the level of service provided.<br></p>'),
(2, 'CcyRqFfH1680681333.jpg', 'Jecob Melon', 'CO Founder', '<p>I have been using this platform for a few months now, and I\'m extremely satisfied with the services I\'ve received. The professionals are highly skilled and reliable. Booking appointments is a breeze, and the customer support team is always helpful. I highly recommend it.<br></p>'),
(3, 'goDRAs4q1686461353.jpg', 'Andre Rocky', 'System Analyst', '<p>I\'ve used several on-demand services platforms, and this one stands out. The interface is user-friendly, making it easy to navigate and book services. The service providers are trustworthy and skilled. I\'ve had nothing but positive experiences. I highly recommend giving it a try.<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `txnid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) DEFAULT NULL,
  `profit` varchar(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `email`, `amount`, `txnid`, `type`, `profit`, `created_at`, `updated_at`) VALUES
(1, 86, 'user@gmail.com', 12.26, '2sIdrHMYjLFm', 'Payout', 'minus', '2023-04-10 06:02:25', '2023-04-10 06:02:25'),
(2, 99, 'buyer@gmail.com', 5, 'wp0ca4Sfo7gE', 'Deposit', 'plus', '2023-04-10 08:07:57', '2023-04-10 08:07:57'),
(3, 99, 'buyer@gmail.com', 12.26, 'ft0PRtXo4PYI', 'Payout', 'minus', '2023-04-10 08:10:40', '2023-04-10 08:10:40'),
(4, 86, 'user@gmail.com', 100, 'WsGq1682831923', 'subscription', NULL, '2023-04-30 05:19:28', '2023-04-30 05:19:28'),
(5, 86, 'user@gmail.com', 100, 'nziN1682832094', 'subscription', NULL, '2023-04-30 05:21:55', '2023-04-30 05:21:55'),
(6, 86, 'user@gmail.com', 100, 'yRjn1682832618', 'subscription', NULL, '2023-04-30 05:30:44', '2023-04-30 05:30:44'),
(7, 99, 'buyer@gmail.com', 260, 'Not Available', 'Job Order', 'Minus', '2023-05-02 08:33:50', '2023-05-02 08:33:50'),
(8, 99, 'buyer@gmail.com', 10, 'rngLYkQBiKMO', 'Deposit', 'plus', '2023-05-03 05:01:40', '2023-05-03 05:01:40'),
(9, 86, 'user@gmail.com', 0.68, 'order_Ll9vzyyxOdhmae', 'subscription', NULL, '2023-05-03 10:36:57', '2023-05-03 10:36:57'),
(10, 86, 'user@gmail.com', 50, 'kF1Z1683630225', 'subscription', NULL, '2023-05-09 11:03:47', '2023-05-09 11:03:47'),
(11, 99, 'buyer@gmail.com', 150, 'VbWe1683632458', 'service', 'minus', '2023-05-09 11:40:58', '2023-05-09 11:40:58'),
(12, 86, 'user@gmail.com', 0.01, '1RAk1683699051', 'subscription', NULL, '2023-05-10 06:10:53', '2023-05-10 06:10:53'),
(13, 86, 'user@gmail.com', 0.01, '5fe81683699315', 'subscription', NULL, '2023-05-10 06:15:29', '2023-05-10 06:15:29'),
(14, 86, 'user@gmail.com', 0.01, 'a9co1683699398', 'subscription', NULL, '2023-05-10 06:16:53', '2023-05-10 06:16:53'),
(15, 86, 'user@gmail.com', 1, 'mIe51683700649', 'subscription', NULL, '2023-05-10 06:37:32', '2023-05-10 06:37:32'),
(16, 86, 'user@gmail.com', 1, '3yCS1683701262', 'subscription', NULL, '2023-05-10 06:47:42', '2023-05-10 06:47:42'),
(17, 99, 'buyer@gmail.com', 11.3, 'order_Lnu86h6UP1VNT3', 'service', 'minus', '2023-05-10 09:06:22', '2023-05-10 09:06:22'),
(18, 86, 'user@gmail.com', 71.54, 'E3dz1683714638', 'service', 'minus', '2023-05-10 10:30:38', '2023-05-10 10:30:38'),
(19, 86, 'user@gmail.com', 30, 'MKet1683716115', 'subscription', NULL, '2023-05-10 10:55:15', '2023-05-10 10:55:15'),
(20, 86, 'user@gmail.com', 2, 'u9WY1683716317', 'subscription', NULL, '2023-05-10 10:58:37', '2023-05-10 10:58:37'),
(21, 86, 'user@gmail.com', 100, 'C57z1683716642', 'subscription', NULL, '2023-05-10 11:04:02', '2023-05-10 11:04:02'),
(22, 99, 'buyer@gmail.com', 510.98, 'iR8WPJf1MEeZ', 'Payout', 'minus', '2023-05-10 11:25:13', '2023-05-10 11:25:13'),
(23, 99, 'buyer@gmail.com', 53, 'FQnXUqQmL8pF', 'Payout', 'minus', '2023-05-10 11:29:55', '2023-05-10 11:29:55'),
(24, 86, 'user@gmail.com', 2.08, 'SiEcymVFCTXM', 'Payout', 'minus', '2023-05-11 03:58:39', '2023-05-11 03:58:39'),
(25, 99, 'buyer@gmail.com', 263.51351351351, 'Not Available', 'Job Order', 'Minus', '2023-05-11 05:23:51', '2023-05-11 05:23:51'),
(26, 86, 'user@gmail.com', 100, '6DpE1684145569', 'subscription', NULL, '2023-05-15 10:12:51', '2023-05-15 10:12:51'),
(27, 86, 'user@gmail.com', 30, 'UoYu1684145634', 'subscription', NULL, '2023-05-15 10:13:56', '2023-05-15 10:13:56'),
(28, 86, 'user@gmail.com', 100, 's7pDB6XqASkP', 'Deposit', 'plus', '2023-05-29 17:30:02', '2023-05-29 17:30:02'),
(29, 86, 'user@gmail.com', 100, 'DDNCY9qbabem', 'Deposit', 'plus', '2023-05-29 17:30:29', '2023-05-29 17:30:29'),
(30, 86, 'user@gmail.com', 104, 'qMuBGYIlAKcx', 'Payout', 'minus', '2023-05-29 17:30:58', '2023-05-29 17:30:58'),
(31, 86, 'user@gmail.com', 104, 'SIIEKCXccB69', 'Payout Rejected', 'plus', '2023-05-29 17:33:11', '2023-05-29 17:33:11'),
(32, 86, 'user@gmail.com', 10, 'kXBG1685854792', 'subscription', NULL, '2023-06-04 18:00:10', '2023-06-04 18:00:10'),
(33, 86, 'user@gmail.com', 0, 'order_LxjKPGBO2ZHpxA', 'subscription', NULL, '2023-06-04 18:02:16', '2023-06-04 18:02:16'),
(34, 86, 'user@gmail.com', 10, 'WaWT1685855025', 'subscription', NULL, '2023-06-04 18:03:46', '2023-06-04 18:03:46'),
(35, 86, 'user@gmail.com', 10, 'BSRu1685855305', 'subscription', NULL, '2023-06-04 18:09:04', '2023-06-04 18:09:04'),
(36, 86, 'user@gmail.com', 13.513513513514, 'PIYOj3VSkbJ1', 'Deposit', 'plus', '2023-06-04 18:10:55', '2023-06-04 18:10:55'),
(37, 86, 'user@gmail.com', 1.3513513513514, 'uZ0wi1uEXCZB', 'Deposit', 'plus', '2023-06-04 18:12:25', '2023-06-04 18:12:25'),
(38, 86, 'user@gmail.com', 104, '3zQ3n1bGvYyW', 'Payout', 'minus', '2023-06-04 18:13:49', '2023-06-04 18:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_provider` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `balance` double NOT NULL DEFAULT '0',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `twofa` tinyint NOT NULL DEFAULT '0',
  `go` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `kyc_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 == ''pending''\r\n1 == ''approve''\r\n2 == ''rejected''\r\n3 == ''submitted''',
  `kyc_info` longtext COLLATE utf8mb4_unicode_ci,
  `kyc_reject_reason` text COLLATE utf8mb4_unicode_ci,
  `is_banned` tinyint NOT NULL DEFAULT '0' COMMENT '1 === banned\r\n0 === active',
  `planid` int DEFAULT NULL,
  `plan_expiredate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connect` bigint DEFAULT NULL,
  `service_limit` int DEFAULT NULL,
  `job_limit` int DEFAULT NULL,
  `is_seller` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `photo`, `zip`, `city`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `is_provider`, `status`, `verification_link`, `email_verified`, `balance`, `affilate_code`, `twofa`, `go`, `verified`, `details`, `kyc_status`, `kyc_info`, `kyc_reject_reason`, `is_banned`, `planid`, `plan_expiredate`, `plan_type`, `connect`, `service_limit`, `job_limit`, `is_seller`, `created_at`, `updated_at`) VALUES
(86, 'Jenifer', 'santiago', '16777490132.png', '1230', 'Dhaka', 'road-04', '0123456789', '0900000', 'seller@gmail.com', '$2a$12$0G/RsMFO2zaTS5Oo2tQhmuVD/NguzJjrBMTwnhqiUK2TjC4L9Qsuy', 'Wcx0Tr4ozv3ZkG1WWdu6rCJk28nCBvGsmLG3GoQlCirEpleQvHEEzwvJpKAS', 0, 0, '759f1706acfd7bc23f6b95ae35d0fd8e', 'Yes', 9968.152702703, '3266dcfa238c067719a09f1eabc4e1b4', 0, NULL, 1, NULL, 1, '{\"full_name\":[\"Dark Loard\",\"text\"],\"nid\":[\"sSHjM9SA1649656607.jpg\",\"file\"],\"present_address\":[\"road-04\",\"textarea\"],\"parmanent_address\":[\"d\",\"textarea\"]}', NULL, 0, 10, '2023-07-11 17:48:35', 'monthly', 4977, 390, 407, 1, NULL, '2023-06-12 00:48:35'),
(99, 'buyer', 'pronob', '16837806334.png', '3500', 'comilla', 'uttara, sector-10', '01976814812', 'dsfsdfdas', 'buyer@gmail.com', '$2a$12$vZ2GW.GbbzUkva239Adr9OOV3okqWSumA9niNSzi5g4/gbhcNGh1.', 'KWcA8LvsUVrPQMiwA8Hz6ah54uPLhJ0IBIZvLkVTahHQYp1Dqp0VCXcBI550', 0, 0, '759f1706acfd7bc23f6b95ae35d0fd8e', 'Yes', 123542, '3266dcfa238c067719a09f1eabc4e1b4', 0, NULL, 0, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-18 04:45:12', '2023-05-11 05:23:51'),
(100, 'pronob', 'jeniffer', NULL, NULL, NULL, NULL, '01976814812', NULL, 'pronob@gmail.com', '$2y$10$49NijSn/GRJhbRx9lsLAwuq7s7bZk.9W.CPSoz8WEqfvWqVgpSXj2', NULL, 0, 0, '067907ef013579934f1a8ee175c002fd', 'Yes', 0, 'a1895b3701351b175b086d2abf37fd85', 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-15 09:09:07', '2023-05-15 09:09:07'),
(101, 'Damian Carson', 'dezeco', NULL, NULL, NULL, NULL, '+1 (309) 177-1615', NULL, 'kygisotoku@mailinator.com', '$2y$10$rJAIhFAN7q3rsR8h3kHRXO5AbUkelyOFCYoLh5i/a/g6qoJYSFaBO', NULL, 0, 0, '2488f5cc4f4fd36d0e8a36ca91fd884b', 'Yes', 0, '4d142d703b7335d0ac8cd51cf4b827e2', 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-15 09:39:00', '2023-05-15 09:39:00'),
(102, 'showrav Hasan', 'showrav', 'ZzB9AVmL1685262722.jpg', '1230', 'uttara', 'Uttara', '017288451914', '32134213', 'user1@gmail.com', '$2y$10$7aJmsJ/BLIQDoA4FrsSbAuvwwU6aXlH1460MGNxYEpmMEu9MMHQ9i', NULL, 0, 0, '4bd410416b5ee413dafb280d8db2d52d', 'Yes', 50, '2fce1dc8dcdc577729739c49bf72844e', 0, NULL, 0, NULL, 1, '{\"full_name\":[\"showrav\",\"text\"],\"nid\":[\"ftBoG3Nu1684904063.png\",\"file\"],\"present_address\":[\"test\",\"textarea\"],\"parmanent_address\":[\"test\",\"textarea\"]}', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-05-24 17:53:14', '2023-05-28 21:32:02'),
(104, 'aASA', 'farhadwts', NULL, NULL, NULL, NULL, '01770000000', NULL, 'far@gmail.com', '$2y$10$9q91kgfZVNuZxJM/h9phm.C0N32lmrmu6/HahlGOoAmX45MnWtOI6', NULL, 0, 0, '1b74fcc54e9c5042a2cf5558548bca11', 'Yes', 0, '2fcc60a44d008f2d92bb74d6d6ff9d0a', 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-05 23:36:04', '2023-06-05 23:36:04'),
(105, 'Far', 'Farhadhhh', NULL, NULL, NULL, NULL, '01779002300', NULL, 'farh@gmail.com', '$2y$10$os4AZjCX9FNWUcPKnuHP5OLqFXKqsVfe2h5dguWBtkX.IjyHiGnsW', NULL, 0, 0, '71f165873f49ba286049ba617c99f4e8', 'Yes', 0, '7f6ae84b7b7e7a5f1dd32c4d59414fde', 0, NULL, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-06-05 23:37:21', '2023-06-05 23:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL DEFAULT '0',
  `withdraw_id` int NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Invest','Payout','Withdraw') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int NOT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `planid` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `notify_id` int DEFAULT NULL,
  `connect` bigint DEFAULT NULL,
  `plan_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `status` tinyint DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `transaction_no`, `txnid`, `user_id`, `planid`, `currency_id`, `method`, `amount`, `notify_id`, `connect`, `plan_type`, `payment_status`, `status`, `charge_id`, `created_at`) VALUES
(20, 'ykGX1684145529', 'QWRERQWETQWERQERQWE', 86, 4, 1, 'Manual', 100, NULL, 1000, 'life_time', 'pending', 1, NULL, NULL),
(21, '6DpE1684145569', 'txn_3N7yOcJlIV5dN9n71unV67uZ', 86, 4, 1, 'stripe', 100, NULL, 1000, 'life_time', 'completed', 1, 'ch_3N7yOcJlIV5dN9n714cp4xqw', '2023-05-15 10:12:51'),
(22, 'UoYu1684145634', 'txn_3N7yPgJlIV5dN9n71hRP2VaV', 86, 3, 1, 'stripe', 30, NULL, 300, 'yearly', 'completed', 1, 'ch_3N7yPgJlIV5dN9n71a3PiTuj', '2023-05-15 10:13:56'),
(23, 'kXBG1685854792', '35080938AJ6639639', 86, 10, 1, 'paypal', 10, NULL, 20, 'monthly', 'completed', 0, NULL, '2023-06-04 17:59:52'),
(24, 'order_LxjKPGBO2ZHpxA', 'pay_LxjKYLTM6ci29J', 86, 10, 9, 'razorpay', 0, NULL, 20, 'monthly', 'completed', 1, NULL, '2023-06-04 18:02:16'),
(25, 'lAxdkEgHYaGe', NULL, 86, 10, 9, 'paytm', 10, NULL, 20, 'monthly', 'pending', 1, NULL, '2023-06-04 18:02:27'),
(26, 'pR82ifY5SYaP', NULL, 86, 10, 9, 'paytm', 10, NULL, 20, 'monthly', 'pending', 1, NULL, '2023-06-04 18:02:42'),
(27, 'Pa9G1685854988', 'asweqweqwewq', 86, 10, 4, 'Manual', 10, NULL, 20, 'monthly', 'pending', 1, NULL, NULL),
(28, 'WaWT1685855025', 'txn_3NF96UJlIV5dN9n70nHfCS90', 86, 10, 1, 'stripe', 10, NULL, 20, 'monthly', 'completed', 1, 'ch_3NF96UJlIV5dN9n70ibIVn1a', '2023-06-04 18:03:46'),
(29, 'BSRu1685855305', '4368727', 86, 10, 1, 'flutterwave', 10, NULL, 20, 'monthly', 'completed', 0, NULL, '2023-06-04 18:08:25'),
(30, 'rWhx1685951596', 'txn_3NFYE5JlIV5dN9n70z9mmhpM', 103, 12, 1, 'stripe', 20, NULL, 50, 'monthly', 'completed', 1, 'ch_3NFYE5JlIV5dN9n70r51WQ1U', '2023-06-05 20:53:18'),
(31, 'er581685951631', '9VF21803V4043743E', 103, 12, 1, 'paypal', 20, NULL, 50, 'monthly', 'completed', 0, NULL, '2023-06-05 20:53:51'),
(32, 'pSe11685951987', 'txn_3NFYKOJlIV5dN9n70jqV2cQO', 103, 12, 1, 'stripe', 20, NULL, 50, 'monthly', 'completed', 1, 'ch_3NFYKOJlIV5dN9n70rzEPFA8', '2023-06-05 20:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int NOT NULL,
  `currency_id` int DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `details` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `currency_id`, `txnid`, `user_id`, `method`, `address`, `reference`, `amount`, `fee`, `details`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 4, '2sIdrHMYjLFm', 86, 'Nagad', NULL, NULL, 12.0589, 0.198971, 'Hello! Withdraw please', '2023-04-10 12:02:25', '2023-04-10 12:03:44', 'completed', 'user'),
(2, 4, 'ft0PRtXo4PYI', 99, 'Nagad', NULL, NULL, 12.0589, 0.198971, 'hello', '2023-04-10 14:10:40', '2023-04-10 14:14:35', 'completed', 'user'),
(3, 1, 'iR8WPJf1MEeZ', 99, 'Stripe', NULL, NULL, 499, 11.98, NULL, '2023-05-10 17:25:13', '2023-05-10 17:27:32', 'completed', 'user'),
(4, 1, 'FQnXUqQmL8pF', 99, 'Stripe', NULL, NULL, 50, 3, NULL, '2023-05-10 17:29:55', '2023-05-10 17:30:46', 'completed', 'user'),
(5, 9, 'SiEcymVFCTXM', 86, 'Razorpay', NULL, NULL, 2, 0.0805405, NULL, '2023-05-11 09:58:39', '2023-05-11 10:00:36', 'completed', 'user'),
(6, 1, 'qMuBGYIlAKcx', 86, 'Stripe', NULL, NULL, 100, 4, 'sdsds', '2023-05-29 10:30:58', '2023-05-29 10:33:11', 'rejected', 'user'),
(7, 1, '3zQ3n1bGvYyW', 86, 'Stripe', NULL, NULL, 100, 4, NULL, '2023-06-04 11:13:49', '2023-06-04 11:13:49', 'pending', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` int NOT NULL,
  `currency_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `fixed` double DEFAULT '0',
  `percentage` double DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `currency_id`, `name`, `photo`, `min_amount`, `max_amount`, `fixed`, `percentage`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 'Stripe', 'FYUltzWl1681027381.png', 50, 500, 2, 2, 1, '2022-03-28 08:32:17', '2023-04-09 08:03:01'),
(9, 9, 'Razorpay', 'KxQEbawS1681027357.jpg', 100, 300, 3, 2, 1, '2022-03-28 08:36:43', '2023-04-09 08:02:37'),
(10, 1, 'Payoneer', 'fvWiC67F1681027288.jpg', 30, 150, 2, 1.5, 1, '2022-03-28 08:37:28', '2023-04-09 08:01:28'),
(11, 4, 'Nagad', 'oxRza6Bu1681027254.jpg', 1000, 10000, 1.5, 1.5, 1, '2022-03-28 08:38:12', '2023-04-09 08:00:54'),
(12, 8, 'Testt', 'vgwQQgrL1685263040.png', 10, 1000, 5, 5, 1, '2023-05-28 21:37:20', '2023-05-28 21:37:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_processes`
--
ALTER TABLE `account_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_seller_messages`
--
ALTER TABLE `buyer_seller_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_iso2_unique` (`iso2`),
  ADD UNIQUE KEY `countries_iso3_unique` (`iso3`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobrequests`
--
ALTER TABLE `jobrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_orders`
--
ALTER TABLE `job_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_forms`
--
ALTER TABLE `kyc_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceadditionals`
--
ALTER TABLE `serviceadditionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicebenefits`
--
ALTER TABLE `servicebenefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceincludes`
--
ALTER TABLE `serviceincludes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_orders`
--
ALTER TABLE `service_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_processes`
--
ALTER TABLE `account_processes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `buyer_seller_messages`
--
ALTER TABLE `buyer_seller_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobrequests`
--
ALTER TABLE `jobrequests`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_orders`
--
ALTER TABLE `job_orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyc_forms`
--
ALTER TABLE `kyc_forms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serviceadditionals`
--
ALTER TABLE `serviceadditionals`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `servicebenefits`
--
ALTER TABLE `servicebenefits`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `serviceincludes`
--
ALTER TABLE `serviceincludes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_orders`
--
ALTER TABLE `service_orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
