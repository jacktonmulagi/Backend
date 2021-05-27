-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 04:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xml`
--

-- --------------------------------------------------------

--
-- Table structure for table `demandletter`
--

CREATE TABLE `demandletter` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `segment` varchar(200) NOT NULL,
  `demandDate` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `drafter` varchar(50) NOT NULL,
  `branchCode` varchar(250) NOT NULL,
  `branchName` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `interesetRate` varchar(250) NOT NULL,
  `filepath` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT 'PENDING',
  `margin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demandletter`
--

INSERT INTO `demandletter` (`id`, `type`, `email`, `title`, `address`, `segment`, `demandDate`, `drafter`, `branchCode`, `branchName`, `amount`, `interesetRate`, `filepath`, `status`, `margin`) VALUES
(1, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(2, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(3, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(4, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(5, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(6, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(7, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(8, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(9, 'demandletter.DemandLetter', 'mlugaliki+1@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki+1.pdf', 'PENDING', '10'),
(10, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(11, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(12, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(13, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(14, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(15, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(16, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(17, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(18, 'demandletter.DemandLetter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(19, 'demandletter.DemandLetter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(20, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(21, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki.pdf', 'PENDING', '10'),
(22, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(23, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(24, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(25, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(26, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(27, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton2.pdf', 'PENDING', '10'),
(28, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki7.pdf', 'PENDING', '10'),
(29, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki17.pdf', 'PENDING', '10'),
(30, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\n        SERVICES LTS\n        PO BOX 88749-80100\n        MOMBASA\n    ', 'Personal and Business banking', '2016-11-17', '\n        Eric Ngeera\n    ', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki23.pdf', 'PENDING', '10'),
(31, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton4.pdf', 'PENDING', '10'),
(32, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton3.pdf', 'PENDING', '10'),
(33, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki13.pdf', 'PENDING', '10'),
(34, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton20.pdf', 'PENDING', '10'),
(35, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton11.pdf', 'PENDING', '10'),
(36, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1.pdf', 'PENDING', '10'),
(37, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton22.pdf', 'PENDING', '10'),
(38, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton9.pdf', 'PENDING', '10'),
(39, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton12.pdf', 'PENDING', '10'),
(40, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton3.pdf', 'PENDING', '10'),
(41, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton15.pdf', 'PENDING', '10'),
(42, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton9.pdf', 'PENDING', '10'),
(43, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton22.pdf', 'PENDING', '10'),
(44, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton10.pdf', 'PENDING', '10'),
(45, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton3.pdf', 'PENDING', '10'),
(46, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton6.pdf', 'PENDING', '10'),
(47, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton20.pdf', 'PENDING', '10'),
(48, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton7.pdf', 'PENDING', '10'),
(49, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton8.pdf', 'PENDING', '10'),
(50, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton20.pdf', 'PENDING', '10'),
(51, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton5.pdf', 'PENDING', '10'),
(52, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton10.pdf', 'PENDING', '10'),
(53, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1.pdf', 'PENDING', '10'),
(54, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton9.pdf', 'PENDING', '10'),
(55, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton11.pdf', 'PENDING', '10'),
(56, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton0.pdf', 'PENDING', '10'),
(57, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1.pdf', 'PENDING', '10'),
(58, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton9.pdf', 'PENDING', '10'),
(59, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton11.pdf', 'PENDING', '10'),
(60, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton10.pdf', 'PENDING', '10'),
(61, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton15.pdf', 'PENDING', '10'),
(62, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(63, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(64, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(65, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(66, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(67, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(68, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(69, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(70, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(71, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton.pdf', 'PENDING', '10'),
(72, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-554147436.pdf', 'PENDING', '10'),
(73, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1285260385.pdf', 'PENDING', '10'),
(74, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-533527873.pdf', 'PENDING', '10'),
(75, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1175714118.pdf', 'PENDING', '10'),
(76, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-1294870412.pdf', 'PENDING', '10'),
(77, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1431153125.pdf', 'PENDING', '10'),
(78, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1490563474.pdf', 'PENDING', '10'),
(79, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton327890620.pdf', 'PENDING', '10'),
(80, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1140421714.pdf', 'PENDING', '10'),
(81, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1843428424.pdf', 'PENDING', '10'),
(82, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton359273643.pdf', 'PENDING', '10'),
(83, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1727869957.pdf', 'PENDING', '10'),
(84, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton398002537.pdf', 'PENDING', '10'),
(85, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1892048585.pdf', 'PENDING', '10'),
(86, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1286755471.pdf', 'PENDING', '10'),
(87, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-790285779.pdf', 'PENDING', '10'),
(88, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-1334539667.pdf', 'PENDING', '10'),
(89, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-1002312728.pdf', 'PENDING', '10'),
(90, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1417607280.pdf', 'PENDING', '10'),
(91, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1435145955.pdf', 'PENDING', '10'),
(92, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki107303175.pdf', 'PENDING', '10'),
(93, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki56617358.pdf', 'PENDING', '10'),
(94, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1016895893.pdf', 'PENDING', '10'),
(95, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-1598493954.pdf', 'PENDING', '10'),
(96, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1531406248.pdf', 'PENDING', '10'),
(97, 'demandletter', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1264716803.pdf', 'PENDING', '10'),
(98, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-587596729.pdf', 'PENDING', '10'),
(99, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1771227416.pdf', 'PENDING', '10'),
(100, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-726550279.pdf', 'PENDING', '10'),
(101, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1403213395.pdf', 'PENDING', '10'),
(102, 'demandletter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-47755933.pdf', 'PENDING', '10'),
(103, 'demandletter', 'kevinkenei9@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '12,627.85', '13.5', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\kevinkenei9-2130557380.pdf', 'PENDING', '10');

-- --------------------------------------------------------

--
-- Table structure for table `dormancynotification`
--

CREATE TABLE `dormancynotification` (
  `id` int(11) NOT NULL,
  `type` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `segment` varchar(225) NOT NULL,
  `date` varchar(20) NOT NULL,
  `drafter` varchar(225) NOT NULL,
  `branchCode` varchar(225) NOT NULL,
  `branchName` varchar(225) NOT NULL,
  `accountNumber` varchar(225) NOT NULL,
  `filepath` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dormancynotification`
