-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 10:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magazine`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `date`, `uid`, `cat`) VALUES
(11, 'The Maiden: Signed Exclusive Edition ', '<p><span style=\"background-color: rgb(255, 255, 255);\">Edinburgh, October 1679. Lady Christian Nimmo is arrested and charged with the murder of her lover, James Forrester. News of her imprisonment and subsequent trial is splashed across the broadsides, with headlines that leave little room for doubt:</span></p>', '16795228779362928377172237.jpg', '2023-03-22', 7, 'food'),
(13, 'Old Babes in the Wood (Hardback)', '<p>A dazzling collection of fifteen stories from Margaret Atwood, the internationally acclaimed, award-winning author of&nbsp;<a href=\"https://www.waterstones.com/book/the-handmaids-tale/margaret-atwood/9780099740919\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\"><em>The Handmaid\'s Tale</em></a>&nbsp;and&nbsp;<a href=\"https://www.waterstones.com/book/the-testaments/margaret-atwood/9781784708214\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\"><em>The Testaments</em></a>.</p><p>Margaret Atwood is celebrated as one of the most gifted storytellers in the world. These stories explore the full warp and weft of experience, from two best friends disagreeing about their shared past, to the right way to stop someone from choking; from a daughter determining if her mother really is a witch, to what to do with inherited relics such as World War II parade swords.</p><p><br></p><p><strong><em>A dazzl</em></strong>A dazzling collection of fifteen stories from Margaret Atwood, the internationally acclaimed, award-winning author of&nbsp;The Handmaid\'s Tale&nbsp;and&nbsp;The Testaments.Margaret Atwood is celebrated as one of the most gifted storytellers in the world. These stories explore the full warp and weft of experience, from two best friends disagreeing about their shared past, to the right way to stop someone from choking; from a daughter determining if her mother really is a witch, to what to do with inherited relics such as World War II parade swords.A dazzl</p>', '16795811569309781784744854.jpg', '2023-03-23', 10, 'art');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(1, 'nintu', 'nn@g.c', '$2a$10$P127eJB3wz7rvJ2QBgNP0ug6j.wisEEbkdYrMF8xxbDSi00/q7Ay.', ''),
(3, 'test', 'test@g.com', '$2a$10$dxhkxvr0KMgZoi.rA1VBJuF/VjhCwZHZ3186mOwTHFONxjD9c9J8i', ''),
(4, 'hshh', 'n@dgue.cim', '$2a$10$5iJx/9X4afhxVM1eiFyKc.NV2oyWmbGf4W5gJt5gXrIMgMYeOkkB.', ''),
(5, 'nintuk', 'nintu@g.c', '$2a$10$SnUw35/WYe7T7huKBgpFpeBQ99IO.lt2gZsr6TPu5pFycJwEZh1L2', ''),
(6, 'testin', 'testin@g.c', '$2a$10$0Lo2fgyH5G/9fFMRrVGOqOXYLTQgkT4NQtTBK8oZT0XWHPiOPZnju', ''),
(7, 'chippi', 'chippi@g', '$2a$10$t6cCQ58h455BzEQeukQ6qulhLvPzDoDz0K/lXx3dZ9oiC0RPNhGjC', ''),
(8, 'chippis', 'ssss', '$2a$10$ARW3AGtjIVcGp6OkHMi8MuQ3AJEWPFVndLJNAcaK1aAE5ns7c4rSm', ''),
(9, 'hel', 'sdfgj', '$2a$10$juyVMU05bxmKvEoxcw0f.OEqqDCw2eVcfZsjzoKfhTqzCW8K64mLO', ''),
(10, 'krishna', 'kri', '$2a$10$m5ewgHBkZfruRuGlqbYMVug/psvEMmn3r2j0pkHs2aGZTFUItC1WK', ''),
(11, '', '', '$2a$10$nMQY8VXvhk.trKBfFKahp.8VhqfjS6u5tg4qoIyiQ9givX9VpF2QO', ''),
(12, 'iccsr', 'cis@b.o', '$2a$10$xI.GNXbS2RuFPCDBGBbrm.Fpbjujx9akOJijbAbMfMYllVICsfV5.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ForeignKey` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
