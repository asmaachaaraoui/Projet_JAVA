-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 31 mai 2019 à 13:20
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `java`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `ID_Absence` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(70) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Raison` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID_Absence`),
  KEY `ID_Absence` (`ID_Absence`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`ID_Absence`, `Nom`, `Email`, `Date`, `Raison`) VALUES
(6, 'asmaa errouche', 'asmaaer@gmail.com', '2019-05-26', 'Maladie.'),
(7, 'mohammed chaaraoui', 'mohammed@gmail.com', '2019-07-10', 'Retard.'),
(8, 'aymane bahoui', 'ayman@gmail.com', '2019-05-14', 'Retard.'),
(9, 'amina errouche', 'amina@gmail.com', '2019-05-19', 'Retard.');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

DROP TABLE IF EXISTS `evenement`;
CREATE TABLE IF NOT EXISTS `evenement` (
  `ID_event` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(70) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Date_Debut` date NOT NULL,
  `Date_Fin` date NOT NULL,
  `Lieu` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_event`),
  KEY `ID_event` (`ID_event`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`ID_event`, `Nom`, `Description`, `Date_Debut`, `Date_Fin`, `Lieu`) VALUES
(4, 'hack', 'coding', '2019-05-02', '2019-05-05', 'Institut'),
(6, 'hackaton', 'competition', '2019-05-02', '2019-05-03', 'ENSAJ');

-- --------------------------------------------------------

--
-- Structure de la table `statistique`
--

DROP TABLE IF EXISTS `statistique`;
CREATE TABLE IF NOT EXISTS `statistique` (
  `ID_stat` int(20) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Somme` varchar(50) NOT NULL,
  `Etat` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_stat`),
  KEY `ID_stat` (`ID_stat`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `statistique`
--

INSERT INTO `statistique` (`ID_stat`, `Nom`, `Description`, `Somme`, `Etat`) VALUES
(1, 'hackaton', 'evenement hackaton', '1234  DHS', 'Ajout'),
(6, 'hack', 'coding', '1834 DHs', 'Ajout');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(70) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(60) NOT NULL,
  `Pass` varchar(40) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `login` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `firstname`, `lastname`, `email`, `Pass`, `Type`, `login`) VALUES
(11, 'mohammed', 'chaaraoui', 'mohammed@gmail.com', 'mohammed', 'utilisateur', 'mohammed'),
(3, 'amina', 'errouche', 'amina@gmail.com', 'aminaer', 'utilisateur', 'amina'),
(7, 'aymane', 'bahoui', 'ayman@gmail.com', 'aymane', 'utilisateur', 'aymane'),
(10, 'asmaa', 'errouche', 'asmaa@gmail.com', 'asmaa', 'administrateur', 'asmaa'),
(9, 'asmaa', 'chaaraoui', 'asmaaer@gmail.com', 'asmaaer', 'utilisateur', 'asmaa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
