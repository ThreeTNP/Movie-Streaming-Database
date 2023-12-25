-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 07:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `UserID` int(6) NOT NULL,
  `DeviceID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`UserID`, `DeviceID`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(3, 4),
(3, 6),
(4, 3),
(4, 4),
(4, 6),
(5, 2),
(6, 2),
(6, 4),
(7, 1),
(8, 2),
(8, 3),
(9, 5),
(10, 2),
(11, 4),
(12, 3),
(13, 4),
(13, 5),
(14, 6),
(15, 2),
(15, 4),
(16, 1),
(17, 1),
(18, 3),
(18, 4),
(19, 1),
(19, 2),
(20, 1),
(21, 5),
(22, 2),
(22, 3),
(22, 4),
(23, 5),
(23, 6),
(24, 5),
(25, 1),
(25, 2),
(25, 4),
(26, 2),
(26, 4),
(27, 2),
(28, 3),
(28, 5),
(28, 6),
(29, 1),
(29, 4),
(30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `device_types`
--

CREATE TABLE `device_types` (
  `DeviceID` int(6) NOT NULL,
  `DeviceName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `device_types`
--

INSERT INTO `device_types` (`DeviceID`, `DeviceName`) VALUES
(2, 'iPad'),
(1, 'iPhone'),
(5, 'Samsung'),
(6, 'Tablet'),
(3, 'TV'),
(4, 'Web Browser');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `GenreID` int(6) NOT NULL,
  `Genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`GenreID`, `Genre`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Sci-fi'),
(5, 'War'),
(6, 'Horror'),
(7, 'Comedy'),
(8, 'Fantasy'),
(9, 'Superhero'),
(10, 'Family'),
(11, 'Crime'),
(12, 'Animation'),
(13, 'Superhero'),
(14, 'Thriller'),
(15, 'Romance'),
(16, 'Biography'),
(18, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MovieID` int(6) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Duration` time NOT NULL,
  `Language` varchar(30) NOT NULL,
  `Age` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MovieID`, `Title`, `ReleaseDate`, `Duration`, `Language`, `Age`, `Description`, `path`, `poster`) VALUES