--

INSERT INTO `dormancynotification` (`id`, `type`, `email`, `address`, `segment`, `date`, `drafter`, `branchCode`, `branchName`, `accountNumber`, `filepath`) VALUES
(1, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-2084475569.pdf'),
(2, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-236882524.pdf'),
(3, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton739179106.pdf'),
(4, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-2043513670.pdf'),
(5, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1272708579.pdf'),
(6, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1906115367.pdf'),
(7, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1257948396.pdf'),
(8, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1671899825.pdf'),
(9, 'DormancyNotification', 'mlugaliki@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1359247877.pdf'),
(10, 'DormancyNotification', 'mlugaliki@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki388927673.pdf'),
(11, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton373984317.pdf'),
(12, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-93982562.pdf'),
(13, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1499579066.pdf'),
(14, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1566254100.pdf'),
(15, 'DormancyNotification', 'otingajacton@gmail.com', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1622257026.pdf'),
(16, 'DormancyNotification', 'kevinkenei9@gmail', '\nTitle, Name and Surname\nCompany Name\nAddress line 1\nAddress line 2\nAddress line 3\nPostal Code\n', 'Insert Department\nhere… e.g\nCorporate and\nInvestment Banking', '22nd June, 2016', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '123456', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\kevinkenei91278821258.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `agreementId` varchar(100) NOT NULL,
  `amountFinanced` varchar(225) NOT NULL,
  `accruedPrincipalInterest` varchar(225) NOT NULL,
  `paymentStartDate` varchar(225) NOT NULL,
  `totalOutstandingBalance` varchar(225) NOT NULL,
  `registrationNo` varchar(225) NOT NULL,
  `makeNo` varchar(225) NOT NULL,
  `insuranceCompany` varchar(225) NOT NULL,
  `policyNumber` varchar(225) NOT NULL,
  `insuranceExpDate` varchar(225) NOT NULL,
  `customerNo` varchar(225) NOT NULL,
  `accountNo` varchar(225) NOT NULL,
  `accountName` varchar(225) NOT NULL,
  `statementPeriod` varchar(225) NOT NULL,
  `installmentAmount` varchar(225) NOT NULL,
  `statementDate` varchar(225) NOT NULL,
  `accruedPenalty` varchar(225) NOT NULL,
  `paymentEndDate` varchar(225) NOT NULL,
  `totalArrears` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `valueDate` varchar(225) NOT NULL,
  `interestDue` varchar(225) NOT NULL,
  `repaymentAmount` varchar(225) NOT NULL,
  `availableBalance` varchar(225) NOT NULL,
  `path` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statement`
--

INSERT INTO `statement` (`id`, `type`, `email`, `address`, `agreementId`, `amountFinanced`, `accruedPrincipalInterest`, `paymentStartDate`, `totalOutstandingBalance`, `registrationNo`, `makeNo`, `insuranceCompany`, `policyNumber`, `insuranceExpDate`, `customerNo`, `accountNo`, `accountName`, `statementPeriod`, `installmentAmount`, `statementDate`, `accruedPenalty`, `paymentEndDate`, `totalArrears`, `date`, `description`, `valueDate`, `interestDue`, `repaymentAmount`, `availableBalance`, `path`) VALUES
(1, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-201694596.pdf'),
(2, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1831764673.pdf'),
(3, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1247231340.pdf'),
(4, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton764617302.pdf'),
(5, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1480867627.pdf'),
(6, 'LOAN_STATEMENT', 'otingajacton@gmail.com', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-293553946.pdf'),
(7, 'LOAN_STATEMENT', 'kevinkenei9@gmail', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'AA19183Q6YRD', '4555556', '2345', '15 AUG 2020', '379,770', 'KCU 411E', 'SUZUKI EVERY', 'HER', '101977002331', '13 JuN 2020', '1001', '12345678', 'John Doe', '1212', '2345', '20/10/2020', '1000', '31/12/2020', '1000', '15 JAN 2020', 'Long term insurance fee due', '15 Jan 2020', '345.95', '19,456.40', '4590', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\kevinkenei9-1120539375.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ufaaletter`
--

CREATE TABLE `ufaaletter` (
  `id` int(11) NOT NULL,
  `type` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `segment` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `drafter` varchar(225) NOT NULL,
  `submissionDate` varchar(225) NOT NULL,
  `branchCode` varchar(225) NOT NULL,
  `branchName` varchar(225) NOT NULL,
  `accountNumber` varchar(225) NOT NULL,
  `amount` varchar(225) NOT NULL,
  `filepath` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ufaaletter`
--

INSERT INTO `ufaaletter` (`id`, `type`, `email`, `title`, `address`, `segment`, `date`, `drafter`, `submissionDate`, `branchCode`, `branchName`, `accountNumber`, `amount`, `filepath`) VALUES
(1, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton1047499713.pdf'),
(2, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton-1874089744.pdf'),
(3, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton-77225722.pdf'),
(4, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton-354353250.pdf'),
(5, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton397962070.pdf'),
(6, 'UFAA', 'otingjacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingjacton218894817.pdf'),
(7, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-957555904.pdf'),
(8, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki2081138715.pdf'),
(9, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-584904257.pdf'),
(10, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-853027280.pdf'),
(11, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki761139477.pdf'),
(12, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1487087690.pdf'),
(13, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki1488726767.pdf'),
(14, 'UFAA', 'mlugaliki@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\mlugaliki-503001559.pdf'),
(15, 'UFAA', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-1619526377.pdf'),
(16, 'UFAA', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton-2144056484.pdf'),
(17, 'UFAA', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1022038787.pdf'),
(18, 'UFAA', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\otingajacton1421297717.pdf'),
(19, 'UFAA', 'kevinkenei9@gmail', 'PRIVATE AND CONFIDENTIAL', 'THOK MALONG CHOL\nP.O BOX 73699 00200\nNAIROBI KENYA\n', 'Personal and Business banking', '4.21.2021', '\nEric Ngeera\n', 'October 2018', '001', 'Branch Manager, Digo Road Branch', '123456', '12,627.85', 'C:\\Users\\JACKTON\\finalxml\\pdfs\\kevinkenei9-565527196.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `xml_to_pdf`
--

CREATE TABLE `xml_to_pdf` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `segment` varchar(200) NOT NULL,
  `demandDate` date NOT NULL,
  `drafter` varchar(50) NOT NULL,
  `branchCode` varchar(250) NOT NULL,
  `branchName` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `interesetRate` varchar(250) NOT NULL,
  `margin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xml_to_pdf`
--

INSERT INTO `xml_to_pdf` (`id`, `type`, `email`, `title`, `address`, `segment`, `demandDate`, `drafter`, `branchCode`, `branchName`, `amount`, `interesetRate`, `margin`) VALUES
(1, 'DemandLetter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', '10'),
(2, 'DemandLetter', 'otingajacton@gmail.com', 'PRIVATE AND CONFIDENTIAL', 'BRAMBA EXPRESS\nSERVICES LTS\nPO BOX 88749-80100\nMOMBASA\n', 'Personal and Business banking', '2016-11-17', '\nEric Ngeera\n', '001', 'Branch Manager, Digo Road Branch', '50,627.85', '13.5', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demandletter`
--
ALTER TABLE `demandletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormancynotification`
--
ALTER TABLE `dormancynotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ufaaletter`
--
ALTER TABLE `ufaaletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xml_to_pdf`
--
ALTER TABLE `xml_to_pdf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demandletter`
--
ALTER TABLE `demandletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `dormancynotification`
--
ALTER TABLE `dormancynotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ufaaletter`
--
ALTER TABLE `ufaaletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `xml_to_pdf`
--
ALTER TABLE `xml_to_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
