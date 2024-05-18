-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Трв 18 2024 р., 00:39
-- Версія сервера: 8.0.30
-- Версія PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `Events`
--

-- --------------------------------------------------------

--
-- Структура таблиці `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `date` date NOT NULL,
  `organizator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `date`, `organizator`) VALUES
(1, 'Summer Festival', 'Annual summer festival with music, food, and fun activities.', '2024-07-20', 'Sunshine Events'),
(2, 'Tech Conference', 'A conference focusing on the latest trends and innovations in technology.', '2024-08-15', 'Innovate Corp'),
(3, 'Art Exhibition', 'Showcasing works of local and international artists.', '2024-09-10', 'Creative Minds Gallery'),
(4, 'Food Tasting Event', 'Explore a variety of cuisines from around the world.', '2024-10-05', 'Gourmet Delights'),
(5, 'Charity Gala', 'Raising funds for a noble cause with live performances and auctions.', '2024-11-02', 'Helping Hands Foundation'),
(6, 'Fashion Show', 'Featuring the latest designs from renowned fashion houses.', '2024-12-08', 'Style Elite Agency'),
(7, 'Business Networking Mixer', 'Connect with professionals from various industries.', '2025-01-15', 'Global Connect Networking'),
(8, 'Health and Wellness Expo', 'Promoting holistic health and well-being practices.', '2025-02-20', 'Wellness World Expo'),
(9, 'Film Screening', 'Screening critically acclaimed movies followed by discussions.', '2025-03-10', 'Cinephile Society'),
(10, 'Sports Tournament', 'Compete in various sports disciplines for prizes and glory.', '2025-04-05', 'Victory Sports Management'),
(11, 'Book Fair', 'Celebrating literature with book signings and author talks.', '2025-05-02', 'Bookworm Publishers'),
(12, 'Green Living Expo', 'Showcasing sustainable living practices and eco-friendly products.', '2025-06-08', 'Eco Solutions Initiative'),
(13, 'Music Concert', 'Enjoy performances from top artists in various genres.', '2025-07-15', 'Harmony Productions'),
(14, 'Science Fair', 'Explore the wonders of science through interactive exhibits.', '2025-08-10', 'Discovery Science Institute'),
(15, 'Holiday Market', 'Shop for unique gifts and festive decorations.', '2025-09-25', 'Joyful Seasons Market'),
(16, 'Craft Beer Festival', 'Sample a wide variety of craft beers from local breweries.', '2025-10-15', 'Brewers Guild Association');

-- --------------------------------------------------------

--
-- Структура таблиці `event_registrations`
--

CREATE TABLE `event_registrations` (
  `id` int NOT NULL,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `event_registrations`
--

INSERT INTO `event_registrations` (`id`, `event_id`, `user_id`, `full_name`, `email`, `registration_date`) VALUES
(1, 1, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-17 23:41:01'),
(5, 2, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:03:19'),
(6, 3, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:24'),
(7, 4, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:27'),
(8, 8, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:31'),
(9, 7, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:36'),
(10, 6, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:38'),
(11, 5, 1, 'Василь', 'lalamendzak@gmail.com', '2024-05-18 00:09:41'),
(12, 1, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:20'),
(13, 2, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:23'),
(14, 3, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:29'),
(15, 4, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:32'),
(16, 5, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:35'),
(17, 6, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:37'),
(18, 7, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:45'),
(19, 8, 2, 'AliceSmith', 'alice.smith@example.com', '2024-05-18 00:10:48'),
(20, 1, 3, 'BobJohnson', 'bob.johnson@example.com', '2024-05-18 00:11:18'),
(21, 2, 3, 'BobJohnson', 'bob.johnson@example.com', '2024-05-18 00:11:21'),
(22, 3, 3, 'BobJohnson', 'bob.johnson@example.com', '2024-05-18 00:11:23');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `birth_date` date NOT NULL,
  `sorce` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `birth_date`, `sorce`) VALUES
(1, 'Василь', 'lalamendzak@gmail.com', '123456', '2024-05-10', 'Myself'),
(2, 'AliceSmith', 'alice.smith@example.com', 'password2', '1988-09-25', 'Myself'),
(3, 'BobJohnson', 'bob.johnson@example.com', 'password3', '1995-02-18', 'Friends'),
(4, 'EmilyBrown', 'emily.brown@example.com', 'password4', '1992-11-30', 'Social media'),
(5, 'MichaelWilson', 'michael.wilson@example.com', 'password5', '1987-07-15', 'Myself'),
(6, 'SamanthaTaylor', 'samantha.taylor@example.com', 'password6', '1993-04-22', 'Friends'),
(7, 'DanielMartinez', 'daniel.martinez@example.com', 'password7', '1991-08-09', 'Social media'),
(8, 'EmmaAnderson', 'emma.anderson@example.com', 'password8', '1989-03-07', 'Myself'),
(9, 'ChristopherThomas', 'christopher.thomas@example.com', 'password9', '1986-06-28', 'Myself'),
(10, 'OliviaHernandez', 'olivia.hernandez@example.com', 'password10', '1994-01-14', 'Social media'),
(11, 'JamesYoung', 'james.young@example.com', 'password11', '1997-10-19', 'Myself'),
(12, 'AvaLee', 'ava.lee@example.com', 'password12', '1984-12-03', 'Myself'),
(13, 'MatthewGarcia', 'matthew.garcia@example.com', 'password13', '1996-08-28', 'Friends'),
(14, 'SophiaLopez', 'sophia.lopez@example.com', 'password14', '1998-05-06', 'Friends'),
(15, 'AndrewClark', 'andrew.clark@example.com', 'password15', '1983-02-11', 'Myself'),
(16, 'IsabellaLewis', 'isabella.lewis@example.com', 'password16', '1999-04-17', 'Social media'),
(17, 'WilliamKing', 'william.king@example.com', 'password17', '1982-07-23', 'Myself'),
(18, 'MadisonScott', 'madison.scott@example.com', 'password18', '2000-11-08', 'Myself'),
(19, 'JosephGreen', 'joseph.green@example.com', 'password19', '1981-09-02', 'Social media'),
(20, 'CharlotteBaker', 'charlotte.baker@example.com', 'password20', '2001-03-16', 'Myself'),
(21, 'JohnDoe', 'john.doe@example.com', 'password1', '1990-05-12', 'Social media');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблиці `event_registrations`
--
ALTER TABLE `event_registrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD CONSTRAINT `event_registrations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_registrations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