(1, 'A Beautiful Mind', '2001-12-13', '02:15:00', 'English', 'PG-13', 'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.', 'A_Beautiful_Mind.mp4', 'A_Beautiful_Mind.jpg'),
(2, 'Along With the Gods: The Last 49 Days', '2018-08-01', '02:22:00', 'Korean', 'Not Rated', 'In the afterlife, one guardian helps a man through his trials, while his two colleagues help a former guardian on earth.', 'Along_With_The_Gods.mp4', 'Along_With_The_Gods.jpg'),
(3, 'I, Robot', '2004-07-16', '01:55:00', 'English', 'PG-13', 'In 2035, a technophobic cop investigates a crime that may have been perpetrated by a robot, which leads to a larger threat to humanity.', 'I_Robot.mp4', 'I_Robot.jpg'),
(4, 'Bumblebee', '2018-12-21', '01:54:00', 'English', 'PG-13', 'On the run in the year 1987, Bumblebee finds refuge in a junkyard in a small California beach town. On the cusp of turning 18 and trying to find her place in the world, Charlie Watson discovers Bumblebee, battle-scarred and broken.', 'Bumblebee.mp4', 'Bumblebee.jpg'),
(5, 'Elemental', '2023-06-16', '01:41:00', 'English', 'PG', 'Follows Ember and Wade, in a city where fire-, water-, earth- and air-residents live together.', 'Elemental.mp4', 'Elemental.jpeg'),
(6, 'I Am Legend', '2007-12-14', '01:41:00', 'English', 'PG-13', 'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 'I_am_legend.mkv', 'I_am_legend.jpg'),
(7, 'Train to Busan', '2016-07-20', '01:58:00', 'Korean', 'PG-13', 'While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.', 'Train_To_Busan.mp4', 'Train_To_Busan.jpg'),
(8, 'May Who', '2015-10-01', '01:57:00', 'Thai', 'PG-13', 'Super standard girl in school (May Who) is on a quest to win the love of a school senior heart-throbber (Fame) with her new-found friend (Pong). The only secret is that she can discharge electricity when she gets excited.', 'MayWho.mp4', 'MayWho.jpg'),
(9, 'SuckSeed', '2011-03-17', '02:10:00', 'Thai', 'PG-13', 'As a young boy, Ped was a geeky kid who held a crush on classmate Ern. When Ern moved away with her family to Bangkok, Ped was crushed.\r\n\r\nNow in high school, Ped and Ern are reunited after she backs to her hometown and attends the same school. Ped\'s best', 'SuckSeed.mp4', 'SuckSeed.jpg'),
(10, 'The Matrix Reloaded', '2003-05-15', '02:18:00', 'English', 'R', 'Freedom fighters Neo, Trinity and Morpheus continue to lead the revolt against the Machine Army, unleashing their arsenal of extraordinary skills and weaponry against the systematic forces of repression and exploitation.', 'The_Matrix_Reloaded.mp4', 'The_Matrix_Reloaded.jpg'),
(11, 'Transformers: The Last Knight', '2017-06-21', '02:34:00', 'English', 'PG-13', 'A deadly threat from Earth\'s history reappears and a hunt for a lost artifact takes place between Autobots and Decepticons, while Optimus Prime encounters his creator in space.', 'Transformers_The_Last_Knight.mp4', 'Transformers_The_Last_Knight.jpg'),
(12, 'Interstellar', '2014-11-05', '02:49:00', 'English', 'PG-13', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 'Interstellar.mp4', 'Interstellar.jpg'),
(13, 'Iron Man', '2008-04-30', '02:06:00', 'English', 'PG-13', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', 'Iron_Man.mp4', 'Iron_Man.jpg'),
(14, 'John Wick', '2014-10-23', '01:41:00', 'English', 'R', 'An ex-hitman comes out of retirement to track down the gangsters who killed his dog and stole his car.', 'John_Wick.mp4', 'John_Wick.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `MovieID` int(6) NOT NULL,
  `GenreID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`MovieID`, `GenreID`) VALUES
(1, 3),
(1, 15),
(1, 16),
(2, 1),
(2, 2),
(2, 3),
(2, 8),
(2, 14),
(3, 1),
(3, 4),
(3, 14),
(4, 1),
(4, 2),
(4, 4),
(5, 2),
(5, 3),
(5, 4),
(5, 7),
(5, 8),
(5, 10),
(5, 12),
(6, 1),
(6, 3),
(6, 4),
(6, 6),
(6, 14),
(7, 1),
(7, 6),
(7, 14),
(8, 7),
(8, 8),
(8, 15),
(9, 6),
(9, 7),
(9, 15),
(9, 18),
(10, 1),
(10, 4),
(11, 1),
(11, 2),
(11, 4),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(13, 13),
(14, 1),
(14, 11),
(14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `PlaylistID` int(6) NOT NULL,
  `PlaylistTitle` varchar(255) NOT NULL,
  `UserID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`PlaylistID`, `PlaylistTitle`, `UserID`) VALUES
(1, 'Doo Action', 1),
(2, 'Doo Adventure', 1),
(3, 'My Drama', 3),
(4, 'My Sci-fi', 3),
(5, 'My Action', 3),
(6, 'Luv Luv Comedy', 4),
(7, 'Luv Luv  Fantasy', 5),
(8, 'Luv Luv Superhero', 6),
(9, 'Luv Luv Family', 6),
(10, 'Luv Luv Crime', 6),
(11, 'Animation EiEi', 7),
(12, 'List Thriller', 8),
(13, 'List Action', 8),
(14, 'Movie Comedy', 9),
(15, 'Movie Fantasy', 9),
(16, 'Movie Superhero', 9),
(17, 'Movie Family', 9),
(18, 'Like A Crime', 10),
(19, 'ActionTime', 12),
(20, 'AnimationTime', 12),
(21, 'Oh Thriller', 13),
(22, 'Oh Sci-fi', 13),
(23, 'My Comedy', 14),
(24, 'My Drama', 14),
(25, 'Fantasy  Ooh', 15),
(26, 'Superhero Ooh', 15),
(27, 'Action Ooh', 15),
(28, 'Go Adventure', 17),
(29, 'Listen Music', 18),
(30, 'Dramatic', 19),
(31, 'See Biography', 20),
(32, 'Crimy', 21),
(33, 'Romantic mak', 21),
(34, 'Horrorant', 22),
(35, 'Drama Commady', 24),
(36, 'Mixer', 25),
(37, 'Crime Musical', 26),
(38, 'Super Family', 27),
(39, 'Mixer', 29),
(40, 'Ani Action', 29),
(41, 'RomanSic', 30);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_movies`
--

CREATE TABLE `playlist_movies` (
  `PlaylistID` int(6) NOT NULL,
  `MovieID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlist_movies`
--

INSERT INTO `playlist_movies` (`PlaylistID`, `MovieID`) VALUES
(1, 2),
(1, 3),
(1, 6),
(2, 12),
(3, 5),
(3, 6),
(4, 4),
(4, 11),
(5, 7),
(5, 10),
(5, 14),
(6, 8),
(6, 9),
(7, 2),
(7, 5),
(8, 13),
(9, 5),
(10, 14),
(11, 5),
(12, 3),
(12, 6),
(12, 14),
(13, 2),
(13, 3),
(13, 4),
(13, 6),
(13, 7),
(13, 10),
(13, 11),
(13, 13),
(13, 14),
(14, 5),
(15, 2),
(15, 8),
(16, 13),
(17, 5),
(18, 14),
(19, 10),
(19, 13),
(19, 14),
(20, 5),
(21, 7),
(21, 14),
(22, 3),
(22, 4),
(22, 6),
(22, 9),
(23, 5),
(24, 12),
(25, 8),
(26, 13),
(27, 6),
(27, 10),
(27, 14),
(28, 5),
(28, 12),
(29, 9),
(30, 5),
(30, 12),
(31, 1),
(32, 14),
(33, 1),
(33, 8),
(33, 9),
(34, 6),
(34, 7),
(35, 1),
(35, 5),
(35, 8),
(36, 4),
(36, 6),
(36, 7),
(36, 10),
(36, 12),
(37, 9),
(37, 14),
(38, 5),
(38, 13),
(39, 1),
(39, 4),
(39, 7),
(39, 13),
(40, 2),
(40, 4),
(40, 5),
(40, 10),
(41, 1),
(41, 5),
(41, 9),
(41, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `UserID` int(6) NOT NULL,
  `MovieID` int(6) NOT NULL,
  `Rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`UserID`, `MovieID`, `Rating`) VALUES
(1, 1, 'Like'),
(1, 14, 'Like'),
(1, 11, 'Dislike'),
(2, 5, 'Like'),
(2, 3, 'Like'),
(2, 3, 'Like'),
(2, 13, 'Like'),
(2, 12, 'Like'),
(2, 8, 'Dislike'),
(3, 7, 'Like'),
(3, 11, 'Dislike'),
(3, 9, 'Like'),
(3, 5, 'Like'),
(4, 10, 'Like'),
(4, 14, 'Like'),
(6, 2, 'Dislike'),
(6, 14, 'Like'),
(6, 4, 'Like'),
(6, 11, 'Dislike'),
(6, 6, 'Like'),
(8, 13, 'Like'),
(8, 14, 'Like'),
(8, 3, 'Like'),
(8, 9, 'Dislike'),
(10, 8, 'Like'),
(10, 9, 'Like'),
(11, 4, 'Dislike'),
(11, 11, 'Dislike'),
(11, 13, 'Like'),
(14, 8, 'Like'),
(15, 5, 'Like'),
(15, 13, 'Like'),
(18, 2, 'Dislike'),
(18, 10, 'Like'),
(19, 1, 'Like'),
(19, 9, 'Dislike'),
(19, 11, 'Dislike'),
(19, 14, 'Like'),
(21, 1, 'Like'),
(21, 12, 'Like'),
(22, 14, 'Like'),
(22, 11, 'Dislike'),
(24, 1, 'Like'),
(24, 8, 'Like'),
(24, 13, 'Like'),
(24, 9, 'Like'),
(25, 10, 'Like'),
(25, 11, 'Like'),
(25, 12, 'Like'),
(26, 2, 'Dislike'),
(26, 11, 'Dislike'),
(26, 1, 'Like'),
(26, 10, 'Like'),
(28, 5, 'Like'),
(28, 9, 'Like'),
(29, 11, 'Dislike'),
(29, 5, 'Dislike'),
(29, 7, 'Like'),
(29, 2, 'Like'),
(30, 1, 'Like'),
(30, 6, 'Like'),
(30, 3, 'Like'),
(30, 13, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(6) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SubscriptionType` varchar(15) NOT NULL,
  `CreateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `SubscriptionType`, `CreateDate`) VALUES
(1, 'Ramin', 'rmain2546@gmail.com', 'Premium', '2022-03-02'),
(2, 'John', 'john123@gmail.com', 'Basic', '2022-03-03'),
(3, 'Alice', 'alice456@gmail.com', 'Standard', '2022-03-04'),
(4, 'Emily', 'emily789@gmail.com', 'Premium', '2022-03-07'),
(5, 'David', 'david654@gmail.com', 'Basic', '2022-03-08'),
(6, 'Sophia', 'sophia321@gmail.com', 'Standard', '2022-03-09'),
(7, 'Liam', 'liam987@gmail.com', 'Basic', '2022-03-10'),
(8, 'Olivia', 'olivia123@gmail.com', 'Premium', '2022-03-11'),
(9, 'James', 'james456@gmail.com', 'Standard', '2022-03-12'),
(10, 'Ava', 'ava654@gmail.com', 'Basic', '2022-03-13'),
(11, 'Sophie', 'sophie789@gmail.com', 'Basic', '2022-03-23'),
(12, 'Daniel', 'daniel123@gmail.com', 'Premium', '2022-03-24'),
(13, 'Emma', 'emma456@gmail.com', 'Standard', '2022-03-25'),
(14, 'William', 'william654@gmail.com', 'Basic', '2022-03-26'),
(15, 'Mia', 'mia987@gmail.com', 'Premium', '2022-03-27'),
(16, 'Noah', 'noah321@gmail.com', 'Standard', '2022-03-28'),
(17, 'Avery', 'avery654@gmail.com', 'Basic', '2022-03-29'),
(18, 'Benjamin', 'benjamin123@gmail.com', 'Premium', '2022-03-30'),
(19, 'Harper', 'harper456@gmail.com', 'Standard', '2022-03-31'),
(20, 'Elijah', 'elijah654@gmail.com', 'Basic', '2022-04-01'),
(21, 'Ella', 'ella789@gmail.com', 'Basic', '2022-04-12'),
(22, 'Henry', 'henry123@gmail.com', 'Premium', '2022-04-13'),
(23, 'Grace', 'grace456@gmail.com', 'Standard', '2022-04-14'),
(24, 'Alexander', 'alexander654@gmail.com', 'Basic', '2022-04-15'),
(25, 'Lily', 'lily987@gmail.com', 'Premium', '2022-04-16'),
(26, 'Sebastian', 'sebastian321@gmail.com', 'Standard', '2022-04-17'),
(27, 'Madison', 'madison654@gmail.com', 'Basic', '2022-04-18'),
(28, 'Jack', 'jack123@gmail.com', 'Premium', '2022-04-19'),
(29, 'Aria', 'aria456@gmail.com', 'Standard', '2022-04-20'),
(30, 'Gabriel', 'gabriel654@gmail.com', 'Basic', '2022-04-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`UserID`,`DeviceID`),
  ADD KEY `devices_ibfk_2` (`DeviceID`);

--
-- Indexes for table `device_types`
--
ALTER TABLE `device_types`
  ADD PRIMARY KEY (`DeviceID`),
  ADD UNIQUE KEY `DeviceName` (`DeviceName`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`MovieID`,`GenreID`),
  ADD KEY `movie_genres_ibfk_2` (`GenreID`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`PlaylistID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `playlist_movies`
--
ALTER TABLE `playlist_movies`
  ADD PRIMARY KEY (`PlaylistID`,`MovieID`),
  ADD KEY `playlist_movies_ibfk_2` (`MovieID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `ratings_ibfk_1` (`UserID`),
  ADD KEY `ratings_ibfk_2` (`MovieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_types`
--
ALTER TABLE `device_types`
  MODIFY `DeviceID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `GenreID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `MovieID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `PlaylistID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `devices_ibfk_2` FOREIGN KEY (`DeviceID`) REFERENCES `device_types` (`DeviceID`) ON DELETE CASCADE;

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`) ON DELETE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `playlist_movies`
--
ALTER TABLE `playlist_movies`
  ADD CONSTRAINT `playlist_movies_ibfk_1` FOREIGN KEY (`PlaylistID`) REFERENCES `playlists` (`PlaylistID`) ON DELETE CASCADE,
  ADD CONSTRAINT `playlist_movies_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`MovieID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
