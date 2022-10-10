-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2022 at 09:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-demo`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_05_19_065853_create_posts_table', 1),
(18, '2022_10_07_082704_create_properties_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bathroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propertytype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `uuid`, `county`, `country`, `town`, `description`, `address`, `image`, `thumbnail`, `latitude`, `longitude`, `bedroom`, `bathroom`, `price`, `propertytype`, `type`, `created_at`, `updated_at`) VALUES
(1, 'd8d9c545-3832-3d85-a25a-aac181479be7', 'Pennsylvania', 'Cocos (Keeling) Islands', 'Johnsonbury', 'Debitis doloribus eos optio debitis. Et accusamus exercitationem blanditiis enim fuga optio vitae. Eligendi temporibus cum blanditiis. Voluptate culpa quos reiciendis doloremque officiis.', '6446 Smitham Ferry Apt. 571', 'https://p-hold.com/1000/400?57108', 'https://p-hold.com/100/100?54016', '-64.3049290', '-154.2199280', '1', '12', '85352', 'Terraced', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(2, '3cdadf78-eab1-3783-9cdd-b50eb8aaea38', 'Delaware', 'Guernsey', 'South Katelyn', 'In cupiditate fuga et in totam. Enim aut vel atque consequatur et et. Et aperiam eum aliquid rerum facilis ex. Vel maxime reprehenderit ea illum et eos.', '23663 Oberbrunner Bridge Suite 239', 'https://p-hold.com/1000/400?49440', 'https://p-hold.com/100/100?62816', '-8.8929900', '-50.3735560', '6', '1', '1565191', 'Flat', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(3, '4a576246-47e8-3085-a156-8fabebca6a67', 'Oregon', 'Russian Federation', 'Lake Athenaville', 'Quod ipsam doloribus repellat omnis similique dolore esse enim. In ut et dolorem mollitia est reprehenderit qui aut. Ex amet suscipit earum. Est aspernatur accusamus est qui sapiente error.', '920 Nellie Ranch', 'https://p-hold.com/1000/400?82763', 'https://p-hold.com/100/100?53150', '-10.3512150', '36.4368700', '8', '1', '129598', 'Semi-detached', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(4, 'ada9d64d-13fa-3076-a80c-9061d57728a3', 'Rhode Island', 'Kyrgyz Republic', 'North Stewart', 'Minima qui autem quis non. Consequuntur voluptate exercitationem et delectus eum voluptas. Enim nostrum omnis aperiam ab. Voluptas qui est est odit ut eveniet optio.', '3382 Lincoln Expressway Apt. 647', 'https://p-hold.com/1000/400?17603', 'https://p-hold.com/100/100?25319', '52.3242880', '-152.4294270', '10', '1', '1837110', 'Semi-detached', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(5, 'ba370783-a623-32f6-9603-8ef2319a1ef0', 'Colorado', 'Rwanda', 'Cronaborough', 'Quia dolor eos praesentium repellat. Delectus aut voluptatum reiciendis sit excepturi sint. Eveniet qui error dolorem praesentium vero. Modi architecto voluptatum dolor dolorum eos.', '67355 Bosco Knolls Suite 188', 'https://p-hold.com/1000/400?32896', 'https://p-hold.com/100/100?19556', '72.6266150', '73.0234140', '1', '1', '1866398', 'Cottage', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(6, 'd9fd187a-8ed7-3c90-a330-86c6f254cd5b', 'Rhode Island', 'Liechtenstein', 'Colemouth', 'Corporis sapiente harum voluptas ea dignissimos. Et minima et vel reprehenderit qui. Autem expedita voluptatum quam mollitia. Vel ea blanditiis id hic quae.', '8605 Cormier Shoal', 'https://p-hold.com/1000/400?49650', 'https://p-hold.com/100/100?52307', '-77.5114890', '-23.0975950', '6', '4', '2288944', 'Cottage', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(7, '74222714-f1cd-3436-8a7a-a966bacfc348', 'Virginia', 'Ethiopia', 'West Marcos', 'Eos quaerat sit occaecati voluptatibus commodi sunt. Sunt nemo dolorem illo ducimus corrupti. Consequatur accusantium ullam culpa. Error doloribus ducimus pariatur aperiam et at quidem a.', '8095 Erich Wells Suite 997', 'https://p-hold.com/1000/400?76239', 'https://p-hold.com/100/100?87598', '-85.7801480', '30.2216580', '12', '4', '2790578', 'Bungalow', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(8, 'e18ef63f-9f4a-35bf-abf8-4069c615d862', 'Georgia', 'Mauritius', 'Stiedemannborough', 'Pariatur dignissimos eligendi sunt dolorem occaecati voluptatibus quia. Amet non enim voluptates repudiandae et dolor. Voluptas molestias quos sed quos.', '8978 Swift Extension', 'https://p-hold.com/1000/400?99804', 'https://p-hold.com/100/100?69897', '-49.1496640', '0.0277660', '11', '7', '809370', 'End of Terrace', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(9, '4d0a9adf-71a8-3e19-8cc7-98ce1e7ed44a', 'Michigan', 'Nicaragua', 'Gradymouth', 'Quas ratione beatae omnis rerum. Debitis earum enim adipisci nihil. Expedita officiis aliquid aut est rem voluptas.', '492 Krystel Estates Apt. 972', 'https://p-hold.com/1000/400?23245', 'https://p-hold.com/100/100?89252', '60.2918940', '95.9194130', '6', '1', '1265490', 'Bungalow', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(10, '6611d962-415a-3745-855b-68e497377fa3', 'New York', 'Timor-Leste', 'North Elmoreburgh', 'Cumque voluptas cumque est. Tempore consectetur nulla sed praesentium odio. Aut corrupti saepe sit. Possimus ad et officia odio ex qui ex. Hic non minus dolorem eum aut natus.', '438 Carroll Mills', 'https://p-hold.com/1000/400?42502', 'https://p-hold.com/100/100?38251', '69.1524930', '143.8099710', '2', '10', '2963214', 'End of Terrace', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(11, 'cec67dee-da34-30fc-910e-5666e9d2b3e0', 'Florida', 'Guadeloupe', 'North Elbert', 'Sit aliquam et et consectetur hic omnis iure. Consequatur veritatis earum dolorem quod. Voluptates totam dolorem velit laboriosam. Qui voluptatibus nam ut modi neque.', '4459 Volkman Camp', 'https://p-hold.com/1000/400?35986', 'https://p-hold.com/100/100?65582', '-87.2389150', '-70.1337010', '5', '3', '2117014', 'Cottage', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(12, 'db26d0d9-8a71-3ff8-a731-e20a8653f87c', 'Missouri', 'Belarus', 'East Elseview', 'Molestias eaque dolor nisi illum distinctio sint quia sit. Pariatur enim impedit hic rerum aliquam. Et non impedit dolore velit animi in.', '6943 Price Inlet', 'https://p-hold.com/1000/400?20148', 'https://p-hold.com/100/100?73169', '-40.9844200', '145.0891870', '12', '2', '2653772', 'Detatched', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(13, 'f4f7f6b5-0eb6-3318-a6e3-49d1a0331ba8', 'New Jersey', 'Tanzania', 'North Shanna', 'Culpa voluptas saepe sed molestiae. Nihil blanditiis aut itaque cupiditate velit ratione perferendis. Expedita velit natus inventore. Tenetur ut ipsa animi.', '9956 Weber Roads', 'https://p-hold.com/1000/400?75527', 'https://p-hold.com/100/100?41811', '88.5495200', '150.9990470', '11', '7', '1075397', 'Bungalow', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(14, '910a7322-26a0-31dd-a007-f803800f89f4', 'Hawaii', 'Nauru', 'Ottilieborough', 'Sit molestiae corporis nisi. Iste rerum aspernatur optio quibusdam eum minima quia aliquid. Voluptate maiores nulla doloribus.', '393 Heathcote Causeway Apt. 332', 'https://p-hold.com/1000/400?25652', 'https://p-hold.com/100/100?18079', '14.9013170', '28.5562610', '4', '2', '716253', 'Terraced', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(15, '033bea6b-2425-3949-8e4e-2669a8cf5ae8', 'South Dakota', 'Paraguay', 'Port Ari', 'Repellendus autem est modi labore. At qui ex minus est magnam non. Laudantium est libero animi commodi officiis dolores est voluptate.', '4313 Jacobs Mountain Suite 777', 'https://p-hold.com/1000/400?62629', 'https://p-hold.com/100/100?17422', '10.9628260', '-10.2443770', '5', '3', '801688', 'Detatched', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(16, '9ceb7c43-ef32-3024-808e-30c4b3ff298f', 'Tennessee', 'France', 'Fayeshire', 'Culpa magnam ut occaecati praesentium quia. A neque accusantium dolores nemo laudantium dolores. Rerum praesentium omnis eos et sed. Totam atque est incidunt ex animi laborum.', '1972 Terry Creek Suite 354', 'https://p-hold.com/1000/400?55300', 'https://p-hold.com/100/100?27987', '-33.7622740', '4.8294300', '9', '2', '1007326', 'Bungalow', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(17, '69b40d94-ecc3-3c91-8e3e-d22440d49d45', 'Wyoming', 'Marshall Islands', 'Jaskolskiview', 'Corporis eos facere accusamus odit accusantium molestiae consectetur. Vero culpa sunt molestias doloribus reprehenderit. Quasi maxime fugiat enim laudantium ut quam.', '293 Kreiger Cliffs Suite 201', 'https://p-hold.com/1000/400?19878', 'https://p-hold.com/100/100?45654', '22.7034960', '159.5743020', '9', '5', '1825887', 'End of Terrace', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(18, '18bac8c4-7ae5-3b05-a8ce-7c91b9db3e04', 'New Mexico', 'El Salvador', 'Dickensville', 'Assumenda rem iusto alias perspiciatis. Qui porro possimus numquam atque. Laborum et adipisci saepe recusandae quasi.', '9867 Heidenreich Station Suite 312', 'https://p-hold.com/1000/400?49979', 'https://p-hold.com/100/100?82647', '-57.2407180', '-70.9522550', '4', '1', '1753893', 'Terraced', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(19, '27410ab0-9c18-37c8-a637-87047ac032d5', 'Alabama', 'Dominica', 'Tiatown', 'Deserunt voluptates quo repudiandae quidem. Voluptates itaque optio eos quo sunt. Dolorem voluptas at commodi quibusdam. Suscipit sit ullam enim atque dolor repellat quis.', '17126 Schuppe Junctions', 'https://p-hold.com/1000/400?42036', 'https://p-hold.com/100/100?62711', '-71.1533240', '112.7421960', '6', '3', '2973360', 'Flat', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(20, '89e5d0b3-c6e1-35ef-8f29-46b1d9c63f63', 'New Hampshire', 'Iceland', 'Burdettestad', 'Ipsum ullam commodi aliquid est. Iste corrupti rerum mollitia veniam quibusdam eum repellendus. Eum possimus nihil dignissimos temporibus.', '14629 Runte Passage Suite 011', 'https://p-hold.com/1000/400?82134', 'https://p-hold.com/100/100?43486', '-12.6268550', '-56.7367400', '3', '1', '942573', 'Flat', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(21, 'ab80960a-01b8-38e5-b9d8-618db2fa391f', 'Arkansas', 'Heard Island and McDonald Islands', 'Port Willis', 'Rerum sit placeat incidunt sequi. Quod voluptas dolorum ducimus. Rerum et odit magni dignissimos doloribus quo.', '98757 Cummings Centers', 'https://p-hold.com/1000/400?62529', 'https://p-hold.com/100/100?66504', '-67.7874650', '38.4859930', '6', '2', '1493056', 'Bungalow', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(22, '0b8ad8e1-82b4-3c85-af6b-ce3bb820b3be', 'Nevada', 'Canada', 'Stammview', 'Dolores qui perspiciatis sit et aut. Consequatur et aut voluptates dicta quis. Et est sapiente repudiandae ipsa. Fugiat repellat ad aut.', '4068 Fidel Tunnel Suite 222', 'https://p-hold.com/1000/400?81370', 'https://p-hold.com/100/100?40162', '-2.9226570', '94.3450930', '8', '4', '2337554', 'Semi-detached', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(23, '0d2861c8-1f02-38a8-82cf-c866dc9df5f3', 'Oregon', 'Norfolk Island', 'Adelaborough', 'Error aliquam cum vel magni nihil sed tempore. Tempora quia labore a voluptatem. Et exercitationem est nesciunt quaerat.', '8863 Antonina View Suite 420', 'https://p-hold.com/1000/400?85047', 'https://p-hold.com/100/100?28005', '77.0392150', '40.9708420', '4', '8', '885462', 'Semi-detached', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(24, '7f4a63a7-c1c8-34c6-9a3a-640ea435d9d2', 'New York', 'Austria', 'Lake Nedland', 'Perferendis est adipisci ut illum. Ipsam et sequi optio aut. Necessitatibus deserunt facilis fugit.', '71662 Pinkie Groves', 'https://p-hold.com/1000/400?83726', 'https://p-hold.com/100/100?49325', '27.3210660', '-92.1764420', '9', '1', '76513', 'End of Terrace', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(25, 'a4036500-2522-3dbf-afc0-20e813dc6f1c', 'Nebraska', 'Wallis and Futuna', 'Myaland', 'Qui et assumenda similique quia ut et nihil. Omnis et iusto voluptates ipsa rerum magni nihil. Minima iste vero minima ea quis totam sint.', '19353 Lindgren Spur', 'https://p-hold.com/1000/400?14180', 'https://p-hold.com/100/100?96606', '-80.8273180', '71.8222660', '5', '2', '153399', 'Terraced', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(26, 'cb04ce52-6496-3c79-9b10-ee1e7bfb1675', 'New Hampshire', 'Argentina', 'Gloverchester', 'Veritatis natus asperiores consequuntur qui. Voluptas repudiandae non ea aperiam iste qui earum. Esse repellendus quisquam ut aut placeat qui. Quas sed quia perspiciatis est aliquid laboriosam inventore.', '1209 Amely Cliffs Apt. 910', 'https://p-hold.com/1000/400?25223', 'https://p-hold.com/100/100?24374', '68.8329370', '113.5649730', '7', '2', '2432222', 'Bungalow', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(27, '42c6f340-b0e8-37be-8d3c-844ac61e29b3', 'Washington', 'Burkina Faso', 'Westonmouth', 'Dolorem enim voluptate aperiam necessitatibus. Atque rerum aut consequatur a. Veniam rerum illo aperiam. Et itaque quo dolor nobis beatae possimus a.', '223 Moshe Points', 'https://p-hold.com/1000/400?83645', 'https://p-hold.com/100/100?85233', '37.5099470', '58.8648290', '8', '5', '571258', 'Detatched', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(28, 'fabbe569-1260-3303-b39e-861584a8aa21', 'South Dakota', 'Guinea', 'South Cicero', 'Modi magni assumenda tempora quibusdam voluptas maiores esse. Dignissimos et fuga est sequi a labore rem. Ea illum debitis voluptatibus delectus quo modi.', '79187 Roberts Port', 'https://p-hold.com/1000/400?93018', 'https://p-hold.com/100/100?34151', '30.6668000', '-35.7039430', '6', '7', '2152461', 'End of Terrace', 'sale', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(29, 'a72f6065-3a00-35d4-947e-6a5c5d72d5ce', 'Idaho', 'Swaziland', 'Willmshaven', 'Rerum natus eos blanditiis adipisci fuga expedita voluptas. Voluptas debitis nisi dicta occaecati voluptatem et voluptatem. Recusandae voluptas optio dolore aut fugit et ea.', '2861 Doyle Greens Apt. 483', 'https://p-hold.com/1000/400?51432', 'https://p-hold.com/100/100?56736', '-58.6318040', '46.7235630', '6', '2', '763262', 'Flat', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(30, 'beeb9e32-7ccc-3d4a-b846-091ddc5d960a', 'Wisconsin', 'Austria', 'Everettehaven', 'Magni dolor nostrum blanditiis officia incidunt. Deleniti pariatur voluptatem neque in.', '3498 Lavina Tunnel Apt. 415', 'https://p-hold.com/1000/400?82253', 'https://p-hold.com/100/100?93768', '14.7135590', '-48.6349920', '11', '6', '759832', 'Bungalow', 'rent', '2022-10-08 01:25:16', '2022-10-08 01:33:05'),
(31, '59.71676318522565', 'gdfg', 'dfgdfg', 'dfgdsg', 'dfgdfg', 'dfgdsgfdf', '1665212337.png', NULL, NULL, NULL, '3', '3', '5435', 'Bungalow', 'sale', '2022-10-08 01:26:38', '2022-10-08 01:28:58');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jackson', 'jack@gmail.com', NULL, '$2y$10$rucJn3tV246iwcKWJjbds.9kKqXEGEHB7ZWbCzPfcxP0yH7u6nhEm', NULL, '2022-10-08 01:26:13', '2022-10-08 01:26:13');

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
-- Indexes for table `properties`
--
ALTER TABLE `properties`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
