-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 26 mars 2026 à 15:51
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_jawed`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte_rendu`
--

CREATE TABLE `compte_rendu` (
  `num` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `duree` int(11) DEFAULT 0,
  `type_activite` varchar(100) DEFAULT NULL,
  `activite` varchar(255) DEFAULT NULL,
  `email_utilisateur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte_rendu`
--

INSERT INTO `compte_rendu` (`num`, `date`, `description`, `duree`, `type_activite`, `activite`, `email_utilisateur`) VALUES
(1, '2025-12-18', 'Stage initial', 2, 'Stage', 'Accueil', 'yoan@gmail.com'),
(2, '2026-03-20', 'Découverte de l\'infrastructure réseau et mise en place d\'un nouveau VLAN pour le département comptabilité.', 4, 'Stage', 'Réseau', 'jawedouendi@gmail.com'),
(3, '2026-03-21', 'Développement d\'une API en PHP pour la gestion interne des stocks.', 6, 'Projet', 'Développement', 'jawedouendi@gmail.com'),
(4, '2026-03-22', 'Réunion de suivi avec le tuteur de stage et documentation technique.', 2, 'Stage', 'Réunion', 'jawedouendi@gmail.com'),
(5, '2026-03-20', 'Installation de nouveaux postes de travail pour les alternants.', 3, 'Stage', 'Support', 'marie.durand@gmail.com'),
(6, '2026-03-21', 'Analyse des logs de sécurité suite à une alerte d\'intrusion.', 5, 'Atelier', 'Sécurité', 'marie.durand@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `num` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `CP` int(10) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `tel` int(30) NOT NULL,
  `libelleStage` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `num_tuteur` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`num`, `nom`, `adresse`, `CP`, `ville`, `tel`, `libelleStage`, `email`, `num_tuteur`) VALUES
(10, 'TechCorp Solutions', '15 Avenue de la République', 75011, 'Paris', 140123456, 'Stage développeur full-stack sur projet e-commerce', 'contact@techcorp.com', 2),
(11, 'Innovations Digitales', '8 Rue du Progrès', 69002, 'Lyon', 478123456, 'Stage en développement web et mobile', 'rh@innovations.fr', 3),
(12, 'WebAgency Plus', '25 Boulevard Haussmann', 75009, 'Paris', 156789012, 'Stage intégrateur web et UI/UX design', 'recrutement@webagency.fr', 5),
(13, 'Cloud Services Pro', '42 Rue de la Paix', 59800, 'Lille', 320123456, 'Stage administrateur cloud et infrastructure', 'contact@cloudservices.com', 6),
(14, 'DataCenter France', '100 Rue Albert Calmette', 59650, 'Villeneuve d\'Ascq', 359876543, 'Stage technicien réseau et virtualisation', 'rh@datacenter.fr', 7),
(15, 'CyberSecurite SAS', '45 Rue des Entrepreneurs', 33000, 'Bordeaux', 556789012, 'Stage analyste en cybersécurité', 'contact@cybersecurite.com', 8),
(16, 'DevOps Factory', '12 Rue de l\'Innovation', 44000, 'Nantes', 240123456, 'Stage DevOps et automatisation CI/CD', 'recrutement@devops.fr', 9),
(17, 'Startup Factory', '78 Rue de la Création', 13008, 'Marseille', 491234567, 'Stage développeur full-stack en startup', 'contact@startup.fr', 10),
(18, 'Digital Solutions', '33 Rue des Technologies', 34000, 'Montpellier', 467890123, 'Stage consultant en transformation digitale', 'rh@digital-solutions.com', 4),
(19, 'InnoTech', '120 Avenue des Sciences', 31000, 'Toulouse', 561234567, 'Stage développeur IA et machine learning', 'contact@innotech.fr', 1),
(20, 'WebInnov', '55 Rue du Web', 59000, 'Lille', 359012345, 'Stage développeur web PHP/JavaScript', 'contact@webinnov.fr', 3);

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE `tuteur` (
  `num` int(10) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `tel` int(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tuteur`
--

INSERT INTO `tuteur` (`num`, `nom`, `prenom`, `tel`, `email`) VALUES
(1, 'Martin', 'Philippe', 612345678, 'philippe.martin@entreprise.fr'),
(2, 'Dubois', 'Isabelle', 623456789, 'isabelle.dubois@techcorp.com'),
(3, 'Lefevre', 'Thomas', 634567890, 'thomas.lefevre@innovations.fr'),
(4, 'Moreau', 'Catherine', 645678901, 'catherine.moreau@digital-solutions.com'),
(5, 'Roux', 'Nicolas', 656789012, 'nicolas.roux@webagency.fr'),
(6, 'Bernard', 'Sophie', 667890123, 'sophie.bernard@cloudservices.com'),
(7, 'Petit', 'Laurent', 678901234, 'laurent.petit@datacenter.fr'),
(8, 'Robert', 'Valérie', 689012345, 'valerie.robert@cybersecurite.com'),
(9, 'Richard', 'Jean', 690123456, 'jean.richard@devops.fr'),
(10, 'Durand', 'Marie', 701234567, 'marie.durand@startup.fr');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `num` int(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `tel` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `type` int(1) NOT NULL,
  `option` int(1) NOT NULL,
  `num_stage` int(10) NOT NULL,
  `code_verification` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`num`, `nom`, `prenom`, `tel`, `email`, `motdepasse`, `type`, `option`, `num_stage`, `code_verification`) VALUES
(1, 'Ouendi', 'Jawed', 601010101, 'jawedouendi@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 10, NULL),
(2, 'Gravouil', 'Benjamin', 602020202, 'prof.gravouil@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 1, 0, NULL),
(3, 'Paris', 'Xavier', 603030303, 'xavier@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, 0, NULL),
(4, 'Onambele', 'Yoan', 604040404, 'yoan@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 4, 1, 0, NULL),
(5, 'Durand', 'Marie', 605050505, 'marie.durand@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 11, NULL),
(6, 'Petit', 'Thomas', 606060606, 'thomas.petit@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 12, NULL),
(7, 'Leroy', 'Julie', 607070707, 'julie.leroy@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 1, 0, NULL),
(8, 'Martin', 'Paul', 608080808, 'paul.martin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, 0, NULL),
(9, 'Bernard', 'Sophie', 609090909, 'sophie.bernard@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 4, 1, 0, NULL),
(10, 'Dubois', 'Jean', 610101010, 'jean.dubois@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 2, 13, NULL),
(11, 'Moreau', 'Emma', 611111111, 'emma.moreau@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 14, NULL),
(12, 'Lefevre', 'Lucas', 612121212, 'lucas.lefevre@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 2, 15, NULL),
(13, 'Roux', 'Chloé', 613131313, 'chloe.roux@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 16, NULL),
(14, 'Richard', 'Antoine', 614141414, 'antoine.richard@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 2, 17, NULL),
(15, 'Vincent', 'Sarah', 615151515, 'sarah.vincent@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, 1, 0, NULL),
(16, 'Garcia', 'Manuel', 616161616, 'manuel.garcia@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 3, 1, 0, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte_rendu`
--
ALTER TABLE `compte_rendu`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte_rendu`
--
ALTER TABLE `compte_rendu`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tuteur`
--
ALTER TABLE `tuteur`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
