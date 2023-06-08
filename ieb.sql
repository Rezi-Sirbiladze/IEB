-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-06-2023 a las 20:00:31
-- Versión del servidor: 8.0.33-0ubuntu0.20.04.2
-- Versión de PHP: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ieb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitats`
--

CREATE TABLE `activitats` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcio` text COLLATE utf8mb4_unicode_ci,
  `imatge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activitats`
--

INSERT INTO `activitats` (`id`, `nom`, `descripcio`, `imatge`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ACTIVITAT CONJUNTA', 'Activitat sorpresa! Prepara\'t per a passar l\'última estona amb tots els teus companys i companyes i tots els nostres tècnics junts en un espai on no existeix la vergonya! Aquestes preparat i preparada?', 'Design - Option C.png', NULL, '2023-04-16 17:29:20', NULL),
(2, 'FAMA', 'Classe pre coreografiada de condicionament físic, inspirada en la cultura llatina amb sons també internacionals. La fórmula barreja el ball amb exercicis de tonificació per a totes les persones sense importar la seva edat, el seu estat físic, el seu entorn, ja que no requereix un nivell ni d\'una experiència prèvia.', 'foto 1.jpg', NULL, '2023-04-16 17:29:20', NULL),
(3, 'WOD', 'Propi de la disciplina del CrossFit. Les seves sigles signifiquen \"Work Of the Day\", que significa la rutina i els exercicis que s\'han de realitzar aquell dia en concret. Aquesta rutina està composta d\'exercicis físics que combinen la força, gimnàstica i resistència.', 'foto 2.jpg', NULL, '2023-04-16 17:29:20', NULL),
(4, 'BOXA', 'Vols descobrir les bases de la boxa? Apunta\'t a la nostra classe i coneixeràs els cops més bàsics i més utilitzats de la boxa, així com practicaràs les combinacions més eficients. T\'assegurem diversió mentres guanyes confiança i aprens a defensar-te davant d\'un atac.', 'foto 3.jpg', NULL, '2023-04-16 17:29:20', NULL),
(5, 'CORE Y TRX', 'Treball intens d\'abdominals amb diferents tipus de planxes i crunches abdominals, combinat amb un treball funcional mitjançant exercicis on usarem el nostre propi pes corporal en suspensió (TRX).', 'foto 4.jpg', NULL, '2023-04-16 17:29:20', NULL),
(6, 'OPOSICIONS', 'Consisteix en conèixer les proves de les oposicions de les forces de seguretat de l\'estat, per a posar-te a prova i veure a quin nivell et trobes. T\'animes?', 'foto 5.jpg', NULL, '2023-04-16 17:29:20', NULL),
(7, 'POSTURAL', 'Activitat on el cos i ments treballen de forma integral per a la millora la condició física, el control postural, la flexibilitat i la respiració. La combinació d\'exercicis d\'estiraments i tonificació de les diferents cadenes musculars seran bàsics per garantir la correcta estabilització de la columna. Integrar la relaxació com a part del nostre concepte de salut i entrenament és un dels pilars del Control Postural.', 'foto 6.jpg', NULL, '2023-04-16 17:29:20', NULL),
(8, 'TWERK', 'Classe de ball coreografica de 45 minuts on se’t presentaràn els passos més bàsics del Twerk, estil de ball centrat en moviments pelvics. Per a venir i passar-t’ho bé necessitaràs: treure’t la vergonya de sobre, ment oberta i la roba (pantalons) que et permeti moure’t amb llibertat i amb quina et sentis comode (des de la més llarga fins la més curta)', 'foto 10.jpg', NULL, '2023-04-16 17:29:20', NULL),
(9, 'BY COMBAT', 'El que es busca aquest taller és mostrar aquesta innovadora modalitat on un treball aeròbic d\'alta intensitat es combina amb els gestos tècnics de diferents arts marcials com el Taekwondo, Boxa, karate , Muay Thai,... En format coreografiat per incloure el ritme i la coordinació, i utilitzant cops de puny, puntades, guàrdies,...', 'foto 7.jpg', NULL, '2023-04-16 17:29:20', NULL),
(10, 'NUTRICIÓ REPTES', 'T\'has plantejat mai quin tipus d\'alimentació porten els esportistes? Sabries dir quines adaptacions alimentàries ha de tenir un esportista de resistència? I de força-potència?\n        Vine a fer un taller amb l\'alumnat de dietètica de l\'IAB per aprendre consells nutricionals bàsics I característics per a diferents tipus d\'esportistes', 'foto 8.jpg', NULL, '2023-04-16 17:29:20', NULL),
(11, 'A CUINAR!', 'Si vols aprendre a fer un menú senzill, ràpid, energetic i saludable, que et serveixi per abans d\'anar a fet el teu entrenament, o per després, passa\'t a fer un taller de cuina amb l\'alumnat de dietètica de l\'IAB. I al final del taller, a fer el tastet... segur que  t\'agradarà.\n        ', 'foto 9.jpg', NULL, '2023-04-16 17:29:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitats_firas`
--

CREATE TABLE `activitats_firas` (
  `id` int UNSIGNED NOT NULL,
  `id_fira` int UNSIGNED NOT NULL,
  `id_activitat` int UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `hora_inici` time NOT NULL,
  `hora_final` time NOT NULL,
  `places` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activitats_firas`
--

INSERT INTO `activitats_firas` (`id`, `id_fira`, `id_activitat`, `data`, `hora_inici`, `hora_final`, `places`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-04-21', '09:30:00', '10:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(2, 1, 3, '2023-04-21', '09:30:00', '10:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(3, 1, 4, '2023-04-21', '09:30:00', '10:15:00', 35, NULL, '2023-04-16 17:29:20', NULL),
(4, 1, 5, '2023-04-21', '09:30:00', '10:15:00', 20, NULL, '2023-04-16 17:29:20', NULL),
(5, 1, 6, '2023-04-21', '09:30:00', '10:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(6, 1, 7, '2023-04-21', '09:30:00', '10:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(7, 1, 9, '2023-04-21', '09:30:00', '10:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(8, 1, 10, '2023-04-21', '09:30:00', '10:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(9, 1, 11, '2023-04-21', '09:30:00', '10:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(10, 1, 2, '2023-04-21', '10:30:00', '11:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(11, 1, 3, '2023-04-21', '10:30:00', '11:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(12, 1, 4, '2023-04-21', '10:30:00', '11:15:00', 35, NULL, '2023-04-16 17:29:20', NULL),
(13, 1, 5, '2023-04-21', '10:30:00', '11:15:00', 20, NULL, '2023-04-16 17:29:20', NULL),
(14, 1, 6, '2023-04-21', '10:30:00', '11:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(15, 1, 8, '2023-04-21', '10:30:00', '11:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(16, 1, 9, '2023-04-21', '10:30:00', '11:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(17, 1, 10, '2023-04-21', '10:30:00', '11:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(18, 1, 11, '2023-04-21', '10:30:00', '11:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(19, 1, 2, '2023-04-21', '11:30:00', '12:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(20, 1, 3, '2023-04-21', '11:30:00', '12:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(21, 1, 4, '2023-04-21', '11:30:00', '12:15:00', 35, NULL, '2023-04-16 17:29:20', NULL),
(22, 1, 5, '2023-04-21', '11:30:00', '12:15:00', 20, NULL, '2023-04-16 17:29:20', NULL),
(23, 1, 6, '2023-04-21', '11:30:00', '12:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(24, 1, 7, '2023-04-21', '11:30:00', '12:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(25, 1, 9, '2023-04-21', '11:30:00', '12:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(26, 1, 10, '2023-04-21', '11:30:00', '12:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(27, 1, 11, '2023-04-21', '11:30:00', '12:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(28, 1, 2, '2023-04-21', '12:30:00', '13:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(29, 1, 3, '2023-04-21', '12:30:00', '13:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(30, 1, 4, '2023-04-21', '12:30:00', '13:15:00', 35, NULL, '2023-04-16 17:29:20', NULL),
(31, 1, 5, '2023-04-21', '12:30:00', '13:15:00', 20, NULL, '2023-04-16 17:29:20', NULL),
(32, 1, 6, '2023-04-21', '12:30:00', '13:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(33, 1, 8, '2023-04-21', '12:30:00', '13:15:00', 30, NULL, '2023-04-16 17:29:20', NULL),
(34, 1, 9, '2023-04-21', '12:30:00', '13:15:00', 60, NULL, '2023-04-16 17:29:20', NULL),
(35, 1, 10, '2023-04-21', '12:30:00', '13:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(36, 1, 11, '2023-04-21', '12:30:00', '13:15:00', 15, NULL, '2023-04-16 17:29:20', NULL),
(37, 1, 1, '2023-04-21', '13:30:00', '14:00:00', 400, NULL, '2023-04-16 17:29:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `firas`
--

CREATE TABLE `firas` (
  `id` int UNSIGNED NOT NULL,
  `id_institut` int UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `hora_inici` time NOT NULL,
  `hora_final` time NOT NULL,
  `descripcio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `firas`
--

INSERT INTO `firas` (`id`, `id_institut`, `nom`, `data`, `hora_inici`, `hora_final`, `descripcio`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fira', '2023-04-21', '09:00:00', '14:00:00', 'La FIRA és un esdeveniment organitzat per l\'alumnat de 2n del Cicle Superior de Condicionament Físic de l\'Institut de l\'Esport de Barcelona amb la intenció de promoure la pràctica d\'exercici físic en població jove, donar a conèixer el nostre Institut així com fomentar els valors solidaris amb una especial col·laboració amb Tienda Solidaria Piel de Mariposa.\n            Gaudirem d\'un matí amb diverses activitats i tallers dirigits pels mateixos alumnes.\n            Fem esport solidari!', NULL, '2023-04-16 17:29:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituts`
--

CREATE TABLE `instituts` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instituts`
--

INSERT INTO `instituts` (`id`, `nom`, `direccio`, `mobil`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Institut de l\'Esport de Barcelona', 'Avinguda Francesc Ferrer i Guàrdia, 16 08038 Barcelona Codi de centre 08077137', '93 153 74 24', NULL, '2023-04-16 17:29:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2023_02_22_203702_instituts', 1),
(4, '2023_02_22_210801_usuaris', 1),
(5, '2023_02_22_211657_firas', 1),
(6, '2023_02_22_212221_activitats', 1),
(7, '2023_02_22_213118_activitats_firas', 1),
(8, '2023_02_22_213412_reservas', 1),
(9, '2023_02_22_214030_rols', 1),
(10, '2023_02_22_214529_rol_user', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int UNSIGNED NOT NULL,
  `id_activitat_fira` int UNSIGNED NOT NULL,
  `id_usuari` int UNSIGNED NOT NULL,
  `presentat` int DEFAULT NULL,
  `valoracio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comentari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `id_activitat_fira`, `id_usuari`, `presentat`, `valoracio`, `comentari`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, NULL, NULL, NULL, NULL, '2023-04-17 16:27:09', NULL),
(2, 24, 2, NULL, NULL, NULL, NULL, '2023-04-17 16:27:09', NULL),
(3, 34, 2, NULL, NULL, NULL, NULL, '2023-04-17 16:27:09', NULL),
(4, 10, 2, NULL, NULL, NULL, NULL, '2023-04-17 16:27:09', NULL),
(5, 37, 2, NULL, NULL, NULL, NULL, '2023-04-17 16:27:09', NULL),
(6, 36, 3, NULL, NULL, NULL, NULL, '2023-04-17 20:13:35', NULL),
(7, 24, 3, NULL, NULL, NULL, NULL, '2023-04-17 20:13:35', NULL),
(8, 14, 3, NULL, NULL, NULL, NULL, '2023-04-17 20:13:35', NULL),
(9, 4, 3, NULL, NULL, NULL, NULL, '2023-04-17 20:13:35', NULL),
(10, 37, 3, NULL, NULL, NULL, NULL, '2023-04-17 20:13:35', NULL),
(11, 9, 4, NULL, NULL, NULL, NULL, '2023-04-18 09:55:44', NULL),
(12, 14, 4, NULL, NULL, NULL, NULL, '2023-04-18 09:55:44', NULL),
(13, 21, 4, NULL, NULL, NULL, NULL, '2023-04-18 09:55:44', NULL),
(14, 28, 4, NULL, NULL, NULL, NULL, '2023-04-18 09:55:44', NULL),
(15, 37, 4, NULL, NULL, NULL, NULL, '2023-04-18 09:55:44', NULL),
(16, 4, 10, NULL, NULL, NULL, NULL, '2023-04-18 09:57:18', NULL),
(17, 12, 10, NULL, NULL, NULL, NULL, '2023-04-18 09:57:18', NULL),
(18, 23, 10, NULL, NULL, NULL, NULL, '2023-04-18 09:57:18', NULL),
(19, 34, 10, NULL, NULL, NULL, NULL, '2023-04-18 09:57:18', NULL),
(20, 37, 10, NULL, NULL, NULL, NULL, '2023-04-18 09:57:18', NULL),
(21, 9, 5, NULL, NULL, NULL, NULL, '2023-04-18 09:57:32', NULL),
(22, 14, 5, NULL, NULL, NULL, NULL, '2023-04-18 09:57:32', NULL),
(23, 21, 5, NULL, NULL, NULL, NULL, '2023-04-18 09:57:32', NULL),
(24, 33, 5, NULL, NULL, NULL, NULL, '2023-04-18 09:57:32', NULL),
(25, 37, 5, NULL, NULL, NULL, NULL, '2023-04-18 09:57:32', NULL),
(26, 33, 7, NULL, NULL, NULL, NULL, '2023-04-18 09:57:35', NULL),
(27, 9, 7, NULL, NULL, NULL, NULL, '2023-04-18 09:57:35', NULL),
(28, 21, 7, NULL, NULL, NULL, NULL, '2023-04-18 09:57:35', NULL),
(29, 14, 7, NULL, NULL, NULL, NULL, '2023-04-18 09:57:35', NULL),
(30, 37, 7, NULL, NULL, NULL, NULL, '2023-04-18 09:57:35', NULL),
(31, 4, 14, NULL, NULL, NULL, NULL, '2023-04-18 09:58:00', NULL),
(32, 12, 14, NULL, NULL, NULL, NULL, '2023-04-18 09:58:00', NULL),
(33, 23, 14, NULL, NULL, NULL, NULL, '2023-04-18 09:58:00', NULL),
(34, 34, 14, NULL, NULL, NULL, NULL, '2023-04-18 09:58:00', NULL),
(35, 37, 14, NULL, NULL, NULL, NULL, '2023-04-18 09:58:00', NULL),
(36, 9, 15, NULL, NULL, NULL, NULL, '2023-04-18 09:58:41', NULL),
(37, 17, 15, NULL, NULL, NULL, NULL, '2023-04-18 09:58:41', NULL),
(38, 21, 15, NULL, NULL, NULL, NULL, '2023-04-18 09:58:41', NULL),
(39, 33, 15, NULL, NULL, NULL, NULL, '2023-04-18 09:58:41', NULL),
(40, 37, 15, NULL, NULL, NULL, NULL, '2023-04-18 09:58:41', NULL),
(41, 9, 12, NULL, NULL, NULL, NULL, '2023-04-18 09:58:54', NULL),
(42, 17, 12, NULL, NULL, NULL, NULL, '2023-04-18 09:58:54', NULL),
(43, 21, 12, NULL, NULL, NULL, NULL, '2023-04-18 09:58:54', NULL),
(44, 33, 12, NULL, NULL, NULL, NULL, '2023-04-18 09:58:54', NULL),
(45, 37, 12, NULL, NULL, NULL, NULL, '2023-04-18 09:58:54', NULL),
(46, 36, 8, NULL, NULL, NULL, NULL, '2023-04-18 09:59:29', NULL),
(47, 1, 8, NULL, NULL, NULL, NULL, '2023-04-18 09:59:29', NULL),
(48, 17, 8, NULL, NULL, NULL, NULL, '2023-04-18 09:59:29', NULL),
(49, 21, 8, NULL, NULL, NULL, NULL, '2023-04-18 09:59:29', NULL),
(50, 37, 8, NULL, NULL, NULL, NULL, '2023-04-18 09:59:29', NULL),
(51, 6, 11, NULL, NULL, NULL, NULL, '2023-04-18 09:59:46', NULL),
(52, 10, 11, NULL, NULL, NULL, NULL, '2023-04-18 09:59:46', NULL),
(53, 21, 11, NULL, NULL, NULL, NULL, '2023-04-18 09:59:46', NULL),
(54, 36, 11, NULL, NULL, NULL, NULL, '2023-04-18 09:59:46', NULL),
(55, 37, 11, NULL, NULL, NULL, NULL, '2023-04-18 09:59:46', NULL),
(56, 4, 17, NULL, NULL, NULL, NULL, '2023-04-18 09:59:47', NULL),
(57, 14, 17, NULL, NULL, NULL, NULL, '2023-04-18 09:59:47', NULL),
(58, 24, 17, NULL, NULL, NULL, NULL, '2023-04-18 09:59:47', NULL),
(59, 36, 17, NULL, NULL, NULL, NULL, '2023-04-18 09:59:47', NULL),
(60, 37, 17, NULL, NULL, NULL, NULL, '2023-04-18 09:59:47', NULL),
(66, 4, 9, NULL, NULL, NULL, NULL, '2023-04-18 10:00:03', NULL),
(67, 12, 9, NULL, NULL, NULL, NULL, '2023-04-18 10:00:03', NULL),
(68, 20, 9, NULL, NULL, NULL, NULL, '2023-04-18 10:00:03', NULL),
(69, 36, 9, NULL, NULL, NULL, NULL, '2023-04-18 10:00:03', NULL),
(70, 37, 9, NULL, NULL, NULL, NULL, '2023-04-18 10:00:03', NULL),
(71, 4, 13, NULL, NULL, NULL, NULL, '2023-04-18 10:00:05', NULL),
(72, 12, 13, NULL, NULL, NULL, NULL, '2023-04-18 10:00:05', NULL),
(73, 20, 13, NULL, NULL, NULL, NULL, '2023-04-18 10:00:05', NULL),
(74, 36, 13, NULL, NULL, NULL, NULL, '2023-04-18 10:00:05', NULL),
(75, 37, 13, NULL, NULL, NULL, NULL, '2023-04-18 10:00:05', NULL),
(76, 9, 22, NULL, NULL, NULL, NULL, '2023-04-18 10:01:15', NULL),
(77, 17, 22, NULL, NULL, NULL, NULL, '2023-04-18 10:01:15', NULL),
(78, 21, 22, NULL, NULL, NULL, NULL, '2023-04-18 10:01:15', NULL),
(79, 32, 22, NULL, NULL, NULL, NULL, '2023-04-18 10:01:15', NULL),
(80, 37, 22, NULL, NULL, NULL, NULL, '2023-04-18 10:01:15', NULL),
(81, 6, 23, NULL, NULL, NULL, NULL, '2023-04-18 10:03:54', NULL),
(82, 10, 23, NULL, NULL, NULL, NULL, '2023-04-18 10:03:54', NULL),
(83, 21, 23, NULL, NULL, NULL, NULL, '2023-04-18 10:03:54', NULL),
(84, 36, 23, NULL, NULL, NULL, NULL, '2023-04-18 10:03:54', NULL),
(85, 37, 23, NULL, NULL, NULL, NULL, '2023-04-18 10:03:54', NULL),
(86, 3, 25, NULL, NULL, NULL, NULL, '2023-04-18 10:31:07', NULL),
(87, 16, 25, NULL, NULL, NULL, NULL, '2023-04-18 10:31:07', NULL),
(88, 31, 25, NULL, NULL, NULL, NULL, '2023-04-18 10:31:07', NULL),
(89, 27, 25, NULL, NULL, NULL, NULL, '2023-04-18 10:31:07', NULL),
(90, 37, 25, NULL, NULL, NULL, NULL, '2023-04-18 10:31:07', NULL),
(91, 14, 28, NULL, NULL, NULL, NULL, '2023-04-18 10:31:24', NULL),
(92, 27, 28, NULL, NULL, NULL, NULL, '2023-04-18 10:31:24', NULL),
(93, 31, 28, NULL, NULL, NULL, NULL, '2023-04-18 10:31:24', NULL),
(94, 2, 28, NULL, NULL, NULL, NULL, '2023-04-18 10:31:24', NULL),
(95, 37, 28, NULL, NULL, NULL, NULL, '2023-04-18 10:31:24', NULL),
(96, 3, 31, NULL, NULL, NULL, NULL, '2023-04-18 10:31:37', NULL),
(97, 16, 31, NULL, NULL, NULL, NULL, '2023-04-18 10:31:37', NULL),
(98, 27, 31, NULL, NULL, NULL, NULL, '2023-04-18 10:31:37', NULL),
(99, 31, 31, NULL, NULL, NULL, NULL, '2023-04-18 10:31:37', NULL),
(100, 37, 31, NULL, NULL, NULL, NULL, '2023-04-18 10:31:37', NULL),
(101, 6, 29, NULL, NULL, NULL, NULL, '2023-04-18 10:31:39', NULL),
(102, 13, 29, NULL, NULL, NULL, NULL, '2023-04-18 10:31:39', NULL),
(103, 27, 29, NULL, NULL, NULL, NULL, '2023-04-18 10:31:39', NULL),
(104, 30, 29, NULL, NULL, NULL, NULL, '2023-04-18 10:31:39', NULL),
(105, 37, 29, NULL, NULL, NULL, NULL, '2023-04-18 10:31:39', NULL),
(106, 6, 27, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(107, 27, 27, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(108, 13, 27, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(109, 30, 27, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(110, 37, 27, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(111, 6, 30, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(112, 27, 30, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(113, 13, 30, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(114, 30, 30, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(115, 37, 30, NULL, NULL, NULL, NULL, '2023-04-18 10:31:42', NULL),
(116, 6, 26, NULL, '5', NULL, NULL, '2023-04-18 10:31:56', '2023-04-21 08:16:42'),
(117, 10, 26, NULL, '5', 'Brutal', NULL, '2023-04-18 10:31:56', '2023-04-21 09:17:20'),
(118, 27, 26, NULL, '4', NULL, NULL, '2023-04-18 10:31:56', '2023-04-21 10:12:54'),
(119, 34, 26, NULL, '5', NULL, NULL, '2023-04-18 10:31:56', '2023-04-21 11:10:53'),
(120, 37, 26, NULL, '5:5:5:5:5', NULL, NULL, '2023-04-18 10:31:56', '2023-04-21 11:43:36'),
(121, 27, 24, NULL, NULL, NULL, NULL, '2023-04-18 10:33:54', NULL),
(122, 6, 24, NULL, NULL, NULL, NULL, '2023-04-18 10:33:54', NULL),
(123, 30, 24, NULL, NULL, NULL, NULL, '2023-04-18 10:33:54', NULL),
(124, 13, 24, NULL, NULL, NULL, NULL, '2023-04-18 10:33:54', NULL),
(125, 37, 24, NULL, NULL, NULL, NULL, '2023-04-18 10:33:54', NULL),
(126, 1, 33, NULL, NULL, NULL, NULL, '2023-04-18 12:47:12', NULL),
(127, 12, 33, NULL, NULL, NULL, NULL, '2023-04-18 12:47:12', NULL),
(128, 24, 33, NULL, NULL, NULL, NULL, '2023-04-18 12:47:12', NULL),
(129, 34, 33, NULL, NULL, NULL, NULL, '2023-04-18 12:47:12', NULL),
(130, 37, 33, NULL, NULL, NULL, NULL, '2023-04-18 12:47:12', NULL),
(131, 1, 32, NULL, '5', NULL, NULL, '2023-04-18 12:47:21', '2023-04-21 10:59:43'),
(132, 12, 32, NULL, '3', NULL, NULL, '2023-04-18 12:47:21', '2023-04-21 10:59:51'),
(133, 24, 32, NULL, '3', NULL, NULL, '2023-04-18 12:47:21', '2023-04-21 11:00:01'),
(134, 34, 32, NULL, NULL, NULL, NULL, '2023-04-18 12:47:21', NULL),
(135, 37, 32, NULL, NULL, NULL, NULL, '2023-04-18 12:47:21', NULL),
(136, 3, 35, NULL, '5', NULL, NULL, '2023-04-18 15:17:58', '2023-04-21 08:11:39'),
(137, 11, 35, NULL, '5', NULL, NULL, '2023-04-18 15:17:58', '2023-04-21 09:16:27'),
(138, 23, 35, NULL, '5', NULL, NULL, '2023-04-18 15:17:58', '2023-04-21 10:06:43'),
(139, 36, 35, NULL, '5', NULL, NULL, '2023-04-18 15:17:58', '2023-04-21 11:45:09'),
(140, 37, 35, NULL, '5:5:5:3:5', NULL, NULL, '2023-04-18 15:17:58', '2023-04-21 11:56:35'),
(141, 6, 34, NULL, NULL, NULL, NULL, '2023-04-18 15:21:05', NULL),
(142, 15, 34, NULL, NULL, NULL, NULL, '2023-04-18 15:21:05', NULL),
(143, 19, 34, NULL, NULL, NULL, NULL, '2023-04-18 15:21:05', NULL),
(144, 29, 34, NULL, NULL, NULL, NULL, '2023-04-18 15:21:05', NULL),
(145, 37, 34, NULL, NULL, NULL, NULL, '2023-04-18 15:21:05', NULL),
(146, 1, 36, NULL, NULL, NULL, NULL, '2023-04-18 15:22:03', NULL),
(147, 11, 36, NULL, NULL, NULL, NULL, '2023-04-18 15:22:03', NULL),
(148, 21, 36, NULL, NULL, NULL, NULL, '2023-04-18 15:22:03', NULL),
(149, 33, 36, NULL, NULL, NULL, NULL, '2023-04-18 15:22:03', NULL),
(150, 37, 36, NULL, NULL, NULL, NULL, '2023-04-18 15:22:03', NULL),
(151, 19, 37, NULL, '5', NULL, NULL, '2023-04-18 15:25:05', '2023-04-21 10:22:44'),
(152, 33, 37, NULL, '5', NULL, NULL, '2023-04-18 15:25:05', '2023-04-21 12:09:53'),
(153, 16, 37, NULL, '5', NULL, NULL, '2023-04-18 15:25:05', '2023-04-21 12:10:08'),
(154, 2, 37, NULL, '5', NULL, NULL, '2023-04-18 15:25:05', '2023-04-21 12:10:01'),
(155, 37, 37, NULL, '5:4:5:5:5', NULL, NULL, '2023-04-18 15:25:05', '2023-04-21 12:11:30'),
(156, 21, 38, NULL, NULL, NULL, NULL, '2023-04-18 15:25:12', NULL),
(157, 33, 38, NULL, NULL, NULL, NULL, '2023-04-18 15:25:12', NULL),
(158, 11, 38, NULL, NULL, NULL, NULL, '2023-04-18 15:25:12', NULL),
(159, 7, 38, NULL, NULL, NULL, NULL, '2023-04-18 15:25:12', NULL),
(160, 37, 38, NULL, NULL, NULL, NULL, '2023-04-18 15:25:12', NULL),
(161, 5, 40, NULL, NULL, NULL, NULL, '2023-04-18 17:20:31', NULL),
(162, 11, 40, NULL, NULL, NULL, NULL, '2023-04-18 17:20:31', NULL),
(163, 21, 40, NULL, NULL, NULL, NULL, '2023-04-18 17:20:31', NULL),
(164, 36, 40, NULL, NULL, NULL, NULL, '2023-04-18 17:20:31', NULL),
(165, 37, 40, NULL, NULL, NULL, NULL, '2023-04-18 17:20:31', NULL),
(166, 5, 39, NULL, NULL, NULL, NULL, '2023-04-18 17:26:44', NULL),
(167, 11, 39, NULL, NULL, NULL, NULL, '2023-04-18 17:26:44', NULL),
(168, 21, 39, NULL, NULL, NULL, NULL, '2023-04-18 17:26:44', NULL),
(169, 36, 39, NULL, NULL, NULL, NULL, '2023-04-18 17:26:44', NULL),
(170, 37, 39, NULL, NULL, NULL, NULL, '2023-04-18 17:26:44', NULL),
(171, 5, 41, NULL, NULL, NULL, NULL, '2023-04-18 20:45:51', NULL),
(172, 11, 41, NULL, NULL, NULL, NULL, '2023-04-18 20:45:51', NULL),
(173, 21, 41, NULL, NULL, NULL, NULL, '2023-04-18 20:45:51', NULL),
(174, 35, 41, NULL, NULL, NULL, NULL, '2023-04-18 20:45:51', NULL),
(175, 37, 41, NULL, NULL, NULL, NULL, '2023-04-18 20:45:51', NULL),
(176, 5, 42, NULL, NULL, NULL, NULL, '2023-04-18 20:46:21', NULL),
(177, 11, 42, NULL, NULL, NULL, NULL, '2023-04-18 20:46:21', NULL),
(178, 21, 42, NULL, NULL, NULL, NULL, '2023-04-18 20:46:21', NULL),
(179, 36, 42, NULL, NULL, NULL, NULL, '2023-04-18 20:46:21', NULL),
(180, 37, 42, NULL, NULL, NULL, NULL, '2023-04-18 20:46:21', NULL),
(181, 5, 43, NULL, NULL, NULL, NULL, '2023-04-18 21:05:49', NULL),
(182, 11, 43, NULL, NULL, NULL, NULL, '2023-04-18 21:05:49', NULL),
(183, 21, 43, NULL, NULL, NULL, NULL, '2023-04-18 21:05:49', NULL),
(184, 36, 43, NULL, NULL, NULL, NULL, '2023-04-18 21:05:49', NULL),
(185, 37, 43, NULL, NULL, NULL, NULL, '2023-04-18 21:05:49', NULL),
(186, 7, 44, NULL, NULL, NULL, NULL, '2023-04-19 05:19:10', NULL),
(187, 11, 44, NULL, NULL, NULL, NULL, '2023-04-19 05:19:10', NULL),
(188, 21, 44, NULL, NULL, NULL, NULL, '2023-04-19 05:19:10', NULL),
(189, 35, 44, NULL, NULL, NULL, NULL, '2023-04-19 05:19:10', NULL),
(190, 37, 44, NULL, NULL, NULL, NULL, '2023-04-19 05:19:10', NULL),
(191, 7, 48, NULL, NULL, NULL, NULL, '2023-04-19 05:47:50', NULL),
(192, 18, 48, NULL, NULL, NULL, NULL, '2023-04-19 05:47:50', NULL),
(193, 21, 48, NULL, NULL, NULL, NULL, '2023-04-19 05:47:50', NULL),
(194, 32, 48, NULL, NULL, NULL, NULL, '2023-04-19 05:47:50', NULL),
(195, 37, 48, NULL, NULL, NULL, NULL, '2023-04-19 05:47:50', NULL),
(196, 6, 47, NULL, NULL, NULL, NULL, '2023-04-19 05:48:06', NULL),
(197, 15, 47, NULL, NULL, NULL, NULL, '2023-04-19 05:48:06', NULL),
(198, 21, 47, NULL, NULL, NULL, NULL, '2023-04-19 05:48:06', NULL),
(199, 34, 47, NULL, NULL, NULL, NULL, '2023-04-19 05:48:06', NULL),
(200, 37, 47, NULL, NULL, NULL, NULL, '2023-04-19 05:48:06', NULL),
(201, 6, 45, NULL, NULL, NULL, NULL, '2023-04-19 05:48:08', NULL),
(202, 15, 45, NULL, NULL, NULL, NULL, '2023-04-19 05:48:08', NULL),
(203, 21, 45, NULL, NULL, NULL, NULL, '2023-04-19 05:48:08', NULL),
(204, 34, 45, NULL, NULL, NULL, NULL, '2023-04-19 05:48:08', NULL),
(205, 37, 45, NULL, NULL, NULL, NULL, '2023-04-19 05:48:08', NULL),
(206, 5, 53, NULL, '5', NULL, NULL, '2023-04-19 05:48:25', '2023-04-21 08:15:23'),
(207, 16, 53, NULL, '5', NULL, NULL, '2023-04-19 05:48:25', '2023-04-21 09:15:13'),
(208, 21, 53, NULL, NULL, NULL, NULL, '2023-04-19 05:48:25', NULL),
(209, 36, 53, NULL, NULL, NULL, NULL, '2023-04-19 05:48:25', NULL),
(210, 37, 53, NULL, NULL, NULL, NULL, '2023-04-19 05:48:25', NULL),
(211, 7, 46, NULL, NULL, NULL, NULL, '2023-04-19 05:48:26', NULL),
(212, 18, 46, NULL, NULL, NULL, NULL, '2023-04-19 05:48:26', NULL),
(213, 21, 46, NULL, NULL, NULL, NULL, '2023-04-19 05:48:26', NULL),
(214, 32, 46, NULL, NULL, NULL, NULL, '2023-04-19 05:48:26', NULL),
(215, 37, 46, NULL, NULL, NULL, NULL, '2023-04-19 05:48:26', NULL),
(216, 5, 52, NULL, NULL, NULL, NULL, '2023-04-19 05:48:29', NULL),
(217, 16, 52, NULL, NULL, NULL, NULL, '2023-04-19 05:48:29', NULL),
(218, 21, 52, NULL, NULL, NULL, NULL, '2023-04-19 05:48:29', NULL),
(219, 36, 52, NULL, NULL, NULL, NULL, '2023-04-19 05:48:29', NULL),
(220, 37, 52, NULL, NULL, NULL, NULL, '2023-04-19 05:48:29', NULL),
(221, 7, 51, NULL, '5', NULL, NULL, '2023-04-19 05:48:33', '2023-04-21 08:15:23'),
(222, 18, 51, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(223, 23, 51, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(224, 30, 51, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(225, 37, 51, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(226, 5, 55, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(227, 36, 55, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(228, 21, 55, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(229, 16, 55, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(230, 37, 55, NULL, NULL, NULL, NULL, '2023-04-19 05:48:33', NULL),
(231, 3, 49, NULL, NULL, NULL, NULL, '2023-04-19 05:48:38', NULL),
(232, 14, 49, NULL, NULL, NULL, NULL, '2023-04-19 05:48:38', NULL),
(233, 27, 49, NULL, NULL, NULL, NULL, '2023-04-19 05:48:38', NULL),
(234, 34, 49, NULL, NULL, NULL, NULL, '2023-04-19 05:48:38', NULL),
(235, 37, 49, NULL, NULL, NULL, NULL, '2023-04-19 05:48:38', NULL),
(236, 3, 50, NULL, '5', NULL, NULL, '2023-04-19 05:49:04', '2023-04-21 08:24:45'),
(237, 14, 50, NULL, NULL, NULL, NULL, '2023-04-19 05:49:04', NULL),
(238, 27, 50, NULL, NULL, NULL, NULL, '2023-04-19 05:49:04', NULL),
(239, 34, 50, NULL, NULL, NULL, NULL, '2023-04-19 05:49:04', NULL),
(240, 37, 50, NULL, NULL, NULL, NULL, '2023-04-19 05:49:04', NULL),
(241, 5, 56, NULL, NULL, NULL, NULL, '2023-04-19 05:49:36', NULL),
(242, 16, 56, NULL, NULL, NULL, NULL, '2023-04-19 05:49:36', NULL),
(243, 21, 56, NULL, NULL, NULL, NULL, '2023-04-19 05:49:36', NULL),
(244, 35, 56, NULL, NULL, NULL, NULL, '2023-04-19 05:49:36', NULL),
(245, 37, 56, NULL, NULL, NULL, NULL, '2023-04-19 05:49:36', NULL),
(246, 9, 57, NULL, '4', NULL, NULL, '2023-04-19 05:49:38', '2023-04-21 08:20:59'),
(247, 14, 57, NULL, '4', NULL, NULL, '2023-04-19 05:49:38', '2023-04-21 12:47:15'),
(248, 21, 57, NULL, '4', NULL, NULL, '2023-04-19 05:49:38', '2023-04-21 12:47:26'),
(249, 33, 57, NULL, '3', NULL, NULL, '2023-04-19 05:49:38', '2023-04-21 12:47:33'),
(250, 37, 57, NULL, NULL, NULL, NULL, '2023-04-19 05:49:38', NULL),
(251, 5, 58, NULL, NULL, NULL, NULL, '2023-04-19 05:49:51', NULL),
(252, 16, 58, NULL, NULL, NULL, NULL, '2023-04-19 05:49:51', NULL),
(253, 21, 58, NULL, NULL, NULL, NULL, '2023-04-19 05:49:51', NULL),
(254, 35, 58, NULL, NULL, NULL, NULL, '2023-04-19 05:49:51', NULL),
(255, 37, 58, NULL, NULL, NULL, NULL, '2023-04-19 05:49:51', NULL),
(256, 5, 54, NULL, NULL, NULL, NULL, '2023-04-19 05:49:55', NULL),
(257, 16, 54, NULL, NULL, NULL, NULL, '2023-04-19 05:49:55', NULL),
(258, 21, 54, NULL, NULL, NULL, NULL, '2023-04-19 05:49:55', NULL),
(259, 35, 54, NULL, NULL, NULL, NULL, '2023-04-19 05:49:55', NULL),
(260, 37, 54, NULL, NULL, NULL, NULL, '2023-04-19 05:49:55', NULL),
(261, 18, 59, NULL, NULL, NULL, NULL, '2023-04-19 05:51:20', NULL),
(262, 7, 59, NULL, NULL, NULL, NULL, '2023-04-19 05:51:20', NULL),
(263, 23, 59, NULL, NULL, NULL, NULL, '2023-04-19 05:51:20', NULL),
(264, 30, 59, NULL, NULL, NULL, NULL, '2023-04-19 05:51:20', NULL),
(265, 37, 59, NULL, NULL, NULL, NULL, '2023-04-19 05:51:20', NULL),
(266, 5, 62, NULL, NULL, NULL, NULL, '2023-04-19 05:51:44', NULL),
(267, 18, 62, NULL, NULL, NULL, NULL, '2023-04-19 05:51:44', NULL),
(268, 21, 62, NULL, NULL, NULL, NULL, '2023-04-19 05:51:44', NULL),
(269, 33, 62, NULL, NULL, NULL, NULL, '2023-04-19 05:51:44', NULL),
(270, 37, 62, NULL, NULL, NULL, NULL, '2023-04-19 05:51:44', NULL),
(271, 4, 60, NULL, NULL, NULL, NULL, '2023-04-19 05:54:03', NULL),
(272, 14, 60, NULL, NULL, NULL, NULL, '2023-04-19 05:54:03', NULL),
(273, 24, 60, NULL, NULL, NULL, NULL, '2023-04-19 05:54:03', NULL),
(274, 35, 60, NULL, NULL, NULL, NULL, '2023-04-19 05:54:03', NULL),
(275, 37, 60, NULL, NULL, NULL, NULL, '2023-04-19 05:54:03', NULL),
(276, 6, 61, NULL, NULL, NULL, NULL, '2023-04-19 05:54:27', NULL),
(277, 12, 61, NULL, NULL, NULL, NULL, '2023-04-19 05:54:27', NULL),
(278, 23, 61, NULL, NULL, NULL, NULL, '2023-04-19 05:54:27', NULL),
(279, 34, 61, NULL, NULL, NULL, NULL, '2023-04-19 05:54:27', NULL),
(280, 37, 61, NULL, NULL, NULL, NULL, '2023-04-19 05:54:27', NULL),
(281, 12, 64, NULL, NULL, NULL, NULL, '2023-04-19 05:54:44', NULL),
(282, 27, 64, NULL, NULL, NULL, NULL, '2023-04-19 05:54:44', NULL),
(283, 6, 64, NULL, NULL, NULL, NULL, '2023-04-19 05:54:44', NULL),
(284, 28, 64, NULL, NULL, NULL, NULL, '2023-04-19 05:54:44', NULL),
(285, 37, 64, NULL, NULL, NULL, NULL, '2023-04-19 05:54:44', NULL),
(286, 6, 63, NULL, NULL, NULL, NULL, '2023-04-19 05:54:45', NULL),
(287, 12, 63, NULL, NULL, NULL, NULL, '2023-04-19 05:54:45', NULL),
(288, 27, 63, NULL, NULL, NULL, NULL, '2023-04-19 05:54:45', NULL),
(289, 28, 63, NULL, NULL, NULL, NULL, '2023-04-19 05:54:45', NULL),
(290, 37, 63, NULL, NULL, NULL, NULL, '2023-04-19 05:54:45', NULL),
(291, 3, 68, NULL, NULL, NULL, NULL, '2023-04-19 05:55:42', NULL),
(292, 13, 68, NULL, NULL, NULL, NULL, '2023-04-19 05:55:42', NULL),
(293, 27, 68, NULL, NULL, NULL, NULL, '2023-04-19 05:55:42', NULL),
(294, 35, 68, NULL, NULL, NULL, NULL, '2023-04-19 05:55:42', NULL),
(295, 37, 68, NULL, NULL, NULL, NULL, '2023-04-19 05:55:42', NULL),
(296, 7, 71, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(297, 18, 71, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(298, 23, 71, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(299, 30, 71, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(300, 37, 71, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(301, 9, 67, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(302, 10, 67, NULL, '5', NULL, NULL, '2023-04-19 05:55:58', '2023-04-21 09:17:54'),
(303, 23, 67, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(304, 30, 67, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(305, 37, 67, NULL, NULL, NULL, NULL, '2023-04-19 05:55:58', NULL),
(306, 9, 74, NULL, NULL, NULL, NULL, '2023-04-19 05:56:42', NULL),
(307, 12, 74, NULL, NULL, NULL, NULL, '2023-04-19 05:56:42', NULL),
(308, 25, 74, NULL, NULL, NULL, NULL, '2023-04-19 05:56:42', NULL),
(309, 33, 74, NULL, NULL, NULL, NULL, '2023-04-19 05:56:42', NULL),
(310, 37, 74, NULL, NULL, NULL, NULL, '2023-04-19 05:56:42', NULL),
(311, 9, 69, NULL, NULL, NULL, NULL, '2023-04-19 05:56:48', NULL),
(312, 10, 69, NULL, NULL, NULL, NULL, '2023-04-19 05:56:48', NULL),
(313, 23, 69, NULL, NULL, NULL, NULL, '2023-04-19 05:56:48', NULL),
(314, 30, 69, NULL, NULL, NULL, NULL, '2023-04-19 05:56:48', NULL),
(315, 37, 69, NULL, NULL, NULL, NULL, '2023-04-19 05:56:48', NULL),
(316, 9, 81, NULL, NULL, NULL, NULL, '2023-04-19 05:57:14', NULL),
(317, 12, 81, NULL, NULL, NULL, NULL, '2023-04-19 05:57:14', NULL),
(318, 25, 81, NULL, NULL, NULL, NULL, '2023-04-19 05:57:14', NULL),
(319, 33, 81, NULL, NULL, NULL, NULL, '2023-04-19 05:57:14', NULL),
(320, 37, 81, NULL, NULL, NULL, NULL, '2023-04-19 05:57:14', NULL),
(321, 3, 72, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(322, 18, 72, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(323, 25, 72, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(324, 32, 72, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(325, 37, 72, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(326, 9, 70, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(327, 12, 70, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(328, 25, 70, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(329, 33, 70, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(330, 37, 70, NULL, NULL, NULL, NULL, '2023-04-19 05:57:17', NULL),
(331, 3, 80, NULL, NULL, NULL, NULL, '2023-04-19 05:57:22', NULL),
(332, 18, 80, NULL, NULL, NULL, NULL, '2023-04-19 05:57:22', NULL),
(333, 25, 80, NULL, NULL, NULL, NULL, '2023-04-19 05:57:22', NULL),
(334, 32, 80, NULL, NULL, NULL, NULL, '2023-04-19 05:57:22', NULL),
(335, 37, 80, NULL, NULL, NULL, NULL, '2023-04-19 05:57:22', NULL),
(336, 9, 65, NULL, '5', NULL, NULL, '2023-04-19 05:57:27', '2023-04-21 08:16:43'),
(337, 10, 65, NULL, '5', NULL, NULL, '2023-04-19 05:57:27', '2023-04-22 08:32:03'),
(338, 23, 65, NULL, '5', NULL, NULL, '2023-04-19 05:57:27', '2023-04-22 08:32:11'),
(339, 30, 65, NULL, '5', NULL, NULL, '2023-04-19 05:57:27', '2023-04-22 08:32:17'),
(340, 37, 65, NULL, '5:5:5:5:5', NULL, NULL, '2023-04-19 05:57:27', '2023-04-22 08:33:22'),
(341, 9, 75, NULL, NULL, NULL, NULL, '2023-04-19 05:57:31', NULL),
(342, 12, 75, NULL, NULL, NULL, NULL, '2023-04-19 05:57:31', NULL),
(343, 25, 75, NULL, NULL, NULL, NULL, '2023-04-19 05:57:31', NULL),
(344, 31, 75, NULL, NULL, NULL, NULL, '2023-04-19 05:57:31', NULL),
(345, 37, 75, NULL, NULL, NULL, NULL, '2023-04-19 05:57:31', NULL),
(346, 9, 77, NULL, NULL, NULL, NULL, '2023-04-19 05:57:32', NULL),
(347, 12, 77, NULL, NULL, NULL, NULL, '2023-04-19 05:57:32', NULL),
(348, 25, 77, NULL, NULL, NULL, NULL, '2023-04-19 05:57:32', NULL),
(349, 31, 77, NULL, NULL, NULL, NULL, '2023-04-19 05:57:32', NULL),
(350, 37, 77, NULL, NULL, NULL, NULL, '2023-04-19 05:57:32', NULL),
(351, 2, 82, NULL, NULL, NULL, NULL, '2023-04-19 05:57:46', NULL),
(352, 14, 82, NULL, NULL, NULL, NULL, '2023-04-19 05:57:46', NULL),
(353, 22, 82, NULL, NULL, NULL, NULL, '2023-04-19 05:57:46', NULL),
(354, 35, 82, NULL, NULL, NULL, NULL, '2023-04-19 05:57:46', NULL),
(355, 37, 82, NULL, NULL, NULL, NULL, '2023-04-19 05:57:46', NULL),
(356, 8, 78, NULL, NULL, NULL, NULL, '2023-04-19 05:57:49', NULL),
(357, 18, 78, NULL, NULL, NULL, NULL, '2023-04-19 05:57:49', NULL),
(358, 25, 78, NULL, NULL, NULL, NULL, '2023-04-19 05:57:49', NULL),
(359, 30, 78, NULL, NULL, NULL, NULL, '2023-04-19 05:57:49', NULL),
(360, 37, 78, NULL, NULL, NULL, NULL, '2023-04-19 05:57:49', NULL),
(361, 25, 66, NULL, '5', NULL, NULL, '2023-04-19 05:58:06', '2023-04-19 05:59:02'),
(362, 35, 66, NULL, '3', NULL, NULL, '2023-04-19 05:58:06', '2023-04-19 05:59:08'),
(363, 12, 66, NULL, '5', NULL, NULL, '2023-04-19 05:58:06', '2023-04-19 05:58:53'),
(364, 4, 66, NULL, '4', NULL, NULL, '2023-04-19 05:58:06', '2023-04-19 05:59:16'),
(365, 37, 66, NULL, NULL, NULL, NULL, '2023-04-19 05:58:06', NULL),
(366, 5, 84, NULL, '4', 'Crec que podría haber donat una més dinformacio per realitazar els exercicis.', NULL, '2023-04-19 05:59:09', '2023-04-21 08:17:43'),
(367, 17, 84, NULL, '3', 'He aprés poques coses degut al vocabulari técnic els aliments', NULL, '2023-04-19 05:59:09', '2023-04-21 09:15:34'),
(368, 19, 84, NULL, '5', 'Han donar molta motivació y el repetiría', NULL, '2023-04-19 05:59:09', '2023-04-21 10:20:25'),
(369, 29, 84, NULL, '5', 'M\'agradat', NULL, '2023-04-19 05:59:09', '2023-04-21 11:33:25'),
(370, 37, 84, NULL, NULL, NULL, NULL, '2023-04-19 05:59:09', NULL),
(371, 12, 79, NULL, NULL, NULL, NULL, '2023-04-19 05:59:18', NULL),
(372, 25, 79, NULL, NULL, NULL, NULL, '2023-04-19 05:59:18', NULL),
(373, 33, 79, NULL, NULL, NULL, NULL, '2023-04-19 05:59:18', NULL),
(374, 2, 79, NULL, NULL, NULL, NULL, '2023-04-19 05:59:18', NULL),
(375, 37, 79, NULL, NULL, NULL, NULL, '2023-04-19 05:59:18', NULL),
(376, 12, 83, NULL, NULL, NULL, NULL, '2023-04-19 05:59:32', NULL),
(377, 25, 83, NULL, NULL, NULL, NULL, '2023-04-19 05:59:32', NULL),
(378, 33, 83, NULL, NULL, NULL, NULL, '2023-04-19 05:59:32', NULL),
(379, 5, 83, NULL, NULL, NULL, NULL, '2023-04-19 05:59:32', NULL),
(380, 37, 83, NULL, NULL, NULL, NULL, '2023-04-19 05:59:32', NULL),
(381, 5, 76, NULL, NULL, NULL, NULL, '2023-04-19 05:59:35', NULL),
(382, 12, 76, NULL, NULL, NULL, NULL, '2023-04-19 05:59:35', NULL),
(383, 25, 76, NULL, NULL, NULL, NULL, '2023-04-19 05:59:35', NULL),
(384, 33, 76, NULL, NULL, NULL, NULL, '2023-04-19 05:59:35', NULL),
(385, 37, 76, NULL, NULL, NULL, NULL, '2023-04-19 05:59:35', NULL),
(386, 5, 86, NULL, NULL, NULL, NULL, '2023-04-19 05:59:49', NULL),
(387, 12, 86, NULL, NULL, NULL, NULL, '2023-04-19 05:59:49', NULL),
(388, 24, 86, NULL, NULL, NULL, NULL, '2023-04-19 05:59:49', NULL),
(389, 35, 86, NULL, NULL, NULL, NULL, '2023-04-19 05:59:49', NULL),
(390, 37, 86, NULL, NULL, NULL, NULL, '2023-04-19 05:59:49', NULL),
(391, 10, 87, NULL, NULL, NULL, NULL, '2023-04-19 06:00:35', NULL),
(392, 23, 87, NULL, NULL, NULL, NULL, '2023-04-19 06:00:35', NULL),
(393, 30, 87, NULL, NULL, NULL, NULL, '2023-04-19 06:00:35', NULL),
(394, 7, 87, NULL, NULL, NULL, NULL, '2023-04-19 06:00:35', NULL),
(395, 37, 87, NULL, NULL, NULL, NULL, '2023-04-19 06:00:35', NULL),
(396, 12, 85, NULL, NULL, NULL, NULL, '2023-04-19 06:00:55', NULL),
(397, 25, 85, NULL, NULL, NULL, NULL, '2023-04-19 06:00:55', NULL),
(398, 33, 85, NULL, NULL, NULL, NULL, '2023-04-19 06:00:55', NULL),
(399, 5, 85, NULL, NULL, NULL, NULL, '2023-04-19 06:00:55', NULL),
(400, 37, 85, NULL, NULL, NULL, NULL, '2023-04-19 06:00:55', NULL),
(401, 12, 88, NULL, NULL, NULL, NULL, '2023-04-19 06:01:38', NULL),
(402, 25, 88, NULL, NULL, NULL, NULL, '2023-04-19 06:01:38', NULL),
(403, 31, 88, NULL, NULL, NULL, NULL, '2023-04-19 06:01:38', NULL),
(404, 8, 88, NULL, NULL, NULL, NULL, '2023-04-19 06:01:38', NULL),
(405, 37, 88, NULL, NULL, NULL, NULL, '2023-04-19 06:01:38', NULL),
(406, 5, 89, NULL, NULL, NULL, NULL, '2023-04-19 06:01:42', NULL),
(407, 12, 89, NULL, NULL, NULL, NULL, '2023-04-19 06:01:42', NULL),
(408, 19, 89, NULL, NULL, NULL, NULL, '2023-04-19 06:01:42', NULL),
(409, 35, 89, NULL, NULL, NULL, NULL, '2023-04-19 06:01:42', NULL),
(410, 37, 89, NULL, NULL, NULL, NULL, '2023-04-19 06:01:42', NULL),
(411, 10, 90, NULL, '5', 'M’ha agradat moltissim!!! Transmeten una energia positiva, enèrgica, però alhora, tranquila.\nCançons molt ben escollides.', NULL, '2023-04-19 06:14:12', '2023-04-22 01:25:20'),
(412, 25, 90, NULL, '4', 'Molt bona tècnica i energia de sobres!!! Han sapigut fer que dones el 100% de mi. I les cançons han estat molt encertades.', NULL, '2023-04-19 06:14:12', '2023-04-22 01:26:57'),
(413, 33, 90, NULL, '5', 'Noia agradable, ha explicat els orígens del Twerk, (important tenint en compte que avui dia es té una visió sexualitzada del Twerk) ,ha explicat les bases i hem gaudit molt de les coreos!!!', NULL, '2023-04-19 06:14:12', '2023-04-22 01:30:27'),
(414, 3, 90, NULL, '4', 'Molt simpàtics, coneixen molt bé la tècnica i en tot moment han recordat les mesures de seguretat, punt molt important, ja que és un esport força perillós.', NULL, '2023-04-19 06:14:12', '2023-04-21 08:26:38'),
(415, 37, 90, NULL, '5:5:5:5:5', 'M’ha agradat molt la professionalitat dels instructors, implicació, motivació. He sortit de la fira amb un somriure d’orella a orella.', NULL, '2023-04-19 06:14:12', '2023-04-22 01:33:47'),
(416, 3, 91, NULL, '3', NULL, NULL, '2023-04-19 06:53:41', '2023-04-21 08:16:41'),
(417, 18, 91, NULL, NULL, NULL, NULL, '2023-04-19 06:53:41', NULL),
(418, 25, 91, NULL, NULL, NULL, NULL, '2023-04-19 06:53:41', NULL),
(419, 32, 91, NULL, NULL, NULL, NULL, '2023-04-19 06:53:41', NULL),
(420, 37, 91, NULL, NULL, NULL, NULL, '2023-04-19 06:53:41', NULL),
(421, 5, 92, NULL, NULL, NULL, NULL, '2023-04-19 07:07:55', NULL),
(422, 11, 92, NULL, NULL, NULL, NULL, '2023-04-19 07:07:55', NULL),
(423, 21, 92, NULL, NULL, NULL, NULL, '2023-04-19 07:07:55', NULL),
(424, 35, 92, NULL, NULL, NULL, NULL, '2023-04-19 07:07:55', NULL),
(425, 37, 92, NULL, NULL, NULL, NULL, '2023-04-19 07:07:55', NULL),
(426, 1, 93, NULL, NULL, NULL, NULL, '2023-04-19 08:07:26', NULL),
(427, 12, 93, NULL, NULL, NULL, NULL, '2023-04-19 08:07:26', NULL),
(428, 24, 93, NULL, NULL, NULL, NULL, '2023-04-19 08:07:26', NULL),
(429, 34, 93, NULL, NULL, NULL, NULL, '2023-04-19 08:07:26', NULL),
(430, 37, 93, NULL, NULL, NULL, NULL, '2023-04-19 08:07:26', NULL),
(431, 12, 96, NULL, NULL, NULL, NULL, '2023-04-19 08:23:24', NULL),
(432, 5, 96, NULL, NULL, NULL, NULL, '2023-04-19 08:23:24', NULL),
(433, 24, 96, NULL, NULL, NULL, NULL, '2023-04-19 08:23:24', NULL),
(434, 29, 96, NULL, NULL, NULL, NULL, '2023-04-19 08:23:24', NULL),
(435, 37, 96, NULL, NULL, NULL, NULL, '2023-04-19 08:23:24', NULL),
(436, 8, 95, NULL, NULL, NULL, NULL, '2023-04-19 08:23:46', NULL),
(437, 13, 95, NULL, NULL, NULL, NULL, '2023-04-19 08:23:46', NULL),
(438, 24, 95, NULL, NULL, NULL, NULL, '2023-04-19 08:23:46', NULL),
(439, 32, 95, NULL, NULL, NULL, NULL, '2023-04-19 08:23:46', NULL),
(440, 37, 95, NULL, NULL, NULL, NULL, '2023-04-19 08:23:46', NULL),
(441, 8, 94, NULL, NULL, NULL, NULL, '2023-04-19 08:23:50', NULL),
(442, 24, 94, NULL, NULL, NULL, NULL, '2023-04-19 08:23:50', NULL),
(443, 32, 94, NULL, NULL, NULL, NULL, '2023-04-19 08:23:50', NULL),
(444, 13, 94, NULL, NULL, NULL, NULL, '2023-04-19 08:23:50', NULL),
(445, 37, 94, NULL, NULL, NULL, NULL, '2023-04-19 08:23:50', NULL),
(446, 8, 99, NULL, NULL, NULL, NULL, '2023-04-19 10:31:33', NULL),
(447, 18, 99, NULL, NULL, NULL, NULL, '2023-04-19 10:31:33', NULL),
(448, 19, 99, NULL, NULL, NULL, NULL, '2023-04-19 10:31:33', NULL),
(449, 34, 99, NULL, NULL, NULL, NULL, '2023-04-19 10:31:33', NULL),
(450, 37, 99, NULL, NULL, NULL, NULL, '2023-04-19 10:31:33', NULL),
(451, 8, 98, NULL, NULL, NULL, NULL, '2023-04-19 10:31:36', NULL),
(452, 18, 98, NULL, NULL, NULL, NULL, '2023-04-19 10:31:36', NULL),
(453, 19, 98, NULL, NULL, NULL, NULL, '2023-04-19 10:31:36', NULL),
(454, 34, 98, NULL, NULL, NULL, NULL, '2023-04-19 10:31:36', NULL),
(455, 37, 98, NULL, NULL, NULL, NULL, '2023-04-19 10:31:36', NULL),
(456, 8, 97, NULL, NULL, NULL, NULL, '2023-04-19 10:31:37', NULL),
(457, 18, 97, NULL, NULL, NULL, NULL, '2023-04-19 10:31:37', NULL),
(458, 19, 97, NULL, NULL, NULL, NULL, '2023-04-19 10:31:37', NULL),
(459, 34, 97, NULL, NULL, NULL, NULL, '2023-04-19 10:31:37', NULL),
(460, 37, 97, NULL, NULL, NULL, NULL, '2023-04-19 10:31:37', NULL),
(461, 8, 100, NULL, NULL, NULL, NULL, '2023-04-19 10:31:47', NULL),
(462, 18, 100, NULL, NULL, NULL, NULL, '2023-04-19 10:31:47', NULL),
(463, 34, 100, NULL, NULL, NULL, NULL, '2023-04-19 10:31:47', NULL),
(464, 19, 100, NULL, NULL, NULL, NULL, '2023-04-19 10:31:47', NULL),
(465, 37, 100, NULL, NULL, NULL, NULL, '2023-04-19 10:31:47', NULL),
(466, 8, 101, NULL, NULL, NULL, NULL, '2023-04-19 10:32:25', NULL),
(467, 18, 101, NULL, NULL, NULL, NULL, '2023-04-19 10:32:25', NULL),
(468, 19, 101, NULL, NULL, NULL, NULL, '2023-04-19 10:32:25', NULL),
(469, 34, 101, NULL, NULL, NULL, NULL, '2023-04-19 10:32:25', NULL),
(470, 37, 101, NULL, NULL, NULL, NULL, '2023-04-19 10:32:25', NULL),
(471, 8, 102, NULL, NULL, NULL, NULL, '2023-04-19 10:34:22', NULL),
(472, 19, 102, NULL, NULL, NULL, NULL, '2023-04-19 10:34:22', NULL),
(473, 14, 102, NULL, NULL, NULL, NULL, '2023-04-19 10:34:22', NULL),
(474, 34, 102, NULL, NULL, NULL, NULL, '2023-04-19 10:34:22', NULL),
(475, 37, 102, NULL, NULL, NULL, NULL, '2023-04-19 10:34:22', NULL),
(476, 19, 104, NULL, NULL, NULL, NULL, '2023-04-19 10:38:12', NULL),
(477, 8, 104, NULL, NULL, NULL, NULL, '2023-04-19 10:38:12', NULL),
(478, 14, 104, NULL, NULL, NULL, NULL, '2023-04-19 10:38:12', NULL),
(479, 34, 104, NULL, NULL, NULL, NULL, '2023-04-19 10:38:12', NULL),
(480, 37, 104, NULL, NULL, NULL, NULL, '2023-04-19 10:38:12', NULL),
(481, 8, 105, NULL, NULL, NULL, NULL, '2023-04-19 10:38:14', NULL),
(482, 14, 105, NULL, NULL, NULL, NULL, '2023-04-19 10:38:14', NULL),
(483, 19, 105, NULL, NULL, NULL, NULL, '2023-04-19 10:38:14', NULL),
(484, 34, 105, NULL, NULL, NULL, NULL, '2023-04-19 10:38:14', NULL),
(485, 37, 105, NULL, NULL, NULL, NULL, '2023-04-19 10:38:14', NULL),
(486, 23, 103, NULL, NULL, NULL, NULL, '2023-04-19 10:38:35', NULL),
(487, 11, 103, NULL, NULL, NULL, NULL, '2023-04-19 10:38:35', NULL),
(488, 31, 103, NULL, NULL, NULL, NULL, '2023-04-19 10:38:35', NULL),
(489, 6, 103, NULL, NULL, NULL, NULL, '2023-04-19 10:38:35', NULL),
(490, 37, 103, NULL, NULL, NULL, NULL, '2023-04-19 10:38:35', NULL),
(491, 29, 106, NULL, NULL, NULL, NULL, '2023-04-19 10:39:01', NULL),
(492, 5, 106, NULL, NULL, NULL, NULL, '2023-04-19 10:39:01', NULL),
(493, 10, 106, NULL, NULL, NULL, NULL, '2023-04-19 10:39:01', NULL),
(494, 24, 106, NULL, NULL, NULL, NULL, '2023-04-19 10:39:01', NULL),
(495, 37, 106, NULL, NULL, NULL, NULL, '2023-04-19 10:39:01', NULL),
(496, 1, 107, NULL, '5', NULL, NULL, '2023-04-19 10:39:05', '2023-04-21 08:17:45'),
(497, 16, 107, NULL, NULL, NULL, NULL, '2023-04-19 10:39:05', NULL),
(498, 24, 107, NULL, NULL, NULL, NULL, '2023-04-19 10:39:05', NULL),
(499, 32, 107, NULL, NULL, NULL, NULL, '2023-04-19 10:39:05', NULL),
(500, 37, 107, NULL, NULL, NULL, NULL, '2023-04-19 10:39:05', NULL),
(501, 1, 108, NULL, NULL, NULL, NULL, '2023-04-19 10:39:07', NULL),
(502, 16, 108, NULL, NULL, NULL, NULL, '2023-04-19 10:39:07', NULL),
(503, 24, 108, NULL, NULL, NULL, NULL, '2023-04-19 10:39:07', NULL),
(504, 32, 108, NULL, NULL, NULL, NULL, '2023-04-19 10:39:07', NULL),
(505, 37, 108, NULL, NULL, NULL, NULL, '2023-04-19 10:39:07', NULL),
(506, 3, 110, NULL, NULL, NULL, NULL, '2023-04-19 10:44:43', NULL),
(507, 24, 110, NULL, NULL, NULL, NULL, '2023-04-19 10:44:43', NULL),
(508, 28, 110, NULL, NULL, NULL, NULL, '2023-04-19 10:44:43', NULL),
(509, 16, 110, NULL, NULL, NULL, NULL, '2023-04-19 10:44:43', NULL),
(510, 37, 110, NULL, NULL, NULL, NULL, '2023-04-19 10:44:43', NULL),
(511, 3, 111, NULL, NULL, NULL, NULL, '2023-04-19 10:45:07', NULL),
(512, 24, 111, NULL, NULL, NULL, NULL, '2023-04-19 10:45:07', NULL),
(513, 28, 111, NULL, NULL, NULL, NULL, '2023-04-19 10:45:07', NULL),
(514, 16, 111, NULL, NULL, NULL, NULL, '2023-04-19 10:45:07', NULL),
(515, 37, 111, NULL, NULL, NULL, NULL, '2023-04-19 10:45:07', NULL),
(516, 6, 109, NULL, NULL, NULL, NULL, '2023-04-19 10:47:09', NULL),
(517, 12, 109, NULL, NULL, NULL, NULL, '2023-04-19 10:47:09', NULL),
(518, 27, 109, NULL, NULL, NULL, NULL, '2023-04-19 10:47:09', NULL),
(519, 33, 109, NULL, NULL, NULL, NULL, '2023-04-19 10:47:09', NULL),
(520, 37, 109, NULL, NULL, NULL, NULL, '2023-04-19 10:47:09', NULL),
(521, 4, 114, NULL, NULL, NULL, NULL, '2023-04-19 10:47:48', NULL),
(522, 12, 114, NULL, NULL, NULL, NULL, '2023-04-19 10:47:48', NULL),
(523, 23, 114, NULL, NULL, NULL, NULL, '2023-04-19 10:47:48', NULL),
(524, 35, 114, NULL, NULL, NULL, NULL, '2023-04-19 10:47:48', NULL),
(525, 37, 114, NULL, NULL, NULL, NULL, '2023-04-19 10:47:48', NULL),
(526, 4, 118, NULL, NULL, NULL, NULL, '2023-04-19 12:06:52', NULL),
(527, 14, 118, NULL, NULL, NULL, NULL, '2023-04-19 12:06:52', NULL),
(528, 27, 118, NULL, NULL, NULL, NULL, '2023-04-19 12:06:52', NULL),
(529, 30, 118, NULL, NULL, NULL, NULL, '2023-04-19 12:06:52', NULL),
(530, 37, 118, NULL, NULL, NULL, NULL, '2023-04-19 12:06:52', NULL),
(531, 4, 117, NULL, NULL, NULL, NULL, '2023-04-19 12:07:40', NULL),
(532, 14, 117, NULL, NULL, NULL, NULL, '2023-04-19 12:07:40', NULL),
(533, 30, 117, NULL, NULL, NULL, NULL, '2023-04-19 12:07:40', NULL),
(534, 25, 117, NULL, NULL, NULL, NULL, '2023-04-19 12:07:40', NULL),
(535, 37, 117, NULL, NULL, NULL, NULL, '2023-04-19 12:07:40', NULL),
(536, 4, 116, NULL, NULL, NULL, NULL, '2023-04-19 12:07:55', NULL),
(537, 14, 116, NULL, NULL, NULL, NULL, '2023-04-19 12:07:55', NULL),
(538, 25, 116, NULL, NULL, NULL, NULL, '2023-04-19 12:07:55', NULL),
(539, 30, 116, NULL, NULL, NULL, NULL, '2023-04-19 12:07:55', NULL),
(540, 37, 116, NULL, NULL, NULL, NULL, '2023-04-19 12:07:55', NULL),
(541, 4, 119, NULL, NULL, NULL, NULL, '2023-04-19 12:07:58', NULL),
(542, 14, 119, NULL, NULL, NULL, NULL, '2023-04-19 12:07:58', NULL),
(543, 25, 119, NULL, NULL, NULL, NULL, '2023-04-19 12:07:58', NULL),
(544, 30, 119, NULL, NULL, NULL, NULL, '2023-04-19 12:07:58', NULL),
(545, 37, 119, NULL, NULL, NULL, NULL, '2023-04-19 12:07:58', NULL),
(546, 4, 120, NULL, NULL, NULL, NULL, '2023-04-19 12:09:00', NULL),
(547, 14, 120, NULL, NULL, NULL, NULL, '2023-04-19 12:09:00', NULL),
(548, 25, 120, NULL, NULL, NULL, NULL, '2023-04-19 12:09:00', NULL),
(549, 30, 120, NULL, NULL, NULL, NULL, '2023-04-19 12:09:00', NULL),
(550, 37, 120, NULL, NULL, NULL, NULL, '2023-04-19 12:09:00', NULL),
(551, 2, 122, NULL, NULL, NULL, NULL, '2023-04-19 12:45:31', NULL),
(552, 12, 122, NULL, NULL, NULL, NULL, '2023-04-19 12:45:31', NULL),
(553, 24, 122, NULL, NULL, NULL, NULL, '2023-04-19 12:45:31', NULL),
(554, 32, 122, NULL, NULL, NULL, NULL, '2023-04-19 12:45:31', NULL),
(555, 37, 122, NULL, NULL, NULL, NULL, '2023-04-19 12:45:31', NULL),
(556, 12, 123, NULL, NULL, NULL, NULL, '2023-04-19 13:02:46', NULL),
(557, 24, 123, NULL, NULL, NULL, NULL, '2023-04-19 13:02:46', NULL),
(558, 4, 123, NULL, NULL, NULL, NULL, '2023-04-19 13:02:46', NULL),
(559, 28, 123, NULL, NULL, NULL, NULL, '2023-04-19 13:02:46', NULL),
(560, 37, 123, NULL, NULL, NULL, NULL, '2023-04-19 13:02:46', NULL),
(561, 6, 125, NULL, '5', NULL, NULL, '2023-04-19 16:09:54', '2023-04-21 08:25:22'),
(562, 16, 125, NULL, '5', NULL, NULL, '2023-04-19 16:09:54', '2023-04-21 09:33:25'),
(563, 20, 125, NULL, NULL, NULL, NULL, '2023-04-19 16:09:54', NULL),
(564, 30, 125, NULL, NULL, NULL, NULL, '2023-04-19 16:09:54', NULL),
(565, 37, 125, NULL, NULL, NULL, NULL, '2023-04-19 16:09:54', NULL),
(566, 3, 124, NULL, NULL, NULL, NULL, '2023-04-19 16:17:29', NULL),
(567, 16, 124, NULL, NULL, NULL, NULL, '2023-04-19 16:17:29', NULL),
(568, 23, 124, NULL, NULL, NULL, NULL, '2023-04-19 16:17:29', NULL),
(569, 29, 124, NULL, NULL, NULL, NULL, '2023-04-19 16:17:29', NULL),
(570, 37, 124, NULL, NULL, NULL, NULL, '2023-04-19 16:17:29', NULL),
(571, 3, 126, NULL, NULL, NULL, NULL, '2023-04-19 16:19:57', NULL),
(572, 16, 126, NULL, NULL, NULL, NULL, '2023-04-19 16:19:57', NULL),
(573, 23, 126, NULL, NULL, NULL, NULL, '2023-04-19 16:19:57', NULL),
(574, 29, 126, NULL, NULL, NULL, NULL, '2023-04-19 16:19:57', NULL),
(575, 37, 126, NULL, NULL, NULL, NULL, '2023-04-19 16:19:57', NULL),
(576, 3, 127, NULL, NULL, NULL, NULL, '2023-04-19 16:24:09', NULL),
(577, 16, 127, NULL, NULL, NULL, NULL, '2023-04-19 16:24:09', NULL),
(578, 23, 127, NULL, NULL, NULL, NULL, '2023-04-19 16:24:09', NULL),
(579, 29, 127, NULL, NULL, NULL, NULL, '2023-04-19 16:24:09', NULL),
(580, 37, 127, NULL, NULL, NULL, NULL, '2023-04-19 16:24:09', NULL),
(581, 3, 128, NULL, NULL, NULL, NULL, '2023-04-19 16:25:34', NULL),
(582, 16, 128, NULL, NULL, NULL, NULL, '2023-04-19 16:25:34', NULL),
(583, 23, 128, NULL, NULL, NULL, NULL, '2023-04-19 16:25:34', NULL),
(584, 29, 128, NULL, NULL, NULL, NULL, '2023-04-19 16:25:34', NULL),
(585, 37, 128, NULL, NULL, NULL, NULL, '2023-04-19 16:25:34', NULL),
(586, 4, 129, NULL, NULL, NULL, NULL, '2023-04-19 16:28:25', NULL),
(587, 14, 129, NULL, NULL, NULL, NULL, '2023-04-19 16:28:25', NULL),
(588, 25, 129, NULL, NULL, NULL, NULL, '2023-04-19 16:28:25', NULL),
(589, 30, 129, NULL, NULL, NULL, NULL, '2023-04-19 16:28:25', NULL),
(590, 37, 129, NULL, NULL, NULL, NULL, '2023-04-19 16:28:25', NULL),
(591, 3, 130, NULL, NULL, NULL, NULL, '2023-04-19 16:31:20', NULL),
(592, 15, 130, NULL, NULL, NULL, NULL, '2023-04-19 16:31:20', NULL),
(593, 19, 130, NULL, NULL, NULL, NULL, '2023-04-19 16:31:20', NULL),
(594, 34, 130, NULL, NULL, NULL, NULL, '2023-04-19 16:31:20', NULL),
(595, 37, 130, NULL, NULL, NULL, NULL, '2023-04-19 16:31:20', NULL),
(596, 3, 132, NULL, NULL, NULL, NULL, '2023-04-19 16:36:46', NULL),
(597, 16, 132, NULL, NULL, NULL, NULL, '2023-04-19 16:36:46', NULL),
(598, 23, 132, NULL, NULL, NULL, NULL, '2023-04-19 16:36:46', NULL),
(599, 29, 132, NULL, NULL, NULL, NULL, '2023-04-19 16:36:46', NULL),
(600, 37, 132, NULL, NULL, NULL, NULL, '2023-04-19 16:36:46', NULL),
(601, 16, 131, NULL, NULL, NULL, NULL, '2023-04-19 16:39:12', NULL),
(602, 23, 131, NULL, NULL, NULL, NULL, '2023-04-19 16:39:12', NULL),
(603, 29, 131, NULL, NULL, NULL, NULL, '2023-04-19 16:39:12', NULL),
(604, 3, 131, NULL, NULL, NULL, NULL, '2023-04-19 16:39:12', NULL),
(605, 37, 131, NULL, NULL, NULL, NULL, '2023-04-19 16:39:12', NULL),
(606, 3, 133, NULL, NULL, NULL, NULL, '2023-04-19 17:03:09', NULL),
(607, 16, 133, NULL, NULL, NULL, NULL, '2023-04-19 17:03:09', NULL),
(608, 23, 133, NULL, NULL, NULL, NULL, '2023-04-19 17:03:09', NULL),
(609, 29, 133, NULL, NULL, NULL, NULL, '2023-04-19 17:03:09', NULL),
(610, 37, 133, NULL, NULL, NULL, NULL, '2023-04-19 17:03:09', NULL),
(611, 3, 134, NULL, NULL, NULL, NULL, '2023-04-19 17:41:30', NULL),
(612, 16, 134, NULL, NULL, NULL, NULL, '2023-04-19 17:41:30', NULL),
(613, 23, 134, NULL, NULL, NULL, NULL, '2023-04-19 17:41:30', NULL),
(614, 29, 134, NULL, NULL, NULL, NULL, '2023-04-19 17:41:30', NULL),
(615, 37, 134, NULL, NULL, NULL, NULL, '2023-04-19 17:41:30', NULL),
(616, 3, 135, NULL, NULL, NULL, NULL, '2023-04-19 18:44:49', NULL),
(617, 16, 135, NULL, NULL, NULL, NULL, '2023-04-19 18:44:49', NULL),
(618, 23, 135, NULL, NULL, NULL, NULL, '2023-04-19 18:44:49', NULL),
(619, 31, 135, NULL, NULL, NULL, NULL, '2023-04-19 18:44:49', NULL),
(620, 37, 135, NULL, NULL, NULL, NULL, '2023-04-19 18:44:49', NULL),
(621, 6, 136, NULL, NULL, NULL, NULL, '2023-04-19 19:17:20', NULL),
(622, 16, 136, NULL, NULL, NULL, NULL, '2023-04-19 19:17:20', NULL),
(623, 26, 136, NULL, NULL, NULL, NULL, '2023-04-19 19:17:20', NULL),
(624, 29, 136, NULL, NULL, NULL, NULL, '2023-04-19 19:17:20', NULL),
(625, 37, 136, NULL, NULL, NULL, NULL, '2023-04-19 19:17:20', NULL),
(626, 3, 137, NULL, NULL, NULL, NULL, '2023-04-19 19:30:05', NULL),
(627, 11, 137, NULL, NULL, NULL, NULL, '2023-04-19 19:30:05', NULL),
(628, 23, 137, NULL, NULL, NULL, NULL, '2023-04-19 19:30:05', NULL),
(629, 31, 137, NULL, NULL, NULL, NULL, '2023-04-19 19:30:05', NULL),
(630, 37, 137, NULL, NULL, NULL, NULL, '2023-04-19 19:30:05', NULL),
(631, 3, 138, NULL, NULL, NULL, NULL, '2023-04-19 20:00:24', NULL),
(632, 16, 138, NULL, NULL, NULL, NULL, '2023-04-19 20:00:24', NULL),
(633, 23, 138, NULL, NULL, NULL, NULL, '2023-04-19 20:00:24', NULL),
(634, 31, 138, NULL, NULL, NULL, NULL, '2023-04-19 20:00:24', NULL),
(635, 37, 138, NULL, NULL, NULL, NULL, '2023-04-19 20:00:24', NULL),
(636, 6, 139, NULL, '4', NULL, NULL, '2023-04-19 20:16:33', '2023-04-21 12:43:36'),
(637, 12, 139, NULL, '5', NULL, NULL, '2023-04-19 20:16:33', '2023-04-21 12:43:43'),
(638, 19, 139, NULL, '5', NULL, NULL, '2023-04-19 20:16:33', '2023-04-21 12:43:59'),
(639, 35, 139, NULL, NULL, NULL, NULL, '2023-04-19 20:16:33', NULL),
(640, 37, 139, NULL, NULL, NULL, NULL, '2023-04-19 20:16:33', NULL),
(641, 6, 140, NULL, NULL, NULL, NULL, '2023-04-19 20:16:41', NULL),
(642, 12, 140, NULL, NULL, NULL, NULL, '2023-04-19 20:16:41', NULL),
(643, 19, 140, NULL, NULL, NULL, NULL, '2023-04-19 20:16:41', NULL),
(644, 35, 140, NULL, NULL, NULL, NULL, '2023-04-19 20:16:41', NULL),
(645, 37, 140, NULL, NULL, NULL, NULL, '2023-04-19 20:16:41', NULL),
(646, 1, 141, NULL, NULL, NULL, NULL, '2023-04-19 20:28:51', NULL),
(647, 24, 141, NULL, NULL, NULL, NULL, '2023-04-19 20:28:51', NULL),
(648, 34, 141, NULL, NULL, NULL, NULL, '2023-04-19 20:28:51', NULL),
(649, 17, 141, NULL, NULL, NULL, NULL, '2023-04-19 20:28:51', NULL),
(650, 37, 141, NULL, NULL, NULL, NULL, '2023-04-19 20:28:51', NULL),
(651, 6, 142, NULL, '5', NULL, NULL, '2023-04-19 20:44:59', '2023-04-21 08:16:33'),
(652, 19, 142, NULL, NULL, NULL, NULL, '2023-04-19 20:44:59', NULL),
(653, 17, 142, NULL, NULL, NULL, NULL, '2023-04-19 20:44:59', NULL),
(654, 30, 142, NULL, NULL, NULL, NULL, '2023-04-19 20:44:59', NULL),
(655, 37, 142, NULL, NULL, NULL, NULL, '2023-04-19 20:44:59', NULL),
(656, 6, 143, NULL, NULL, NULL, NULL, '2023-04-19 21:02:05', NULL),
(657, 17, 143, NULL, NULL, NULL, NULL, '2023-04-19 21:02:05', NULL),
(658, 19, 143, NULL, NULL, NULL, NULL, '2023-04-19 21:02:05', NULL),
(659, 30, 143, NULL, NULL, NULL, NULL, '2023-04-19 21:02:05', NULL),
(660, 37, 143, NULL, NULL, NULL, NULL, '2023-04-19 21:02:05', NULL),
(661, 23, 144, NULL, NULL, NULL, NULL, '2023-04-19 23:07:38', NULL),
(662, 3, 144, NULL, NULL, NULL, NULL, '2023-04-19 23:07:38', NULL),
(663, 29, 144, NULL, NULL, NULL, NULL, '2023-04-19 23:07:38', NULL),
(664, 17, 144, NULL, NULL, NULL, NULL, '2023-04-19 23:07:38', NULL),
(665, 37, 144, NULL, NULL, NULL, NULL, '2023-04-19 23:07:38', NULL),
(666, 3, 145, NULL, NULL, NULL, NULL, '2023-04-20 05:11:34', NULL),
(667, 16, 145, NULL, NULL, NULL, NULL, '2023-04-20 05:11:34', NULL),
(668, 22, 145, NULL, NULL, NULL, NULL, '2023-04-20 05:11:34', NULL),
(669, 29, 145, NULL, NULL, NULL, NULL, '2023-04-20 05:11:34', NULL),
(670, 37, 145, NULL, NULL, NULL, NULL, '2023-04-20 05:11:34', NULL),
(671, 3, 146, NULL, NULL, NULL, NULL, '2023-04-20 05:33:22', NULL),
(672, 16, 146, NULL, NULL, NULL, NULL, '2023-04-20 05:33:22', NULL),
(673, 29, 146, NULL, NULL, NULL, NULL, '2023-04-20 05:33:22', NULL),
(674, 22, 146, NULL, NULL, NULL, NULL, '2023-04-20 05:33:22', NULL),
(675, 37, 146, NULL, NULL, NULL, NULL, '2023-04-20 05:33:22', NULL),
(676, 6, 147, NULL, NULL, NULL, NULL, '2023-04-20 06:08:07', NULL),
(677, 17, 147, NULL, NULL, NULL, NULL, '2023-04-20 06:08:07', NULL),
(678, 25, 147, NULL, NULL, NULL, NULL, '2023-04-20 06:08:07', NULL),
(679, 30, 147, NULL, NULL, NULL, NULL, '2023-04-20 06:08:07', NULL),
(680, 37, 147, NULL, NULL, NULL, NULL, '2023-04-20 06:08:07', NULL),
(681, 6, 149, NULL, '5', 'Molt entretingut, el noi que feia la explicacio ho ha fet molt entenedor!', NULL, '2023-04-20 06:20:26', '2023-04-21 09:17:12'),
(682, 13, 149, NULL, '5', 'Muy dinamico! Y divertido! Cansa bastante', NULL, '2023-04-20 06:20:26', '2023-04-21 09:17:27'),
(683, 26, 149, NULL, '1', NULL, NULL, '2023-04-20 06:20:26', '2023-04-21 10:17:30'),
(684, 30, 149, NULL, NULL, NULL, NULL, '2023-04-20 06:20:26', NULL),
(685, 37, 149, NULL, NULL, NULL, NULL, '2023-04-20 06:20:26', NULL),
(686, 6, 150, NULL, '5', NULL, NULL, '2023-04-20 06:20:27', '2023-04-21 08:18:33'),
(687, 13, 150, NULL, '5', NULL, NULL, '2023-04-20 06:20:27', '2023-04-21 09:17:36'),
(688, 26, 150, NULL, '2', NULL, NULL, '2023-04-20 06:20:27', '2023-04-21 10:18:34'),
(689, 30, 150, NULL, NULL, NULL, NULL, '2023-04-20 06:20:27', NULL),
(690, 37, 150, NULL, NULL, NULL, NULL, '2023-04-20 06:20:27', NULL),
(691, 6, 148, NULL, '5', NULL, NULL, '2023-04-20 06:20:42', '2023-04-21 08:25:55'),
(692, 13, 148, NULL, '5', 'Salah, Berta y Mario han guiado muy bien la clase', NULL, '2023-04-20 06:20:42', '2023-04-21 09:17:07'),
(693, 26, 148, NULL, '3', NULL, NULL, '2023-04-20 06:20:42', '2023-04-21 10:17:43'),
(694, 30, 148, NULL, '5', NULL, NULL, '2023-04-20 06:20:42', '2023-04-21 11:54:48'),
(695, 37, 148, NULL, '5:4:5:5:5', NULL, NULL, '2023-04-20 06:20:42', '2023-04-21 11:55:21'),
(696, 7, 154, NULL, NULL, NULL, NULL, '2023-04-20 06:24:24', NULL),
(697, 19, 154, NULL, NULL, NULL, NULL, '2023-04-20 06:24:24', NULL),
(698, 30, 154, NULL, NULL, NULL, NULL, '2023-04-20 06:24:24', NULL),
(699, 15, 154, NULL, NULL, NULL, NULL, '2023-04-20 06:24:24', NULL),
(700, 37, 154, NULL, NULL, NULL, NULL, '2023-04-20 06:24:24', NULL),
(701, 6, 153, NULL, '5', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 08:17:37'),
(702, 13, 153, NULL, '5', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 09:17:05'),
(703, 26, 153, NULL, '3', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 10:17:20'),
(704, 30, 153, NULL, NULL, NULL, NULL, '2023-04-20 06:25:29', NULL),
(705, 37, 153, NULL, NULL, NULL, NULL, '2023-04-20 06:25:29', NULL),
(706, 6, 152, NULL, '5', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 08:17:33'),
(707, 13, 152, NULL, '5', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 09:16:59'),
(708, 26, 152, NULL, '3', NULL, NULL, '2023-04-20 06:25:29', '2023-04-21 10:17:25'),
(709, 30, 152, NULL, NULL, NULL, NULL, '2023-04-20 06:25:29', NULL),
(710, 37, 152, NULL, NULL, NULL, NULL, '2023-04-20 06:25:29', NULL),
(711, 2, 157, NULL, NULL, NULL, NULL, '2023-04-20 06:50:04', NULL),
(712, 14, 157, NULL, NULL, NULL, NULL, '2023-04-20 06:50:04', NULL),
(713, 22, 157, NULL, NULL, NULL, NULL, '2023-04-20 06:50:04', NULL),
(714, 33, 157, NULL, NULL, NULL, NULL, '2023-04-20 06:50:04', NULL),
(715, 37, 157, NULL, NULL, NULL, NULL, '2023-04-20 06:50:04', NULL),
(716, 22, 156, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(717, 33, 156, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(718, 2, 156, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(719, 14, 156, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(720, 37, 156, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(721, 33, 155, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(722, 22, 155, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(723, 2, 155, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(724, 14, 155, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(725, 37, 155, NULL, NULL, NULL, NULL, '2023-04-20 06:50:14', NULL),
(726, 2, 158, NULL, NULL, NULL, NULL, '2023-04-20 06:50:20', NULL);
INSERT INTO `reservas` (`id`, `id_activitat_fira`, `id_usuari`, `presentat`, `valoracio`, `comentari`, `deleted_at`, `created_at`, `updated_at`) VALUES
(727, 14, 158, NULL, NULL, NULL, NULL, '2023-04-20 06:50:20', NULL),
(728, 22, 158, NULL, NULL, NULL, NULL, '2023-04-20 06:50:20', NULL),
(729, 33, 158, NULL, NULL, NULL, NULL, '2023-04-20 06:50:20', NULL),
(730, 37, 158, NULL, NULL, NULL, NULL, '2023-04-20 06:50:20', NULL),
(731, 2, 159, NULL, NULL, NULL, NULL, '2023-04-20 06:55:45', NULL),
(732, 14, 159, NULL, NULL, NULL, NULL, '2023-04-20 06:55:45', NULL),
(733, 22, 159, NULL, NULL, NULL, NULL, '2023-04-20 06:55:45', NULL),
(734, 33, 159, NULL, NULL, NULL, NULL, '2023-04-20 06:55:45', NULL),
(735, 37, 159, NULL, NULL, NULL, NULL, '2023-04-20 06:55:45', NULL),
(736, 7, 151, NULL, '5', 'Molts motivats i molt bones explicacions!! M\'ho he passat molt bé!', NULL, '2023-04-20 06:58:18', '2023-04-21 08:27:23'),
(737, 10, 151, NULL, NULL, NULL, NULL, '2023-04-20 06:58:18', NULL),
(738, 33, 151, NULL, NULL, NULL, NULL, '2023-04-20 06:58:18', NULL),
(739, 22, 151, NULL, NULL, NULL, NULL, '2023-04-20 06:58:18', NULL),
(740, 37, 151, NULL, NULL, NULL, NULL, '2023-04-20 06:58:18', NULL),
(741, 6, 160, NULL, NULL, NULL, NULL, '2023-04-20 07:07:59', NULL),
(742, 13, 160, NULL, NULL, NULL, NULL, '2023-04-20 07:07:59', NULL),
(743, 26, 160, NULL, NULL, NULL, NULL, '2023-04-20 07:07:59', NULL),
(744, 30, 160, NULL, NULL, NULL, NULL, '2023-04-20 07:07:59', NULL),
(745, 37, 160, NULL, NULL, NULL, NULL, '2023-04-20 07:07:59', NULL),
(746, 8, 161, NULL, NULL, NULL, NULL, '2023-04-20 07:11:58', NULL),
(747, 10, 161, NULL, NULL, NULL, NULL, '2023-04-20 07:11:58', NULL),
(748, 24, 161, NULL, NULL, NULL, NULL, '2023-04-20 07:11:58', NULL),
(749, 33, 161, NULL, NULL, NULL, NULL, '2023-04-20 07:11:58', NULL),
(750, 37, 161, NULL, NULL, NULL, NULL, '2023-04-20 07:11:58', NULL),
(751, 8, 162, NULL, NULL, NULL, NULL, '2023-04-20 07:12:14', NULL),
(752, 10, 162, NULL, NULL, NULL, NULL, '2023-04-20 07:12:14', NULL),
(753, 24, 162, NULL, NULL, NULL, NULL, '2023-04-20 07:12:14', NULL),
(754, 33, 162, NULL, NULL, NULL, NULL, '2023-04-20 07:12:14', NULL),
(755, 37, 162, NULL, NULL, NULL, NULL, '2023-04-20 07:12:14', NULL),
(756, 3, 166, NULL, NULL, NULL, NULL, '2023-04-20 07:13:46', NULL),
(757, 13, 166, NULL, NULL, NULL, NULL, '2023-04-20 07:13:46', NULL),
(758, 25, 166, NULL, NULL, NULL, NULL, '2023-04-20 07:13:46', NULL),
(759, 28, 166, NULL, NULL, NULL, NULL, '2023-04-20 07:13:46', NULL),
(760, 37, 166, NULL, NULL, NULL, NULL, '2023-04-20 07:13:46', NULL),
(761, 33, 163, NULL, NULL, NULL, NULL, '2023-04-20 07:14:04', NULL),
(762, 1, 163, NULL, NULL, NULL, NULL, '2023-04-20 07:14:04', NULL),
(763, 17, 163, NULL, NULL, NULL, NULL, '2023-04-20 07:14:04', NULL),
(764, 24, 163, NULL, NULL, NULL, NULL, '2023-04-20 07:14:04', NULL),
(765, 37, 163, NULL, NULL, NULL, NULL, '2023-04-20 07:14:04', NULL),
(766, 33, 164, NULL, NULL, NULL, NULL, '2023-04-20 07:14:05', NULL),
(767, 1, 164, NULL, NULL, NULL, NULL, '2023-04-20 07:14:05', NULL),
(768, 17, 164, NULL, NULL, NULL, NULL, '2023-04-20 07:14:05', NULL),
(769, 24, 164, NULL, NULL, NULL, NULL, '2023-04-20 07:14:05', NULL),
(770, 37, 164, NULL, NULL, NULL, NULL, '2023-04-20 07:14:05', NULL),
(771, 1, 174, NULL, NULL, NULL, NULL, '2023-04-20 07:15:29', NULL),
(772, 17, 174, NULL, NULL, NULL, NULL, '2023-04-20 07:15:29', NULL),
(773, 24, 174, NULL, NULL, NULL, NULL, '2023-04-20 07:15:29', NULL),
(774, 30, 174, NULL, NULL, NULL, NULL, '2023-04-20 07:15:29', NULL),
(775, 37, 174, NULL, NULL, NULL, NULL, '2023-04-20 07:15:29', NULL),
(776, 3, 173, NULL, NULL, NULL, NULL, '2023-04-20 07:17:52', NULL),
(777, 16, 173, NULL, NULL, NULL, NULL, '2023-04-20 07:17:52', NULL),
(778, 29, 173, NULL, NULL, NULL, NULL, '2023-04-20 07:17:52', NULL),
(779, 24, 173, NULL, NULL, NULL, NULL, '2023-04-20 07:17:52', NULL),
(780, 37, 173, NULL, NULL, NULL, NULL, '2023-04-20 07:17:52', NULL),
(781, 1, 175, NULL, NULL, NULL, NULL, '2023-04-20 07:18:03', NULL),
(782, 24, 175, NULL, NULL, NULL, NULL, '2023-04-20 07:18:03', NULL),
(783, 32, 175, NULL, NULL, NULL, NULL, '2023-04-20 07:18:03', NULL),
(784, 17, 175, NULL, NULL, NULL, NULL, '2023-04-20 07:18:03', NULL),
(785, 37, 175, NULL, NULL, NULL, NULL, '2023-04-20 07:18:03', NULL),
(786, 1, 176, NULL, NULL, NULL, NULL, '2023-04-20 07:18:38', NULL),
(787, 17, 176, NULL, NULL, NULL, NULL, '2023-04-20 07:18:38', NULL),
(788, 24, 176, NULL, NULL, NULL, NULL, '2023-04-20 07:18:38', NULL),
(789, 33, 176, NULL, NULL, NULL, NULL, '2023-04-20 07:18:38', NULL),
(790, 37, 176, NULL, NULL, NULL, NULL, '2023-04-20 07:18:38', NULL),
(791, 26, 172, NULL, NULL, NULL, NULL, '2023-04-20 07:19:02', NULL),
(792, 34, 172, NULL, NULL, NULL, NULL, '2023-04-20 07:19:02', NULL),
(793, 6, 172, NULL, NULL, NULL, NULL, '2023-04-20 07:19:02', NULL),
(794, 10, 172, NULL, NULL, NULL, NULL, '2023-04-20 07:19:02', NULL),
(795, 37, 172, NULL, NULL, NULL, NULL, '2023-04-20 07:19:02', NULL),
(796, 10, 170, NULL, NULL, NULL, NULL, '2023-04-20 07:24:20', NULL),
(797, 33, 170, NULL, NULL, NULL, NULL, '2023-04-20 07:24:20', NULL),
(798, 24, 170, NULL, NULL, NULL, NULL, '2023-04-20 07:24:20', NULL),
(799, 7, 170, NULL, NULL, NULL, NULL, '2023-04-20 07:24:20', NULL),
(800, 37, 170, NULL, NULL, NULL, NULL, '2023-04-20 07:24:20', NULL),
(801, 7, 177, NULL, NULL, NULL, NULL, '2023-04-20 07:27:03', NULL),
(802, 11, 177, NULL, NULL, NULL, NULL, '2023-04-20 07:27:03', NULL),
(803, 26, 177, NULL, NULL, NULL, NULL, '2023-04-20 07:27:03', NULL),
(804, 28, 177, NULL, NULL, NULL, NULL, '2023-04-20 07:27:03', NULL),
(805, 37, 177, NULL, NULL, NULL, NULL, '2023-04-20 07:27:03', NULL),
(806, 7, 178, NULL, NULL, NULL, NULL, '2023-04-20 07:27:21', NULL),
(807, 11, 178, NULL, NULL, NULL, NULL, '2023-04-20 07:27:21', NULL),
(808, 26, 178, NULL, NULL, NULL, NULL, '2023-04-20 07:27:21', NULL),
(809, 28, 178, NULL, NULL, NULL, NULL, '2023-04-20 07:27:21', NULL),
(810, 37, 178, NULL, NULL, NULL, NULL, '2023-04-20 07:27:21', NULL),
(811, 7, 171, NULL, NULL, NULL, NULL, '2023-04-20 07:27:28', NULL),
(812, 10, 171, NULL, NULL, NULL, NULL, '2023-04-20 07:27:28', NULL),
(813, 24, 171, NULL, NULL, NULL, NULL, '2023-04-20 07:27:28', NULL),
(814, 32, 171, NULL, NULL, NULL, NULL, '2023-04-20 07:27:28', NULL),
(815, 37, 171, NULL, NULL, NULL, NULL, '2023-04-20 07:27:28', NULL),
(816, 7, 169, NULL, NULL, NULL, NULL, '2023-04-20 07:27:29', NULL),
(817, 24, 169, NULL, NULL, NULL, NULL, '2023-04-20 07:27:29', NULL),
(818, 10, 169, NULL, NULL, NULL, NULL, '2023-04-20 07:27:29', NULL),
(819, 32, 169, NULL, NULL, NULL, NULL, '2023-04-20 07:27:29', NULL),
(820, 37, 169, NULL, NULL, NULL, NULL, '2023-04-20 07:27:29', NULL),
(821, 7, 179, NULL, NULL, NULL, NULL, '2023-04-20 07:28:41', NULL),
(822, 11, 179, NULL, NULL, NULL, NULL, '2023-04-20 07:28:41', NULL),
(823, 26, 179, NULL, NULL, NULL, NULL, '2023-04-20 07:28:41', NULL),
(824, 28, 179, NULL, NULL, NULL, NULL, '2023-04-20 07:28:41', NULL),
(825, 37, 179, NULL, NULL, NULL, NULL, '2023-04-20 07:28:41', NULL),
(826, 7, 180, NULL, NULL, NULL, NULL, '2023-04-20 07:30:44', NULL),
(827, 11, 180, NULL, NULL, NULL, NULL, '2023-04-20 07:30:44', NULL),
(828, 26, 180, NULL, NULL, NULL, NULL, '2023-04-20 07:30:44', NULL),
(829, 28, 180, NULL, NULL, NULL, NULL, '2023-04-20 07:30:44', NULL),
(830, 37, 180, NULL, NULL, NULL, NULL, '2023-04-20 07:30:44', NULL),
(831, 7, 181, NULL, NULL, NULL, NULL, '2023-04-20 07:32:17', NULL),
(832, 10, 181, NULL, NULL, NULL, NULL, '2023-04-20 07:32:17', NULL),
(833, 26, 181, NULL, NULL, NULL, NULL, '2023-04-20 07:32:17', NULL),
(834, 32, 181, NULL, NULL, NULL, NULL, '2023-04-20 07:32:17', NULL),
(835, 37, 181, NULL, NULL, NULL, NULL, '2023-04-20 07:32:17', NULL),
(836, 6, 187, NULL, NULL, NULL, NULL, '2023-04-20 08:40:10', NULL),
(837, 10, 187, NULL, NULL, NULL, NULL, '2023-04-20 08:40:10', NULL),
(838, 25, 187, NULL, NULL, NULL, NULL, '2023-04-20 08:40:10', NULL),
(839, 32, 187, NULL, NULL, NULL, NULL, '2023-04-20 08:40:10', NULL),
(840, 37, 187, NULL, NULL, NULL, NULL, '2023-04-20 08:40:10', NULL),
(841, 10, 186, NULL, NULL, NULL, NULL, '2023-04-20 08:40:53', NULL),
(842, 25, 186, NULL, NULL, NULL, NULL, '2023-04-20 08:40:53', NULL),
(843, 32, 186, NULL, NULL, NULL, NULL, '2023-04-20 08:40:53', NULL),
(844, 8, 186, NULL, NULL, NULL, NULL, '2023-04-20 08:40:53', NULL),
(845, 37, 186, NULL, NULL, NULL, NULL, '2023-04-20 08:40:53', NULL),
(846, 7, 188, NULL, '5', 'Muy guay y intenso', NULL, '2023-04-20 08:41:03', '2023-04-21 08:23:01'),
(847, 15, 188, NULL, '5', 'Molt guay i interessant', NULL, '2023-04-20 08:41:03', '2023-04-21 09:22:26'),
(848, 28, 188, NULL, NULL, NULL, NULL, '2023-04-20 08:41:03', NULL),
(849, 26, 188, NULL, NULL, NULL, NULL, '2023-04-20 08:41:03', NULL),
(850, 37, 188, NULL, NULL, NULL, NULL, '2023-04-20 08:41:03', NULL),
(851, 26, 185, NULL, NULL, NULL, NULL, '2023-04-20 08:41:26', NULL),
(852, 31, 185, NULL, NULL, NULL, NULL, '2023-04-20 08:41:26', NULL),
(853, 16, 185, NULL, NULL, NULL, NULL, '2023-04-20 08:41:26', NULL),
(854, 5, 185, NULL, NULL, NULL, NULL, '2023-04-20 08:41:26', NULL),
(855, 37, 185, NULL, NULL, NULL, NULL, '2023-04-20 08:41:26', NULL),
(856, 31, 182, NULL, NULL, NULL, NULL, '2023-04-20 08:42:15', NULL),
(857, 5, 182, NULL, NULL, NULL, NULL, '2023-04-20 08:42:15', NULL),
(858, 16, 182, NULL, NULL, NULL, NULL, '2023-04-20 08:42:15', NULL),
(859, 19, 182, NULL, NULL, NULL, NULL, '2023-04-20 08:42:15', NULL),
(860, 37, 182, NULL, NULL, NULL, NULL, '2023-04-20 08:42:15', NULL),
(861, 4, 190, NULL, NULL, NULL, NULL, '2023-04-20 09:18:25', NULL),
(862, 10, 190, NULL, NULL, NULL, NULL, '2023-04-20 09:18:25', NULL),
(863, 25, 190, NULL, NULL, NULL, NULL, '2023-04-20 09:18:25', NULL),
(864, 32, 190, NULL, NULL, NULL, NULL, '2023-04-20 09:18:25', NULL),
(865, 37, 190, NULL, NULL, NULL, NULL, '2023-04-20 09:18:25', NULL),
(866, 4, 191, NULL, '4', 'Clase molt preparada per part dels monitors.', NULL, '2023-04-20 09:18:28', '2023-04-21 08:32:21'),
(867, 10, 191, NULL, '4', 'Sessió Ben preparada i amb moltes variants de balls', NULL, '2023-04-20 09:18:28', '2023-04-21 09:41:57'),
(868, 25, 191, NULL, '5', 'La millor Activitat fins ara, els monitors molt treballadors i molt preparada la sessió, innovadora i divertida', NULL, '2023-04-20 09:18:28', '2023-04-21 09:44:34'),
(869, 32, 191, NULL, NULL, NULL, NULL, '2023-04-20 09:18:28', NULL),
(870, 37, 191, NULL, NULL, NULL, NULL, '2023-04-20 09:18:28', NULL),
(871, 4, 192, NULL, NULL, NULL, NULL, '2023-04-20 09:19:34', NULL),
(872, 16, 192, NULL, NULL, NULL, NULL, '2023-04-20 09:19:34', NULL),
(873, 29, 192, NULL, NULL, NULL, NULL, '2023-04-20 09:19:34', NULL),
(874, 19, 192, NULL, NULL, NULL, NULL, '2023-04-20 09:19:34', NULL),
(875, 37, 192, NULL, NULL, NULL, NULL, '2023-04-20 09:19:34', NULL),
(876, 5, 183, NULL, NULL, NULL, NULL, '2023-04-20 09:21:47', NULL),
(877, 11, 183, NULL, NULL, NULL, NULL, '2023-04-20 09:21:47', NULL),
(878, 25, 183, NULL, NULL, NULL, NULL, '2023-04-20 09:21:47', NULL),
(879, 31, 183, NULL, NULL, NULL, NULL, '2023-04-20 09:21:47', NULL),
(880, 37, 183, NULL, NULL, NULL, NULL, '2023-04-20 09:21:47', NULL),
(881, 5, 194, NULL, NULL, NULL, NULL, '2023-04-20 09:22:43', NULL),
(882, 11, 194, NULL, NULL, NULL, NULL, '2023-04-20 09:22:43', NULL),
(883, 25, 194, NULL, NULL, NULL, NULL, '2023-04-20 09:22:43', NULL),
(884, 31, 194, NULL, NULL, NULL, NULL, '2023-04-20 09:22:43', NULL),
(885, 37, 194, NULL, NULL, NULL, NULL, '2023-04-20 09:22:43', NULL),
(886, 1, 199, NULL, NULL, NULL, NULL, '2023-04-20 11:32:47', NULL),
(887, 11, 199, NULL, NULL, NULL, NULL, '2023-04-20 11:32:47', NULL),
(888, 32, 199, NULL, NULL, NULL, NULL, '2023-04-20 11:32:47', NULL),
(889, 22, 199, NULL, NULL, NULL, NULL, '2023-04-20 11:32:47', NULL),
(890, 37, 199, NULL, NULL, NULL, NULL, '2023-04-20 11:32:47', NULL),
(891, 25, 121, NULL, NULL, NULL, NULL, '2023-04-20 11:33:27', NULL),
(892, 4, 121, NULL, NULL, NULL, NULL, '2023-04-20 11:33:27', NULL),
(893, 29, 121, NULL, NULL, NULL, NULL, '2023-04-20 11:33:27', NULL),
(894, 10, 121, NULL, NULL, NULL, NULL, '2023-04-20 11:33:27', NULL),
(895, 37, 121, NULL, NULL, NULL, NULL, '2023-04-20 11:33:27', NULL),
(896, 1, 198, NULL, NULL, NULL, NULL, '2023-04-20 11:37:07', NULL),
(897, 11, 198, NULL, NULL, NULL, NULL, '2023-04-20 11:37:07', NULL),
(898, 25, 198, NULL, NULL, NULL, NULL, '2023-04-20 11:37:07', NULL),
(899, 31, 198, NULL, NULL, NULL, NULL, '2023-04-20 11:37:07', NULL),
(900, 37, 198, NULL, NULL, NULL, NULL, '2023-04-20 11:37:07', NULL),
(901, 25, 197, NULL, NULL, NULL, NULL, '2023-04-20 11:37:31', NULL),
(902, 1, 197, NULL, NULL, NULL, NULL, '2023-04-20 11:37:31', NULL),
(903, 31, 197, NULL, NULL, NULL, NULL, '2023-04-20 11:37:31', NULL),
(904, 11, 197, NULL, NULL, NULL, NULL, '2023-04-20 11:37:31', NULL),
(905, 37, 197, NULL, NULL, NULL, NULL, '2023-04-20 11:37:31', NULL),
(906, 1, 200, NULL, NULL, NULL, NULL, '2023-04-20 11:42:13', NULL),
(907, 11, 200, NULL, NULL, NULL, NULL, '2023-04-20 11:42:13', NULL),
(908, 25, 200, NULL, NULL, NULL, NULL, '2023-04-20 11:42:13', NULL),
(909, 31, 200, NULL, NULL, NULL, NULL, '2023-04-20 11:42:13', NULL),
(910, 37, 200, NULL, NULL, NULL, NULL, '2023-04-20 11:42:13', NULL),
(911, 19, 193, NULL, NULL, NULL, NULL, '2023-04-20 12:49:34', NULL),
(912, 29, 193, NULL, NULL, NULL, NULL, '2023-04-20 12:49:34', NULL),
(913, 7, 193, NULL, NULL, NULL, NULL, '2023-04-20 12:49:34', NULL),
(914, 13, 193, NULL, NULL, NULL, NULL, '2023-04-20 12:49:34', NULL),
(915, 37, 193, NULL, NULL, NULL, NULL, '2023-04-20 12:49:34', NULL),
(916, 15, 201, NULL, NULL, NULL, NULL, '2023-04-20 13:35:19', NULL),
(917, 1, 201, NULL, NULL, NULL, NULL, '2023-04-20 13:35:19', NULL),
(918, 34, 201, NULL, NULL, NULL, NULL, '2023-04-20 13:35:19', NULL),
(919, 22, 201, NULL, NULL, NULL, NULL, '2023-04-20 13:35:19', NULL),
(920, 37, 201, NULL, NULL, NULL, NULL, '2023-04-20 13:35:19', NULL),
(921, 34, 203, NULL, NULL, NULL, NULL, '2023-04-20 13:45:39', NULL),
(922, 19, 203, NULL, NULL, NULL, NULL, '2023-04-20 13:45:39', NULL),
(923, 2, 203, NULL, NULL, NULL, NULL, '2023-04-20 13:45:39', NULL),
(924, 13, 203, NULL, NULL, NULL, NULL, '2023-04-20 13:45:39', NULL),
(925, 37, 203, NULL, NULL, NULL, NULL, '2023-04-20 13:45:39', NULL),
(926, 19, 202, NULL, NULL, NULL, NULL, '2023-04-20 13:46:06', NULL),
(927, 34, 202, NULL, NULL, NULL, NULL, '2023-04-20 13:46:06', NULL),
(928, 2, 202, NULL, NULL, NULL, NULL, '2023-04-20 13:46:06', NULL),
(929, 15, 202, NULL, NULL, NULL, NULL, '2023-04-20 13:46:06', NULL),
(930, 37, 202, NULL, NULL, NULL, NULL, '2023-04-20 13:46:06', NULL),
(931, 15, 205, NULL, NULL, NULL, NULL, '2023-04-20 14:22:23', NULL),
(932, 20, 205, NULL, NULL, NULL, NULL, '2023-04-20 14:22:23', NULL),
(933, 28, 205, NULL, NULL, NULL, NULL, '2023-04-20 14:22:23', NULL),
(934, 3, 205, NULL, NULL, NULL, NULL, '2023-04-20 14:22:23', NULL),
(935, 37, 205, NULL, NULL, NULL, NULL, '2023-04-20 14:22:23', NULL),
(936, 7, 207, NULL, '5', 'Muy buena sesión y los técnicos 10/10', NULL, '2023-04-20 16:41:18', '2023-04-21 08:27:40'),
(937, 15, 207, NULL, '5', 'L’Albae ha fet que moure el cul sigui fàcil! Sóc fan seva i repetiria!', NULL, '2023-04-20 16:41:18', '2023-04-21 09:22:56'),
(938, 19, 207, NULL, '5', 'Muy buenas coreografías y los instructores los mejores, grandes profesionales', NULL, '2023-04-20 16:41:18', '2023-04-21 10:21:35'),
(939, 29, 207, NULL, NULL, NULL, NULL, '2023-04-20 16:41:18', NULL),
(940, 37, 207, NULL, NULL, NULL, NULL, '2023-04-20 16:41:18', NULL),
(941, 1, 211, NULL, NULL, NULL, NULL, '2023-04-20 17:00:02', NULL),
(942, 12, 211, NULL, NULL, NULL, NULL, '2023-04-20 17:00:02', NULL),
(943, 25, 211, NULL, NULL, NULL, NULL, '2023-04-20 17:00:02', NULL),
(944, 32, 211, NULL, NULL, NULL, NULL, '2023-04-20 17:00:02', NULL),
(945, 37, 211, NULL, NULL, NULL, NULL, '2023-04-20 17:00:02', NULL),
(946, 1, 210, NULL, NULL, NULL, NULL, '2023-04-20 17:00:04', NULL),
(947, 12, 210, NULL, NULL, NULL, NULL, '2023-04-20 17:00:04', NULL),
(948, 25, 210, NULL, NULL, NULL, NULL, '2023-04-20 17:00:04', NULL),
(949, 32, 210, NULL, NULL, NULL, NULL, '2023-04-20 17:00:04', NULL),
(950, 37, 210, NULL, NULL, NULL, NULL, '2023-04-20 17:00:04', NULL),
(951, 1, 208, NULL, NULL, NULL, NULL, '2023-04-20 17:00:05', NULL),
(952, 12, 208, NULL, NULL, NULL, NULL, '2023-04-20 17:00:05', NULL),
(953, 25, 208, NULL, NULL, NULL, NULL, '2023-04-20 17:00:05', NULL),
(954, 32, 208, NULL, NULL, NULL, NULL, '2023-04-20 17:00:05', NULL),
(955, 37, 208, NULL, NULL, NULL, NULL, '2023-04-20 17:00:05', NULL),
(956, 1, 212, NULL, NULL, NULL, NULL, '2023-04-20 17:00:08', NULL),
(957, 12, 212, NULL, NULL, NULL, NULL, '2023-04-20 17:00:08', NULL),
(958, 25, 212, NULL, NULL, NULL, NULL, '2023-04-20 17:00:08', NULL),
(959, 32, 212, NULL, NULL, NULL, NULL, '2023-04-20 17:00:08', NULL),
(960, 37, 212, NULL, NULL, NULL, NULL, '2023-04-20 17:00:08', NULL),
(961, 1, 209, NULL, '5', 'Molt bona clase', NULL, '2023-04-20 17:29:58', '2023-04-21 08:17:17'),
(962, 12, 209, NULL, '5', 'El profesor era molt guapo i divertit, me enamorat', NULL, '2023-04-20 17:29:58', '2023-04-21 09:32:57'),
(963, 25, 209, NULL, '5', NULL, NULL, '2023-04-20 17:29:58', '2023-04-21 10:18:09'),
(964, 32, 209, NULL, NULL, NULL, NULL, '2023-04-20 17:29:58', NULL),
(965, 37, 209, NULL, NULL, NULL, NULL, '2023-04-20 17:29:58', NULL),
(966, 1, 217, NULL, NULL, NULL, NULL, '2023-04-20 19:27:12', NULL),
(967, 15, 217, NULL, NULL, NULL, NULL, '2023-04-20 19:27:12', NULL),
(968, 30, 217, NULL, NULL, NULL, NULL, '2023-04-20 19:27:12', NULL),
(969, 25, 217, NULL, NULL, NULL, NULL, '2023-04-20 19:27:12', NULL),
(970, 37, 217, NULL, NULL, NULL, NULL, '2023-04-20 19:27:12', NULL),
(971, 7, 218, NULL, NULL, NULL, NULL, '2023-04-20 19:29:00', NULL),
(972, 11, 218, NULL, NULL, NULL, NULL, '2023-04-20 19:29:00', NULL),
(973, 21, 218, NULL, NULL, NULL, NULL, '2023-04-20 19:29:00', NULL),
(974, 32, 218, NULL, NULL, NULL, NULL, '2023-04-20 19:29:00', NULL),
(975, 37, 218, NULL, NULL, NULL, NULL, '2023-04-20 19:29:00', NULL),
(976, 13, 221, NULL, NULL, NULL, NULL, '2023-04-20 21:18:33', NULL),
(977, 32, 221, NULL, NULL, NULL, NULL, '2023-04-20 21:18:33', NULL),
(978, 21, 221, NULL, NULL, NULL, NULL, '2023-04-20 21:18:33', NULL),
(979, 7, 221, NULL, NULL, NULL, NULL, '2023-04-20 21:18:33', NULL),
(980, 37, 221, NULL, NULL, NULL, NULL, '2023-04-20 21:18:33', NULL),
(981, 19, 220, NULL, NULL, NULL, NULL, '2023-04-20 21:23:27', NULL),
(982, 7, 220, NULL, NULL, NULL, NULL, '2023-04-20 21:23:27', NULL),
(983, 13, 220, NULL, NULL, NULL, NULL, '2023-04-20 21:23:27', NULL),
(984, 29, 220, NULL, NULL, NULL, NULL, '2023-04-20 21:23:27', NULL),
(985, 37, 220, NULL, NULL, NULL, NULL, '2023-04-20 21:23:27', NULL),
(986, 1, 222, NULL, '5', NULL, NULL, '2023-04-20 21:27:23', '2023-04-24 19:42:11'),
(987, 15, 222, NULL, '4', NULL, NULL, '2023-04-20 21:27:23', '2023-04-24 19:42:18'),
(988, 20, 222, NULL, NULL, NULL, NULL, '2023-04-20 21:27:23', NULL),
(989, 30, 222, NULL, NULL, NULL, NULL, '2023-04-20 21:27:23', NULL),
(990, 37, 222, NULL, NULL, NULL, NULL, '2023-04-20 21:27:23', NULL),
(991, 1, 223, NULL, NULL, NULL, NULL, '2023-04-20 21:29:11', NULL),
(992, 15, 223, NULL, NULL, NULL, NULL, '2023-04-20 21:29:11', NULL),
(993, 20, 223, NULL, NULL, NULL, NULL, '2023-04-20 21:29:11', NULL),
(994, 34, 223, NULL, NULL, NULL, NULL, '2023-04-20 21:29:11', NULL),
(995, 37, 223, NULL, NULL, NULL, NULL, '2023-04-20 21:29:11', NULL),
(996, 19, 224, NULL, NULL, NULL, NULL, '2023-04-20 21:52:50', NULL),
(997, 2, 224, NULL, NULL, NULL, NULL, '2023-04-20 21:52:50', NULL),
(998, 16, 224, NULL, NULL, NULL, NULL, '2023-04-20 21:52:50', NULL),
(999, 30, 224, NULL, NULL, NULL, NULL, '2023-04-20 21:52:50', NULL),
(1000, 37, 224, NULL, NULL, NULL, NULL, '2023-04-20 21:52:50', NULL),
(1001, 1, 226, NULL, NULL, NULL, NULL, '2023-04-20 22:22:20', NULL),
(1002, 15, 226, NULL, NULL, NULL, NULL, '2023-04-20 22:22:20', NULL),
(1003, 20, 226, NULL, NULL, NULL, NULL, '2023-04-20 22:22:20', NULL),
(1004, 30, 226, NULL, NULL, NULL, NULL, '2023-04-20 22:22:20', NULL),
(1005, 37, 226, NULL, NULL, NULL, NULL, '2023-04-20 22:22:20', NULL),
(1006, 13, 227, NULL, NULL, NULL, NULL, '2023-04-20 23:34:44', NULL),
(1007, 1, 227, NULL, NULL, NULL, NULL, '2023-04-20 23:34:44', NULL),
(1008, 34, 227, NULL, NULL, NULL, NULL, '2023-04-20 23:34:44', NULL),
(1009, 20, 227, NULL, NULL, NULL, NULL, '2023-04-20 23:34:44', NULL),
(1010, 37, 227, NULL, NULL, NULL, NULL, '2023-04-20 23:34:44', NULL),
(1011, 34, 229, NULL, NULL, NULL, NULL, '2023-04-21 06:20:02', NULL),
(1012, 15, 229, NULL, NULL, NULL, NULL, '2023-04-21 06:20:02', NULL),
(1013, 3, 229, NULL, NULL, NULL, NULL, '2023-04-21 06:20:02', NULL),
(1014, 20, 229, NULL, NULL, NULL, NULL, '2023-04-21 06:20:02', NULL),
(1015, 37, 229, NULL, NULL, NULL, NULL, '2023-04-21 06:20:02', NULL),
(1016, 3, 206, NULL, NULL, NULL, NULL, '2023-04-21 07:16:49', NULL),
(1017, 16, 206, NULL, NULL, NULL, NULL, '2023-04-21 07:16:49', NULL),
(1018, 23, 206, NULL, NULL, NULL, NULL, '2023-04-21 07:16:49', NULL),
(1019, 31, 206, NULL, NULL, NULL, NULL, '2023-04-21 07:16:49', NULL),
(1020, 37, 206, NULL, NULL, NULL, NULL, '2023-04-21 07:16:49', NULL),
(1021, 3, 230, NULL, NULL, NULL, NULL, '2023-04-21 07:19:12', NULL),
(1022, 16, 230, NULL, NULL, NULL, NULL, '2023-04-21 07:19:12', NULL),
(1023, 23, 230, NULL, NULL, NULL, NULL, '2023-04-21 07:19:12', NULL),
(1024, 29, 230, NULL, NULL, NULL, NULL, '2023-04-21 07:19:12', NULL),
(1025, 37, 230, NULL, NULL, NULL, NULL, '2023-04-21 07:19:12', NULL),
(1026, 3, 204, NULL, NULL, NULL, NULL, '2023-04-21 07:22:42', NULL),
(1027, 15, 204, NULL, NULL, NULL, NULL, '2023-04-21 07:22:42', NULL),
(1028, 20, 204, NULL, NULL, NULL, NULL, '2023-04-21 07:22:42', NULL),
(1029, 34, 204, NULL, NULL, NULL, NULL, '2023-04-21 07:22:42', NULL),
(1030, 37, 204, NULL, NULL, NULL, NULL, '2023-04-21 07:22:42', NULL),
(1031, 5, 231, NULL, NULL, NULL, NULL, '2023-04-21 07:31:46', NULL),
(1032, 16, 231, NULL, NULL, NULL, NULL, '2023-04-21 07:31:46', NULL),
(1033, 21, 231, NULL, NULL, NULL, NULL, '2023-04-21 07:31:46', NULL),
(1034, 31, 231, NULL, NULL, NULL, NULL, '2023-04-21 07:31:46', NULL),
(1035, 37, 231, NULL, NULL, NULL, NULL, '2023-04-21 07:31:46', NULL),
(1036, 5, 232, NULL, NULL, NULL, NULL, '2023-04-21 07:32:39', NULL),
(1037, 16, 232, NULL, NULL, NULL, NULL, '2023-04-21 07:32:39', NULL),
(1038, 21, 232, NULL, NULL, NULL, NULL, '2023-04-21 07:32:39', NULL),
(1039, 31, 232, NULL, NULL, NULL, NULL, '2023-04-21 07:32:39', NULL),
(1040, 37, 232, NULL, NULL, NULL, NULL, '2023-04-21 07:32:39', NULL),
(1041, 5, 233, NULL, NULL, NULL, NULL, '2023-04-21 07:33:41', NULL),
(1042, 16, 233, NULL, NULL, NULL, NULL, '2023-04-21 07:33:41', NULL),
(1043, 21, 233, NULL, NULL, NULL, NULL, '2023-04-21 07:33:41', NULL),
(1044, 29, 233, NULL, NULL, NULL, NULL, '2023-04-21 07:33:41', NULL),
(1045, 37, 233, NULL, NULL, NULL, NULL, '2023-04-21 07:33:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `nom`, `descripcio`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, '2023-04-16 17:29:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_user`
--

CREATE TABLE `rol_user` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `rol_id` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol_user`
--

INSERT INTO `rol_user` (`id`, `user_id`, `rol_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.net', NULL, '$2y$10$OpGmeDsb1G9yLmiaAh.dGetB8mFNST6qE7nHPXehAcBwcsccNGKsW', NULL, '2023-04-16 17:29:20', '2023-04-16 17:29:20'),
(2, 'Miriam', 'miriam.moreno22@ieb.cat', NULL, '$2y$10$Arw3kFh7g0t91yrW4mINtu9tOwkVxHOJljv/0C7m4mjyzS9yDMjCq', NULL, '2023-04-17 16:24:33', '2023-04-17 16:24:33'),
(3, 'Sara Menéndez', 'smenendez@ieb.cat', NULL, '$2y$10$/OZhzDFf1wWeOIJWzvHoMOje2apkbPTyvkrJbqr37eTmPZ6YN4sBO', NULL, '2023-04-17 20:11:49', '2023-04-17 20:11:49'),
(4, 'Naïm Rico Prades', 'riconaim110@ieb.cat', NULL, '$2y$10$b5qiS5ER81cl9KabIUS4N.XsnN5/bt..VjAvMnIWfsI3Fwi1428JW', NULL, '2023-04-18 09:52:16', '2023-04-18 09:52:16'),
(5, 'Owen Raphael Nogales Singens', 'owen.nogales22@ieb.cat', NULL, '$2y$10$MBMKZTmfHQ6OtKq2RdwIC.9SJJxF7NM4OAY7B34B.VNMslorLznJu', NULL, '2023-04-18 09:52:38', '2023-04-18 09:52:38'),
(7, 'Jan Estengre', 'jan.estengre22@ieb.cat', NULL, '$2y$10$bQH1YdYeWjuXko0/Aed5feE25ALifnMA/2edCoXCmtcAZ6R3o1/xy', NULL, '2023-04-18 09:53:06', '2023-04-18 09:53:06'),
(8, 'Eugeni Raga Cullell', 'eugeni.raga22@ieb.cat', NULL, '$2y$10$b9PRX6bCkTbk1sEyfdvUfepwoiSEKM2ly/Wyec5j0vzN0.HwjvYo2', NULL, '2023-04-18 09:53:11', '2023-04-18 09:53:11'),
(9, 'Aina Ortiz de Haro', 'aina.ortiz22@ieb.cat', NULL, '$2y$10$1VGhd4V9EiZiLBXjZyHPaOZvpqlFWICOGe9iT8vQwod.UC44FML9S', NULL, '2023-04-18 09:53:15', '2023-04-18 09:53:15'),
(10, 'ian paul coronado simó', 'ian.coronado22@ieb.cat', NULL, '$2y$10$u3/xlEqkF2z4EEYJU8cB2Ogupx0xxDb31IRw/butOvOVbIPzGZ9hO', NULL, '2023-04-18 09:53:32', '2023-04-18 09:53:32'),
(11, 'Elsa Plans', 'elsa.plans22@ieb.cat', NULL, '$2y$10$KKSVqXd9OKnFaYt0Uxm43.JLRCd9YdS/puNhaJ5EDlSWtrCzV6zVC', NULL, '2023-04-18 09:54:07', '2023-04-18 09:54:07'),
(12, 'Aleix Lorente Fernández', 'aleix.lorente22@ieb.cat', NULL, '$2y$10$eF6GdFpN/5Awm/76uM06C.LIGeJaWLwE1ljYBdZRP0dvRkUtYGxcK', NULL, '2023-04-18 09:54:36', '2023-04-18 09:54:36'),
(13, 'Jasmine Calero Larfa', 'jasmine.calero22@ieb.cat', NULL, '$2y$10$XYkMgzAbZDteDshsTpFI3.gg10FZf8hOlCECBlpmTtE0S9NmfUN/a', NULL, '2023-04-18 09:56:18', '2023-04-18 09:56:18'),
(14, 'Pol Gimenez', 'pol.gimenez22@ieb.cat', NULL, '$2y$10$EBEkUsH3ik17Y22z80v5p.1MFCP3x811I/3o80.hLravSnvoFlsbK', NULL, '2023-04-18 09:57:35', '2023-04-18 09:57:35'),
(15, 'Joel dos Santos', 'joel.dossantos22@ieb.cat', NULL, '$2y$10$NA59Lx62Y3PQdY85ebkJcugtorYUM0oSS1QtNohP/V3xD7KoMeIg6', NULL, '2023-04-18 09:58:01', '2023-04-18 09:58:01'),
(16, 'Adrià Plana Silva', 'adria.plana22@ieb.cat', NULL, '$2y$10$kh8nmdtOSN4v9vkDerT1KedNUXIxTKIrWgQ7IpeJXmDJcgF8/UXSO', NULL, '2023-04-18 09:58:54', '2023-04-18 09:58:54'),
(17, 'Alejandro Rodriguez Asensio', 'Alejandro.Rodriguez22@ieb.cat', NULL, '$2y$10$.o.MirlHFNWpOtXHHNuG.OeD0kdo1151wlxW7u0NMNJG2AMaL3r1.', NULL, '2023-04-18 09:59:25', '2023-04-18 09:59:25'),
(18, 'Oscar Masana', 'oscar.masana22@ieb.cat', NULL, '$2y$10$p2GbQCivohwU46oYfUAk4.XmnAW5H3OzJO3yOiCcYg/lkf7OAlYly', NULL, '2023-04-18 09:59:33', '2023-04-18 09:59:33'),
(19, 'Hugo Sansaloni Ochando', 'hugo.sansaloni22@ieb.cat', NULL, '$2y$10$lnQI9mQaOKBHqao7U5EEZOBySN245KzMNhaD9.K6UPLdBuFdGg3KS', NULL, '2023-04-18 10:00:03', '2023-04-18 10:00:03'),
(20, 'Marc Jimenez', 'marc.jimenez22@ieb.cat', NULL, '$2y$10$rX41IoxK4zicdW.VtIAgTOK8199b3JGNsNVp4O0igtiP7T5uvpQ3W', NULL, '2023-04-18 10:00:04', '2023-04-18 10:00:04'),
(21, 'klaudia', 'klaudia.gonzalez22@ieb.cat', NULL, '$2y$10$HfOGsglN2xJL2bBj3JjLYew5ePlZkEG4s3CvgRNHqX6.ciEsZ0C3O', NULL, '2023-04-18 10:00:40', '2023-04-18 10:00:40'),
(22, 'Alejandro Guillén Martínez', 'alejandro.guillen22@ieb.cat', NULL, '$2y$10$EZp1.NpJItUxBPeiwtRDvuaZwuhCrUfYPHjEFbq/jAEtPyT5rdRby', NULL, '2023-04-18 10:00:41', '2023-04-18 10:00:41'),
(23, 'Judit', 'judit.cubells22@ieb.cat', NULL, '$2y$10$BWPfR2BV/si0PsNKX5GWNuhqvKMI8WT8WGiG9gIlWdCrWiL/GKG.m', NULL, '2023-04-18 10:03:26', '2023-04-18 10:03:26'),
(24, 'sergio', 'sergio.augusto22@ieb.cat', NULL, '$2y$10$q.Hmg4lJEvtYK5cg66bb2eQtBVzC3IWYO3WIIvG/z/PIwxI/ytmMS', NULL, '2023-04-18 10:07:02', '2023-04-18 10:07:02'),
(25, 'jordili', 'jordi.li22@ieb.cat', NULL, '$2y$10$JdoNz00pATpipnXjpgfwueqIILK6XF10r/QwOTxN/cderiEZBQmMG', NULL, '2023-04-18 10:07:56', '2023-04-18 10:07:56'),
(26, 'Marc Fernández', 'marc.fernandez22@ieb.cat', NULL, '$2y$10$1IPYc5ifEGLKz1K.pIVdVukXG4lx81sN/efsayplPnAT4TvbWRZ42', NULL, '2023-04-18 10:08:38', '2023-04-18 10:08:38'),
(27, 'Oriol Alemany Planas', 'oriol.alemany22@ieb.cat', NULL, '$2y$10$skQqOtoztrgK4QSDN12ZruNqleO1OLY.hhOlT0HJngr/DqRdgYKMS', NULL, '2023-04-18 10:09:22', '2023-04-18 10:09:22'),
(28, 'adlan', 'mohamed.bouhala22@ieb.cat', NULL, '$2y$10$VXVCnZkwSFPDPhGvN/MZM.NPJbT2XTLavblK7VfK5ubTGCDQCjHNC', NULL, '2023-04-18 10:10:21', '2023-04-18 10:10:21'),
(29, 'joaquin', 'joaquin.gea22@ieb.cat', NULL, '$2y$10$JVDhnHCUQMIhm3B5EHuns.hqrF8teK6q./sgCu.gDwAyujRq8fvYW', NULL, '2023-04-18 10:10:30', '2023-04-18 10:10:30'),
(30, 'Eloy', 'eloi.valle22@ieb.cat', NULL, '$2y$10$D5u0TjoP0/wpBvfbM38i/.iFMaywkemko/MkFzilkWxjMAOW8PZGq', NULL, '2023-04-18 10:11:30', '2023-04-18 10:11:30'),
(31, 'Alejandro Fernandez', 'alejandro.fernandez22@ieb.cat', NULL, '$2y$10$kQ75KkSakzzNuBaQIrwgkuPe2rbcA3JxHI361e/pl5zt2.VSDO872', NULL, '2023-04-18 10:12:36', '2023-04-18 10:12:36'),
(32, 'Júlia Fernández Pardo', 'julia.fernandez22@ieb.cat', NULL, '$2y$10$aZ0dAp3FU58d4fjCw0NB3.BdOtnjuAesdDhORfJzgAu86EuACRg66', NULL, '2023-04-18 12:46:07', '2023-04-18 12:46:07'),
(33, 'Alba Barcia', 'alba.barcia22@ieb.cat', NULL, '$2y$10$yWyODE40yWsf0DrXtuRYO.mGp.hqPgxvEI6BOuOF3InqSZ0AbAw82', NULL, '2023-04-18 12:46:44', '2023-04-18 12:46:44'),
(34, 'carla', 'carla.alcaide@institutaliments.barcelona', NULL, '$2y$10$3cAT4ju2KqU93df107EVVukfP67FtHnzPUKSvC0lztXZcSO88B8G6', NULL, '2023-04-18 14:49:21', '2023-04-18 14:49:21'),
(35, 'Lucas', 'lucas@institutaliments.barcelona', NULL, '$2y$10$.jPL4lAvQlz7xF74d2Arje6G14JEzqWGGlSijZu2EEerC60prvxoW', NULL, '2023-04-18 15:15:09', '2023-04-18 15:15:09'),
(36, 'Carla Barceló', 'carla.barcelo@institutaliments.barcelona', NULL, '$2y$10$hNvdH//854tnne.mJ4VaQuNLEe8NcziOnFr1N2VDlA0UmBP5lT6TW', NULL, '2023-04-18 15:21:38', '2023-04-18 15:21:38'),
(37, 'Amelia Roversi', 'amelia.roversi@institutaliments.barcelona', NULL, '$2y$10$hEqUPw7NLzIAbXFmx1vYF.282TzNCHvRoPnWmpy3/eFZBaSmbGyaa', NULL, '2023-04-18 15:24:28', '2023-04-18 15:24:28'),
(38, 'Lia Angosto', 'lia.angosto@institutaliments.barcelona', NULL, '$2y$10$eeZXlTi.Epsjo/JrmZ9W1O2jhaIH05xjWjUWcv2lb41567BVIjNSK', NULL, '2023-04-18 15:24:38', '2023-04-18 15:24:38'),
(39, 'Andres Diaz', '1cf.andresdiaz.aites@gmail.com', NULL, '$2y$10$d7/qbU/Ujyl95/41qk70wOp4UfbRpfI.0JAWySvgky3GH4NyX33lO', NULL, '2023-04-18 17:12:28', '2023-04-18 17:12:28'),
(40, 'Fernando Pacheco', '1cf.fernandopacheco.aites@gmail.com', NULL, '$2y$10$ipclqc.XR1yHV.L91Xnp6.mWaDl.XSltW7fY4hOYDRPhU/VmV3swG', NULL, '2023-04-18 17:19:55', '2023-04-18 17:19:55'),
(41, 'Adonay Cortes', '1cf.adonaycortes.aites@gmail.com', NULL, '$2y$10$tzlGMqi0kVh21p8zCjbtI.utDR4Fo0.EGh9XONzAswTlBF1H/VzIi', NULL, '2023-04-18 20:44:24', '2023-04-18 20:44:24'),
(42, 'Jan Olivella', '1cf.janolivella.aites@gmail.com', NULL, '$2y$10$wd9.dced8KyXBaR5vbSNtu.0DNRMAmoOi8zPLXp3/FsOmJHP4TASq', NULL, '2023-04-18 20:45:40', '2023-04-18 20:45:40'),
(43, 'Oscar Campos Sanz', '1cf.oscarcampos.aites@gmail.com', NULL, '$2y$10$9Z6ZGF5rTmHc4NWM0Q0GS.wvSgBYE/mGZg7DOYAq4uJsugcCbdoEK', NULL, '2023-04-18 21:05:28', '2023-04-18 21:05:28'),
(44, 'Roger Cerrato Leon', '1cf.rogercerrato.aites@gmail.com', NULL, '$2y$10$YLvK9KggKotnikZztWsUAe.VkCaXC80pVjOGJ8zBTQ88g0EVoRmu6', NULL, '2023-04-19 05:18:42', '2023-04-19 05:18:42'),
(45, 'bruno', 'bruno.lobera22@ieb.cat', NULL, '$2y$10$ouf6sumpzOdcp6WqhaCuLOfcJFTeUVvQksOdw6LIiYfJClh/Btgfe', NULL, '2023-04-19 05:43:41', '2023-04-19 05:43:41'),
(46, 'Bioy María Serrat', 'bioy.maria22@ieb.cat', NULL, '$2y$10$oG0W8UWb.nC1pstu/mcBzeSNHQRbzAVwERKSxFtsdpf1mnFuo4FRS', NULL, '2023-04-19 05:45:38', '2023-04-19 05:45:38'),
(47, 'Yoel linares ariza', 'yoel.linares22@ieb.cat', NULL, '$2y$10$NwBvNGWHxRae.F8PBfAANuy799P92HIJ2Z/4enexkginFepLdupUm', NULL, '2023-04-19 05:46:29', '2023-04-19 05:46:29'),
(48, 'David Higuera', 'david.higuera@ieb.cat', NULL, '$2y$10$lUMyKFTac77GOyjLakJiJ.AAgY3HdC4QftBuyLXPe0uy6IQZNGN2a', NULL, '2023-04-19 05:47:07', '2023-04-19 05:47:07'),
(49, 'Gerard Pla', 'gerard.pla22@ieb.cat', NULL, '$2y$10$TWUBC7KDrQ7YgXp.TptXI.p0h5xH4d/SQzhv3HHkcVG7jxQWS5ASK', NULL, '2023-04-19 05:47:18', '2023-04-19 05:47:18'),
(50, 'Yeray Noguera', 'yeray.noguera22@ieb.cat', NULL, '$2y$10$letucT09IU/g/I//JNoaP.STy41zUClZqXVjEzD5lFK5.m7eiEEZy', NULL, '2023-04-19 05:47:33', '2023-04-19 05:47:33'),
(51, 'berta lliuro miro', 'berta.lliuro@ieb.cat', NULL, '$2y$10$u0KokaSKRu3SyHxpnsfSF.0a33sR.KWcY13GoSxUIKo/qwsjuD2Na', NULL, '2023-04-19 05:47:37', '2023-04-19 05:47:37'),
(52, 'Iker Domínguez Rivera', 'iker.dominguez22@ieb.cat', NULL, '$2y$10$MKn1A8hV9ZITEo7ER3KIGeHjD2r9dJbNo9tzR3z2P0odbXwdMtMW2', NULL, '2023-04-19 05:47:48', '2023-04-19 05:47:48'),
(53, 'Pol Chenovart', 'pol.chenovart22@ieb.cat', NULL, '$2y$10$LzZzyO92iUbMyy1eKkG6yeibkynip80MExpf4Wa4Yri2nHcVY4heK', NULL, '2023-04-19 05:47:51', '2023-04-19 05:47:51'),
(54, 'vicenç lopez iranzo', 'vicens.lopez21@ieb.cat', NULL, '$2y$10$RCd6Jh9gkYpznwNSR9/d6.PRAsk0t./BxZexLWqev/frsGtxbFHI2', NULL, '2023-04-19 05:47:52', '2023-04-19 05:47:52'),
(55, 'Iker Martinez Espin', 'iker.martinez22@ieb.cat', NULL, '$2y$10$0WyooqR8dQIh8gcya8dMy.vOKFDuiB94oFTg.waV7dq3iQUwshyj6', NULL, '2023-04-19 05:47:53', '2023-04-19 05:47:53'),
(56, 'Gerard López Nebot', 'gerard.lopez22@ieb.cat', NULL, '$2y$10$tNN4Djr9J7uLEjphsdRw0e8FcUkoFoFtSQazhxAaAqEKoiza8DnF6', NULL, '2023-04-19 05:48:04', '2023-04-19 05:48:04'),
(57, 'Josep Serrano Baya', 'josep.serrano22@ieb.cat', NULL, '$2y$10$dWncWNOYSVbcceoSkuT4JO/1sN7Df1PYAKBdFX5yNUi22ING7H8PG', NULL, '2023-04-19 05:48:05', '2023-04-19 05:48:05'),
(58, 'Jan Alarcon Vera', 'jan.alarcon22@ieb.cat', NULL, '$2y$10$SOQKdK0eqeahZLVzPNXt1OV.9vYZ10nTQFRXiBJgXEVC2IANs.qZa', NULL, '2023-04-19 05:48:33', '2023-04-19 05:48:33'),
(59, 'Celma Donadeu Garcia', 'celmadonadeu22@ieb.cat', NULL, '$2y$10$g2/UHHtvDskpTIfEdmpB..WYeST0AMdgXNOZMklyPkc3d/9QxjHti', NULL, '2023-04-19 05:48:58', '2023-04-19 05:48:58'),
(60, 'Eneko Florido', 'eneko.florido22@ieb.cat', NULL, '$2y$10$kZHCrU/ILp84RpPUbPbBAuwtt0m6wNbQvU1aQoJJ4RBbw0D33wx/O', NULL, '2023-04-19 05:49:44', '2023-04-19 05:49:44'),
(61, 'Aday', 'aday.martin@ieb.cat', NULL, '$2y$10$BNdg5anGomDR8UhR4uV2buqHvKdsMZgnbcVS5iafrxtUknrYcRtXC', NULL, '2023-04-19 05:50:00', '2023-04-19 05:50:00'),
(62, 'Óscar Vega', 'oscar.vega22@ieb.cat', NULL, '$2y$10$UAgJFBklMyFWHd2JrXPm9esfZ2T9F4pH6XxMvRWH/pTIG.hZ.JH0K', NULL, '2023-04-19 05:50:34', '2023-04-19 05:50:34'),
(63, 'sara lópez', 'sara.lopez22@ieb.cat', NULL, '$2y$10$3sV1Fea3/jrOAZS7J8caG.ivt4dkTz7lN6MSj4hvZ9ITcjRfnBDLK', NULL, '2023-04-19 05:51:53', '2023-04-19 05:51:53'),
(64, 'Júlia Casanovas', 'julia.casanovas22@ieb.cat', NULL, '$2y$10$2WClXHdNgnvwvxaxDqGv0O9uAwkrhKZY7hh6iIGZjn0mWpSzmitnu', NULL, '2023-04-19 05:52:03', '2023-04-19 05:52:03'),
(65, 'Paula', 'paula.rene22@ieb.cat', NULL, '$2y$10$I9VxHCG01S38IGxsLOARxu/elSfeXx7ZBdzOrGFmnwlvYz..Je57C', NULL, '2023-04-19 05:53:26', '2023-04-19 05:53:26'),
(66, 'Héctor Palomo', 'hector.palomo22@ieb.cat', NULL, '$2y$10$BY8LZqMrvhiecYua0qIzUO3cJbm269hKpXabcgB5RKxq1VKhn1VmG', NULL, '2023-04-19 05:53:50', '2023-04-19 05:53:50'),
(67, 'Bruno Masip Soler', 'bruno.masip22@ieb.cat', NULL, '$2y$10$XF.GRS1DpXNO2iEOdB4TSOQ6f734dX0kxA7QbkHJVeeInu.MS.yMa', NULL, '2023-04-19 05:54:04', '2023-04-19 05:54:04'),
(68, 'Andrea Macho', 'andrea.macho22@ieb.cat', NULL, '$2y$10$scefG844gbG0SQ.KuDgAtuH7oqyNOqVtaodenykNhB.oMPL.4Jx16', NULL, '2023-04-19 05:54:56', '2023-04-19 05:54:56'),
(69, 'claudia pérez domingo', 'claudia.perez22@ieb.cat', NULL, '$2y$10$ugCkqkg1VVeP0BTjerDMuuS7D00o3semi8H9kjPqiTobAXJYpjqA.', NULL, '2023-04-19 05:55:05', '2023-04-19 05:55:05'),
(70, 'Ivan soler', 'ivan.soler22@ieb.cat', NULL, '$2y$10$fPK/QlkMuAX2Cefl3Bvs3.7QfZUc.VvikWdfN1hMosHi7VlADB3tS', NULL, '2023-04-19 05:55:13', '2023-04-19 05:55:13'),
(71, 'Nuria', 'nuria.cristofol22@ieb.cat', NULL, '$2y$10$YoOaNRz/nAoqjq4sSUVW1.9EKKJnYz8T632S0bqKkwgu761jKeo/.', NULL, '2023-04-19 05:55:22', '2023-04-19 05:55:22'),
(72, 'mauricio urquiza', 'mauricio.urquiza21@ieb.cat', NULL, '$2y$10$Wp2vOahR1PBUWrKErWomdOAhiHVgjR/m5JRG7H0BfYWvY7yyNHBw.', NULL, '2023-04-19 05:55:49', '2023-04-19 05:55:49'),
(73, 'Jordi Melenres Navarro', 'jordi.melendres22@ieb.cat', NULL, '$2y$10$kC2ABK7VAe27gltxE/kP5O9VsGO/KaCiiUxqxOW84xOiVs687W3Re', NULL, '2023-04-19 05:55:57', '2023-04-19 05:55:57'),
(74, 'Edgar Duran Trejo', 'edgar.duran22@ieb.cat', NULL, '$2y$10$gMdke6CpSfbN0Ub0QXSyVuDjbuPQRk6PYvlMZR45NEGxhiLR1alKS', NULL, '2023-04-19 05:56:08', '2023-04-19 05:56:08'),
(75, 'Adria Santos Alvarez', 'adria.santos22@ieb.cat', NULL, '$2y$10$lJt4sIon/Os05I8IiNXDIuvozXzhucK4yKvskybs5htaj6X3t/.Ay', NULL, '2023-04-19 05:56:19', '2023-04-19 05:56:19'),
(76, 'Pol Catasus Mendoza', 'pol.catasus22@ieb.cat', NULL, '$2y$10$5ZwuIOiXtXiqrxCFexxI6OfG2/pzX1TPR8F9WHiiU1myoFKqeNt96', NULL, '2023-04-19 05:56:20', '2023-04-19 05:56:20'),
(77, 'eric gonzalez', 'eric.gonzalez22@ieb.cat', NULL, '$2y$10$MyoRKEbvLmxbmTUXTmNGlOFk/nV9qMfYCoaSgWd.I7N.p86kztZ.W', NULL, '2023-04-19 05:56:21', '2023-04-19 05:56:21'),
(78, 'Max O’Donnell', 'max.odonnell22@ieb.cat', NULL, '$2y$10$CMSFuM.ASYR5DicXtHZncedg7BsfNng2z93rtDmR5ZN8lSUK4dYnu', NULL, '2023-04-19 05:56:32', '2023-04-19 05:56:32'),
(79, 'Damia Teruel Rosa', 'damia.teruel22@ieb.cat', NULL, '$2y$10$IP/Vr1Izr6lxmbALegsIn.bUoWMz4OPcNTmk7GB6AX1IHeCRceVr.', NULL, '2023-04-19 05:56:39', '2023-04-19 05:56:39'),
(80, 'Leyre Sancho López', 'leyre.sancho22@ieb.cat', NULL, '$2y$10$yIhhpHvkw2EmrNybEmWNdeYHQDnLUxNmkp/83WjqYuFf1hKWwEkIO', NULL, '2023-04-19 05:56:40', '2023-04-19 05:56:40'),
(81, 'Pau velasco garcia', 'pau.velasco22@ieb.cat', NULL, '$2y$10$sL6Jgz7lSql8/.TMvzgvZuH.yc7H6KsBAk7d9MgdxYOvrUOEsl3bC', NULL, '2023-04-19 05:56:50', '2023-04-19 05:56:50'),
(82, 'Biel Riudavets Bargalló', 'biel.riudavets22@ieb.cat', NULL, '$2y$10$gHYNtoC2LkyqDLvnphv3IOxK03Sdl.xG10ar/AOzS.HSO2ba5a1S6', NULL, '2023-04-19 05:56:52', '2023-04-19 05:56:52'),
(83, 'Cali Dimacali', 'cali.dimacali22@ieb.cat', NULL, '$2y$10$oiUfX2M9/7Qu1PeG7A3Rw.WsK7RMssaq6gWDT2cjRwfzc0Xbo43ku', NULL, '2023-04-19 05:57:10', '2023-04-19 05:57:10'),
(84, 'Joan :D', 'Juan.males22@ieb.cat', NULL, '$2y$10$lLtcDxSZqExN8e3PCSHwBOc.D3v9pBthz34JHTDawI2CvMI5NZkSe', NULL, '2023-04-19 05:57:15', '2023-04-19 05:57:15'),
(85, 'zoe iglesias', 'zoe.iglesias21@ieb.cat', NULL, '$2y$10$8s7X/RhEhFzto/gEfZcbHeKinqEYM46eVoT.OVSYGp/NtBQUPjoK2', NULL, '2023-04-19 05:57:41', '2023-04-19 05:57:41'),
(86, 'Satvir Singh', 'satvir.singh22@ieb.cat', NULL, '$2y$10$2tKH9gTj5XEgfT2V20Lutuzxrc8pd8e9M649OgV4GDfIV20GoEdpq', NULL, '2023-04-19 05:58:18', '2023-04-19 05:58:18'),
(87, 'Melissa', 'ana.garcia22@ieb.cat', NULL, '$2y$10$kO42BV9UFy6GP669RfhUb.OOYjC1F6zQhodjlsoWong5pwRWfpN9S', NULL, '2023-04-19 05:58:30', '2023-04-19 05:58:30'),
(88, 'Adam Essalmi', 'adam.essalmi21@ieb.cat', NULL, '$2y$10$q2lBtzfipfqg2hmsiEhJqOrr9oEiPSvnrW7F4DTEDYn2Os7pf/6T6', NULL, '2023-04-19 05:59:06', '2023-04-19 05:59:06'),
(89, 'iris egea llamas', 'iris.egea22@ieb.cat', NULL, '$2y$10$yhvLJEUGkjaIoHuyBuhi5ejEhiHeGUBiUNGSJFMpgBBX4pQ99uwAu', NULL, '2023-04-19 06:00:46', '2023-04-19 06:00:46'),
(90, 'Louis Sela', 'louis.sela22@ieb.cat', NULL, '$2y$10$iGNNHRT4bm/rfPAhAmQsEOOwyOdFd/KRUc6gTV6yGmCF95yWhtISq', NULL, '2023-04-19 06:04:24', '2023-04-19 06:04:24'),
(91, 'Javi', 'javier.flores22@ieb.cat', NULL, '$2y$10$he/sto1iRCwkbsk1V7zb4OSsZo3BYr9AeLuc.LJFf9E5MB.E/HV72', NULL, '2023-04-19 06:52:46', '2023-04-19 06:52:46'),
(92, 'Tao', '1cf.taolopreste.aites@gmail.com', NULL, '$2y$10$nZOIkqtYkSZPhkrFAOj8nuTcyEKgrcdbyXW7YEU3zr6y./i.YvbCi', NULL, '2023-04-19 07:05:38', '2023-04-19 07:05:38'),
(93, 'Nerea Bermúdez Amaya', 'nerea.bermudez22@ieb.cat', NULL, '$2y$10$LkRh6JRA39mF.dcdQXL.9eGuCgfOAG9tNKRV8ZKGg6BaEcg.TsjsG', NULL, '2023-04-19 08:04:48', '2023-04-19 08:04:48'),
(94, 'Pol Tafalla', 'pol.tafalla22@ieb.cat', NULL, '$2y$10$KQSxl7QxdiPRpSJsukjc5Ob6bH3bNEitycDbblD0DFdq2W/Xzav7K', NULL, '2023-04-19 08:16:15', '2023-04-19 08:16:15'),
(95, 'Patrick Gasior', 'patrick.gasior22@ieb.cat', NULL, '$2y$10$IFg5BV0Xrk5JPItEvCc.L.mCVcxbXuosVh73NAsVJauvtOHLxuwQC', NULL, '2023-04-19 08:17:04', '2023-04-19 08:17:04'),
(96, 'Lucía Hernández Zuluaga', 'lucia.hernandez22@ieb.cat', NULL, '$2y$10$CYHkCqeqSO/yHKZomZLjweJcA/HL5grlxOdmfmrOa9vpRwM6kz.sO', NULL, '2023-04-19 08:19:40', '2023-04-19 08:19:40'),
(97, 'Pau Andaluz Roca', 'pau.andaluz20@ieb.cat', NULL, '$2y$10$HiycIYIJBwoWvzCk1B.Ly.dz/XE7maeIio8PUTeVDuUUtmA24qNyu', NULL, '2023-04-19 10:30:50', '2023-04-19 10:30:50'),
(98, 'Yago Piña', 'yago.pina22@ieb.cat', NULL, '$2y$10$F/t.0w3fq5aEbhbKINdguO.NdnS7YE8BrdBSY25vBfxpb8HtDJc.a', NULL, '2023-04-19 10:30:57', '2023-04-19 10:30:57'),
(99, 'Aldan Marcos Lopez', 'aldan.marcos22@ieb.cat', NULL, '$2y$10$NZTBNzIVE05cTFHzLQ5rxOtaOx8NL/ZI1WBcmR36Ge2zDk.Ep11Nm', NULL, '2023-04-19 10:31:00', '2023-04-19 10:31:00'),
(100, 'Emma', 'emma.benito20@ieb.cat', NULL, '$2y$10$pFsMOeB0zTpHIDD2zjz88uuHL0vVFOomFqdCYPL3X/S0i9yCWRRpe', NULL, '2023-04-19 10:31:18', '2023-04-19 10:31:18'),
(101, 'Marc Arjona', 'marc.arjona22@ieb.cat', NULL, '$2y$10$VKnR3fl4K5llVYuxrsgv1uXCShAVqEUzDAjUi2NN.AlPypGmQmxYG', NULL, '2023-04-19 10:31:30', '2023-04-19 10:31:30'),
(102, 'Alejandro', 'alejandro.ramirez22@ieb.cat', NULL, '$2y$10$OyQ71Y2cq3ytdyo2A6QydOQnU93MZx17dKaz2wGkTWFTyBhCac.xS', NULL, '2023-04-19 10:31:48', '2023-04-19 10:31:48'),
(103, 'Jan', 'jan.ruiz22@ieb.cat', NULL, '$2y$10$tQA9HqEIMNzj.lAd2Set3uHrsZzUcbBNPbC84ftKdLXxh2qyJxR1.', NULL, '2023-04-19 10:32:47', '2023-04-19 10:32:47'),
(104, 'Alejandro Sánchez Lastra', 'alejandro.sanchez22@ieb.cat', NULL, '$2y$10$T2CQHalm5dGYAp5wvS3s2udLlOJuGCNFAOqSGK5uPfy2l/H8REm4y', NULL, '2023-04-19 10:35:10', '2023-04-19 10:35:10'),
(105, 'Pol Martin Calvo', 'pol.martin-pero22@ieb.cat', NULL, '$2y$10$Omzs/gYd7w7/DKQjoK2nJuOo8gEop8HLhWbxCUi6/jcVWutvzsRWu', NULL, '2023-04-19 10:35:21', '2023-04-19 10:35:21'),
(106, 'Xavier Gassó', 'xavier.gasso22@ieb.cat', NULL, '$2y$10$1H8olO38zLtuDbhyXy3OaeuODS2P12pl3IEZ618RyjYBVBvdwXSpe', NULL, '2023-04-19 10:37:49', '2023-04-19 10:37:49'),
(107, 'Romina García Macías', 'romina.garcia22@ieb.cat', NULL, '$2y$10$MKlbyPz.WxXunpmtV3G7TOJwggsLhpivGCnvxegE17PcX1gE9zrbG', NULL, '2023-04-19 10:37:51', '2023-04-19 10:37:51'),
(108, 'Judit Soria', 'judit.soria22@ieb.cat', NULL, '$2y$10$f/JjLHk/LUex5t.xJVdpzuXt.ltK8EyYR461qTxGajj1sA1qSlfGq', NULL, '2023-04-19 10:37:54', '2023-04-19 10:37:54'),
(109, 'María Amor López', 'maria.amor22@ieb.cat', NULL, '$2y$10$19LBV22CGg6G3yYf2JvKqO7eMKxz3zadytYLCTqPQAvBNrrNMEqym', NULL, '2023-04-19 10:38:38', '2023-04-19 10:38:38'),
(110, 'Abril Torrents Miro', 'abril.torrents22@ieb.cat', NULL, '$2y$10$onZ1UaDbD1NOVOqT4FbdsOcfdJH8wsAI7yCZsX7UyIDMMYwag55TK', NULL, '2023-04-19 10:39:09', '2023-04-19 10:39:09'),
(111, 'Candela Espada', 'candela.espada22@ieb.cat', NULL, '$2y$10$b7Rjz087jTBwAcaDg3vOMelu5MbUp16TJBOn3tGMpYEvWvi.ZoBKW', NULL, '2023-04-19 10:40:05', '2023-04-19 10:40:05'),
(112, 'Santiago Quiroga Silva', 'santiago.quiroga22@ieb.cat', NULL, '$2y$10$UIMZyMA9H3vUNPie6CtL9u9iUerJyqoh2eNfMeo9O6nXrU1ISVnsO', NULL, '2023-04-19 10:43:44', '2023-04-19 10:43:44'),
(113, 'Hamza', 'hamza.halhoul22@ieb.cat', NULL, '$2y$10$iuQiYhx0YNeOnn.WLIqgy.eHn1RwgX12vFGCn7C8fuBaYx80BlUYe', NULL, '2023-04-19 10:44:13', '2023-04-19 10:44:13'),
(114, 'Valèria', 'valeria.pons22@ieb.cat', NULL, '$2y$10$ciUJkDeNJBmR7g0vW/qyJef3uOEFUCHVex4RCqAhVLZRay5MYjTvq', NULL, '2023-04-19 10:45:27', '2023-04-19 10:45:27'),
(115, 'miriam', 'miriam.llorente22@ieb.cat', NULL, '$2y$10$TrB/yZGMPXXkyQgxOsPjSe5hX5H1MjwvGonMOVyANnLKb3upswbbe', NULL, '2023-04-19 10:48:36', '2023-04-19 10:48:36'),
(116, 'Ilias Afelad', 'ilias.afelad22@ieb.cat', NULL, '$2y$10$T2ei..P/3FHiqylpuSs4JuDYNalUTmiHwqPaeFU/RoFFGT1OnHXyK', NULL, '2023-04-19 12:05:21', '2023-04-19 12:05:21'),
(117, 'Aitor Lopez', 'aitor.lopez22@ieb.cat', NULL, '$2y$10$rkwSQnDriDc4lb2PE4iYr.6.o.G34WcTX0rUM2bhtmVRcoREwee/2', NULL, '2023-04-19 12:05:23', '2023-04-19 12:05:23'),
(118, 'sebastian fernandez', 'sebastian.fernandez22@ieb.cat', NULL, '$2y$10$XdqvNkA3R.tXFJ73wa0sL.5w2MmSBuxazRhe4LAzCwQV20UwBwcOC', NULL, '2023-04-19 12:05:34', '2023-04-19 12:05:34'),
(119, 'Vvazquex7', 'victor.pascual22@ieb.cat', NULL, '$2y$10$aN2unxbZawlapoo6esBmTe4kCUKsH3p2iqypDzU3lZtlMcktnKbHe', NULL, '2023-04-19 12:06:43', '2023-04-19 12:06:43'),
(120, 'Daniel Lucea Pons', 'daniel.lucea22@ieb.cat', NULL, '$2y$10$mBH3pnpmpVt.orncmZaD2eRVcOFh4csfF7I954dR9OmoeK.xCUFHa', NULL, '2023-04-19 12:07:05', '2023-04-19 12:07:05'),
(121, 'Joan Rull Rodés', 'joan.rull22@ieb.cat', NULL, '$2y$10$Gsq6BU0DQqIGVRFXqZp7jedWlucJjnNPo5q/u4b9.1GvVIWwHYFPG', NULL, '2023-04-19 12:09:31', '2023-04-19 12:09:31'),
(122, 'Maikol paz', 'maikol.aites@gmail.com', NULL, '$2y$10$TdPiWee04GlFtrc8avQp5.GQ5x596L33jr4VAbB0OWM7K0sRwCiuO', NULL, '2023-04-19 12:44:30', '2023-04-19 12:44:30'),
(123, 'Laia Bola Simó', 'laia.bola22@ieb.cat', NULL, '$2y$10$Rk6XSVmqLw43YZsBzyFAfuDMwZycNAukO8OgZGlv1psm/enNwTZWe', NULL, '2023-04-19 12:57:27', '2023-04-19 12:57:27'),
(124, 'Isaac Auñon Muñoz', 'isaac.aunon21@ieb.cat', NULL, '$2y$10$6ewoqgatc8I2uUdFCT/Lv.CSdBYcKqhSnwuoxrXbVii1dXA7b8Ghq', NULL, '2023-04-19 16:07:53', '2023-04-19 16:07:53'),
(125, 'Elias Villanueva', 'elias.villanueva21@ieb.cat', NULL, '$2y$10$dFjLUVNyjdf4SdAmpzpCmOyqDIHhGljYvDXKz0USPRhEItSC3oaEu', NULL, '2023-04-19 16:09:32', '2023-04-19 16:09:32'),
(126, 'Andreu  Roca', 'andreu.roca21@ieb.cat', NULL, '$2y$10$Cq29lxleLdlKv2pmuTHh6esdCzOQOR6ZVhoXugcJ1ksYqc16ejPDq', NULL, '2023-04-19 16:14:41', '2023-04-19 16:14:41'),
(127, 'Iker Odena', 'Iker.odena21@ieb.cat', NULL, '$2y$10$scG3PHs9Wr.boUgELNzkt.HVbclcYicdJs.C9nxHNJYWI7/CEFlT2', NULL, '2023-04-19 16:22:56', '2023-04-19 16:22:56'),
(128, 'Joel Fragoso', 'joel.fragoso21@ieb.cat', NULL, '$2y$10$PeJ3BksrBxeop1ryugooHOr/8lDcnp.ro7ENkx/aCcSamjo3EUUSa', NULL, '2023-04-19 16:24:53', '2023-04-19 16:24:53'),
(129, 'Ismael Abolafia', 'ismael.abolafia22@ieb.cat', NULL, '$2y$10$tJOW6C4Djs0n9M7rN.1RPuR1QDAda/Gb6/fKxC.BdK8IDGd7ZpG5a', NULL, '2023-04-19 16:28:00', '2023-04-19 16:28:00'),
(130, 'Aina giribets', 'aina.giribets22@ieb.cat', NULL, '$2y$10$pl5E3bXckM984LjxJrL3sOXc2NK5IkYoBENUu7z5oQeaZ.Bu1MTlS', NULL, '2023-04-19 16:30:33', '2023-04-19 16:30:33'),
(131, 'Aleix Macias', 'aleix.macias21@ieb.cat', NULL, '$2y$10$ayahzo4JG0MnCKjBgyvO9uBytTLgpQ7C27dV4ojwBRJw7QwqDH0K2', NULL, '2023-04-19 16:35:38', '2023-04-19 16:35:38'),
(132, 'David Vidal', 'david.vidal21@ieb.cat', NULL, '$2y$10$XrRaqYu6YY2GuUmgHiyk3Ojj7wVTWdSKOEmtiBxs2bCYpTRmVYkqi', NULL, '2023-04-19 16:36:10', '2023-04-19 16:36:10'),
(133, 'carmen', 'carmen.lapido21@ieb.cat', NULL, '$2y$10$IbCQ8bpAQ/BDsSQ0hKmVx.N1Vu7fCgIpSTHM8jk5km5z.Vw/yHBIy', NULL, '2023-04-19 17:01:35', '2023-04-19 17:01:35'),
(134, 'Marcel Seller Marias', 'marcel.seller21@ieb.cat', NULL, '$2y$10$KJGVk/DGKI8G1r2qwGe5beiscUS0eiMnCAgU6wv2q1du1jSExPSwm', NULL, '2023-04-19 17:38:31', '2023-04-19 17:38:31'),
(135, 'oriol santillana lopez', 'oriol.santillana21@ieb.cat', NULL, '$2y$10$bn.Iftqem6WPT78TfcU31.qd.lN3xqYnxR.3iCuMJMB3r78qfZqrS', NULL, '2023-04-19 18:42:47', '2023-04-19 18:42:47'),
(136, 'Lara Garcia Galcera', 'lara.garcia21@ieb.cat', NULL, '$2y$10$Tgz6burB1MZ71lmJNQwfXe3AVnxxGByoUiyhQE.6tdGP.imoWwiMq', NULL, '2023-04-19 19:14:08', '2023-04-19 19:14:08'),
(137, 'Izan Sola Benzal', 'izan.sola@institutaliments.barcelona', NULL, '$2y$10$Vn61B4X.DsyRw3ZI/TeG5OhX/8vG.z2/Y8txm7lMgqsy728yjlGZO', NULL, '2023-04-19 19:25:53', '2023-04-19 19:25:53'),
(138, 'Ethan García Torres', 'ethan.garcia21@ieb.cat', NULL, '$2y$10$ckZgRZkNMlZXoJ3EIHlX9eTHuNvO4YxRbrpYpvrDFkoeOen41Ni.W', NULL, '2023-04-19 19:59:39', '2023-04-19 19:59:39'),
(139, 'Jessica Rus Noguera', 'jessica.rus21@ieb.cat', NULL, '$2y$10$jWsaxI/uW4p3mciGC5Pgyuw9Lt5fQ0lTYARb4UMvsP1RZmcCnhK0G', NULL, '2023-04-19 20:12:44', '2023-04-19 20:12:44'),
(140, 'Paola Galvez Martin', 'paola.galvez21@ieb.cat', NULL, '$2y$10$SatqMWqcPsOFwK1trNMtaOLAkBKje3YFqmR6w5.j43R4ko47r4u3a', NULL, '2023-04-19 20:13:57', '2023-04-19 20:13:57'),
(141, 'Berta', 'berta.palazuelo@ieb.cat', NULL, '$2y$10$5JHhHXatCTj4krSLtb1Ir.adbHJqlY680L1QxQ4YSPFQSyq8ihUDW', NULL, '2023-04-19 20:27:38', '2023-04-19 20:27:38'),
(142, 'Lola Moreno', 'lola.moreno21@ieb.cat', NULL, '$2y$10$VoroPM6nY3U1EPWVyuLjZu8sZknpt7mlrtPhUUiCzrq7FLRDE.4gG', NULL, '2023-04-19 20:43:11', '2023-04-19 20:43:11'),
(143, 'Casti  Garcia', 'casti.garcia21@ieb.cat', NULL, '$2y$10$z8SW3zhjIRPVQuYtsWzk0OuV5/2UVEU/hzzr84DKSQ9Wu1DZYcUnO', NULL, '2023-04-19 21:01:13', '2023-04-19 21:01:13'),
(144, 'Lluis  Pons', 'lluis.pons22@ieb.cat', NULL, '$2y$10$cYtIrN4Cv.0SX7ds1bTIXeJzn4CQac0dbm5we5jevFAniNRCpi73m', NULL, '2023-04-19 23:05:01', '2023-04-19 23:05:01'),
(145, 'Iker Garrido pinilla', 'iker.garrido21@ieb.cat', NULL, '$2y$10$jmwu16e/bSXzzRU0izl/R.L7l2enbaRc4ULn.CY0hXh1DoOOEuuyS', NULL, '2023-04-20 05:07:46', '2023-04-20 05:07:46'),
(146, 'Alex Sierra Perich', 'alex.sierra21@ieb.cat', NULL, '$2y$10$hDgjMv7sJJOOUyZutF4LPeM4P4AI1LAhjuje1YxXcKzu2g5a5zSsq', NULL, '2023-04-20 05:32:32', '2023-04-20 05:32:32'),
(147, 'Pau Bosch', 'pau.bosch21@ieb.cat', NULL, '$2y$10$kMGgltidMxu7hycIyAH12OGkCrW8.r0rcFJ3SXk3.lXQyNlBrZYIy', NULL, '2023-04-20 06:06:36', '2023-04-20 06:06:36'),
(148, 'Guillem Esteban Ribera', 'guillem.esteban@institutaliments.barcelona', NULL, '$2y$10$srjF5RIDItyA2FgARjbuN.r0V4wEpKzqVKk/QROM6yz03K9p8/NQa', NULL, '2023-04-20 06:13:21', '2023-04-20 06:13:21'),
(149, 'carlos perez', 'carlos.perez@institutaliments.barcelona', NULL, '$2y$10$d1cSjOSYmCHNa3Wkzs4PtOeaAAd0tLU4Ify3Ymhn.MlWCY0tJ5xZm', NULL, '2023-04-20 06:16:50', '2023-04-20 06:16:50'),
(150, 'Gerard Continente Garcia', 'gerard.continente@institutaliments.barcelona', NULL, '$2y$10$ax.YP3Fzo0b1CMKcvSS/iOH9mfpxjwn57dTpt/49mqGD/FBIM5tsO', NULL, '2023-04-20 06:17:09', '2023-04-20 06:17:09'),
(151, 'Foix Güell', 'foix.guell@institutaliments.barcelona', NULL, '$2y$10$6q3snn4cy.JfJj2DBoJMNOa/zYh9p81sLcCCYPut9lfl1eIb7K4m.', NULL, '2023-04-20 06:17:57', '2023-04-20 06:17:57'),
(152, 'Laura', 'laura.saneiro@institutaliments.barcelona', NULL, '$2y$10$V.1DSs81WOLmnaLuXHGpgOAV6rD6neK5AbnGuh5gwVe9maGTrWR.q', NULL, '2023-04-20 06:18:27', '2023-04-20 06:18:27'),
(153, 'Noelia', 'noelia.bou@institutaliments.barcelona', NULL, '$2y$10$gMi5qMrZCQ1mHsHst9dhjesM0.Dh/ibVsnU9B7XRmaSUeyDbVnb1K', NULL, '2023-04-20 06:20:46', '2023-04-20 06:20:46'),
(154, 'Ona', 'ona.muntane@institutaliments.barcelona', NULL, '$2y$10$DCx.j8dqIgJJsfdUYwtgD.Am3yFLGpMI8bOEHaSAKZXrvcfI3q7v.', NULL, '2023-04-20 06:22:32', '2023-04-20 06:22:32'),
(155, 'Aleix', 'aleix.ordonez@institutaliments.barcelona', NULL, '$2y$10$Q9CA852g1PI0zJJhjRmzS./0ciRUioEvh7VHTCQ0RAYUgIB9XG.im', NULL, '2023-04-20 06:46:30', '2023-04-20 06:46:30'),
(156, 'Jana', 'jana.lopez@institutaliments.barcelona', NULL, '$2y$10$z3LfgQI31ouX6A9smj/LquZti3jAD78tKNjdp9PugKVxniLu2t3zK', NULL, '2023-04-20 06:48:27', '2023-04-20 06:48:27'),
(157, 'Albert Trillas Amell', 'albert.amell@institutaliments.barcelona', NULL, '$2y$10$B/9z6F3KVAnGm8apyLMrk.iTJspGYYWITWnAJoSajnBLNT8r8tbaq', NULL, '2023-04-20 06:49:29', '2023-04-20 06:49:29'),
(158, 'Oriol Parrilla Estall', 'oriol.parrilla@institutaliments.barcelona', NULL, '$2y$10$5ExXF1cPZshDW/ftcWfQguWnbzXErQyepbZ9Nv3ZpDyvayAm5eefO', NULL, '2023-04-20 06:49:38', '2023-04-20 06:49:38'),
(159, 'Brais Mérida Rubio', 'brais.merida@institutaliments.barcelona', NULL, '$2y$10$hyMCY4kB441ziF/rJBTeSOrxMLdq5uWw6awZVzc1b6cOvWfBMBruO', NULL, '2023-04-20 06:54:45', '2023-04-20 06:54:45'),
(160, 'fran Hidalgo Fernandez', 'francisco.hidalgo22@ieb.cat', NULL, '$2y$10$JgUMicCe82tgN6wTHHRgM.pk./ilRTW3ZXoYuF0g3g4XCibEZrEzS', NULL, '2023-04-20 07:07:04', '2023-04-20 07:07:04'),
(161, 'Sergio Mollá Minuesa', 'sergio.molla22@ieb.cat', NULL, '$2y$10$68bgw.JpP.jlnL89ykXqIuJzzwcnR5jDxstb58NtdW9pPtwUXo31y', NULL, '2023-04-20 07:08:32', '2023-04-20 07:08:32'),
(162, 'Júlia Clavaguera', 'julia.clavaguera22@ieb.cat', NULL, '$2y$10$wSIfWKVo47ZDEFZs5AxWEe5o5VRgL021hc5Q6YJHCmuZcjy8LKMY.', NULL, '2023-04-20 07:08:55', '2023-04-20 07:08:55'),
(163, 'Judith Ortega Cuello', 'judith.ortega22@ieb.cat', NULL, '$2y$10$P0P0LutYCMd62BMSX/nT.OoUtXM4IXEbMubDISlY4pzawpG0qjJEe', NULL, '2023-04-20 07:08:59', '2023-04-20 07:08:59'),
(164, 'Natalia', 'natalia.rodriguez22@ieb.cat', NULL, '$2y$10$eaHChu.fQ7OWipzUVT/.f.toL4uQJnJNdN7xngFe1rrrbKWUwyBoS', NULL, '2023-04-20 07:09:13', '2023-04-20 07:09:13'),
(165, 'Nil', 'nil.dotu22@ieb.cat', NULL, '$2y$10$47vnzLKzM1gnzKTECRG6lOWsfKa39dVkiinS9EI71fd33gLVrTcdu', NULL, '2023-04-20 07:10:32', '2023-04-20 07:10:32'),
(166, 'Diego Ramirez', 'diego.ramirez22@ieb.cat', NULL, '$2y$10$ul5LnvOMxsAVyUzIPI8YEO6ZHMHJG.b/tb/.gwNmbN3OPrLFACQtW', NULL, '2023-04-20 07:10:32', '2023-04-20 07:10:32'),
(167, 'Pau Cutchet', 'pau.cutchet22@ieb.cat', NULL, '$2y$10$pGf0N6ZrhJBotb8TSP.PJOcmQEPjgkvKvRjHsBna7UMHYfpq8q5jm', NULL, '2023-04-20 07:10:39', '2023-04-20 07:10:39'),
(168, 'Hugo Rada Mora', 'hugo.rada22@ieb.cat', NULL, '$2y$10$01U.C5YUaGrxcnjD420ce.Kg.DDn/4IdKVCAIVMw8eGr7ViWrjGY6', NULL, '2023-04-20 07:10:43', '2023-04-20 07:10:43'),
(169, 'Pablo Suarez Miralles', 'pablo.suarez22@ieb.cat', NULL, '$2y$10$yZUuFEn8wZll0z0J4GPaeuTlwcJRAyGU/97g/iAAzT3.F/1sNU07C', NULL, '2023-04-20 07:10:43', '2023-04-20 07:10:43'),
(170, 'Albert Redondo', 'albert.redondo22@ieb.cat', NULL, '$2y$10$1GdkrN8aG8PXq9lY/zCtFu8xLveY/NAWCo36p9ZvFBMzD64ewpmHS', NULL, '2023-04-20 07:10:50', '2023-04-20 07:10:50'),
(171, 'Jordi Navarro Maestro', 'jordi.navarro22@ieb.cat', NULL, '$2y$10$yAJ44yYz.cL2gM7oRr3Aruuw4JvM7S6/UNYh5kxCKGVzpRQ6wllbO', NULL, '2023-04-20 07:10:59', '2023-04-20 07:10:59'),
(172, 'Jhonyer Estiben Gonzalez', 'jhonyer.gonzalez22@ieb.cat', NULL, '$2y$10$2gdWbDZwW8Cbdz8.gyG.WeWhRgbdwSez4antuiYvjIjHE9ntke1Wq', NULL, '2023-04-20 07:12:07', '2023-04-20 07:12:07'),
(173, 'Alberto', 'alberto.cruz21@ieb.cat', NULL, '$2y$10$RPw4nlp3nJpXi11s9iQh1etv9sRMUl7EaI8Nq9qmBFhJ9O83HpC1S', NULL, '2023-04-20 07:12:53', '2023-04-20 07:12:53'),
(174, 'Carla', 'carla.marin22@ieb.cat', NULL, '$2y$10$oLE9NPIJBqCkM6RKoX9WPOFa3nZD/jLKhok4IMe1LaLa./e6nIDDa', NULL, '2023-04-20 07:14:58', '2023-04-20 07:14:58'),
(175, 'Lidia molina aguilera', 'lidia.molina22@ieb.cat', NULL, '$2y$10$ND/K6rMaI3DuqwaTnVuOju6H5LI0uPbQ5oi/fCzKdK/twNWbkYy0O', NULL, '2023-04-20 07:16:15', '2023-04-20 07:16:15'),
(176, 'Itssia  Marti martin', 'itssimarti22@ieb.cat', NULL, '$2y$10$gX6byylLEpETxcMWwCCd5OFInSXy..13rBa8mo/k181Mn0pI78rUy', NULL, '2023-04-20 07:17:51', '2023-04-20 07:17:51'),
(177, 'Ian Barclay', 'ian.barclay22@ieb.cat', NULL, '$2y$10$NgPjTYbz4hizW2DUwj6A0et/OY1f1h/q89uWMP3s94ZAbSbm0fdi.', NULL, '2023-04-20 07:25:51', '2023-04-20 07:25:51'),
(178, 'Kevin meneses', 'kevin.meneses22@ieb.cat', NULL, '$2y$10$fSLM71deUEYKLtU6EAlJkesXlfl8IhBkF0r/9RAD8jq9M57CF1sXa', NULL, '2023-04-20 07:26:17', '2023-04-20 07:26:17'),
(179, 'Dilan McIntyre', 'dilan.mcintyre22@ieb.cat', NULL, '$2y$10$ceffiGJAbX09mO4/6kxk8u.Rc6F0ZMAsz1YEonhpLSGAPqEKU6KhC', NULL, '2023-04-20 07:28:04', '2023-04-20 07:28:04'),
(180, 'Blanca Rosell', 'blanca.rosell22@ieb.cat', NULL, '$2y$10$20DGv67lE6m8aTrQWPRQO.b0kGbDQBzhdjdqBo2i1bA68hUbDz0v.', NULL, '2023-04-20 07:29:20', '2023-04-20 07:29:20'),
(181, 'Ibai', 'ibai.panes22@ieb.cat', NULL, '$2y$10$/bj/2QPsGMwJvWoCBq1/juUQ5SV3VkwZOASp3sNqmOPTyedh152pK', NULL, '2023-04-20 07:31:35', '2023-04-20 07:31:35'),
(182, 'Rubén Villarino Martínez', 'ruben.villarino21@ieb.cat', NULL, '$2y$10$9B9/PJZ5QU94hGgWy8LyeO07KDu.vBMul8pH4cmRA2X3Azp7II2rS', NULL, '2023-04-20 07:51:31', '2023-04-20 07:51:31'),
(183, 'Arnau Sábado Trilla', '1cf.arnausabado.aites@gmail.com', NULL, '$2y$10$b9u/8MhxUsz3Ag1r7/cZZOvP2C9ptWLSfRegt0LJLOZOOG1BZqqrq', NULL, '2023-04-20 08:33:54', '2023-04-20 08:33:54'),
(184, 'Angela Moreno', '1CF.angelamoreno.aites@gmail.com', NULL, '$2y$10$yspF3tATl3ODe6hiez8VDemASpTNoepNCRAaAGyfbzV4.p0KKfuKa', NULL, '2023-04-20 08:34:02', '2023-04-20 08:34:02'),
(185, 'Izan Martos', 'izan.martos21@ieb.cat', NULL, '$2y$10$mY5bS8moGSIIg3/wY1yJVOUqR91KpWxcfSDLoo41kzzr09xRIFwr.', NULL, '2023-04-20 08:37:56', '2023-04-20 08:37:56'),
(186, 'Daniel Alzuria', 'daniel.alzuria21@ieb.cat', NULL, '$2y$10$214KqU/ZRPKBbaF8WZqRquhhyOO6nFutLU8Gn.M.bNLoMAfWyvaHq', NULL, '2023-04-20 08:37:57', '2023-04-20 08:37:57'),
(187, 'Arnau Cruz', 'arnau.cruz21@ieb.cat', NULL, '$2y$10$fVHpN.WEr2xzq1OCk11se.rMQB4I7U6rN/LDLQ4ETjyhBU0dTe13m', NULL, '2023-04-20 08:38:03', '2023-04-20 08:38:03'),
(188, 'Minerva Díez', 'minerva.diez@institutaliments.barcelona', NULL, '$2y$10$B9Es/mPuW3m1PKHMTW5R5O3kgwPKbGS0MHJ6M/U.rz4SUsGsD2mYO', NULL, '2023-04-20 08:39:32', '2023-04-20 08:39:32'),
(189, 'Joel Fallaras', 'joel.fallaras21@ieb.cat', NULL, '$2y$10$rlB2c/.wDsC2uVqGt59OkOnUP8p7lYbcNFt3wRe0BumHwshg2r1Hq', NULL, '2023-04-20 08:40:13', '2023-04-20 08:40:13'),
(190, 'Aymane El Bakkali Aoumi', 'aoumi.elbakkali22@ieb.cat', NULL, '$2y$10$TLANQe8Icbk74tA86TI77u/4sizVAEVYOwcaIXFptTnHy7sr/.fCa', NULL, '2023-04-20 09:09:32', '2023-04-20 09:09:32'),
(191, 'Enrique', 'enrique.gimeno22@ieb.cat', NULL, '$2y$10$n1ssyA52/QU8w4ns3NJjPO4yvRUuld48cbtYXTaT6Tp40x.Q4kr.6', NULL, '2023-04-20 09:10:45', '2023-04-20 09:10:45'),
(192, 'Carles cortés', 'carles.cortes20@ieb.cat', NULL, '$2y$10$3KmLlmKMmV.gc3h1kp68IuX4qT4vHppCy5gMd9rGk42XmGHtf/VrS', NULL, '2023-04-20 09:17:09', '2023-04-20 09:17:09'),
(193, 'Carles Aguilar Fernández', 'carles.aguilar22@ieb.cat', NULL, '$2y$10$Nu/YAcb9VE.d9UCKJNycDuZ4uNJ2y08LiSebnlndzwlFkKpGmODIu', NULL, '2023-04-20 09:17:36', '2023-04-20 09:17:36'),
(194, 'Daniel Carcelen Herrero', '1cf.danielcarcelen.aites@gmail.com', NULL, '$2y$10$S1i8it8bOIZ8iH1d.m2vM.maigGJh/MY7RVi3Yn.99/ytRqELChJ6', NULL, '2023-04-20 09:18:11', '2023-04-20 09:18:11'),
(195, 'Joel', '1cf.joelsanchez.aites@gmail.com', NULL, '$2y$10$S4XTvEBgN1ax7Z2VNxWnBeIXldoyiJy/CeMf/OoHC5BYJXRqmbhsi', NULL, '2023-04-20 09:24:07', '2023-04-20 09:24:07'),
(196, 'joel orlach', 'joel.orlach21@ieb.cat', NULL, '$2y$10$qdPkQJLOhTo9rr8wNKU9zOAjQtHqju.y/LO0gYvlFR6gyBd9UUQ6q', NULL, '2023-04-20 09:25:04', '2023-04-20 09:25:04'),
(197, 'Àlex Fernández Cugat', 'alex.fernandez22@ieb.cat', NULL, '$2y$10$X0mOUcbpd0SjkbYKCXMrH.TCfJWVIj1y8VL1yCHD2W80AsxoRhDxW', NULL, '2023-04-20 11:29:00', '2023-04-20 11:29:00'),
(198, 'Miquel Maestro Cano', 'miquel.maestro22@ieb.cat', NULL, '$2y$10$LUV6MBGQQgeq7miqMg4eAuWtAqTId0mi17jhmzGckkU3CU4SLFpbi', NULL, '2023-04-20 11:29:11', '2023-04-20 11:29:11'),
(199, 'sara izagouaghen', 'sara.izagouaghen22@ieb.cat', NULL, '$2y$10$UHcTgKeEimzl1kmY6Yx/jufVthmsqgcrcPVrd/MT365T9Xi9c0mb6', NULL, '2023-04-20 11:30:41', '2023-04-20 11:30:41'),
(200, 'Laia Piqué Moreno', 'laia.pique22@ieb.cat', NULL, '$2y$10$wVgpYtI0duCHXb9P8UcAoeV6w9PZsi/h4mtY1BTPoXx5MhASTE/xi', NULL, '2023-04-20 11:38:56', '2023-04-20 11:38:56'),
(201, 'Guillermo', 'guillermo.abreu@institutaliments.barcelona', NULL, '$2y$10$BJOeUb8GqYWCwx51x8wfh.TFKtWjdeckRcmsoTtewEb2.1puGUPpG', NULL, '2023-04-20 13:25:59', '2023-04-20 13:25:59'),
(202, 'Eimy', 'eimy.ronquillo@institutaliments.barcelona', NULL, '$2y$10$dBKMgND6VgMzqlJR7l5e5OskJ4a5Fdh/oBnAxpIC8ZZpzUqqQYyra', NULL, '2023-04-20 13:41:22', '2023-04-20 13:41:22'),
(203, 'Lidia Esmeralda', 'lidia.navarro@institutaliments.barcelona', NULL, '$2y$10$5HLWW4Vb1eF9tA1FaiXlzeslidx55IbbggauR0/yzaSbN2QGbdY/i', NULL, '2023-04-20 13:43:09', '2023-04-20 13:43:09'),
(204, 'Romilene Rimando', 'romilene.rimando21@ieb.cat', NULL, '$2y$10$svSdNS9XystzXh2F21D4mO26MdW5Itz3.liomwDmaGzvp37dvznru', NULL, '2023-04-20 13:47:54', '2023-04-20 13:47:54'),
(205, 'Ariadna Lopez', 'ariadna.lopez@institutaliments.barcelona', NULL, '$2y$10$ejHT0OqLS.QjuxCGMFPA7uYq3R5uwn4/J3.IBuX2lfrojo.Qe8CcO', NULL, '2023-04-20 14:04:51', '2023-04-20 14:04:51'),
(206, 'Sergi Ustrell Casas', 'sergi.ustrell21@ieb.cat', NULL, '$2y$10$wrLAIZ8VraqHnnDCRt1dwOqV4vFykboSzL3cZZBysr56ft.qC3EF.', NULL, '2023-04-20 15:16:49', '2023-04-20 15:16:49'),
(207, 'Miguel Loza', 'miguel.loza22@ieb.cat', NULL, '$2y$10$x4OArq8yHgzA3zCT7QonAeDLrE4ncTjIGiHzXjI2N0O.qBXWIlB0q', NULL, '2023-04-20 16:31:26', '2023-04-20 16:31:26'),
(208, 'Arnau Simon', 'arnau.simon22@ieb.cat', NULL, '$2y$10$oxrI/tk1HRm2jR7uW17UT.lNQkSgNaCbbqhLvkp6BdJ0NTboN.l5e', NULL, '2023-04-20 16:31:26', '2023-04-20 16:31:26'),
(209, 'Pau Casas', 'pau.casas22@ieb.cat', NULL, '$2y$10$2ndvEkp3a0V6MHEgFI72NeA4bnRRt5ko5tuYQS1.hnGwR5yavWZta', NULL, '2023-04-20 16:53:30', '2023-04-20 16:53:30'),
(210, 'Adrià', 'adria.hernando22@ieb.cat', NULL, '$2y$10$1OnUC1svD2Uq1Mb.igQPleL3/F/QgijBnRpIlx1EZCnRQ744qQwnG', NULL, '2023-04-20 16:54:29', '2023-04-20 16:54:29'),
(211, 'Carlos max Perez', 'carlos.perez22@ieb.cat', NULL, '$2y$10$Fwj9TTM6W2YqtUs7/062E.bQA5t6sxMZ44Nbk9FQqWldBtR586cCq', NULL, '2023-04-20 16:55:07', '2023-04-20 16:55:07'),
(212, 'Carles Delgado Blanco', 'carles.delgado22@ieb.cat', NULL, '$2y$10$/qoG/M.tWfrPywLHwxNPJuZe9eiDG3rCFfUucCdQ4F9b2UkgtSItm', NULL, '2023-04-20 16:55:29', '2023-04-20 16:55:29'),
(213, 'David Camargo Puyuelo', 'david.camargo22@ieb.cat', NULL, '$2y$10$FeGpyglNjP1pF45ne2D2TuOSZlnyMLHiqZna74mTKnZvzCXJoR93C', NULL, '2023-04-20 17:30:46', '2023-04-20 17:30:46'),
(214, 'Alex Puertas', 'alex.puertas22@ieb.cat', NULL, '$2y$10$uw4WNpFfTFAXjV3khx43puW.ja5Kg4Ph/iW2Ugrt/BOV3PlOy65n2', NULL, '2023-04-20 17:31:06', '2023-04-20 17:31:06'),
(215, 'David Uriona Plaza', 'david.uriona22@ieb.cat', NULL, '$2y$10$KF/wfabLYk/CfgrKEDKvTuWThglg/RPlmTUYWbuVheXhnXGyvIIWy', NULL, '2023-04-20 17:53:28', '2023-04-20 17:53:28'),
(216, 'Rezi', 'rezi@ieb.cat', NULL, '$2y$10$Fssl6eGD5.adNvLj93aICu7rlFF/f34F7NRiArit7faUm5A7zJzKm', NULL, '2023-04-20 18:33:59', '2023-04-20 18:33:59'),
(217, 'Marc Sistilli', 'marc.sistilli@institutaliments.barcelona', NULL, '$2y$10$kfQMjEDa2Ww.kZf9AEjI7e8sXbIdZ0Vek3OJtI33fSULMuIYT6E2m', NULL, '2023-04-20 19:23:57', '2023-04-20 19:23:57'),
(218, 'Alejandro Montesdeoca', 'rafael.montesdeoca22@ieb.cat', NULL, '$2y$10$Zk0/aaxXd1GIbjnEcPw7w.tJCu3C8ztS620DuOjth3Lapss8KzR6S', NULL, '2023-04-20 19:26:36', '2023-04-20 19:26:36'),
(219, 'Natalia', 'natalia.perez22@ieb.cat', NULL, '$2y$10$nY7I8pZD/9GhXwV5LrP7h.iiVVmNwmA87S4N.38E8xia4/8aG4so6', NULL, '2023-04-20 21:12:00', '2023-04-20 21:12:00'),
(220, 'Victoria Milagros Nazario Cubeños', 'victoria.nazario@institutaliments.barcelona', NULL, '$2y$10$i7U7BPhEPGslAaUohMkGQe6JcNeZx30uRYJDNhBQa9Zj1FbGtSYZe', NULL, '2023-04-20 21:14:02', '2023-04-20 21:14:02'),
(221, 'Joan', 'joan.requena22@ieb.cat', NULL, '$2y$10$W69Lu7RAsgZdZwot7.nIj.Kgq7wNE0GypWYW1Gt7bi/8MaAMZ0b7K', NULL, '2023-04-20 21:16:17', '2023-04-20 21:16:17'),
(222, 'Eva Sofia Herrera Torres', 'evasofia.herrera@institutaliments.barcelona', NULL, '$2y$10$mBMyjqOQJnWy02tTi09h/e0gEDg5pXSOOo9H3t7gqvSz5VJGS.c3S', NULL, '2023-04-20 21:21:59', '2023-04-20 21:21:59'),
(223, 'Valeria', 'valeria.garcia@institutaliments.barcelona', NULL, '$2y$10$0E/ut/R4w6Nvl9vijGwzoOfm1MeplyACohVQx9P/7qQSJtokF4L6e', NULL, '2023-04-20 21:22:01', '2023-04-20 21:22:01'),
(224, 'Nallely Puicón', 'Claranallely.puicon@institutaliments.barcelona', NULL, '$2y$10$DeLaC6QhPE7iWUHFICdIfOz5LIHihSthgd2lDmJsFw2KJ7LZiJSHq', NULL, '2023-04-20 21:45:34', '2023-04-20 21:45:34'),
(225, 'Sami Yagoub', 'sami.yagoub21@ieb.cat', NULL, '$2y$10$o4Rzg18OaNTARKYuMnAfg.5nxJ1ch1Ga/6xkxsVCimHB1gGD9WRie', NULL, '2023-04-20 21:56:08', '2023-04-20 21:56:08'),
(226, 'gisela barriga', 'gisela-estefania.barriga@institutaliments.barcelona', NULL, '$2y$10$msvpnagpACT9f34DUySTmudUu7DF304x2M7EE7ubjPrGwuOucDoVq', NULL, '2023-04-20 22:21:50', '2023-04-20 22:21:50'),
(227, 'Amadeu Pamies Gabin', 'amadeu.pamies21@ieb.cat', NULL, '$2y$10$ng3jnofKMSgkjEMJ3r1KaOZ.4ePEpjh2k9zZ/Q3qZz8qcT7Q1NUS6', NULL, '2023-04-20 23:26:39', '2023-04-20 23:26:39'),
(228, 'Marc', 'marc.delpino22@ieb.cat', NULL, '$2y$10$XpcUfnoKyVSjsEMkbS1k9uaJz3hGr3LfcLo.5Me.GgOt0U353fi.a', NULL, '2023-04-21 05:27:51', '2023-04-21 05:27:51'),
(229, 'Sergi Toirán Pray', 'sergi.toiran21@ieb.cat', NULL, '$2y$10$bbTWYk9meGeivbL62Oud5.9EPREEFZW2gEy7Uys0c3n76pGREyYqu', NULL, '2023-04-21 06:03:52', '2023-04-21 06:03:52'),
(230, 'miguel macias', 'miguel.macias21@ieb.cat', NULL, '$2y$10$zruLC50E1pdjvA2GnSP3.uZi6bDnFh1.WRhqCqAoxM1iR5tKllAqO', NULL, '2023-04-21 07:18:23', '2023-04-21 07:18:23'),
(231, 'Juan Pablo', 'juan.castano@institutaliments.barcelona', NULL, '$2y$10$pCAA4sIizyJs8rewxLrduu1gsgGXTgFmDePfKmdFxWpvRTFJjvspC', NULL, '2023-04-21 07:31:17', '2023-04-21 07:31:17'),
(232, 'Pol Asensio', 'pol.asensio@institutaliments.barcelona', NULL, '$2y$10$6R9oCDhhNa8iqKGdiW3WtenehVOaQZtkskFs5jcgFLVBt4gALtCXC', NULL, '2023-04-21 07:32:11', '2023-04-21 07:32:11'),
(233, 'Marc Villalba Vicente', 'marc.villalba@institutaliments.barcelona', NULL, '$2y$10$pnKxBloL6K40jSv.pSVVT.X87Du1esXnumuv0RzeiU4vTbBM4Bf0y', NULL, '2023-04-21 07:32:41', '2023-04-21 07:32:41'),
(234, 'Anna Cruz', 'anna.cruz22@ieb.cat', NULL, '$2y$10$vdk5G7AAyhXYeIB0Zc3JFOftCA62qADeTA6eloSnYE7vxsPmacsT6', NULL, '2023-04-21 14:23:16', '2023-04-21 14:23:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

CREATE TABLE `usuaris` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correu_confirmat` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activitats`
--
ALTER TABLE `activitats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `activitats_firas`
--
ALTER TABLE `activitats_firas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activitats_firas_id_fira_foreign` (`id_fira`),
  ADD KEY `activitats_firas_id_activitat_foreign` (`id_activitat`);

--
-- Indices de la tabla `firas`
--
ALTER TABLE `firas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firas_id_institut_foreign` (`id_institut`);

--
-- Indices de la tabla `instituts`
--
ALTER TABLE `instituts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservas_id_activitat_fira_foreign` (`id_activitat_fira`),
  ADD KEY `reservas_id_usuari_foreign` (`id_usuari`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_user`
--
ALTER TABLE `rol_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_user_user_id_foreign` (`user_id`),
  ADD KEY `rol_user_rol_id_foreign` (`rol_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuaris_correu_unique` (`correu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activitats`
--
ALTER TABLE `activitats`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `activitats_firas`
--
ALTER TABLE `activitats_firas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `firas`
--
ALTER TABLE `firas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `instituts`
--
ALTER TABLE `instituts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol_user`
--
ALTER TABLE `rol_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activitats_firas`
--
ALTER TABLE `activitats_firas`
  ADD CONSTRAINT `activitats_firas_id_activitat_foreign` FOREIGN KEY (`id_activitat`) REFERENCES `activitats` (`id`),
  ADD CONSTRAINT `activitats_firas_id_fira_foreign` FOREIGN KEY (`id_fira`) REFERENCES `firas` (`id`);

--
-- Filtros para la tabla `firas`
--
ALTER TABLE `firas`
  ADD CONSTRAINT `firas_id_institut_foreign` FOREIGN KEY (`id_institut`) REFERENCES `instituts` (`id`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_id_activitat_fira_foreign` FOREIGN KEY (`id_activitat_fira`) REFERENCES `activitats_firas` (`id`),
  ADD CONSTRAINT `reservas_id_usuari_foreign` FOREIGN KEY (`id_usuari`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `rol_user`
--
ALTER TABLE `rol_user`
  ADD CONSTRAINT `rol_user_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`),
  ADD CONSTRAINT `rol_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
