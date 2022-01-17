-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 07:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musical_world`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `uploadsongs` (IN `singer_id` INT(11), IN `song_name` VARCHAR(255), IN `song_format` VARCHAR(255), IN `singer_name` VARCHAR(255), IN `song_image` VARCHAR(255), IN `audio_file` VARCHAR(255))  NO SQL
INSERT INTO upload_albums(`singer_id`,`song_name`,`song_format`,`singer_name`,`song_image`,`audio_file`) VALUES(singer_id,song_name,song_format,singer_name,song_image,audio_file)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'kannada_albums'),
(2, 'hindi_albums'),
(3, 'english_albums'),
(4, 'uploaded_albums');

-- --------------------------------------------------------

--
-- Table structure for table `english_albums`
--

CREATE TABLE `english_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `english_albums`
--

INSERT INTO `english_albums` (`song_id`, `song_name`, `song_format`, `singer_name`, `movie_name`, `song_image`, `audio_file`) VALUES
(1, 'Major Lazer - Lean On', 'mp3', 'Major Lazer', 'Album', 'major-lazer-dj-snake-mo-lean-on-vid-still-2017-billboard-1548.jpg', 'Major Lazer - Lean OnJind Mahi (Vidya Mashup Cover ft Ricky Jatt  Raashi Ku - Copy.mp3'),
(2, 'Heathens', 'mp3', 'Twenty once pilots', 'Album', 'download.jfif', 'B Twenty One Pilots - Heathens.mp3'),
(3, '24K Magic', 'mp3', 'Bruno Mars', 'Album', 'download (1).jfif', 'Bruno Mars - 24K Magic - MP3 320.mp3'),
(4, 'Attention', 'mp3', 'Charlie Puth', 'Album', '1200px-Charlie_Puth_-_Attention_(Official_Single_Cover).png', 'Charlie Puth - Attention (Lyrics - Lyric Video).mp3'),
(5, 'I Got You', 'mp3', 'Bebe Rexha', 'Album', 'download (2).jfif', 'Bebe Rexha - I Got You - MP3 320.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_songs`
--

CREATE TABLE `favorite_songs` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `singer_name` varchar(255) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite_songs`
--

INSERT INTO `favorite_songs` (`id`, `cat_id`, `song_id`, `user_id`, `song_name`, `singer_name`, `song_image`, `audio_file`) VALUES
(2, 3, 4, 7, 'Attention', 'Charlie Puth', '1200px-Charlie_Puth_-_Attention_(Official_Single_Cover).png', 'Charlie Puth - Attention (Lyrics - Lyric Video).mp3'),
(3, 4, 4, 6, 'Banjaara', 'Shrikar ', 'musical-world.jpg', '2. Banjaara - Mohammad Irfan.mp3'),
(4, 4, 1, 6, 'kareyole', 'shriharimk', 'musical-world.jpg', 'Kareyole.mp3'),
(6, 1, 9, 5, 'Kareyole', 'Inchara rao', 'rangitharanga.jpg', 'Kareyole.mp3'),
(7, 2, 5, 5, 'Sooraj Dooba Hai Yaaroo', 'Arijith Singh', 'Sooraj_Dooba_Hain.jpg', 'Sooraj Dooba Hain Yaaron .mp3'),
(8, 2, 4, 5, 'Sanam Re', 'Arijith Singh', 'sanam_re.jpg', 'Sanam Re (Title Song) - Arijit Singh [Full Song].mp3'),
(9, 1, 7, 8, 'sadha ninna kannall', 'Shreya Ghoshal and Sonu Nigam', 'download.jfif', '03.Sadha Ninna Kannali - Copy.mp3'),
(10, 3, 2, 8, 'Heathens', 'Twenty once pilots', 'download.jfif', 'B Twenty One Pilots - Heathens.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `hindi_albums`
--

CREATE TABLE `hindi_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hindi_albums`
--

INSERT INTO `hindi_albums` (`song_id`, `song_name`, `song_format`, `singer_name`, `movie_name`, `song_image`, `audio_file`) VALUES
(1, 'Chahun  mai yana', 'mp3', 'Arijith Singh', 'Ashiqui 2', 'chahun_mai_aana.jpg', 'Chahun_Main_Ya_Naa(MyMp3Song).mp3'),
(2, 'Galliyan', 'mp3', 'Ankith Tiwari', 'Ek villian', 'ek_villian.jpg', 'Galliyan_-_Ek_Villain_(Ankit_Tiwari)(MyMp3Song.Com).mp3'),
(3, 'Kaun Tujhe', 'mp3', 'Arman Malik', 'MS Dhoni', 'kaun-tujhe-ms-dhoni-sushant-singh-400x212.jpg', 'Kaun Tujhe-(Mr-Jatt.com).mp3'),
(4, 'Sanam Re', 'mp3', 'Arijith Singh', 'Saname Re', 'sanam_re.jpg', 'Sanam Re (Title Song) - Arijit Singh [Full Song].mp3'),
(5, 'Sooraj Dooba Hai Yaaroo', 'mp3', 'Arijith Singh', 'Roy', 'Sooraj_Dooba_Hain.jpg', 'Sooraj Dooba Hain Yaaron .mp3');

-- --------------------------------------------------------

--
-- Table structure for table `kannada_albums`
--

CREATE TABLE `kannada_albums` (
  `song_id` int(100) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kannada_albums`
--

INSERT INTO `kannada_albums` (`song_id`, `song_name`, `song_format`, `singer_name`, `movie_name`, `song_image`, `audio_file`) VALUES
(7, 'sadha ninna kannall', 'mp3', 'Shreya Ghoshal and Sonu Nigam', 'Bachchan', 'download.jfif', '03.Sadha Ninna Kannali - Copy.mp3'),
(8, 'Kanasalu [KannadaMasti.Net]', 'mp3', 'Shreya Ghoshal ', 'Mungaaru male2', 'Kanasalu [KannadaMasti.Net].mp3', 'Kanasalu [KannadaMasti.Net].mp3'),
(9, 'Kareyole', 'mp3', 'Inchara rao', 'Rangitharanga', 'rangitharanga.jpg', 'Kareyole.mp3'),
(10, 'Last benchu party', 'mp3', 'Ajaneesh Loknath', 'Kirik Party', 'lastbench.jpg', 'Last_Benchu_Party.mp3'),
(11, 'Mussanje Veleli', 'mp3', 'Vani Harikrishna', 'Adduri', 'mussanje.jpg', 'Mussanje Veleli - Copy.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `upload_albums`
--

CREATE TABLE `upload_albums` (
  `song_id` int(100) NOT NULL,
  `singer_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_format` varchar(100) NOT NULL,
  `singer_name` varchar(100) NOT NULL,
  `song_image` varchar(255) NOT NULL,
  `audio_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_albums`
--

INSERT INTO `upload_albums` (`song_id`, `singer_id`, `song_name`, `song_format`, `singer_name`, `song_image`, `audio_file`) VALUES
(1, 5, 'kareyole', 'mp3', 'shriharimk', 'musical-world.jpg', 'Kareyole.mp3'),
(2, 6, 'chahun  mai yana', 'mp3', 'shreyas', 'musical-world.jpg', 'Chahun_Main_Ya_Naa(MyMp3Song).mp3'),
(3, 7, 'Baarish', 'mp3', 'Shrikar ', 'musical-world.jpg', '01 Baarish.mp3'),
(4, 7, 'Banjaara', 'mp3', 'Shrikar ', 'musical-world.jpg', '2. Banjaara - Mohammad Irfan.mp3'),
(5, 6, 'Shower', 'mp3', 'shreyas', 'musical-world.jpg', 'Becky G - Shower [128].mp3'),
(6, 6, 'Khamoshiyaan', 'mp3', 'shreyas', 'musical-world.jpg', 'Khamoshiyan+(Title+Track).mp3'),
(7, 6, 'Bulleya', 'mp3', 'shreyas', 'musical-world.jpg', 'Bulleya [Starmusiq.cc].mp3'),
(8, 8, 'Dilwale', 'mp3', 'Yashaswini', 'musical-world.jpg', '01 - Dilwale - Gerua [DJMaza.Info].mp3');

--
-- Triggers `upload_albums`
--
DELIMITER $$
CREATE TRIGGER `IncrementCount` AFTER INSERT ON `upload_albums` FOR EACH ROW update user set user.contributions = user.contributions + 1 where new.singer_id = user.user_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contributions` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `mobile_number`, `email_address`, `password`, `contributions`) VALUES
(1, 'dbms', '9876543210', 'admin@gmail.com', 'dbms', 0),
(5, 'shriharimk', '8970197782', 'shriharimk01@gmail.com', 'test', 1),
(6, 'shreyas', '7892444312', 'shreyasprabhu@gmail.com', 'test', 4),
(7, 'Shrikar ', '8197735071', 'shrikarikulkarni@gmail.com', 'test', 2),
(8, 'Yashaswini', '5674126574', 'yash@gmail.com', '1234', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `english_albums`
--
ALTER TABLE `english_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `favorite_songs`
--
ALTER TABLE `favorite_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hindi_albums`
--
ALTER TABLE `hindi_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `kannada_albums`
--
ALTER TABLE `kannada_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `upload_albums`
--
ALTER TABLE `upload_albums`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `english_albums`
--
ALTER TABLE `english_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite_songs`
--
ALTER TABLE `favorite_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hindi_albums`
--
ALTER TABLE `hindi_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kannada_albums`
--
ALTER TABLE `kannada_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `upload_albums`
--
ALTER TABLE `upload_albums`
  MODIFY `song_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
