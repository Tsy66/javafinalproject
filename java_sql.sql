-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-06-10 15:17:28
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `java`
--

-- --------------------------------------------------------

--
-- 資料表結構 `attend`
--

CREATE TABLE `attend` (
  `aNo` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `classdate` date NOT NULL,
  `status` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attend`
--

INSERT INTO `attend` (`aNo`, `sId`, `classdate`, `status`) VALUES
(1, 1104501, '2023-05-22', '出席'),
(2, 1104502, '2023-05-22', '出席'),
(3, 1104503, '2023-05-22', '出席'),
(4, 1104504, '2023-05-22', '出席'),
(5, 1104505, '2023-05-22', '出席'),
(6, 1104506, '2023-05-22', '出席'),
(7, 1104507, '2023-05-22', '出席'),
(8, 1104508, '2023-05-22', '曠課'),
(9, 1104509, '2023-05-22', '曠課'),
(10, 1104510, '2023-05-22', '出席'),
(11, 1104501, '2023-05-29', '出席'),
(12, 1104502, '2023-05-29', '出席'),
(13, 1104503, '2023-05-29', '出席'),
(14, 1104504, '2023-05-29', '曠課'),
(15, 1104505, '2023-05-29', '出席'),
(16, 1104506, '2023-05-29', '出席'),
(17, 1104507, '2023-05-29', '出席'),
(18, 1104508, '2023-05-29', '曠課'),
(19, 1104509, '2023-05-29', '出席'),
(20, 1104510, '2023-05-29', '出席'),
(21, 1104501, '2023-06-04', '出席'),
(22, 1104502, '2023-06-04', '出席'),
(23, 1104503, '2023-06-04', '曠課'),
(24, 1104504, '2023-06-04', '曠課'),
(25, 1104505, '2023-06-04', '曠課'),
(26, 1104506, '2023-06-04', '曠課'),
(27, 1104507, '2023-06-04', '曠課'),
(28, 1104508, '2023-06-04', '曠課'),
(29, 1104509, '2023-06-04', '曠課'),
(30, 1104510, '2023-06-04', '曠課'),
(31, 1104501, '2023-06-05', '出席'),
(32, 1104502, '2023-06-05', '出席'),
(33, 1104503, '2023-06-05', '曠課'),
(34, 1104504, '2023-06-05', '曠課'),
(35, 1104505, '2023-06-05', '曠課'),
(36, 1104506, '2023-06-05', '曠課'),
(37, 1104507, '2023-06-05', '曠課'),
(38, 1104508, '2023-06-05', '曠課'),
(39, 1104509, '2023-06-05', '曠課'),
(40, 1104510, '2023-06-05', '曠課'),
(41, 1104501, '2023-06-07', '出席'),
(42, 1104502, '2023-06-07', '出席'),
(43, 1104503, '2023-06-07', '曠課'),
(44, 1104504, '2023-06-07', '曠課'),
(45, 1104505, '2023-06-07', '曠課'),
(46, 1104506, '2023-06-07', '曠課'),
(47, 1104507, '2023-06-07', '曠課'),
(48, 1104508, '2023-06-07', '曠課'),
(49, 1104509, '2023-06-07', '曠課'),
(50, 1104510, '2023-06-07', '曠課');

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `account` char(8) NOT NULL,
  `sId` int(7) DEFAULT NULL,
  `mypassword` char(20) NOT NULL,
  `tId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `login`
--

INSERT INTO `login` (`account`, `sId`, `mypassword`, `tId`) VALUES
('s1104501', 1104501, '123', NULL),
('s1104502', 1104502, '123', NULL),
('s1104503', 1104503, '123', NULL),
('s1104504', 1104504, '123', NULL),
('s1104505', 1104505, '123', NULL),
('s1104506', 1104506, '123', NULL),
('s1104507', 1104507, '123', NULL),
('s1104508', 1104508, '123', NULL),
('s1104509', 1104509, '123', NULL),
('s1104510', 1104510, '123', NULL),
('t1001', NULL, '123', 1001);

-- --------------------------------------------------------

--
-- 資料表結構 `seat`
--

CREATE TABLE `seat` (
  `num` varchar(10) NOT NULL,
  `sId` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `seat`
--

INSERT INTO `seat` (`num`, `sId`) VALUES
('1-1', NULL),
('1-10', NULL),
('1-2', NULL),
('1-3', NULL),
('1-4', NULL),
('1-5', NULL),
('1-6', NULL),
('1-7', NULL),
('1-8', NULL),
('1-9', NULL),
('2-1', NULL),
('2-10', NULL),
('2-2', NULL),
('2-3', NULL),
('2-4', NULL),
('2-5', NULL),
('2-6', NULL),
('2-7', NULL),
('2-8', NULL),
('2-9', NULL),
('3-1', NULL),
('3-10', NULL),
('3-2', NULL),
('3-3', NULL),
('3-4', NULL),
('3-5', NULL),
('3-6', NULL),
('3-7', NULL),
('3-8', NULL),
('3-9', NULL),
('4-1', NULL),
('4-10', NULL),
('4-2', NULL),
('4-3', NULL),
('4-4', NULL),
('4-5', NULL),
('4-6', NULL),
('4-7', NULL),
('4-8', NULL),
('4-9', NULL),
('5-1', NULL),
('5-10', NULL),
('5-2', NULL),
('5-3', NULL),
('5-4', NULL),
('5-5', NULL),
('5-6', NULL),
('5-7', NULL),
('5-8', NULL),
('5-9', NULL),
('6-1', NULL),
('6-10', NULL),
('6-2', NULL),
('6-3', NULL),
('6-4', NULL),
('6-5', NULL),
('6-6', NULL),
('6-7', NULL),
('6-8', NULL),
('6-9', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `sId` int(7) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `student`
--

INSERT INTO `student` (`sId`, `name`) VALUES
(1104501, '張嘉琪'),
(1104502, '李明宇'),
(1104503, '陳美玲'),
(1104504, '王偉文'),
(1104505, '林宇軒'),
(1104506, '吳小雅'),
(1104507, '蔡文彬'),
(1104508, '黃靜婷'),
(1104509, '劉大偉'),
(1104510, '鄭雨萱');

-- --------------------------------------------------------

--
-- 資料表結構 `teacher`
--

CREATE TABLE `teacher` (
  `tId` int(4) NOT NULL,
  `Name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `teacher`
--

INSERT INTO `teacher` (`tId`, `Name`) VALUES
(1001, '張老師');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`aNo`,`sId`),
  ADD KEY `sId` (`sId`);

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account`) USING BTREE,
  ADD KEY `sId` (`sId`),
  ADD KEY `login_ibfk_2` (`tId`);

--
-- 資料表索引 `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`num`),
  ADD KEY `seat_ibfk_1` (`sId`);

--
-- 資料表索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sId`);

--
-- 資料表索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tId`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `student` (`sId`);

--
-- 資料表的限制式 `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `student` (`sId`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`tId`) REFERENCES `teacher` (`tId`);

--
-- 資料表的限制式 `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `student` (`sId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
