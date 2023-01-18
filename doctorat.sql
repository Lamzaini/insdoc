-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 11 jan. 2022 à 11:31
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `doctorat`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `cod_dep` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cod_acd` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lib_dep` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lic_dep` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tem_en_sve_dep` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'O'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`cod_dep`, `cod_acd`, `lib_dep`, `lic_dep`, `tem_en_sve_dep`) VALUES
('001', '10', 'RABAT', 'RABAT', 'O'),
('002', '10', 'SALE BOUKNADEL', 'SALE', 'O'),
('003', '10', 'SKHIRATE-TEMARA', 'TEMARA', 'O'),
('004', '09', 'CASABLANCA ANFA', 'ANFA', 'O'),
('005', '09', 'AL FIDA DERB SULTAN', 'AL FIDA', 'O'),
('006', '11', 'sidi bennour', 'bennour', 'O'),
('007', '09', 'AIN SEBAA HAY MOHAMMEDI', 'AIN SEBAA', 'O'),
('008', '09', 'AIN CHOCK HAY HASSANI', 'AIN CHOCK', 'O'),
('009', '09', 'SIDI BERNOUSSI ZENATA', 'BERNOUSSI', 'O'),
('010', '09', 'BEN MSICK MEDIOUNA', 'BEN MSIK', 'O'),
('011', '09', 'MOHAMMADIA', 'MOHAMMEDIA', 'O'),
('012', '14', 'FES-EL-JADID-DAR DBIBAGH', 'FES-JADID', 'O'),
('013', '14', 'FES-MEDINA', 'FES-MEDINA', 'O'),
('014', '14', 'ZOUAGHA - MOULAY-YACOUB', 'ZOUAGHA', 'O'),
('015', '14', 'SEFROU', 'SEFROU', 'O'),
('016', '07', 'MARRAKECH-MENARA', 'MENARA', 'O'),
('017', '07', 'MARRAKECH-MEDINA', 'MAR-MEDINA', 'O'),
('018', '07', 'SIDI YOUSSEF BEN ALI', 'S.YOUSSEF', 'O'),
('019', '07', 'CHICHAOUA', 'CHICHAOUA', 'O'),
('020', '07', 'AL HAOUZ', 'AL HAOUZ', 'O'),
('021', '13', 'MEKNES-EL-MENZEH', 'EL-MENZEH', 'O'),
('022', '13', 'MEKNES-AL-ISMAILIA', 'ISMAILIA', 'O'),
('023', '13', 'EL-HAJEB', 'EL-HAJEB', 'O'),
('024', '08', 'OUJDA-ANGAD', 'OUJ-ANGAD', 'O'),
('025', '08', 'BERKANE', 'BERKANE', 'O'),
('026', '08', 'JERADA', 'JERADA', 'O'),
('027', '04', 'AGADIR IDA-TANANE', 'IDA-TANANE', 'O'),
('028', '04', 'INZEGANE-AIT-MELLOUL', 'INZEGANE', 'O'),
('029', '04', 'CHTOUKA-AIT-BAHA', 'CHTOUKA', 'O'),
('030', '16', 'LARACHE', 'LARACHE', 'O'),
('031', '16', 'CHEFCHAOUEN', 'CHAOUEN', 'O'),
('032', '16', 'TETOUAN', 'TETOUAN', 'O'),
('033', '02', 'LAAYOUNE', 'LAAYOUNE', 'O'),
('034', '02', 'BOUJDOUR', 'BOUJDOUR', 'O'),
('035', '15', 'AL HOCEIMA', 'AL HOCEIMA', 'O'),
('036', '03', 'ASSA-ZAG', 'ASSA-ZAG', 'O'),
('037', '12', 'AZILAL', 'AZILAL', 'O'),
('038', '12', 'BENI MELLAL', 'B. MELLAL', 'O'),
('039', '06', 'BENSLIMANE', 'BENSLIMANE', 'O'),
('040', '14', 'BOULEMANE', 'BOULEMANE', 'O'),
('041', '11', 'EL JADIDA', 'EL JADIDA', 'O'),
('042', '07', 'KELAAT  ESSRAGHNA', 'EL KELAA', 'O'),
('043', '13', 'ERRACHIDIA', 'ERRACHIDIA', 'O'),
('044', '07', 'ESSAOUIRA', 'ESSAOUIRA', 'O'),
('045', '03', 'ES-SEMARA', 'ES-SEMARA', 'O'),
('046', '08', 'FIGUIG', 'FIGUIG', 'O'),
('047', '03', 'GUELMIM', 'GUELMIM', 'O'),
('048', '13', 'IFRANE', 'IFRANE', 'O'),
('049', '05', 'KENITRA', 'KENITRA', 'O'),
('050', '10', 'KHEMISSET', 'KHEMISSET', 'O'),
('051', '13', 'KHENIFRA', 'KHENIFRA', 'O'),
('052', '06', 'KHOURIBGA', 'KHOURIBGA', 'O'),
('053', '08', 'NADOR', 'NADOR', 'O'),
('054', '04', 'OUARZAZATE', 'OUARZAZATE', 'O'),
('055', '01', 'OUED ED DAHAB', 'OUED-DAHAB', 'O'),
('056', '11', 'SAFI', 'SAFI', 'O'),
('057', '06', 'SETTAT', 'SETTAT', 'O'),
('058', '05', 'SIDI KACEM', 'SIDI KACEM', 'O'),
('059', '16', 'TANGER', 'TANGER', 'O'),
('060', '03', 'TAN-TAN', 'TAN-TAN', 'O'),
('061', '15', 'TAOUNATE', 'TAOUNATE', 'O'),
('062', '04', 'TAROUDANNT', 'TAROUDANNT', 'O'),
('063', '03', 'TATA', 'TATA', 'O'),
('064', '15', 'TAZA', 'TAZA', 'O'),
('065', '04', 'TIZNIT', 'TIZNIT', 'O'),
('066', '04', 'ZAGORA', 'ZAGORA', 'O'),
('067', '08', 'TAOURIRT', 'TAOURIRT', 'O'),
('068', '09', 'MOULAY RCHID SIDI OTMANE', 'M-RCHID', 'O'),
('069', '16', 'FAHS BNI MAKADA', 'MAKADA', 'O'),
('071', '10', 'SALA ALJADIDA', 'S-ALJAD', 'O'),
('072', '09', 'MECHOUAR(CASA)', 'MECHOUAR', 'O'),
('073', '00', 'ETRANGER', 'ETRANGER', 'O'),
('074', '18', 'MAROC', 'MAROC', 'O'),
('076', '17', 'MAROC MILITAIRE', 'MILITAIRE', 'O'),
('077', '05', 'SIDI SLIMANE', 'sidi slima', 'O'),
('078', '05', 'SIDI YAHYA', 'SIDI YAHYA', 'O'),
('079', '05', 'OUEZZANE', 'OUEZZANE', 'O'),
('080', '09', 'NOUASSER', 'NOUASSER', 'O'),
('081', '16', 'EL MADIEQ', 'EL MADIEQ', 'O'),
('082', '12', 'Fquih Ben Salah', 'FBSalah', 'O'),
('083', '05', 'Sidi Slimane', 'S-Slimane', 'O'),
('084', '16', 'Ouezzane', 'Ouezzane', 'O'),
('085', '15', 'Guercif', 'Guercif', 'O'),
('086', '08', 'Driouch', 'Driouch', 'O'),
('087', '02', 'Tarfaya', 'Tarfaya', 'O'),
('088', '13', 'Midelt', 'Midelt', 'O'),
('089', '04', 'Sidi Ifni', 'S-Ifni', 'O'),
('090', '04', 'Tinghir', 'Tinghir', 'O'),
('091', '09', 'Hay Hassani', 'H-Hassani', 'O'),
('092', '11', 'youssoufia', 'youssoufia', 'O'),
('093', '06', 'Berrechid', 'berrechid', 'O');

