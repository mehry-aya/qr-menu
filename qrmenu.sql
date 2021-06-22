-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 11 juin 2021 à 16:00
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qrmenu`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `level` bigint(20) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `digital_menu_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `level`, `name`, `digital_menu_id`) VALUES
(6, 3, 'drinks', 12),
(18, 2, 'cafe', 12),
(19, 2, 'food', 11),
(20, 2, 'mmmm', 11);

-- --------------------------------------------------------

--
-- Structure de la table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1615576528462-11', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:33', 1, 'EXECUTED', '8:c97b7e6e558bb67f32eed8bc8d53a3f6', 'createTable tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-12', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:35', 2, 'EXECUTED', '8:b9ad280e9217be657641c705aafc051b', 'addForeignKeyConstraint baseTableName=jhi_persistent_audit_evt_data, constraintName=FK2ehnyx2si4tjd2nt4q7y40v8m, referencedTableName=jhi_persistent_audit_event', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-1', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:36', 3, 'EXECUTED', '8:20f555ccdfe3b322e46f155bf2d379ae', 'dropDefaultValue columnName=activation_key, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-2', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:36', 4, 'EXECUTED', '8:361a0065df461a04735aa1269d178416', 'dropDefaultValue columnName=email, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-3', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:36', 5, 'EXECUTED', '8:8ed585b108a2f2ce087db5a87d237ebf', 'dropDefaultValue columnName=event_type, tableName=jhi_persistent_audit_event', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-4', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:36', 6, 'EXECUTED', '8:659b18fd78a438080b94df4befd23bb4', 'dropDefaultValue columnName=first_name, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-5', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:36', 7, 'EXECUTED', '8:ebc7432a824edc2642d28ea514032f77', 'dropDefaultValue columnName=image_url, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-6', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:37', 8, 'EXECUTED', '8:8aa623681e32cd44711c554163552e4d', 'dropDefaultValue columnName=lang_key, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-7', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:37', 9, 'EXECUTED', '8:d3edb5ad4880b50ce7a1a6c3c5a781d9', 'dropDefaultValue columnName=last_modified_by, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-8', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:37', 10, 'EXECUTED', '8:80a3ada96cd776415b95da2d0d0fd6fb', 'dropDefaultValue columnName=last_name, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-9', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:37', 11, 'EXECUTED', '8:a9fa466e4a421326ad352957b009330d', 'dropDefaultValue columnName=reset_key, tableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1615576528462-10', 'Aya (generated)', 'config/liquibase/changelog/20210312191418_changelog.xml', '2021-03-12 21:39:37', 12, 'EXECUTED', '8:1648d76e0189355a214d46ea221a6008', 'dropDefaultValue columnName=value, tableName=jhi_persistent_audit_evt_data', '', NULL, '3.9.0', NULL, NULL, '5581572968'),
('1616716159088-3', 'Aya (generated)', 'config/liquibase/changelog/20210325234751_changelog.xml', '2021-03-26 15:39:48', 13, 'EXECUTED', '8:3a666654cd0411c5094c905b623f07ed', 'createTable tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6769588398'),
('1616716159088-1', 'Aya (generated)', 'config/liquibase/changelog/20210325234751_changelog.xml', '2021-03-26 15:39:49', 14, 'EXECUTED', '8:01e07ac7a1b364d8c0dae0d996b7446c', 'dropDefaultValue columnName=category, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '6769588398'),
('1616716159088-2', 'Aya (generated)', 'config/liquibase/changelog/20210325234751_changelog.xml', '2021-03-26 15:39:49', 15, 'EXECUTED', '8:3466fdfb6c270de764594fea9dea168d', 'dropDefaultValue columnName=image_url, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '6769588398'),
('1616792785043-6', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:21', 16, 'EXECUTED', '8:28ceaeb9de1bbe43a921bcafaf55e7da', 'createTable tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616792785043-1', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:22', 17, 'EXECUTED', '8:84300c5459033947f92133cfbbc67b32', 'dropDefaultValue columnName=adress, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616792785043-2', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:22', 18, 'EXECUTED', '8:57feec46f12685707c3d244be5858b01', 'dropDefaultValue columnName=category, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616792785043-3', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:22', 19, 'EXECUTED', '8:912ead413832938a03351a558c5bc4f1', 'dropDefaultValue columnName=contact, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616792785043-4', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:22', 20, 'EXECUTED', '8:0052ff141ffb7cc6dd059ff6505e6e8f', 'dropDefaultValue columnName=logo, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616792785043-5', 'Aya (generated)', 'config/liquibase/changelog/20210326210538_changelog.xml', '2021-03-26 23:42:22', 21, 'EXECUTED', '8:9ab1aa609cd8758e866475348bd14ae2', 'dropDefaultValue columnName=name, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '6798541444'),
('1616886360692-3', 'Aya (generated)', 'config/liquibase/changelog/20210327230537_changelog.xml', '2021-03-28 00:07:57', 22, 'EXECUTED', '8:3d15ffbd82fb8fde8511d3224ea633c0', 'createTable tableName=product', '', NULL, '3.9.0', NULL, NULL, '6886477514'),
('1616886360692-1', 'Aya (generated)', 'config/liquibase/changelog/20210327230537_changelog.xml', '2021-03-28 00:07:58', 23, 'EXECUTED', '8:ca9d89b8ff526f5ef445262149346295', 'dropDefaultValue columnName=category, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '6886477514'),
('1616886360692-2', 'Aya (generated)', 'config/liquibase/changelog/20210327230537_changelog.xml', '2021-03-28 00:07:58', 24, 'EXECUTED', '8:2ab34b8c02b98d5cc79b6b0565a35e2b', 'dropDefaultValue columnName=product, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '6886477514'),
('1616952662236-4', 'Aya (generated)', 'config/liquibase/changelog/20210328172715_changelog.xml', '2021-03-28 18:37:04', 25, 'EXECUTED', '8:77e5e7bfde78c0b6f10d447da3fdc765', 'createTable tableName=order', '', NULL, '3.9.0', NULL, NULL, '6953019426'),
('1616952662236-1', 'Aya (generated)', 'config/liquibase/changelog/20210328172715_changelog.xml', '2021-03-28 18:37:29', 26, 'EXECUTED', '8:5bc43770f2ff2c80a1a657b57decc590', 'dropDefaultValue columnName=description, tableName=product', '', NULL, '3.9.0', NULL, NULL, '6953019426'),
('1616952662236-2', 'Aya (generated)', 'config/liquibase/changelog/20210328172715_changelog.xml', '2021-03-28 18:37:31', 27, 'EXECUTED', '8:395a61d2bb5c072afe5a62833d5a0f8c', 'dropDefaultValue columnName=image, tableName=product', '', NULL, '3.9.0', NULL, NULL, '6953019426'),
('1616952662236-3', 'Aya (generated)', 'config/liquibase/changelog/20210328172715_changelog.xml', '2021-03-28 18:37:34', 28, 'EXECUTED', '8:5cbb257e2fdca73854b297f85ca83e7f', 'dropDefaultValue columnName=name, tableName=product', '', NULL, '3.9.0', NULL, NULL, '6953019426'),
('1617216498104-4', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:19', 29, 'EXECUTED', '8:990ddd36736d5091f512d70703e207f3', 'createTable tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-5', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:20', 30, 'EXECUTED', '8:567651130c620177b305bebf98ac52d0', 'createTable tableName=menu', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-6', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:20', 31, 'EXECUTED', '8:6dd80f88fd0d5ef82ded939d2542e01f', 'addUniqueConstraint constraintName=UK_np8r4vhqs4rexm6b80n15ibey, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-7', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:22', 32, 'EXECUTED', '8:9b6b07fae1f64b0f62df5441756b98a0', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FK63c3nfpqhj9n8o55j5xrpi5p0, referencedTableName=menu', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-8', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:23', 33, 'EXECUTED', '8:25b672d4ff94ff65753a6ab28fc540e1', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKa26q0prw3cwcxmabbxts28g4l, referencedTableName=product', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-9', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:26', 34, 'EXECUTED', '8:7dc2da5ff8956ed4226c30f656b51b8d', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKjgd1toi9ovx36tj0bw4aj009b, referencedTableName=product', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-10', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:27', 35, 'EXECUTED', '8:6e8c97fbfe9dabe802151da76d0a0456', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKmxykxgrwuklpty3jh6lk2616j, referencedTableName=menu', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-11', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:27', 36, 'EXECUTED', '8:0463190ac450045ea0dad260ec750909', 'dropTable tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-12', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:28', 37, 'EXECUTED', '8:9dcefc4c7bb2035b56416097aa9ad78e', 'dropTable tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-1', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:28', 38, 'EXECUTED', '8:db1cc785696d5e81064f754b9d6397b9', 'dropDefaultValue columnName=consumption_way, tableName=order', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-2', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:28', 39, 'EXECUTED', '8:c25235e61bf53d7398c8490f729dd732', 'dropDefaultValue columnName=payment_method, tableName=order', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617216498104-3', 'Aya (generated)', 'config/liquibase/changelog/20210331184750_changelog.xml', '2021-03-31 19:53:28', 40, 'EXECUTED', '8:0ff1ed59c5e107ea0437c842babc721c', 'dropDefaultValue columnName=state, tableName=order', '', NULL, '3.9.0', NULL, NULL, '7216799448'),
('1617220502660-8', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:37', 41, 'EXECUTED', '8:b6bba2ebeb0e7a4d8c1f1ab010e60bb8', 'addColumn tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-9', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:38', 42, 'EXECUTED', '8:3b4d1beb8dc384d6d6b9ca6789653eca', 'createIndex indexName=IX_digitalmenu_productPK, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-10', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:43', 43, 'EXECUTED', '8:67dc10ce36c9bcc65fba275b19e1a644', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKekjj6drm95c6ctka3e171js43, referencedTableName=menu', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-11', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:46', 44, 'EXECUTED', '8:9857a39159eb6c0351541306fe437c6b', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKg60le9cquclngtbmj1gelqhk9, referencedTableName=product', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-12', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:46', 45, 'EXECUTED', '8:96520aa3eccfec480b2ad40e912e3e11', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FK63c3nfpqhj9n8o55j5xrpi5p0', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-13', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:47', 46, 'EXECUTED', '8:2ccd25d8530cd19564badc9f48a9d620', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKa26q0prw3cwcxmabbxts28g4l', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-14', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:47', 47, 'EXECUTED', '8:9d8f3b10e3a5f8d02aac31695ac057c7', 'dropColumn columnName=digital_menu_id, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-1', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:48', 48, 'EXECUTED', '8:77e45b61b662b023736ce63f92d32499', 'dropDefaultValue columnName=category, tableName=menu', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-2', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:49', 49, 'EXECUTED', '8:9d832122d407f43654b7d1e4e95079d1', 'dropNotNullConstraint columnName=id_product, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-3', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:49', 50, 'EXECUTED', '8:3a8022b3a1433923c40995831c162677', 'dropDefaultValue columnName=image, tableName=menu', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-4', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:50', 51, 'EXECUTED', '8:416201af73d87dfb927a0a26b4dec4e6', 'dropDefaultValue columnName=image_url, tableName=menu', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617220502660-5', 'Aya (generated)', 'config/liquibase/changelog/20210331195430_changelog.xml', '2021-03-31 21:01:50', 52, 'EXECUTED', '8:893315a09bd0cc2a8d848366a31058fc', 'dropDefaultValue columnName=logo, tableName=menu', '', NULL, '3.9.0', NULL, NULL, '7220897416'),
('1617222175781-4', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:27', 53, 'EXECUTED', '8:d76a57cc9fcf20cabe35e221f1715c87', 'createTable tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617222175781-5', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:27', 54, 'EXECUTED', '8:1ffcc1f9855c46e9c52f72dd6f3532b8', 'createTable tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617222175781-6', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:29', 55, 'EXECUTED', '8:84feb92670161671adafa145b7bc89b3', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FK661hx501ofw0a6fy6phe825bs, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617222175781-7', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:31', 56, 'EXECUTED', '8:ae117c79cd6ef2673500e89f6d24ade7', 'addForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKexlpbbli2pf2mkf9bxiuwfap6, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617222175781-8', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:31', 57, 'EXECUTED', '8:918dfa74f43f7fdb81253dd8dd133dd6', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKekjj6drm95c6ctka3e171js43', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617222175781-9', 'Aya (generated)', 'config/liquibase/changelog/20210331202209_changelog.xml', '2021-03-31 21:25:31', 58, 'EXECUTED', '8:7c317a42365ccf6afbc16c4f5ab9d64b', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKmxykxgrwuklpty3jh6lk2616j', '', NULL, '3.9.0', NULL, NULL, '7222326681'),
('1617225172229-8', 'Aya (generated)', 'config/liquibase/changelog/20210331211220_changelog.xml', '2021-03-31 22:14:22', 59, 'EXECUTED', '8:6fbc1e322858b7da0f11550a9a4d31ed', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '7225262038'),
('1617302197742-8', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:35', 60, 'EXECUTED', '8:efc8fd775fe4c02b0c58cf914a0526f6', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FK661hx501ofw0a6fy6phe825bs', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-9', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:35', 61, 'EXECUTED', '8:16b7131d0007f8fbe45ab51712535fa1', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKexlpbbli2pf2mkf9bxiuwfap6', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-10', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:35', 62, 'EXECUTED', '8:e2ca34331875e581749173c54c1b46c2', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKg60le9cquclngtbmj1gelqhk9', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-11', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:35', 63, 'EXECUTED', '8:a4958be59245530865e0fda313d8343f', 'dropForeignKeyConstraint baseTableName=digitalmenu_product, constraintName=FKjgd1toi9ovx36tj0bw4aj009b', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-12', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:36', 64, 'EXECUTED', '8:ad3d5946ad549e52ffd17337b7ffcae8', 'dropUniqueConstraint constraintName=IX_digitalmenu_productPK, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-13', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:36', 65, 'EXECUTED', '8:2faa08a0c30d0767c7b8510632cef27e', 'dropUniqueConstraint constraintName=UK_np8r4vhqs4rexm6b80n15ibey, tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-14', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 66, 'EXECUTED', '8:bf1c71c399813929273166672691f352', 'dropTable tableName=digitalmenu_product', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-15', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 67, 'EXECUTED', '8:1da43b0d4a71422b97ce029c4aa39791', 'dropColumn columnName=product_id, tableName=product', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-1', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 68, 'EXECUTED', '8:ca9d89b8ff526f5ef445262149346295', 'dropDefaultValue columnName=category, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-2', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 69, 'EXECUTED', '8:b94566808d26c503c8b86e96df8a9d96', 'dropDefaultValue columnName=category, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-3', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 70, 'EXECUTED', '8:f597e292f500e8449ce75d50f8c66f9c', 'dropDefaultValue columnName=image, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-4', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:37', 71, 'EXECUTED', '8:94bb75194c5d057ff0530335b310801f', 'dropDefaultValue columnName=image, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-5', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:38', 72, 'EXECUTED', '8:3466fdfb6c270de764594fea9dea168d', 'dropDefaultValue columnName=image_url, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-6', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:38', 73, 'EXECUTED', '8:9fa400f9bad4153f0e1de6e390f6b61d', 'dropDefaultValue columnName=logo, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302197742-7', 'Aya (generated)', 'config/liquibase/changelog/20210401183621_changelog.xml', '2021-04-01 19:37:38', 74, 'EXECUTED', '8:ec8437ea398a2d0dd6f138f3ce63dc37', 'dropDefaultValue columnName=logo, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302253668'),
('1617302506054-1', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:04', 75, 'EXECUTED', '8:a7013263ed4fdca2e8e5d94232c146ac', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617302506054-2', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:04', 76, 'EXECUTED', '8:bf64fe3ed86a14ac716af7064d3ddf1c', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617302506054-3', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:04', 77, 'EXECUTED', '8:0100bf80f02531be76fa8840f40952be', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617302506054-4', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:05', 78, 'EXECUTED', '8:b7b72131a4e0af3147e20080031e46ac', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617302506054-5', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:05', 79, 'EXECUTED', '8:78102cd89948f53ab56063ac1fce62c8', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617302506054-6', 'Aya (generated)', 'config/liquibase/changelog/20210401184131_changelog.xml', '2021-04-01 19:44:05', 80, 'EXECUTED', '8:eb0ae0c38648256a4d049cfa0e16b816', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7302644621'),
('1617303411478-1', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:49', 81, 'EXECUTED', '8:e2089c961ec7fcd4a41feb6f3141d10d', 'dropColumn columnName=created_date, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617303411478-2', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:49', 82, 'EXECUTED', '8:c6151508d9dcff4892f1e4a4678df089', 'dropColumn columnName=created_date, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617303411478-3', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:50', 83, 'EXECUTED', '8:d6c307e5cdd5f06f0a9c4361ce206c5b', 'dropColumn columnName=last_modified_by, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617303411478-4', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:50', 84, 'EXECUTED', '8:5e8759e9b7c733214b1207ff98e379ef', 'dropColumn columnName=last_modified_by, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617303411478-5', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:50', 85, 'EXECUTED', '8:474571ba6496a8c594bb4e82ba8975cb', 'dropColumn columnName=last_modified_date, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617303411478-6', 'Aya (generated)', 'config/liquibase/changelog/20210401185623_changelog.xml', '2021-04-01 19:57:51', 86, 'EXECUTED', '8:6a5596f24dd2fad557aae1e595ce60d1', 'dropColumn columnName=last_modified_date, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7303468671'),
('1617307177775-1', 'Aya (generated)', 'config/liquibase/changelog/20210401195904_changelog.xml', '2021-04-01 21:00:39', 87, 'EXECUTED', '8:f19e948d1ef1c61410a07c69f324b88a', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '7307239747'),
('1617307177775-2', 'Aya (generated)', 'config/liquibase/changelog/20210401195904_changelog.xml', '2021-04-01 21:00:42', 88, 'EXECUTED', '8:a78a5ee1f682ebc7667a73ec0f56235d', 'addForeignKeyConstraint baseTableName=product, constraintName=FKh923pxu8c6w4e6n13mnehypoj, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '7307239747'),
('1617458184435-3', 'Aya (generated)', 'config/liquibase/changelog/20210403135546_changelog.xml', '2021-04-03 14:59:54', 89, 'EXECUTED', '8:38771ccf4887cad11239c69abc0df853', 'addColumn tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '7458393802'),
('1617459181397-3', 'Aya (generated)', 'config/liquibase/changelog/20210403141240_changelog.xml', '2021-04-03 15:13:49', 90, 'EXECUTED', '8:5f6605e53c2d520e56a27e269cf89ffc', 'createTable tableName=jhi_user_establishments', '', NULL, '3.9.0', NULL, NULL, '7459229596'),
('1617459181397-4', 'Aya (generated)', 'config/liquibase/changelog/20210403141240_changelog.xml', '2021-04-03 15:13:50', 91, 'EXECUTED', '8:13921de0c26835ecf80e8b0afaf21db8', 'addUniqueConstraint constraintName=UK_r0lsn844166ingj4669c3cjug, tableName=jhi_user_establishments', '', NULL, '3.9.0', NULL, NULL, '7459229596'),
('1617459584979-1', 'Aya (generated)', 'config/liquibase/changelog/20210403141926_changelog.xml', '2021-04-03 15:21:41', 92, 'EXECUTED', '8:2aea0125bfdb4c2389546eea0866c6db', 'dropUniqueConstraint constraintName=UK_r0lsn844166ingj4669c3cjug, tableName=jhi_user_establishments', '', NULL, '3.9.0', NULL, NULL, '7459699856'),
('1617459584979-2', 'Aya (generated)', 'config/liquibase/changelog/20210403141926_changelog.xml', '2021-04-03 15:21:41', 93, 'EXECUTED', '8:43fdc2c1e08f3049748e00cdf6fc8d01', 'dropTable tableName=jhi_user_establishments', '', NULL, '3.9.0', NULL, NULL, '7459699856'),
('1617459584979-3', 'Aya (generated)', 'config/liquibase/changelog/20210403141926_changelog.xml', '2021-04-03 15:21:41', 94, 'EXECUTED', '8:3bf820a3c1bbdd41c1ba6911d463ba2f', 'dropColumn columnName=user_id, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '7459699856'),
('1617626800753-1', 'Aya (generated)', 'config/liquibase/changelog/20210405124625_changelog.xml', '2021-04-05 13:49:48', 95, 'EXECUTED', '8:35f1bbf32154a343a9c8b347c518f11a', 'addColumn tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '7626988584'),
('1617626800753-2', 'Aya (generated)', 'config/liquibase/changelog/20210405124625_changelog.xml', '2021-04-05 13:49:50', 96, 'EXECUTED', '8:4d608f40ec46bcab88fe81b07ffe78df', 'addForeignKeyConstraint baseTableName=establishment, constraintName=FKl3ttqrh7ewgtyjt2flml22rvb, referencedTableName=jhi_user', '', NULL, '3.9.0', NULL, NULL, '7626988584'),
('1617966688364-1', 'Aya (generated)', 'config/liquibase/changelog/20210409111108_changelog.xml', '2021-04-09 12:12:30', 97, 'EXECUTED', '8:aa95a70aadd5fd429fd8f28fb608e10e', 'dropColumn columnName=image_url, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '7966750737'),
('1618965411907-1', 'Aya (generated)', 'config/liquibase/changelog/20210421003531_changelog.xml', '2021-04-21 01:51:04', 98, 'EXECUTED', '8:b951447d2b1783a60b77a654a9d0135b', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '8966264321'),
('1619707624087-1', 'Aya (generated)', 'config/liquibase/changelog/20210429144629_changelog.xml', '2021-04-29 15:48:45', 99, 'EXECUTED', '8:e38a7b38907ab165b18ce7d42aba73bf', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '9707724628'),
('1619707624087-2', 'Aya (generated)', 'config/liquibase/changelog/20210429144629_changelog.xml', '2021-04-29 15:48:46', 100, 'EXECUTED', '8:8a48784ed3faccbd5150dd24d7db0f9e', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '9707724628'),
('1619707624087-3', 'Aya (generated)', 'config/liquibase/changelog/20210429144629_changelog.xml', '2021-04-29 15:48:46', 101, 'EXECUTED', '8:a10dcc1bde59b3bf671b9bf7a283b9b9', 'dropColumn columnName=category, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '9707724628'),
('1619707624087-4', 'Aya (generated)', 'config/liquibase/changelog/20210429144629_changelog.xml', '2021-04-29 15:48:46', 102, 'EXECUTED', '8:5d2662e18f072bc4e7cc362410e41efe', 'dropColumn columnName=image, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '9707724628'),
('1619707624087-5', 'Aya (generated)', 'config/liquibase/changelog/20210429144629_changelog.xml', '2021-04-29 15:48:46', 103, 'EXECUTED', '8:44f078fe4e09325ea269da33da553b51', 'dropColumn columnName=image, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '9707724628'),
('1619709285565-1', 'Aya (generated)', 'config/liquibase/changelog/20210429151420_changelog.xml', '2021-04-29 16:15:29', 104, 'EXECUTED', '8:ad652f520a2f8ae408c5e4f826fe43d2', 'dropDefaultValue columnName=name, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '9709329003'),
('1620079490311-1', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:39', 105, 'EXECUTED', '8:ffc0cfbdeebb3442ad6e603725eeb6ae', 'createTable tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-2', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:40', 106, 'EXECUTED', '8:b8842f925c5f30561ec48ae02dac3c3c', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-3', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:40', 107, 'EXECUTED', '8:7330fa2fc4c00bdf98ae5ebbb9dec885', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-4', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:40', 108, 'EXECUTED', '8:a7013263ed4fdca2e8e5d94232c146ac', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-5', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:40', 109, 'EXECUTED', '8:bf64fe3ed86a14ac716af7064d3ddf1c', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-6', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:40', 110, 'EXECUTED', '8:c1ec51bc2f4f113a40c09857a439e5cd', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-7', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:41', 111, 'EXECUTED', '8:42f9347f87fa8c36c487eb7ffd202d8b', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-8', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:41', 112, 'EXECUTED', '8:0100bf80f02531be76fa8840f40952be', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-9', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:42', 113, 'EXECUTED', '8:b7b72131a4e0af3147e20080031e46ac', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-10', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:42', 114, 'EXECUTED', '8:78102cd89948f53ab56063ac1fce62c8', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-11', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:43', 115, 'EXECUTED', '8:eb0ae0c38648256a4d049cfa0e16b816', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-12', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:44', 116, 'EXECUTED', '8:abc16fd5722f4ded39247e560407f400', 'addColumn tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-13', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:45', 117, 'EXECUTED', '8:697508e0e1bf24b01bb9cc0189697fe7', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-14', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:50', 118, 'EXECUTED', '8:1bcac0162753bfbf3b33bba0274a4317', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FK2mt9w4ak2uc7rc4ud4cpscckd, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-15', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:50', 119, 'EXECUTED', '8:c2ea42415e01bda5a823f8a1921702e7', 'dropColumn columnName=file, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-16', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:50', 120, 'EXECUTED', '8:855a554a4dda46bcd77426673a9588cf', 'dropColumn columnName=logo, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620079490311-17', 'Aya (generated)', 'config/liquibase/changelog/20210503220419_changelog.xml', '2021-05-03 23:05:50', 121, 'EXECUTED', '8:f229d35d9e4d96adfaa2de9f99a3b024', 'dropColumn columnName=logo, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0079537569'),
('1620167205411-9', 'Aya (generated)', 'config/liquibase/changelog/20210504222612_changelog.xml', '2021-05-04 23:27:42', 122, 'EXECUTED', '8:e722fbbda0691a0ff7da585e146678d5', 'addColumn tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0167261940'),
('1620167205411-10', 'Aya (generated)', 'config/liquibase/changelog/20210504222612_changelog.xml', '2021-05-04 23:29:15', 123, 'EXECUTED', '8:5f9996ed4529f7b07762a557162d01e6', 'addUniqueConstraint constraintName=UK_ccu62jb145f2dy8ok43vuj0ys, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0167354990'),
('1620168566731-9', 'Aya (generated)', 'config/liquibase/changelog/20210504224906_changelog.xml', '2021-05-04 23:50:17', 124, 'EXECUTED', '8:003d5a3999ee27bf646d1148bf5881b0', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0168616739'),
('1620168566731-10', 'Aya (generated)', 'config/liquibase/changelog/20210504224906_changelog.xml', '2021-05-04 23:50:20', 125, 'EXECUTED', '8:bf1c3ae594766503d29b2d647ec731d4', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FK4x4o755duvhim0jcnl8ti7hjc, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0168616739'),
('1620169425035-9', 'Aya (generated)', 'config/liquibase/changelog/20210504230328_changelog.xml', '2021-05-05 00:05:10', 126, 'EXECUTED', '8:d498b79fdb8704ee318ccd59a8e65b7a', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169510045'),
('1620169425035-10', 'Aya (generated)', 'config/liquibase/changelog/20210504230328_changelog.xml', '2021-05-05 00:05:11', 127, 'EXECUTED', '8:6fdff6aac94446ad73869166695a88a6', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FK85h6n5yt4np7x84475vrf47ai, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169510045'),
('1620169658738-9', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:52', 128, 'EXECUTED', '8:005892e4513f790207a2d8a0499a54aa', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-10', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:53', 129, 'EXECUTED', '8:9467a6ec10e9eeab76c6f9d0a1ff1b32', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FKqfqyw8m6j3ptxtkaqkgwh9qwd, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-11', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:53', 130, 'EXECUTED', '8:68a2fc6b99add60495946f2fcac5b158', 'dropForeignKeyConstraint baseTableName=menu_files, constraintName=FK2mt9w4ak2uc7rc4ud4cpscckd', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-12', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:54', 131, 'EXECUTED', '8:a25adf699a888a1e34bf896905a3a5df', 'dropForeignKeyConstraint baseTableName=menu_files, constraintName=FK4x4o755duvhim0jcnl8ti7hjc', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-13', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:54', 132, 'EXECUTED', '8:525bddb9eca0cdadb11176e44aecd053', 'dropForeignKeyConstraint baseTableName=menu_files, constraintName=FK85h6n5yt4np7x84475vrf47ai', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-14', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:55', 133, 'EXECUTED', '8:e314816771d40ced51571860d4dedc9e', 'dropUniqueConstraint constraintName=UK_ccu62jb145f2dy8ok43vuj0ys, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-15', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:56', 134, 'EXECUTED', '8:680615116d31d0d98c037b37c5471a36', 'dropColumn columnName=menu_file, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-16', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:57', 135, 'EXECUTED', '8:80da1ebc7e80e32dc70d391fd8dc84f2', 'dropColumn columnName=uploaded_file, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-17', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:57', 136, 'EXECUTED', '8:c2829822310c901b888ef2fc649e670f', 'dropColumn columnName=uploaded_file, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-18', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:57', 137, 'EXECUTED', '8:262a8d0cf7566d8d8866074e4aceccac', 'dropColumn columnName=uploaded_file_id, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-1', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:57', 138, 'EXECUTED', '8:d31088448b72d6909606e1dded7b1918', 'dropDefaultValue columnName=is_activated, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-2', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:58', 139, 'EXECUTED', '8:ef8877bfaca61e29be9fc69af7c1f43f', 'dropDefaultValue columnName=is_activated, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-3', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:58', 140, 'EXECUTED', '8:834ca3c4d2fc3034e0b2a29804335fb2', 'dropDefaultValue columnName=last_modified_by, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-4', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:08:59', 141, 'EXECUTED', '8:ee8e61620343cb48344cc35e7ee62a0c', 'dropDefaultValue columnName=last_modified_by, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-5', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:09:01', 142, 'EXECUTED', '8:e3d4cea45a3a539f0d601f9292104bfd', 'dropDefaultValue columnName=name, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-6', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:09:01', 143, 'EXECUTED', '8:18b524b8e55e0f766fa2f24652eaf987', 'dropDefaultValue columnName=name, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-7', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:09:02', 144, 'EXECUTED', '8:8d6a1f95a14f9729af25fa571e8d75da', 'dropDefaultValue columnName=path, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169658738-8', 'Aya (generated)', 'config/liquibase/changelog/20210504230722_changelog.xml', '2021-05-05 00:09:03', 145, 'EXECUTED', '8:9052126b7f89a7e4b32882ba1ea172c9', 'dropDefaultValue columnName=type, tableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0169732068'),
('1620169946892-1', 'Aya (generated)', 'config/liquibase/changelog/20210504231209_changelog.xml', '2021-05-05 00:14:01', 146, 'EXECUTED', '8:012771fdd8aba4c1c19d28041292e756', 'addForeignKeyConstraint baseTableName=uploaded_file, constraintName=FKfg7s583m04mth7h8lp0dabxmb, referencedTableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0170039974'),
('1620172230633-1', 'Aya (generated)', 'config/liquibase/changelog/20210504234950_changelog.xml', '2021-05-05 00:51:16', 147, 'EXECUTED', '8:697508e0e1bf24b01bb9cc0189697fe7', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0172276419'),
('1620172230633-2', 'Aya (generated)', 'config/liquibase/changelog/20210504234950_changelog.xml', '2021-05-05 00:51:17', 148, 'EXECUTED', '8:1bcac0162753bfbf3b33bba0274a4317', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FK2mt9w4ak2uc7rc4ud4cpscckd, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0172276419'),
('1620172230633-3', 'Aya (generated)', 'config/liquibase/changelog/20210504234950_changelog.xml', '2021-05-05 00:51:18', 149, 'EXECUTED', '8:239b028ebdf67f81c729caf217f90383', 'dropForeignKeyConstraint baseTableName=uploaded_file, constraintName=FKfg7s583m04mth7h8lp0dabxmb', '', NULL, '3.9.0', NULL, NULL, '0172276419'),
('1620172230633-4', 'Aya (generated)', 'config/liquibase/changelog/20210504234950_changelog.xml', '2021-05-05 00:51:18', 150, 'EXECUTED', '8:d154fc37a206bbf8f02779bc8792af82', 'dropForeignKeyConstraint baseTableName=menu_files, constraintName=FKqfqyw8m6j3ptxtkaqkgwh9qwd', '', NULL, '3.9.0', NULL, NULL, '0172276419'),
('1620172230633-5', 'Aya (generated)', 'config/liquibase/changelog/20210504234950_changelog.xml', '2021-05-05 00:51:18', 151, 'EXECUTED', '8:13629b06f8b53d963889e8d8988f597c', 'dropColumn columnName=menu_file_id, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0172276419'),
('1620174244618-1', 'Aya (generated)', 'config/liquibase/changelog/20210505002346_changelog.xml', '2021-05-05 01:24:48', 152, 'EXECUTED', '8:003d5a3999ee27bf646d1148bf5881b0', 'addColumn tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0174288383'),
('1620174244618-2', 'Aya (generated)', 'config/liquibase/changelog/20210505002346_changelog.xml', '2021-05-05 01:24:50', 153, 'EXECUTED', '8:bf1c3ae594766503d29b2d647ec731d4', 'addForeignKeyConstraint baseTableName=menu_files, constraintName=FK4x4o755duvhim0jcnl8ti7hjc, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '0174288383'),
('1620174244618-3', 'Aya (generated)', 'config/liquibase/changelog/20210505002346_changelog.xml', '2021-05-05 01:24:50', 154, 'EXECUTED', '8:68a2fc6b99add60495946f2fcac5b158', 'dropForeignKeyConstraint baseTableName=menu_files, constraintName=FK2mt9w4ak2uc7rc4ud4cpscckd', '', NULL, '3.9.0', NULL, NULL, '0174288383'),
('1620174244618-4', 'Aya (generated)', 'config/liquibase/changelog/20210505002346_changelog.xml', '2021-05-05 01:24:51', 155, 'EXECUTED', '8:80da1ebc7e80e32dc70d391fd8dc84f2', 'dropColumn columnName=uploaded_file, tableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0174288383'),
('1620228733882-1', 'Aya (generated)', 'config/liquibase/changelog/20210505153155_changelog.xml', '2021-05-05 16:33:49', 156, 'EXECUTED', '8:86c5d3577aa6e81212fd12ede3f5ff5e', 'addColumn tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '0228829547'),
('1620228733882-2', 'Aya (generated)', 'config/liquibase/changelog/20210505153155_changelog.xml', '2021-05-05 16:33:50', 157, 'EXECUTED', '8:e6460a9855b388bfb7c85875399cbd7e', 'addColumn tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '0228829547'),
('1620228733882-3', 'Aya (generated)', 'config/liquibase/changelog/20210505153155_changelog.xml', '2021-05-05 16:33:52', 158, 'EXECUTED', '8:657ace7990c93f59a5508203f711ac72', 'addForeignKeyConstraint baseTableName=establishment, constraintName=FK1wsh83ic0gwlh6lgwywtpclmq, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '0228829547'),
('1620228733882-4', 'Aya (generated)', 'config/liquibase/changelog/20210505153155_changelog.xml', '2021-05-05 16:33:54', 159, 'EXECUTED', '8:5b53c8386316217cb1a2e07559c36a97', 'addForeignKeyConstraint baseTableName=establishment, constraintName=FK8htwxrout8gpsxcwec8aypt5, referencedTableName=menu_files', '', NULL, '3.9.0', NULL, NULL, '0228829547'),
('1621179094256-1', 'Aya (generated)', 'config/liquibase/changelog/20210516153101_changelog.xml', '2021-05-16 16:34:39', 160, 'EXECUTED', '8:4843e24ffdf3a77da94248ccab18e484', 'addColumn tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '1179279494'),
('1621179094256-2', 'Aya (generated)', 'config/liquibase/changelog/20210516153101_changelog.xml', '2021-05-16 16:34:41', 161, 'EXECUTED', '8:2fff8bba196205d10d3a5a96036a44c2', 'addForeignKeyConstraint baseTableName=establishment, constraintName=FK2aq50jb6g1lyse2qjoav5hq41, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '1179279494'),
('1621179094256-3', 'Aya (generated)', 'config/liquibase/changelog/20210516153101_changelog.xml', '2021-05-16 16:34:42', 162, 'EXECUTED', '8:78a7db174bd7385d92fec3c92938265b', 'dropColumn columnName=logo, tableName=establishment', '', NULL, '3.9.0', NULL, NULL, '1179279494'),
('1622380523486-1', 'Aya (generated)', 'config/liquibase/changelog/20210530131446_changelog.xml', '2021-05-30 14:19:59', 163, 'EXECUTED', '8:a98db4d91fc8798b437e12a8da1fced9', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '2380799296'),
('1622380523486-2', 'Aya (generated)', 'config/liquibase/changelog/20210530131446_changelog.xml', '2021-05-30 14:20:01', 164, 'EXECUTED', '8:8ed09d6be157d720567ffe8a5c4aa054', 'addForeignKeyConstraint baseTableName=product, constraintName=FKnty4w7dcpysbxnuy005yfc57, referencedTableName=uploaded_file', '', NULL, '3.9.0', NULL, NULL, '2380799296'),
('1622410973624-1', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:23', 165, 'EXECUTED', '8:95950180e68ad62b6a9a77c648f10a97', 'createTable tableName=category', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-2', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:23', 166, 'EXECUTED', '8:f9afd5b85f4f33963800c44a7f9ed576', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-3', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:23', 167, 'EXECUTED', '8:d07c3baca751cfb3eb8ceb42b25a7134', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-4', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:25', 168, 'EXECUTED', '8:6f710ba7f659d2a11f06b8aabbb56b2c', 'addForeignKeyConstraint baseTableName=product, constraintName=FK1mtsbur82frn64de7balymq9s, referencedTableName=category', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-5', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:27', 169, 'EXECUTED', '8:0df9a8b7d569ff9d72a1bf3897d71b37', 'addForeignKeyConstraint baseTableName=category, constraintName=FKlhn648u3c1slfnnulblpo7hag, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-6', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:27', 170, 'EXECUTED', '8:8b68fed658a2b03f69d9c877c9934612', 'dropForeignKeyConstraint baseTableName=product, constraintName=FKh923pxu8c6w4e6n13mnehypoj', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-7', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:27', 171, 'EXECUTED', '8:b12291b373c61a358cc6f4de543a7f9d', 'dropColumn columnName=category, tableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622410973624-8', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:28', 172, 'EXECUTED', '8:0a112f5d0a4579f571f2ccc341d5d090', 'dropColumn columnName=digital_menu_id, tableName=product', '', NULL, '3.9.0', NULL, NULL, '2411242655');
INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1622410973624-9', 'Aya (generated)', 'config/liquibase/changelog/20210530214225_changelog.xml', '2021-05-30 22:47:28', 173, 'EXECUTED', '8:a5ebbdf4772661e27109655241c0770a', 'dropColumn columnName=image, tableName=product', '', NULL, '3.9.0', NULL, NULL, '2411242655'),
('1622412954010-1', 'Aya (generated)', 'config/liquibase/changelog/20210530221511_changelog.xml', '2021-05-30 23:17:08', 174, 'EXECUTED', '8:2b35e1308220932686f995109553c63e', 'addColumn tableName=category', '', NULL, '3.9.0', NULL, NULL, '2413027408'),
('1622499152383-2', 'Aya (generated)', 'config/liquibase/changelog/20210531221135_changelog.xml', '2021-05-31 23:13:17', 175, 'EXECUTED', '8:7bfd2bee4d9db00ce89411cb5ffe4046', 'dropForeignKeyConstraint baseTableName=category, constraintName=FKlhn648u3c1slfnnulblpo7hag', '', NULL, '3.9.0', NULL, NULL, '2499197117'),
('1622499152383-3', 'Aya (generated)', 'config/liquibase/changelog/20210531221135_changelog.xml', '2021-05-31 23:13:17', 176, 'EXECUTED', '8:48b87e128559dd0806c9811d3a7400ea', 'dropColumn columnName=digital_menu_id, tableName=category', '', NULL, '3.9.0', NULL, NULL, '2499197117'),
('1622499152383-1', 'Aya (generated)', 'config/liquibase/changelog/20210531221135_changelog.xml', '2021-05-31 23:13:18', 177, 'EXECUTED', '8:f7b4abfa8d453b92d7550a4d782bbe6a', 'dropDefaultValue columnName=name, tableName=category', '', NULL, '3.9.0', NULL, NULL, '2499197117'),
('1622499537174-1', 'Aya (generated)', 'config/liquibase/changelog/20210531221834_changelog.xml', '2021-05-31 23:19:40', 178, 'EXECUTED', '8:732fa97af951b781917ee1422cb7a271', 'dropForeignKeyConstraint baseTableName=product, constraintName=FK1mtsbur82frn64de7balymq9s', '', NULL, '3.9.0', NULL, NULL, '2499580820'),
('1622499537174-2', 'Aya (generated)', 'config/liquibase/changelog/20210531221834_changelog.xml', '2021-05-31 23:19:41', 179, 'EXECUTED', '8:61d0d81e2e794cef8b1ae677f2025794', 'dropColumn columnName=category_id, tableName=product', '', NULL, '3.9.0', NULL, NULL, '2499580820'),
('1622499865065-1', 'Aya (generated)', 'config/liquibase/changelog/20210531222358_changelog.xml', '2021-05-31 23:25:11', 180, 'EXECUTED', '8:0ad5e730a2827b596b600d3ecab233f2', 'createTable tableName=t_category', '', NULL, '3.9.0', NULL, NULL, '2499910746'),
('1622499865065-2', 'Aya (generated)', 'config/liquibase/changelog/20210531222358_changelog.xml', '2021-05-31 23:25:11', 181, 'EXECUTED', '8:c25f57b4f1d9191c8f7f2a083f8269e0', 'dropTable tableName=category', '', NULL, '3.9.0', NULL, NULL, '2499910746'),
('1622500600392-2', 'Aya (generated)', 'config/liquibase/changelog/20210531223610_changelog.xml', '2021-05-31 23:37:22', 182, 'EXECUTED', '8:48666802ad798b7c71f3842031bc30f2', 'addColumn tableName=t_category', '', NULL, '3.9.0', NULL, NULL, '2500642715'),
('1622500600392-3', 'Aya (generated)', 'config/liquibase/changelog/20210531223610_changelog.xml', '2021-05-31 23:37:23', 183, 'EXECUTED', '8:b1b82c0eb248e0e8beff114dfed7a2bd', 'dropColumn columnName=order, tableName=t_category', '', NULL, '3.9.0', NULL, NULL, '2500642715'),
('1622500600392-1', 'Aya (generated)', 'config/liquibase/changelog/20210531223610_changelog.xml', '2021-05-31 23:37:23', 184, 'EXECUTED', '8:c1763ead1c15faba892267cbc1ac38dc', 'dropDefaultValue columnName=name, tableName=t_category', '', NULL, '3.9.0', NULL, NULL, '2500642715'),
('1622501412657-1', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:44', 185, 'EXECUTED', '8:e28c7917db0d2a3e49617cb86f382a52', 'createTable tableName=category', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-2', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:44', 186, 'EXECUTED', '8:f9afd5b85f4f33963800c44a7f9ed576', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-3', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:44', 187, 'EXECUTED', '8:576fa4b57952a546d6d66e6c4b1b79e7', 'addColumn tableName=product', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-4', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:46', 188, 'EXECUTED', '8:6f710ba7f659d2a11f06b8aabbb56b2c', 'addForeignKeyConstraint baseTableName=product, constraintName=FK1mtsbur82frn64de7balymq9s, referencedTableName=category', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-5', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:47', 189, 'EXECUTED', '8:0df9a8b7d569ff9d72a1bf3897d71b37', 'addForeignKeyConstraint baseTableName=category, constraintName=FKlhn648u3c1slfnnulblpo7hag, referencedTableName=digital_menu', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-6', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:47', 190, 'EXECUTED', '8:8e8842fac1c55ed5eabf43ef24081cfe', 'dropTable tableName=t_category', '', NULL, '3.9.0', NULL, NULL, '2501503394'),
('1622501412657-7', 'Aya (generated)', 'config/liquibase/changelog/20210531224944_changelog.xml', '2021-05-31 23:51:47', 191, 'EXECUTED', '8:0b3105f17f8e88a61b54dee01edba660', 'dropColumn columnName=order, tableName=product', '', NULL, '3.9.0', NULL, NULL, '2501503394');

-- --------------------------------------------------------

--
-- Structure de la table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `digital_menu`
--

CREATE TABLE `digital_menu` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `is_activated` bit(1),
  `last_modified_by` varchar(50),
  `last_modified_date` datetime(6) DEFAULT NULL,
  `name` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `digital_menu`
--

INSERT INTO `digital_menu` (`id`, `created_by`, `created_date`, `is_activated`, `last_modified_by`, `last_modified_date`, `name`) VALUES
(11, 'user', '2021-06-02 23:56:55.000000', NULL, 'user', '2021-06-02 23:56:55.000000', 'menu1'),
(12, 'anonymousUser', '2021-06-03 00:00:55.000000', NULL, 'user', '2021-06-03 18:03:02.000000', 'menu'),
(13, 'user', '2021-06-07 22:24:06.000000', NULL, 'user', '2021-06-07 22:24:06.000000', 'menu1'),
(14, 'user', '2021-06-09 09:36:01.000000', NULL, 'user', '2021-06-09 09:36:01.000000', 'menu1');

-- --------------------------------------------------------

--
-- Structure de la table `establishment`
--

CREATE TABLE `establishment` (
  `id` bigint(20) NOT NULL,
  `adress` varchar(256),
  `category` varchar(256),
  `contact` varchar(256),
  `name` varchar(256),
  `user_id` bigint(20) DEFAULT NULL,
  `digital_menu_id` bigint(20) DEFAULT NULL,
  `menu_file_id` bigint(20) DEFAULT NULL,
  `uploaded_file_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `establishment`
--

INSERT INTO `establishment` (`id`, `adress`, `category`, `contact`, `name`, `user_id`, `digital_menu_id`, `menu_file_id`, `uploaded_file_id`) VALUES
(6, 'Monastir - falaise', 'café - restaurant', 'exemple@gmail.com', 'La Falaise ', 4, 12, 39, 167),
(21, 'Tunisie - lac2', 'café', 'gourmandise@exemple.com', 'Gourmandise', NULL, NULL, 38, 182);

-- --------------------------------------------------------

--
-- Structure de la table `jhi_authority`
--

CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jhi_authority`
--

INSERT INTO `jhi_authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_persistent_audit_event`
--

CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jhi_persistent_audit_event`
--

INSERT INTO `jhi_persistent_audit_event` (`event_id`, `principal`, `event_date`, `event_type`) VALUES
(189, 'admin', '2021-05-13 19:37:18', 'AUTHENTICATION_SUCCESS'),
(190, 'user', '2021-05-13 19:51:06', 'AUTHENTICATION_SUCCESS'),
(191, 'admin', '2021-05-14 13:10:54', 'AUTHENTICATION_SUCCESS'),
(192, 'admin', '2021-05-14 13:11:37', 'AUTHENTICATION_SUCCESS'),
(193, 'user', '2021-05-16 14:39:31', 'AUTHENTICATION_SUCCESS'),
(194, 'admin', '2021-05-20 12:31:36', 'AUTHENTICATION_SUCCESS'),
(195, 'admin', '2021-05-20 12:35:17', 'AUTHENTICATION_SUCCESS'),
(196, 'admin', '2021-05-20 12:51:51', 'AUTHENTICATION_SUCCESS'),
(197, 'user', '2021-05-20 14:18:36', 'AUTHENTICATION_SUCCESS'),
(198, 'user', '2021-05-21 14:31:06', 'AUTHENTICATION_FAILURE'),
(199, 'admin', '2021-05-23 19:13:14', 'AUTHENTICATION_SUCCESS'),
(200, 'aya.mehry30@example.com', '2021-05-23 19:18:49', 'AUTHENTICATION_FAILURE'),
(201, 'aya.mehry30@example.com', '2021-05-23 19:19:03', 'AUTHENTICATION_FAILURE'),
(202, 'admin', '2021-05-23 19:19:18', 'AUTHENTICATION_SUCCESS'),
(203, 'user', '2021-05-23 19:25:27', 'AUTHENTICATION_SUCCESS'),
(204, 'admin', '2021-05-23 19:33:47', 'AUTHENTICATION_SUCCESS'),
(205, 'admin', '2021-05-24 10:11:54', 'AUTHENTICATION_SUCCESS'),
(206, 'admin', '2021-05-24 10:12:00', 'AUTHENTICATION_SUCCESS'),
(207, 'user', '2021-05-25 16:13:49', 'AUTHENTICATION_SUCCESS'),
(208, 'user', '2021-05-25 16:29:59', 'AUTHENTICATION_SUCCESS'),
(209, 'user', '2021-05-25 17:07:06', 'AUTHENTICATION_SUCCESS'),
(210, 'user', '2021-05-25 17:49:49', 'AUTHENTICATION_SUCCESS'),
(211, 'user', '2021-05-25 23:07:30', 'AUTHENTICATION_SUCCESS'),
(212, 'user', '2021-05-26 09:04:03', 'AUTHENTICATION_SUCCESS'),
(213, 'user', '2021-05-27 18:46:53', 'AUTHENTICATION_SUCCESS'),
(214, 'user', '2021-05-28 08:39:26', 'AUTHENTICATION_SUCCESS'),
(215, 'admin', '2021-05-28 09:29:16', 'AUTHENTICATION_SUCCESS'),
(216, 'qr.menu21@gmail.com', '2021-05-28 09:30:31', 'AUTHENTICATION_FAILURE'),
(217, 'admin', '2021-05-28 09:30:54', 'AUTHENTICATION_SUCCESS'),
(218, 'user', '2021-05-28 09:34:01', 'AUTHENTICATION_SUCCESS'),
(219, 'user', '2021-05-28 09:48:09', 'AUTHENTICATION_SUCCESS'),
(220, 'user', '2021-05-29 09:04:09', 'AUTHENTICATION_SUCCESS'),
(221, 'user', '2021-05-29 14:03:13', 'AUTHENTICATION_SUCCESS'),
(222, 'user', '2021-05-29 15:09:21', 'AUTHENTICATION_SUCCESS'),
(223, 'user', '2021-05-29 15:16:01', 'AUTHENTICATION_SUCCESS'),
(224, 'user', '2021-05-30 12:00:50', 'AUTHENTICATION_SUCCESS'),
(225, 'user', '2021-05-30 12:04:59', 'AUTHENTICATION_SUCCESS'),
(226, 'user', '2021-05-30 14:04:41', 'AUTHENTICATION_SUCCESS'),
(227, 'user', '2021-05-30 14:32:49', 'AUTHENTICATION_SUCCESS'),
(228, 'user', '2021-05-31 10:06:16', 'AUTHENTICATION_SUCCESS'),
(229, 'user', '2021-06-02 21:49:25', 'AUTHENTICATION_SUCCESS'),
(230, 'user', '2021-06-02 21:52:29', 'AUTHENTICATION_SUCCESS'),
(231, 'user', '2021-06-04 11:10:25', 'AUTHENTICATION_SUCCESS'),
(232, 'admin', '2021-06-05 19:28:16', 'AUTHENTICATION_SUCCESS'),
(233, 'user', '2021-06-05 20:13:16', 'AUTHENTICATION_SUCCESS'),
(234, 'admin', '2021-06-06 16:58:59', 'AUTHENTICATION_SUCCESS'),
(235, 'user', '2021-06-06 17:00:17', 'AUTHENTICATION_SUCCESS'),
(236, 'user', '2021-06-06 18:35:40', 'AUTHENTICATION_SUCCESS'),
(237, 'user', '2021-06-06 18:36:19', 'AUTHENTICATION_SUCCESS'),
(238, 'user', '2021-06-06 18:36:49', 'AUTHENTICATION_SUCCESS'),
(239, 'user', '2021-06-06 21:10:17', 'AUTHENTICATION_SUCCESS'),
(240, 'user', '2021-06-06 21:40:25', 'AUTHENTICATION_SUCCESS'),
(241, 'user', '2021-06-06 21:49:35', 'AUTHENTICATION_SUCCESS'),
(242, 'user', '2021-06-06 21:50:00', 'AUTHENTICATION_SUCCESS'),
(243, 'user', '2021-06-06 21:50:14', 'AUTHENTICATION_SUCCESS'),
(244, 'user', '2021-06-06 21:52:27', 'AUTHENTICATION_SUCCESS'),
(245, 'user', '2021-06-06 21:54:33', 'AUTHENTICATION_SUCCESS'),
(246, 'user', '2021-06-07 09:00:19', 'AUTHENTICATION_SUCCESS'),
(247, 'user', '2021-06-07 09:14:56', 'AUTHENTICATION_SUCCESS'),
(248, 'user', '2021-06-07 09:16:38', 'AUTHENTICATION_SUCCESS'),
(249, 'user', '2021-06-07 09:24:23', 'AUTHENTICATION_SUCCESS'),
(250, 'user', '2021-06-07 09:25:55', 'AUTHENTICATION_SUCCESS'),
(251, 'user', '2021-06-07 09:31:53', 'AUTHENTICATION_SUCCESS'),
(252, 'user', '2021-06-07 11:20:23', 'AUTHENTICATION_SUCCESS'),
(253, 'user', '2021-06-07 11:49:16', 'AUTHENTICATION_SUCCESS'),
(254, 'user', '2021-06-07 15:56:57', 'AUTHENTICATION_SUCCESS'),
(255, 'user', '2021-06-07 16:02:24', 'AUTHENTICATION_SUCCESS'),
(256, 'user', '2021-06-07 21:36:44', 'AUTHENTICATION_SUCCESS'),
(257, 'user', '2021-06-09 20:09:49', 'AUTHENTICATION_SUCCESS'),
(258, 'user', '2021-06-09 20:17:00', 'AUTHENTICATION_SUCCESS'),
(259, 'user', '2021-06-09 20:33:05', 'AUTHENTICATION_SUCCESS'),
(260, 'user', '2021-06-09 20:33:46', 'AUTHENTICATION_SUCCESS'),
(261, 'user', '2021-06-09 20:44:24', 'AUTHENTICATION_SUCCESS'),
(262, 'user', '2021-06-11 12:12:11', 'AUTHENTICATION_SUCCESS'),
(263, 'admin', '2021-06-11 12:16:33', 'AUTHENTICATION_SUCCESS'),
(264, 'user', '2021-06-11 12:19:43', 'AUTHENTICATION_SUCCESS');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_persistent_audit_evt_data`
--

CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jhi_persistent_audit_evt_data`
--

INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`, `name`, `value`) VALUES
(198, 'message', 'Bad credentials'),
(198, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(200, 'message', 'Bad credentials'),
(200, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(201, 'message', 'Bad credentials'),
(201, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(216, 'message', 'Bad credentials'),
(216, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(229, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(230, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(236, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(237, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(238, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(241, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(242, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(243, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(244, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(245, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(247, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(248, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(249, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(250, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(251, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(252, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(253, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(257, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(258, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(259, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(260, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(261, 'remoteAddress', '0:0:0:0:0:0:0:1');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_user`
--

CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `first_name` varchar(50),
  `last_name` varchar(50),
  `email` varchar(191),
  `image_url` varchar(256),
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(10),
  `activation_key` varchar(20),
  `reset_key` varchar(20),
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50),
  `last_modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jhi_user`
--

INSERT INTO `jhi_user` (`id`, `login`, `password_hash`, `first_name`, `last_name`, `email`, `image_url`, `activated`, `lang_key`, `activation_key`, `reset_key`, `created_by`, `created_date`, `reset_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'admin', '2021-05-20 12:31:59'),
(2, 'anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(3, 'admin', '$2a$10$Ot1aPm1/T2Nxl2k0NWfkDep4WHxhTFzZ0vqJYSB5nsLF2tcSq/ziq', 'Administrator', 'Administrator', 'qr.menu21@gmail.com', '', b'1', 'en', NULL, '5X04hya2Of21JBxrJnQt', 'system', NULL, '2021-02-26 18:48:52', 'anonymousUser', '2021-02-26 18:49:21'),
(4, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jhi_user_authority`
--

CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jhi_user_authority`
--

INSERT INTO `jhi_user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(3, 'ROLE_ADMIN'),
(4, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `menu_files`
--

CREATE TABLE `menu_files` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256),
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `is_activated` bit(1),
  `last_modified_by` varchar(50),
  `last_modified_date` datetime(6) DEFAULT NULL,
  `uploaded_file_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `menu_files`
--

INSERT INTO `menu_files` (`id`, `name`, `created_by`, `created_date`, `is_activated`, `last_modified_by`, `last_modified_date`, `uploaded_file_id`) VALUES
(29, 'menu2', 'user', '2021-05-05 23:19:37.000000', NULL, 'user', '2021-05-07 00:24:44.000000', 50),
(36, 'food', 'anonymousUser', '2021-05-08 22:59:07.000000', NULL, 'anonymousUser', '2021-05-08 22:59:07.000000', 34),
(37, 'food', 'anonymousUser', '2021-05-08 23:02:57.000000', NULL, 'anonymousUser', '2021-05-08 23:02:57.000000', 34),
(38, 'menu1', 'user', '2021-05-13 23:45:50.000000', NULL, 'anonymousUser', '2021-05-26 12:21:32.000000', 163),
(39, 'Falaise Café', 'anonymousUser', '2021-05-25 17:45:21.000000', NULL, 'anonymousUser', '2021-06-05 20:45:42.000000', 267),
(41, 'blabla', 'user', '2021-06-07 17:19:09.000000', NULL, 'user', '2021-06-07 17:19:09.000000', 282),
(42, 'menu1', 'user', '2021-06-09 09:37:16.000000', NULL, 'user', '2021-06-09 09:37:16.000000', 288);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `consumption_way` varchar(256),
  `payment_method` varchar(256),
  `state` varchar(256),
  `total_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(256),
  `name` varchar(256),
  `price` float DEFAULT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `uploaded_file_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `description`, `name`, `price`, `rating`, `uploaded_file_id`, `category_id`, `level`) VALUES
(44, 'llllll', 'hhh', 45, 2, 286, NULL, 2),
(45, 'LKMMMMM', 'LMM', 45, NULL, 290, NULL, 1),
(46, 'llllll', 'LMM', 45, NULL, 296, NULL, 3),
(47, 'lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll', 'LMM', 45, NULL, 299, NULL, 2),
(49, 'LKMMMMM', 'LMM', 33, NULL, 302, NULL, 2),
(50, 'lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll', 'LMMmmmkko', 45, NULL, 303, NULL, 2),
(52, 'qqqqqqqqqqqqqqqqqqqqq', 'meme', 35, NULL, 305, NULL, 4),
(53, 'Lmmmmmmmmmmmmm', 'LMMllllll', 588, NULL, 306, NULL, 4),
(54, 'bbb', 'mmm', 15.3, NULL, 276, 6, NULL),
(55, 'aaaa', 'mmm', 15.3, NULL, 276, 6, NULL),
(56, 'lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll', 'LMM', 35, NULL, 308, 6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `uploaded_file`
--

CREATE TABLE `uploaded_file` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255),
  `path` varchar(255),
  `type` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `uploaded_file`
--

INSERT INTO `uploaded_file` (`id`, `name`, `path`, `type`) VALUES
(34, 'UCconsommateur.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\UCconsommateur.pdf', 'PDF'),
(35, 'page de garde.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\page de garde.pdf', 'PDF'),
(36, 'page de garde.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\page de garde.pdf', 'PDF'),
(37, 'page de garde.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\page de garde.pdf', 'PDF'),
(39, 'page de garde.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\page de garde.pdf', 'PDF'),
(41, 'page de garde.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\page de garde.pdf', 'PDF'),
(45, 'aa.jpg', 'C:\\Users\\Aya\\Downloads\\uploads\\aa.jpg', 'JPG'),
(47, 'Class Diagram.vpd.pdf', 'C:\\Users\\Aya\\Downloads\\uploads\\Class Diagram.vpd.pdf', 'PDF'),
(48, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(49, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(50, 'bb.jpg', 'content/uploads/bb.jpg', 'JPG'),
(51, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(52, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(53, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(54, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(55, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(56, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(57, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(58, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(60, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(61, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(62, 'bb.jpg', 'content/uploads/bb.jpg', 'JPG'),
(63, 'aa.jpg', 'content/uploads/aa.jpg', 'JPG'),
(64, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(65, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(66, 'Class Diagram.vpd.pdf', 'content/uploads/Class Diagram.vpd.pdf', 'PDF'),
(67, 'cc.jpg', 'content/uploads/cc.jpg', 'JPG'),
(68, 'page de garde.pdf', 'content/uploads/page de garde.pdf', 'PDF'),
(69, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(70, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(71, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(72, 'UCclient_system .pdf', 'content/uploads/UCclient_system .pdf', 'PDF'),
(73, 'cc.jpg', 'content/uploads/cc.jpg', 'JPG'),
(74, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(75, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(76, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(77, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(78, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(79, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(80, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(81, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(82, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(83, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(84, 'cc.jpg', 'content/uploads/cc.jpg', 'JPG'),
(85, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(86, 'cc.jpg', 'content/uploads/cc.jpg', 'JPG'),
(87, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(88, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(89, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(91, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(92, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(93, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(94, 'Machine-Learning-1.pdf', 'content/uploads/Machine-Learning-1.pdf', 'PDF'),
(95, 'Machine-Learning-1.pdf', 'content/uploads/Machine-Learning-1.pdf', 'PDF'),
(96, 'UCclient_system -Page-1.png', 'content/uploads/UCclient_system -Page-1.png', 'PNG'),
(97, '777.png', 'content/uploads/777.png', 'PNG'),
(98, 'UCconsommateur.pdf', 'content/uploads/UCconsommateur.pdf', 'PDF'),
(99, '777.png', 'content/uploads/777.png', 'PNG'),
(100, '777.png', 'content/uploads/777.png', 'PNG'),
(101, '777.png', 'content/uploads/777.png', 'PNG'),
(102, '777.png', 'content/uploads/777.png', 'PNG'),
(103, '777.png', 'content/uploads/777.png', 'PNG'),
(104, '777.png', 'content/uploads/777.png', 'PNG'),
(105, '777.png', 'content/uploads/777.png', 'PNG'),
(106, 'Global.pdf', 'content/uploads/Global.pdf', 'PDF'),
(107, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(108, 'tp supervisée2 (1).pdf', 'content/uploads/tp supervisée2 (1).pdf', 'PDF'),
(109, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(110, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(111, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(112, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(113, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(114, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(115, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(116, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(117, 'TRANSPARENT-FOND-NOIRR.png', 'content/uploads/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(118, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(119, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(120, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(121, 'TRANSPARENT-FOND-NOIRR.png', 'content/uploads/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(122, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(123, 'TRANSPARENT-FOND-NOIRR.png', 'content/uploads/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(124, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(125, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(126, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(127, 'image.JPG', 'content/uploads/image.JPG', 'JPG'),
(128, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(129, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(130, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(131, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(132, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(133, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(134, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(135, 'PDF.png', 'content/uploads/PDF.png', 'PNG'),
(136, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(137, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(138, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(139, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(140, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(141, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(142, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(143, 'image.JPG', 'content/logos/image.JPG', 'JPG'),
(144, 'PDF.png', 'content/logos/PDF.png', 'PNG'),
(145, 'TRANSPARENT-FOND-NOIRR.png', 'content/uploads/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(146, 'TRANSPARENT-FOND-NOIRR.png', 'content/uploads/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(147, '777.png', 'content/logos/777.png', 'PNG'),
(148, '777.png', 'content/logos/777.png', 'PNG'),
(149, '777.png', 'content/logos/777.png', 'PNG'),
(150, 'aa.jpg', 'content/logos/aa.jpg', 'JPG'),
(151, 'TRANSPARENT-FOND-NOIRR.png', 'content/logos/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(152, 'TRANSPARENT-FOND-NOIRR.png', 'content/logos/TRANSPARENT-FOND-NOIRR.png', 'PNG'),
(153, 'Rapport-Aya.pdf', 'content/uploads/Rapport-Aya.pdf', 'PDF'),
(154, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(155, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(156, '404_502700181.jpg', 'content/uploads/404_502700181.jpg', 'JPG'),
(157, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(158, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(159, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(160, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(161, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(162, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(163, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(164, 'gourmandise.png', 'content/logos/gourmandise.png', 'PNG'),
(165, 'gourmandise.png', 'content/logos/gourmandise.png', 'PNG'),
(166, 'gourmandise.png', 'content/logos/gourmandise.png', 'PNG'),
(167, 'téléchargement.jpg', 'content/logos/téléchargement.jpg', 'JPG'),
(168, 'Qrcode (8).png', 'content/logos/Qrcode (8).png', 'PNG'),
(169, 'Qrcode (6).png', 'content/logos/Qrcode (6).png', 'PNG'),
(170, 'Qrcode (11).png', 'content/uploads/Qrcode (11).png', 'PNG'),
(171, 'gourmandise.png', 'content/uploads/gourmandise.png', 'PNG'),
(172, 'menu-restaurant-golf-citrus.pdf', 'content/uploads/menu-restaurant-golf-citrus.pdf', 'PDF'),
(173, 'gourmandise.png', 'content/uploads/gourmandise.png', 'PNG'),
(174, '404_502700181.jpg', 'content/uploads/404_502700181.jpg', 'JPG'),
(176, 'mvc.jpg', 'content/products/mvc.jpg', 'JPG'),
(177, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(178, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(179, 'mvc.jpg', 'content/products/mvc.jpg', 'JPG'),
(180, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(181, 'téléchargement.jpg', 'content/logos/téléchargement.jpg', 'JPG'),
(182, 'gourmandise.png', 'content/logos/gourmandise.png', 'PNG'),
(183, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(184, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(185, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(186, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(187, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(188, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(189, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(190, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(191, 'téléchargement.jpg', 'content/products/téléchargement.jpg', 'JPG'),
(192, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(193, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(194, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(195, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(196, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(197, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(198, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(199, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(200, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(201, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(202, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(203, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(204, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(205, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(206, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(207, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(208, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(209, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(210, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(211, 'Qrcode (9).png', 'content/products/Qrcode (9).png', 'PNG'),
(212, 'Qrcode (8).png', 'content/products/Qrcode (8).png', 'PNG'),
(213, 'Qrcode (8).png', 'content/products/Qrcode (8).png', 'PNG'),
(214, 'Qrcode (6).png', 'content/products/Qrcode (6).png', 'PNG'),
(215, 'Qrcode (6).png', 'content/products/Qrcode (6).png', 'PNG'),
(216, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(217, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(218, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(220, 'vp-online-logo.png', 'content/products/vp-online-logo.png', 'PNG'),
(221, 'vp-online-logo.png', 'content/products/vp-online-logo.png', 'PNG'),
(223, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(224, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(225, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(226, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(227, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(228, 'Photoshop.png', 'content/products/Photoshop.png', 'PNG'),
(229, 'mvc.jpg', 'content/products/mvc.jpg', 'JPG'),
(230, 'mvc.jpg', 'content/products/mvc.jpg', 'JPG'),
(231, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(232, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(233, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(234, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(235, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(236, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(237, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(238, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(239, 'intellij.jpg', 'content/products/intellij.jpg', 'JPG'),
(240, 'image.JPG', 'content/products/image.JPG', 'JPG'),
(241, 'jhipster_family_member_0_head-512.png', 'content/products/jhipster_family_member_0_head-512.png', 'PNG'),
(242, 'logo.png', 'content/products/logo.png', 'PNG'),
(243, 'logo.png', 'content/products/logo.png', 'PNG'),
(244, 'logo.png', 'content/products/logo.png', 'PNG'),
(245, 'logo.png', 'content/products/logo.png', 'PNG'),
(246, 'logo.png', 'content/products/logo.png', 'PNG'),
(247, 'logo.png', 'content/products/logo.png', 'PNG'),
(248, 'logo.png', 'content/products/logo.png', 'PNG'),
(249, 'logo.png', 'content/products/logo.png', 'PNG'),
(250, 'logo.png', 'content/products/logo.png', 'PNG'),
(251, 'logo.png', 'content/products/logo.png', 'PNG'),
(252, 'Qrcode (8).png', 'content/products/Qrcode (8).png', 'PNG'),
(253, 'Qrcode (10).png', 'content/products/Qrcode (10).png', 'PNG'),
(254, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(255, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(256, 'gourmandise.png', 'content/products/gourmandise.png', 'PNG'),
(257, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(258, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(259, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(260, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(261, 'téléchargement.jpg', 'content/logos/téléchargement.jpg', 'JPG'),
(262, 'téléchargement.jpg', 'content/products/téléchargement.jpg', 'JPG'),
(264, 'UCclient_system .vpd.png', 'content/products/UCclient_system .vpd.png', 'PNG'),
(265, 'Qrcode (8).png', 'content/products/Qrcode (8).png', 'PNG'),
(266, 'Qrcode (9).png', 'content/products/Qrcode (9).png', 'PNG'),
(267, 'Chapitre6.pdf', 'content/uploads/Chapitre6.pdf', 'PDF'),
(268, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(269, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(270, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(271, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(272, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(273, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(274, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(275, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(276, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(277, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(278, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(279, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(280, 'Qrcode (11).png', 'content/products/Qrcode (11).png', 'PNG'),
(281, 'Qrcode (13).png', 'content/logos/Qrcode (13).png', 'PNG'),
(282, 'gourmandise.png', 'content/uploads/gourmandise.png', 'PNG'),
(283, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(284, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(285, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(286, 'Qrcode (12).png', 'content/products/Qrcode (12).png', 'PNG'),
(287, 'QRmenuLogo.png', 'content/logos/QRmenuLogo.png', 'PNG'),
(288, 'QRmenuLogo.png', 'content/uploads/QRmenuLogo.png', 'PNG'),
(289, 'QRmenuLogo.png', 'content/uploads/QRmenuLogo.png', 'PNG'),
(290, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(291, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(292, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(293, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(294, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(295, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(296, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(297, 'Qrcode (13).png', 'content/products/Qrcode (13).png', 'PNG'),
(298, 'Qrcode (13).png', 'content/products/Qrcode (13).png', 'PNG'),
(299, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(300, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(302, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(303, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(304, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(305, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(306, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(307, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG'),
(308, 'QRmenuLogo.png', 'content/products/QRmenuLogo.png', 'PNG');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlhn648u3c1slfnnulblpo7hag` (`digital_menu_id`);

--
-- Index pour la table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `digital_menu`
--
ALTER TABLE `digital_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `establishment`
--
ALTER TABLE `establishment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKl3ttqrh7ewgtyjt2flml22rvb` (`user_id`),
  ADD KEY `FK1wsh83ic0gwlh6lgwywtpclmq` (`digital_menu_id`),
  ADD KEY `FK8htwxrout8gpsxcwec8aypt5` (`menu_file_id`),
  ADD KEY `FK2aq50jb6g1lyse2qjoav5hq41` (`uploaded_file_id`);

--
-- Index pour la table `jhi_authority`
--
ALTER TABLE `jhi_authority`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jhi_persistent_audit_event`
--
ALTER TABLE `jhi_persistent_audit_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Index pour la table `jhi_persistent_audit_evt_data`
--
ALTER TABLE `jhi_persistent_audit_evt_data`
  ADD PRIMARY KEY (`event_id`,`name`);

--
-- Index pour la table `jhi_user`
--
ALTER TABLE `jhi_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_login` (`login`),
  ADD UNIQUE KEY `ux_user_email` (`email`);

--
-- Index pour la table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_name`),
  ADD KEY `fk_authority_name` (`authority_name`);

--
-- Index pour la table `menu_files`
--
ALTER TABLE `menu_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4x4o755duvhim0jcnl8ti7hjc` (`uploaded_file_id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnty4w7dcpysbxnuy005yfc57` (`uploaded_file_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Index pour la table `uploaded_file`
--
ALTER TABLE `uploaded_file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `digital_menu`
--
ALTER TABLE `digital_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `establishment`
--
ALTER TABLE `establishment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `jhi_persistent_audit_event`
--
ALTER TABLE `jhi_persistent_audit_event`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT pour la table `jhi_user`
--
ALTER TABLE `jhi_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `menu_files`
--
ALTER TABLE `menu_files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `uploaded_file`
--
ALTER TABLE `uploaded_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FKlhn648u3c1slfnnulblpo7hag` FOREIGN KEY (`digital_menu_id`) REFERENCES `digital_menu` (`id`);

--
-- Contraintes pour la table `establishment`
--
ALTER TABLE `establishment`
  ADD CONSTRAINT `FK1wsh83ic0gwlh6lgwywtpclmq` FOREIGN KEY (`digital_menu_id`) REFERENCES `digital_menu` (`id`),
  ADD CONSTRAINT `FK2aq50jb6g1lyse2qjoav5hq41` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`),
  ADD CONSTRAINT `FK8htwxrout8gpsxcwec8aypt5` FOREIGN KEY (`menu_file_id`) REFERENCES `menu_files` (`id`),
  ADD CONSTRAINT `FKl3ttqrh7ewgtyjt2flml22rvb` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);

--
-- Contraintes pour la table `jhi_persistent_audit_evt_data`
--
ALTER TABLE `jhi_persistent_audit_evt_data`
  ADD CONSTRAINT `FK2ehnyx2si4tjd2nt4q7y40v8m` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`);

--
-- Contraintes pour la table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);

--
-- Contraintes pour la table `menu_files`
--
ALTER TABLE `menu_files`
  ADD CONSTRAINT `FK4x4o755duvhim0jcnl8ti7hjc` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKnty4w7dcpysbxnuy005yfc57` FOREIGN KEY (`uploaded_file_id`) REFERENCES `uploaded_file` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
