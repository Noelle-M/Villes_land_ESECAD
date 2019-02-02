-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  sam. 02 fév. 2019 à 13:26
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ville_search`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `prenom_user` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_search`
--

CREATE TABLE `user_search` (
  `id_user` int(11) NOT NULL,
  `id_ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `ville_id` int(11) NOT NULL,
  `ville_nom` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ville_text` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`ville_id`, `ville_nom`, `ville_text`) VALUES
(1, 'Marseille', 'Marseille (en occitan provenÃ§al : Marselha selon la graphie classique, Marsiho selon la graphie mistralienne) est une commune du Sud-Est de la France, chef-lieu du dÃ©partement des Bouches-du-RhÃ´ne et de la rÃ©gion Sud Provence-Alpes-CÃ´te d\'Azur.\r\n\r\nEn 2015, Marseille est la deuxiÃ¨me commune de France, avec 861 635 habitants et la troisiÃ¨me agglomÃ©ration avec 1 578 584 habitants. Depuis le 1er janvier 2016, Marseille est le siÃ¨ge de la mÃ©tropole d\'Aix-Marseille-Provence, la seconde plus peuplÃ©e de France avec 1 859 922 habitants. Son aire urbaine est quant Ã  elle la troisiÃ¨me de France aprÃ¨s celles de Paris et Lyon avec 1 752 398 habitants en 2015.\r\n\r\nParmi les plus anciennes villes de France, fondÃ©e sous le nom de ÎœÎ±ÏƒÏƒÎ±Î»Î¯Î± (MassalÃ­a) vers 600 av. J.-C. par des marins grecs originaires de PhocÃ©e, Marseille est depuis l\'AntiquitÃ© un important port de commerce et de passage. Elle connait notamment un essor commercial considÃ©rable au cours du XIXe siÃ¨cle devenant une ville industrielle et nÃ©gociante prospÃ¨re. '),
(2, 'Paris', 'Paris est la capitale de la France. Elle se situe au cÅ“ur d\'un vaste bassin sÃ©dimentaire aux sols fertiles et au climat tempÃ©rÃ©, le bassin parisien, sur une boucle de la Seine, entre les confluents de celle-ci avec la Marne et l\'Oise. Ses habitants s\'appellent les Parisiens. Paris est Ã©galement le chef-lieu de la rÃ©gion ÃŽle-de-France et une collectivitÃ© au statut particulier qui exerce les compÃ©tences d\'une commune et d\'un dÃ©partement. Commune centrale de la mÃ©tropole du Grand Paris, crÃ©Ã©e en 2016, elle est divisÃ©e en arrondissements, comme les villes de Lyon et de Marseille, au nombre de vingt. L\'Ã©tat y dispose de prÃ©rogatives particuliÃ¨res exercÃ©es par le prÃ©fet de police de Paris.\r\n\r\nVille la plus peuplÃ©e de France, elle est la premiÃ¨re parmi les aires urbaines de l\'union europÃ©enne devant Londres et la 29e plus peuplÃ©e du monde. Paris compte 2,19 millions d\'habitants au 1er janvier 2016. L\'agglomÃ©ration parisienne s\'est largement dÃ©veloppÃ©e au cours du XXe siÃ¨cle, rassemblant 10,73 millions d\'habitants au 1er janvier 2016, et son aire urbaine (l\'agglomÃ©ration et la couronne pÃ©riurbaine) comptait 12,57 millions d\'habitants.'),
(3, 'Rome', 'Rome (en italien : Roma) est la capitale de l\'Italie depuis 1871. SituÃ©e au centre-ouest de la pÃ©ninsule Italienne, prÃ©s de la mer TyrrhÃ©nienne, elle est Ã©galement la capitale de la rÃ©gion du Latium, et fut celle de l\'Empire romain durant 357 ans. En 2016, elle compte 2 877 215 habitants Ã©tablis sur 1 285 km2, ce qui fait d\'elle la commune la plus peuplÃ©e d\'Italie et la troisiÃ¨me plus Ã©tendue d\'Europe aprÃ¨s Moscou et Londres. Son aire urbaine recense 4 356 403 habitants en 20164. Elle prÃ©sente en outre la particularitÃ© de contenir un Ã©tat enclavÃ© dans son territoire : la citÃ©-Ã©tat du Vatican (Stato della CittÃ© del Vaticano), dont le pape est le souverain. C\'est le seul exemple existant d\'un Ã©tat Ã  l\'intÃ¨rieur d\'une ville.  '),
(4, 'Berlin', 'Berlin est la capitale et la plus grande ville d\'Allemagne. Institutionnellement, c\'est une ville-Ã©tat nommÃ©e Land de Berlin.\r\n\r\nSituÃ©e dans le nord-est du pays, Berlin compte environ 3,7 millions d\'habitants. Ses habitants s\'appellent les Berlinois et les Berlinoises (die Berliner et die Berlinerinnen en allemand). Elle est la deuxiÃ¨me ville et la septiÃ¨me agglomÃ©ration la plus peuplÃ©e de l\'Union europÃ©enne. L\'agglomÃ©ration de Berlin s\'Ã©tend sur 892 km2 et compte 4,4 millions d\'habitants. La rÃ©gion mÃ©tropolitaine de Berlin-Brandebourg qui cumule les LÃ¤nder de Berlin et de Brandebourg regroupe au total prÃ©s de 6 millions d\'habitants.  '),
(5, 'Madrid', 'Madrid est la capitale et la plus grande ville de l\'Espagne. SituÃ©e en plein cÅ“ur du royaume, elle est Ã©galement la capitale et la ville la plus peuplÃ©e de la CommunautÃ© de Madrid. En tant que capitale d\'Ã©tat, elle abrite la plupart des institutions politiques du pays, dont le Palais royal, le siÃ¨ge du gouvernement et le Parlement.\r\n\r\nComptant une population d\'environ 3,2 millions d\'habitants intra-muros sur une superficie totale de 604,3 km2, au sein d\'une aire urbaine d\'environ 6,5 millions d\'habitants en 20143, en comptant sa population intra-muros Madrid est la troisiÃ¨me ville de l\'Union europÃ©enne, derriÃ¨re Londres et Berlin.  '),
(6, 'Le Caire', 'Le Caire, \" La Victorieuse \" ; italien : Il Cairo est la capitale et la plus grande ville d\'Ã‰gypte. Sa population est de plus de seize millions d\'habitants, ce qui en fait la plus grande ville du Moyen-Orient et la seconde d\'Afrique derriÃ¨re Lagos. Elle serait Ã©galement la sixiÃ¨me agglomÃ©ration du monde en 2015. Elle est plus souvent appelÃ©e Masr (le nom arabe de l\'Ã‰gypte) ou Al-Fustat. Elle est situÃ©e en amont du delta du Nil, sur les rives du fleuve ainsi que sur quelques Ã®les adjacentes. Elle se trouve au nord du pays, Ã  220 km au sud-est d\'Alexandrie et 150 km Ã  l\'ouest du canal de Suez. Les habitants du Caire sont appelÃ©s les Cairotes.'),
(7, 'Denver', 'Denver est la capitale et la ville la plus peuplÃ©e de l\'Ã©tat du Colorado, aux Ã‰tats-Unis.\r\n\r\nSituÃ©e dans le centre-ouest du pays, dans la vallÃ©e de la riviÃ¨re South Platte sur le flanc ouest des Grandes Plaines, la ville est Ã  moins d\'une trentaine de kilomÃ¨tres Ã  l\'est du Front Range, la chaÃ®ne de montagnes orientale des montagnes Rocheuses. Denver est surnommÃ©e la Mile-High City car son altitude officielle exacte est d\'un mile (1 609 m) au-dessus du niveau de la mer1. Son capitole, dont le dÃ´me est recouvert de feuilles d\'or, possÃ¨de une plaque commÃ©morative indiquant cette hauteur symbolique.\r\n\r\nLa ville compte 600 158 habitants (recensement fÃ©dÃ©ral de 2010), ce qui la classe au 26e rang des villes amÃ©ricaines ; la zone mÃ©tropolitaine Denver-Aurora, quant Ã  elle, compte 2 543 482 habitants, la classant au 21e rang des agglomÃ©rations amÃ©ricaines. La zone urbaine de Denver-Aurora-Boulder compte environ 3 millions d\'habitants.  ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`ville_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `ville_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