-- --------------------------------------------------------

--
-- Structure de la table `individu`
--

CREATE TABLE `individu` (
  `cne` varchar(12) NOT NULL,
  `cni` varchar(12) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_nais` varchar(10) NOT NULL,
  `cod_dep` varchar(3) NOT NULL,
  `cod_pay` varchar(3) NOT NULL,
  `lib_adr` varchar(200) NOT NULL,
  `vil_adr` varchar(3) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `sujet` varchar(500) NOT NULL,
  `cod_lab` varchar(3) NOT NULL,
  `fonctionnaire` varchar(30) NOT NULL,
  `descfct` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `laboratoir`
--

CREATE TABLE `laboratoir` (
  `id_lab` varchar(4) NOT NULL,
  `lib_lab` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `laboratoir`
--

INSERT INTO `laboratoir` (`id_lab`, `lib_lab`) VALUES
('10', 'Ingénierie des Matériaux et d’Environnement : Modélisation et Application (LIMEMA) '),
('11', 'Ingénierie des systèmes électriques et des télécommunications '),
('12', 'Laboratoire d’Agro-physiologie, Biotechnologies, Environnement et Qualité (Mr. CHAOUCH Abdelaziz)5'),
('14', 'Laboratoire d’Optoélectronique, Physico-Chimie des Matériaux et Environnement '),
('15', 'Laboratoire de Botanique, Biotechnologie et Protection des Plantes'),
('16', 'Laboratoire de Génétique – NeuroEndocrinologie– Biotechnologie'),
('17', 'Laboratoire de Génétique et Biométrie IBRIZ Mohammed '),
('18', 'Laboratoire de Génie Electrique et Systèmes Energétique '),
('19', 'Laboratoire de Génie Energétique et Matériaux '),
('2', 'Analyse Mathématique, Géométrie non Commutative et Applications'),
('20', 'Laboratoire de Géologie, Géophysique, Géorisques et environnement '),
('22', 'Laboratoire de Géosciences et environnement '),
('23', 'Laboratoire de Matériaux, d’Electrochimie et environnement '),
('24', 'Laboratoire de Physico-Chimie des Matériaux Vitreux et Cristallisés'),
('25', 'Laboratoire de Physique de la Matière Condensée'),
('27', 'Laboratoire de Recherche en Informatique et Télécommunications '),
('28', 'Laboratoire des Essais Biologique '),
('29', 'Laboratoire Interdisciplinaire en Ressources Naturelles et en Environnement '),
('3', 'Biochimie, Biotechnologies, Santé et Environnement '),
('30', 'LAGA '),
('31', 'LASTID '),
('32', 'Mathématiques et Applications'),
('33', 'Modélisation de l’information et systèmes de Communication (MISC)'),
('34', 'Nutrition, Santé et Environnement'),
('35', 'Laboratoire des Procédés de Séparation'),
('36', 'Laboratoire de Synthèse Organique et procédés d’Extraction(LSOPE) '),
('38', 'Sciences de  l’ingénieur et Modélisation '),
('4', 'Electric, ingeneering and computing and mathematical science laboratory '),
('41', 'Agroressources Polymeres et Genie des Procedes'),
('5', 'Energies Renouvelables et environnement '),
('6', 'Génie des systèmes  '),
('7', 'Géosciences des RessourcesNaturelles '),
('8', 'Groupe d\'électronique et système de télécommunication '),
('9', 'Informatique, Systèmes et Optimisation  (Informatics, Systems and  Optimization)');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `COD_PAY` varchar(3) NOT NULL,
  `COD_SIS_PAY` varchar(3) DEFAULT NULL,
  `LIB_PAY` varchar(40) NOT NULL,
  `LIC_PAY` varchar(10) NOT NULL,
  `LIB_NAT` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`COD_PAY`, `COD_SIS_PAY`, `LIB_PAY`, `LIC_PAY`, `LIB_NAT`) VALUES
('100', '997', 'FRANCE', 'FRANCE', 'FRANCAIS(E)'),
('101', '220', 'DANEMARK', 'DANEMARK', 'DANOIS(E)'),
('102', '228', 'ISLANDE', 'ISLANDE', 'ISLANDAIS(E)'),
('103', '237', 'NORVEGE', 'NORVEGE', 'NORVEGIEN(NE)'),
('104', '248', 'SUEDE', 'SUEDE', 'SUEDOIS(E)'),
('105', '223', 'FINLANDE', 'FINLANDE', 'FINLANDAIS(E)'),
('106', '222', 'ESTONIE', 'ESTONIE', 'ESTONIEN(NE)'),
('107', '230', 'LETTONIE', 'LETTONIE', 'LETTONIEN(NE)'),
('108', '232', 'LITHUANIE', 'LITHUANIE', 'LITHUANIEN(NE)'),
('109', '211', 'ALLEMAGNE', 'ALLEMAGNE', 'ALLEMAND(E)'),
('110', '213', 'AUTRICHE', 'AUTRICHE', 'AUTRICHIEN(NE)'),
('111', '218', 'BULGARIE', 'BULGARIE', 'BULGARE'),
('112', '226', 'HONGRIE', 'HONGRIE', 'HONGROIS(E)'),
('113', '231', 'LIECHTENSTEIN', 'LIECHTENST', 'LIECHTENSTEIN'),
('114', '241', 'ROUMANIE', 'ROUMANIE', 'ROUMAIN(E)'),
('116', '250', 'REPUBLIQUE TCHEQUE', 'REP.TECHQ.', 'TCHEQUE'),
('117', '246', 'SLOVAQUIE', 'SLOVAQUIE', 'SLOVAQUE'),
('118', '217', 'BOSNIE HERZEGOVINE', 'BOSNIE', 'BOSNIAQUE'),
('119', '219', 'CROATIE', 'CROATIE', 'CROATE'),
('121', '253', 'YOUGOSLAVIE', 'YOUGOSLAVI', 'YOUGOSLAVE'),
('122', '239', 'POLOGNE', 'POLOGNE', 'POLONAIS(E)'),
('123', '243', 'RUSSIE', 'RUSSIE', 'RUSSE'),
('125', '210', 'ALBANIE', 'ALBANIE', 'ALBANAIS(E)'),
('126', '225', 'GRECE', 'GRECE', 'GREC(QUE)'),
('127', '229', 'ITALIE', 'ITALIE', 'ITALIEN(NE)'),
('128', '262', 'SAINT MARIN', 'ST MARIN', 'SAINT MARIN'),
('129', '272', 'VATICAN', 'VATICAN', 'VATICAN(E)'),
('130', '212', 'ANDORRE', 'ANDORRE', 'ANDORRAN(NE)'),
('131', '215', 'BELGIQUE', 'BELGIQUE', 'BELGE'),
('132', '242', 'GRANDE BRETAGNE', 'GD BRETAGN', 'BRITANNIQUE'),
('133', '269', 'GIBRALTAR', 'GIBRALTAR', 'GIBRALTARIEN'),
('134', '221', 'ESPAGNE', 'ESPAGNE', 'ESPAGNOL(E)'),
('135', '238', 'PAY BAS', 'pays BAS', 'NEERLANDAIS(E)'),
('136', '227', 'IRLANDE', 'IRLANDE', 'IRLANDAIS(E)'),
('137', '233', 'LUXEMBOURG', 'LUXEMBOURG', 'LUXEMBOURGEOIS(E)'),
('138', '236', 'MONACO', 'MONACO', 'MONEGASQUE'),
('139', '240', 'PORTUGAL', 'PORTUGAL', 'PORTUGAIS(E)'),
('140', '249', 'SUISSE', 'SUISSE', 'SUISSE'),
('144', '234', 'MALTE', 'MALTE', 'MALTAIS(E)'),
('145', '247', 'SLOVENIE', 'SLOVENIE', 'SLOVENE'),
('148', '214', 'BIELORUSSIE', 'BIELORUSSI', 'BIELORUSSE'),
('151', '235', 'MOLDAVIE', 'MOLDAVIE', 'MOLDAVE'),
('155', '251', 'UKRAINE', 'UKRAINE', 'UKRAINIEN(NE)'),
('156', '252', 'EX REPUBLIQUE YOUGOSLAVE DE MACEDOINE I', 'EX.REP.YOU', 'EX. REP YOUGO MACEDOINE I'),
('201', '121', 'ARABIE SAOUDITE', 'ARABIE', 'SAOUDIEN(NE)'),
('203', '139', 'IRAK', 'IRAK', 'IRAKIEN(NE)'),
('204', '140', 'IRAN', 'IRAN', 'IRANIEN(NE)'),
('205', '148', 'LIBAN', 'LIBAN', 'LIBANAIS(E)'),
('206', '162', 'SYRIE', 'SYRIE', 'SYRIEN(NE)'),
('207', '141', 'ISRAEL', 'ISRAEL', 'ISRAELIEN(NE)'),
('208', '167', 'TURQUIE', 'TURQUIE', 'TURC (TURQUE)'),
('212', '120', 'AFGHANISTAN', 'AFGANISTAN', 'AFGHAN(E)'),
('213', '156', 'PAKISTAN', 'PAKISTAN', 'PAKISTANAIS(E)'),
('214', '126', 'BHOUTAN', 'BHOUTAN', 'BHOUTAN'),
('215', '153', 'NEPAL', 'NEPAL', 'NEPALAIS(E)'),
('216', '129', 'CHINE POPULAIRE', 'CHINE', 'CHINOIS(E)'),
('217', '142', 'JAPON', 'JAPON', 'JAPONAIS(E)'),
('219', '165', 'THAILANDE', 'THAILANDE', 'THAILANDAIS(E)'),
('220', '158', 'PHILIPPINES', 'PHILIPPINE', 'PHILIPPIN(NE)'),
('222', '143', 'JORDANIE', 'JORDANIE', 'JORDANIEN(NE)'),
('223', '137', 'INDE', 'INDE', 'INDIEN(NE)'),
('224', '152', 'MYANMAR', 'MYANMAR', 'DU MYANMAR'),
('225', '127', 'BRUNEI', 'BRUNEI', 'BRUNEI'),
('226', '160', 'SINGAPOUR', 'SINGAPOUR', 'SINGAPOURIEN(NE)'),
('227', '150', 'MALAISIE', 'MALAISIE', 'MALAIS(E)'),
('229', '136', 'MALDIVES', 'MALDIVES', 'MALDIVES'),
('230', '135', 'HONG KONG', 'HONG KONG', 'HONG KONG'),
('231', '138', 'INDONESIE', 'INDONESIE', 'INDONESIEN(NE)'),
('232', '149', 'MACAO', 'MACAO', 'DU MACAO'),
('234', '128', 'CAMBODGE', 'CAMBODGE', 'CAMBODGIEN(NE)'),
('235', '161', 'SRI LANKA', 'SRI LANKA', 'SRI LANKAIS(E)'),
('236', '164', 'TAIWAN', 'TAIWAN', 'TAIWANIS(E)'),
('238', '131', 'COREE DU NORD', 'COREE', 'NORD COREEN(NE)'),
('239', '132', 'COREE DU SUD', 'COREE', 'SUD COREEN(NE)'),
('240', '146', 'KOWEIT', 'KOWEIT', 'KOWEITIEN(NE)'),
('241', '147', 'LAOS', 'LAOS', 'LAOTIEN(NE)'),
('242', '151', 'MONGOLIE', 'MONGOLIE', 'MONGOL(E)'),
('243', '168', 'VIETNAM', 'VIETNAM', 'VIETNAMIEN(NE)'),
('246', '125', 'BANGLADESH', 'BANGLADESH', 'BENGALI(E)'),
('247', '133', 'EMIRATS ARABES UNIS', 'EMIRATS', 'DES EMIRATS ARABES UNIS'),
('248', '159', 'QATAR', 'QATAR', 'QATARI(E)'),
('249', '124', 'BAHREIN', 'BAHREIN', 'BARHEINIEN(NE)'),
('250', '154', 'OMAN', 'OMAN', 'OMANAIS(E)'),
('251', '169', 'YEMEN', 'YEMEN', 'YEMENITE'),
('252', '122', 'ARMENIE', 'ARMENIE', 'ARMENIEN(E)'),
('253', '123', 'AZERBAIDJAN', 'AZERBAIDJA', 'AZERI(E)'),
('254', '130', 'CHYPRE', 'CHYPRE', 'CHYPRIOTE'),
('255', '134', 'GEORGIE', 'GEORGIE', 'GEORGIEN(NE)'),
('256', '144', 'KAZAKHSTAN', 'KAZAKHSTAN', 'KAZAKH'),
('257', '145', 'KIRGHISTAN', 'KIRGHISTAN', 'KIRGHIZE'),
('258', '155', 'OUZBEKISTAN', 'OUZBEKISTA', 'OUZBEK'),
('259', '163', 'TADJIKISTAN', 'TADJIKISTA', 'TADJIK'),
('260', '166', 'TURKMENISTAN', 'TURKMENIST', 'TURKMENE'),
('261', '157', 'PALESTINE', 'PALESTINE', 'PALESTINIEN(NE)'),
('301', '014', 'EGYPTE', 'EGYPTE', 'EGYPTIEN(NE)'),
('302', '028', 'LIBERIA', 'LIBERIA', 'LIBERIAN(E)'),
('303', '001', 'AFRIQUE DU SUD', 'AFRIQUE', 'SUD AFRICAIN(E)'),
('304', '018', 'GAMBIE', 'GAMBIE', 'GAMBIEN(NE)'),
('306', '270', 'STE HELENE', 'STE HELENE', 'DE STE HELENE'),
('308', '266', 'CHAGOS(ARCHIPEL)', 'CHAGOS', 'DE CHAGOS'),
('309', '048', 'TANZANIE', 'TANZANIE', 'TANZANIEN(NE)'),
('310', '054', 'ZIMBABWE', 'ZIMBABWE', 'ZIMBABWEIEN(NE)'),
('311', '036', 'NAMIBIE', 'NAMIBIE', 'NAMIBIEN(NE)'),
('312', '052', 'ZAIRE', 'ZAIRE', 'ZAIROIS(E)'),
('314', '021', 'GUINEE EQUATORIALE', 'GUINEE EQU', 'EQUATORIAL GUINEEN(NE)'),
('315', '016', 'ETHIOPIE', 'ETHIOPIE', 'ETHIOPIEN(NE)'),
('316', '029', 'LIBYE', 'LIBYE', 'LIBYEN(NE)'),
('317', '015', 'ERYTHREE', 'ERYTHREE', 'ERYTHREE'),
('318', '045', 'SOMALIE', 'SOMALIE', 'SOMALIEN(NE)'),
('321', '007', 'BURUNDI', 'BURUNDI', 'BURUNDAIS(E)'),
('322', '008', 'CAMEROUN', 'CAMEROUN', 'CAMEROUNAIS(E)'),
('323', '040', 'CENTRAFRIQUE', 'CENTRAFRIQ', 'CENTRAFRICAIN(E)'),
('324', '011', 'CONGO', 'CONGO', 'CONGOLAIS(E)'),
('326', '012', 'COTE D\'IVOIRE', 'CTE IVOIRE', 'IVOIRIEN(NE)'),
('327', '004', 'BENIN', 'BENIN', 'BENINOIS(E)'),
('328', '017', 'GABON', 'GABON', 'GABONAIS(E)'),
('329', '019', 'GHANA', 'GHANA', 'GHANEEN(NE)'),
('330', '020', 'GUINEE', 'GUINEE', 'GUINEEN(NE)'),
('331', '006', 'BURKINA FASO', 'BURKINA', 'BURKINABE'),
('332', '025', 'KENYA', 'KENYA', 'KENYAN(NE)'),
('333', '030', 'MADAGASCAR', 'MADAGASCAR', 'MALGACHE'),
('334', '031', 'MALAWI', 'MALAWI', 'MALAWIEN(NE)'),
('335', '032', 'MALI', 'MALI', 'MALIEN(NE)'),
('336', '034', 'MAURITANIE', 'MAURITANIE', 'MAURITANIEN(NE)'),
('337', '037', 'NIGER', 'NIGER', 'NIGERIEN(NE)'),
('338', '038', 'NIGERIA', 'NIGERIA', 'NIGERIAN(E)'),
('339', '039', 'OUGANDA', 'OUGANDA', 'OUGANDAIS(E)'),
('340', '041', 'RWANDA', 'RWANDA', 'RUANDAIS(E)'),
('341', '043', 'SENEGAL', 'SENEGAL', 'SENEGALAIS(E)'),
('342', '044', 'SIERRA LEONE', 'SIERRA LEO', 'SIERRA LEONE'),
('343', '046', 'SOUDAN', 'SOUDAN', 'SOUDANAIS(E)'),
('344', '049', 'TCHAD', 'TCHAD', 'TCHADIEN(NE)'),
('345', '050', 'TOGO', 'TOGO', 'TOGOLAIS(E)'),
('346', '053', 'ZAMBIE', 'ZAMBIE', 'ZAMBIEN(NE)'),
('347', '005', 'BOTSWANA', 'BOTSWANA', 'BOTSWANAIS(E)'),
('348', '027', 'LESOTHO', 'LESOTHO', 'LESOTHO'),
('350', '033', 'MAROC', 'MAROC', 'MAROCAIN(E)'),
('351', '051', 'TUNISIE', 'TUNISIE', 'TUNISIEN(NE)'),
('352', '002', 'ALGERIE', 'ALGERIE', 'ALGERIEN(NE)'),
('390', '023', 'ILE MAURICE', 'MAURICE', 'MAURICIEN(NE)'),
('391', '047', 'SWAZILAND', 'SWAZILAND', 'SWAZILANDAIS(E)'),
('392', '022', 'GUINEE BISSAU', 'GUINEE BIS', 'GUINEEN(NE) BISSAU'),
('393', '035', 'MOZAMBIQUE', 'MOZAMBIQUE', 'MOZAMBIQUOIS(E)'),
('394', '042', 'SAO TOME ET PRINCIPE', 'SAO TOME', 'SAO TOME ET PRINCIPE'),
('395', '003', 'ANGOLA', 'ANGOLA', 'ANGOLAIS(E)'),
('396', '009', 'CAP VERT', 'CAP', 'CAP VERDIEN(NE)'),
('397', '010', 'COMORES', 'COMORES', 'COMORIEN(NE)'),
('398', '024', 'SEYCHELLES', 'SEYCHELLES', 'SEYCHELLES'),
('399', '013', 'DJIBOUTI', 'DJIBOUTI', 'DJIBOUTIEN(NE)'),
('401', '066', 'CANADA', 'CANADA', 'CANADIEN(NE)'),
('404', '070', 'ETATS UNIS', 'ETATS', 'AMERICAIN(E)'),
('405', '083', 'MEXIQUE', 'MEXIQUE', 'MEXICAIN(E)'),
('406', '067', 'COSTA RICA', 'COSTA', 'COSTA RICAIN(E)'),
('407', '068', 'CUBA', 'CUBA', 'CUBAIN(E)'),
('408', '261', 'SAINT DOMINGUE', 'ST DOMINGU', 'DOMINICAIN(E)'),
('409', '074', 'GUATEMALA', 'GUATEMALA', 'GUATEMALTEQUE'),
('410', '075', 'HAITI', 'HAITI', 'HAITIEN(NE)'),
('411', '076', 'HONDURAS', 'HONDURAS', 'HONDURIEN(NE)'),
('412', '084', 'NICARAGUA', 'NICARAGUA', 'NICARAGUAIS(E)'),
('413', '085', 'PANAMA', 'PANAMA', 'PANAMEEN(NE)'),
('414', '091', 'EL SALVADOR', 'SALVADOR', 'EL SALVADORIEN(NE)'),
('415', '100', 'ARGENTINE', 'ARGENTINE', 'ARGENTIN(E)'),
('416', '102', 'BRESIL', 'BRESIL', 'BRESILIEN(NE)'),
('417', '103', 'CHILI', 'CHILI', 'CHILIEN(NE)'),
('418', '101', 'BOLIVIE', 'BOLIVIE', 'BOLIVIEN(NE)'),
('419', '104', 'COLOMBIE', 'COLOMBIE', 'COLOMBIEN(NE)'),
('420', '105', 'EQUATEUR', 'EQUATEUR', 'EQUATORIEN(NE)'),
('421', '109', 'PARAGUAY', 'PARAGUAY', 'PARAGUAYEN(NE)'),
('422', '110', 'PEROU', 'PEROU', 'PERUVIEN(NE)'),
('423', '112', 'URUGUAY', 'URUGUAY', 'URUGUAYEN(NE)'),
('424', '113', 'VENEZUELA', 'VENEZUELA', 'VENEZUELIEN(NE)'),
('426', '080', 'JAMAIQUE', 'JAMAIQUE', 'JAMAICAIN(E)'),
('427', '183', 'ILES MALOUINES', 'MALOUINES', 'BRITANNIQUE'),
('428', '107', 'GUYANE', 'GUYANE', 'GUYANAIS(E)'),
('429', '064', 'BELIZE', 'BELIZE', 'BELIZE'),
('431', '061', 'ANTILLES NEERLANDAISES', 'ANTIL. NEE', 'NEERLANDAIS(E)'),
('432', '086', 'PORTO RICO', 'PORTO RICO', 'PORTORICAIN(NE)'),
('433', '092', 'TRINITE ET TOBAGO', 'TRINITE', 'TRINITE ET TOBAGO'),
('434', '081', 'BARBADE', 'BARBADE', 'BARBADE'),
('435', '071', 'GRENADE ETGRENADINES', 'GRENADE', 'GRENADE ETGRENADINES'),
('436', '063', 'BAHAMAS', 'BAHAMAS', 'BAHAMAS'),
('437', '111', 'SURINAM', 'SURINAM', 'SURINAMAIS(E)'),
('438', '069', 'DOMINIQUE', 'DOMINIQUE', 'DOMINICAIN(E)'),
('439', '090', 'SAINTE LUCIE', 'STE LUCIE', 'SAINTE-LUCIEN(E)'),
('440', '089', 'SAINT VINCENT', 'ST VINCENT', 'SAINT VINCENTAIS ET GRENADIN'),
('441', '060', 'ANTIGUA ET BARBUDA', 'ANTIGUA', 'ANTIGUA ET BARBUDA'),
('442', '264', 'ST CHRISTOPHE NIEVES', 'ST CHRISTO', 'ST CHRISTOPHE NIEVES'),
('501', '180', 'AUSTRALIE', 'AUSTRALIE', 'AUSTRALIEN(NE)'),
('502', '191', 'NOUVELLE ZELANDE', 'NLE ZELAND', 'NEO ZELANDAIS(E)'),
('505', '183', 'ILES DU PACIFIQUE', 'PACIFIQUE', 'TERRITOIRE USA'),
('506', '196', 'SAMOA OCCIDENTALES', 'SAMOA OCCI', 'SAMOAN(NE)'),
('507', '188', 'NAURU', 'NAURU', 'NAURU'),
('508', '184', 'FIDJI', 'FIDJI', 'FIDJI'),
('509', '197', 'TONGA OU FRIENDLY', 'TONGA', 'TONGA OU FRIENDLY'),
('510', '193', 'PAPOUASIE NOUVELLE GUINEE', 'PAPOUASIE', 'PAPOUASIE'),
('511', '198', 'TUVALU', 'TUVALU', 'TUVALU'),
('512', '185', 'SALOMON', 'SALOMON', 'SALOMON'),
('513', '187', 'KIRIBATI', 'KIRIBATI', 'KIRIBATI'),
('514', '199', 'VANUATU', 'VANUATU', 'VANUATU'),
('515', '256', 'ILE MARSHALL', 'ILE MARSHA', 'ILE MARSHALL'),
('516', '257', 'MICRONESIE', 'MICRONESIE', 'MICRONESIEN(NE)'),
('517', '260', 'REPUBLIQUE DES ILES PALAOS', 'PALAOS', 'PALAOSIEN(NE)'),
('519', '062', 'ARUBA', 'ARUBA', 'PALAOSIEN(NE)'),
('521', '065', 'BERMUDES', 'BERMUDES', 'BERMUDIEN(NE)'),
('522', '073', 'GUADELOUPE', 'GUADELOUPE', 'GUADELOUPEEN(NE)'),
('523', '181', 'GUAM', 'GUAM', 'GUAMIEN(NE)'),
('524', '106', 'GUYANA', 'GUYANA', 'GUYANNAIS(E)'),
('525', '077', 'ILES CAIMAN', 'CAIMAN', 'CAEMANAIS(E)'),
('526', '182', 'ILES COOK', 'ILES COOK', 'DES ILES COOK'),
('527', '078', 'ILES VIERGES (ETATS UNIS)', 'VIERGE.USA', 'AMERICAIN(E)'),
('528', '079', 'ILES VIERGES (ROYAUME UNIS)', 'VIERGES.RU', 'BRITANNIQUE'),
('529', '026', 'LA REUNION', 'LA REUNION', 'REUNIONNAIS(E)'),
('530', '082', 'MARTINIQUE', 'MARTINIQUE', 'MARTINIQUAIS(E)'),
('532', '189', 'NIOUE', 'NIOUE', 'NIOUEEN(NE)'),
('533', '190', 'NOUVELLE CALEDONIE', 'CALEDONIE', 'CALEDONIEN(NE)'),
('535', '194', 'POLYNESIE FRANCAISE', 'POLY.FRANC', 'POLYNESIEN(NE)'),
('537', '088', 'SAINT KITTS ET NEVIS', 'ST KIT_NEV', 'DE SAINT-KITTS-ET-NEVIS'),
('538', '245', 'SAINT SIEGE', 'ST SIEGE', 'DE SAINT-SIEGE'),
('540', '195', 'SAMOA AMERICAINES', 'SAMOA', 'SAMOAIN(E)'),
('990', '999', 'AUTRES pays', 'AUTRES', 'INCONNUE'),
('996', '224', 'FRANCE', 'FRANCE', 'FRANCAIS(E)');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`cod_dep`);

--
-- Index pour la table `individu`
--
ALTER TABLE `individu`
  ADD PRIMARY KEY (`cne`,`cni`);

--
-- Index pour la table `laboratoir`
--
ALTER TABLE `laboratoir`
  ADD PRIMARY KEY (`id_lab`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`COD_PAY`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
