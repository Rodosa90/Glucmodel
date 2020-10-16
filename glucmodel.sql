-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2020 a las 16:58:21
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `glucmodel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add casos formacion', 7, 'add_casosformacion'),
(26, 'Can change casos formacion', 7, 'change_casosformacion'),
(27, 'Can delete casos formacion', 7, 'delete_casosformacion'),
(28, 'Can view casos formacion', 7, 'view_casosformacion'),
(29, 'Can add casos seguimiento', 8, 'add_casosseguimiento'),
(30, 'Can change casos seguimiento', 8, 'change_casosseguimiento'),
(31, 'Can delete casos seguimiento', 8, 'delete_casosseguimiento'),
(32, 'Can view casos seguimiento', 8, 'view_casosseguimiento'),
(33, 'Can add centro_investigacion', 9, 'add_centro_investigacion'),
(34, 'Can change centro_investigacion', 9, 'change_centro_investigacion'),
(35, 'Can delete centro_investigacion', 9, 'delete_centro_investigacion'),
(36, 'Can view centro_investigacion', 9, 'view_centro_investigacion'),
(37, 'Can add centro_medico', 10, 'add_centro_medico'),
(38, 'Can change centro_medico', 10, 'change_centro_medico'),
(39, 'Can delete centro_medico', 10, 'delete_centro_medico'),
(40, 'Can view centro_medico', 10, 'view_centro_medico'),
(41, 'Can add destino doc', 11, 'add_destinodoc'),
(42, 'Can change destino doc', 11, 'change_destinodoc'),
(43, 'Can delete destino doc', 11, 'delete_destinodoc'),
(44, 'Can view destino doc', 11, 'view_destinodoc'),
(45, 'Can add dietas', 12, 'add_dietas'),
(46, 'Can change dietas', 12, 'change_dietas'),
(47, 'Can delete dietas', 12, 'delete_dietas'),
(48, 'Can view dietas', 12, 'view_dietas'),
(49, 'Can add documentaciones', 13, 'add_documentaciones'),
(50, 'Can change documentaciones', 13, 'change_documentaciones'),
(51, 'Can delete documentaciones', 13, 'delete_documentaciones'),
(52, 'Can view documentaciones', 13, 'view_documentaciones'),
(53, 'Can add ejercicios', 14, 'add_ejercicios'),
(54, 'Can change ejercicios', 14, 'change_ejercicios'),
(55, 'Can delete ejercicios', 14, 'delete_ejercicios'),
(56, 'Can view ejercicios', 14, 'view_ejercicios'),
(57, 'Can add ficherosexportados', 15, 'add_ficherosexportados'),
(58, 'Can change ficherosexportados', 15, 'change_ficherosexportados'),
(59, 'Can delete ficherosexportados', 15, 'delete_ficherosexportados'),
(60, 'Can view ficherosexportados', 15, 'view_ficherosexportados'),
(61, 'Can add gestionpedidos articulos', 16, 'add_gestionpedidosarticulos'),
(62, 'Can change gestionpedidos articulos', 16, 'change_gestionpedidosarticulos'),
(63, 'Can delete gestionpedidos articulos', 16, 'delete_gestionpedidosarticulos'),
(64, 'Can view gestionpedidos articulos', 16, 'view_gestionpedidosarticulos'),
(65, 'Can add gestionpedidos clientes', 17, 'add_gestionpedidosclientes'),
(66, 'Can change gestionpedidos clientes', 17, 'change_gestionpedidosclientes'),
(67, 'Can delete gestionpedidos clientes', 17, 'delete_gestionpedidosclientes'),
(68, 'Can view gestionpedidos clientes', 17, 'view_gestionpedidosclientes'),
(69, 'Can add gestionpedidos pedidos', 18, 'add_gestionpedidospedidos'),
(70, 'Can change gestionpedidos pedidos', 18, 'change_gestionpedidospedidos'),
(71, 'Can delete gestionpedidos pedidos', 18, 'delete_gestionpedidospedidos'),
(72, 'Can view gestionpedidos pedidos', 18, 'view_gestionpedidospedidos'),
(73, 'Can add glucemias', 19, 'add_glucemias'),
(74, 'Can change glucemias', 19, 'change_glucemias'),
(75, 'Can delete glucemias', 19, 'delete_glucemias'),
(76, 'Can view glucemias', 19, 'view_glucemias'),
(77, 'Can add insulinas', 20, 'add_insulinas'),
(78, 'Can change insulinas', 20, 'change_insulinas'),
(79, 'Can delete insulinas', 20, 'delete_insulinas'),
(80, 'Can view insulinas', 20, 'view_insulinas'),
(81, 'Can add medico', 21, 'add_medico'),
(82, 'Can change medico', 21, 'change_medico'),
(83, 'Can delete medico', 21, 'delete_medico'),
(84, 'Can view medico', 21, 'view_medico'),
(85, 'Can add mensajes usuario', 22, 'add_mensajesusuario'),
(86, 'Can change mensajes usuario', 22, 'change_mensajesusuario'),
(87, 'Can delete mensajes usuario', 22, 'delete_mensajesusuario'),
(88, 'Can view mensajes usuario', 22, 'view_mensajesusuario'),
(89, 'Can add modelos', 23, 'add_modelos'),
(90, 'Can change modelos', 23, 'change_modelos'),
(91, 'Can delete modelos', 23, 'delete_modelos'),
(92, 'Can view modelos', 23, 'view_modelos'),
(93, 'Can add momentos', 24, 'add_momentos'),
(94, 'Can change momentos', 24, 'change_momentos'),
(95, 'Can delete momentos', 24, 'delete_momentos'),
(96, 'Can view momentos', 24, 'view_momentos'),
(97, 'Can add nivel eje', 25, 'add_niveleje'),
(98, 'Can change nivel eje', 25, 'change_niveleje'),
(99, 'Can delete nivel eje', 25, 'delete_niveleje'),
(100, 'Can view nivel eje', 25, 'view_niveleje'),
(101, 'Can add pesos', 26, 'add_pesos'),
(102, 'Can change pesos', 26, 'change_pesos'),
(103, 'Can delete pesos', 26, 'delete_pesos'),
(104, 'Can view pesos', 26, 'view_pesos'),
(105, 'Can add pruebas', 27, 'add_pruebas'),
(106, 'Can change pruebas', 27, 'change_pruebas'),
(107, 'Can delete pruebas', 27, 'delete_pruebas'),
(108, 'Can view pruebas', 27, 'view_pruebas'),
(109, 'Can add recomendaciones', 28, 'add_recomendaciones'),
(110, 'Can change recomendaciones', 28, 'change_recomendaciones'),
(111, 'Can delete recomendaciones', 28, 'delete_recomendaciones'),
(112, 'Can view recomendaciones', 28, 'view_recomendaciones'),
(113, 'Can add tipo eje', 29, 'add_tipoeje'),
(114, 'Can change tipo eje', 29, 'change_tipoeje'),
(115, 'Can delete tipo eje', 29, 'delete_tipoeje'),
(116, 'Can view tipo eje', 29, 'view_tipoeje'),
(117, 'Can add tipo ins', 30, 'add_tipoins'),
(118, 'Can change tipo ins', 30, 'change_tipoins'),
(119, 'Can delete tipo ins', 30, 'delete_tipoins'),
(120, 'Can view tipo ins', 30, 'view_tipoins'),
(121, 'Can add tipo pru', 31, 'add_tipopru'),
(122, 'Can change tipo pru', 31, 'change_tipopru'),
(123, 'Can delete tipo pru', 31, 'delete_tipopru'),
(124, 'Can view tipo pru', 31, 'view_tipopru'),
(125, 'Can add tratamiento', 32, 'add_tratamiento'),
(126, 'Can change tratamiento', 32, 'change_tratamiento'),
(127, 'Can delete tratamiento', 32, 'delete_tratamiento'),
(128, 'Can view tratamiento', 32, 'view_tratamiento'),
(129, 'Can add usuarios', 33, 'add_usuarios'),
(130, 'Can change usuarios', 33, 'change_usuarios'),
(131, 'Can delete usuarios', 33, 'delete_usuarios'),
(132, 'Can view usuarios', 33, 'view_usuarios'),
(133, 'Can add paciente', 34, 'add_paciente'),
(134, 'Can change paciente', 34, 'change_paciente'),
(135, 'Can delete paciente', 34, 'delete_paciente'),
(136, 'Can view paciente', 34, 'view_paciente'),
(137, 'Can add investigador', 35, 'add_investigador'),
(138, 'Can change investigador', 35, 'change_investigador'),
(139, 'Can delete investigador', 35, 'delete_investigador'),
(140, 'Can view investigador', 35, 'view_investigador'),
(141, 'Can add suenio_resumen', 36, 'add_suenio_resumen'),
(142, 'Can change suenio_resumen', 36, 'change_suenio_resumen'),
(143, 'Can delete suenio_resumen', 36, 'delete_suenio_resumen'),
(144, 'Can view suenio_resumen', 36, 'view_suenio_resumen'),
(145, 'Can add suenio', 37, 'add_suenio'),
(146, 'Can change suenio', 37, 'change_suenio'),
(147, 'Can delete suenio', 37, 'delete_suenio'),
(148, 'Can view suenio', 37, 'view_suenio'),
(149, 'Can add siesta_resumen', 38, 'add_siesta_resumen'),
(150, 'Can change siesta_resumen', 38, 'change_siesta_resumen'),
(151, 'Can delete siesta_resumen', 38, 'delete_siesta_resumen'),
(152, 'Can view siesta_resumen', 38, 'view_siesta_resumen'),
(153, 'Can add siesta', 39, 'add_siesta'),
(154, 'Can change siesta', 39, 'change_siesta'),
(155, 'Can delete siesta', 39, 'delete_siesta'),
(156, 'Can view siesta', 39, 'view_siesta'),
(157, 'Can add ritmo_cardiaco', 40, 'add_ritmo_cardiaco'),
(158, 'Can change ritmo_cardiaco', 40, 'change_ritmo_cardiaco'),
(159, 'Can delete ritmo_cardiaco', 40, 'delete_ritmo_cardiaco'),
(160, 'Can view ritmo_cardiaco', 40, 'view_ritmo_cardiaco'),
(161, 'Can add peso', 41, 'add_peso'),
(162, 'Can change peso', 41, 'change_peso'),
(163, 'Can delete peso', 41, 'delete_peso'),
(164, 'Can view peso', 41, 'view_peso'),
(165, 'Can add pasos', 42, 'add_pasos'),
(166, 'Can change pasos', 42, 'change_pasos'),
(167, 'Can delete pasos', 42, 'delete_pasos'),
(168, 'Can view pasos', 42, 'view_pasos'),
(169, 'Can add insulina_rapida', 43, 'add_insulina_rapida'),
(170, 'Can change insulina_rapida', 43, 'change_insulina_rapida'),
(171, 'Can delete insulina_rapida', 43, 'delete_insulina_rapida'),
(172, 'Can view insulina_rapida', 43, 'view_insulina_rapida'),
(173, 'Can add insulina_lenta', 44, 'add_insulina_lenta'),
(174, 'Can change insulina_lenta', 44, 'change_insulina_lenta'),
(175, 'Can delete insulina_lenta', 44, 'delete_insulina_lenta'),
(176, 'Can view insulina_lenta', 44, 'view_insulina_lenta'),
(177, 'Can add hito_roche', 45, 'add_hito_roche'),
(178, 'Can change hito_roche', 45, 'change_hito_roche'),
(179, 'Can delete hito_roche', 45, 'delete_hito_roche'),
(180, 'Can view hito_roche', 45, 'view_hito_roche'),
(181, 'Can add glucosa_sangre', 46, 'add_glucosa_sangre'),
(182, 'Can change glucosa_sangre', 46, 'change_glucosa_sangre'),
(183, 'Can delete glucosa_sangre', 46, 'delete_glucosa_sangre'),
(184, 'Can view glucosa_sangre', 46, 'view_glucosa_sangre'),
(185, 'Can add glucosa_medtronic', 47, 'add_glucosa_medtronic'),
(186, 'Can change glucosa_medtronic', 47, 'change_glucosa_medtronic'),
(187, 'Can delete glucosa_medtronic', 47, 'delete_glucosa_medtronic'),
(188, 'Can view glucosa_medtronic', 47, 'view_glucosa_medtronic'),
(189, 'Can add glucosa_freestyle', 48, 'add_glucosa_freestyle'),
(190, 'Can change glucosa_freestyle', 48, 'change_glucosa_freestyle'),
(191, 'Can delete glucosa_freestyle', 48, 'delete_glucosa_freestyle'),
(192, 'Can view glucosa_freestyle', 48, 'view_glucosa_freestyle'),
(193, 'Can add evento_insulina_rapida', 49, 'add_evento_insulina_rapida'),
(194, 'Can change evento_insulina_rapida', 49, 'change_evento_insulina_rapida'),
(195, 'Can delete evento_insulina_rapida', 49, 'delete_evento_insulina_rapida'),
(196, 'Can view evento_insulina_rapida', 49, 'view_evento_insulina_rapida'),
(197, 'Can add evento_insulina_lenta', 50, 'add_evento_insulina_lenta'),
(198, 'Can change evento_insulina_lenta', 50, 'change_evento_insulina_lenta'),
(199, 'Can delete evento_insulina_lenta', 50, 'delete_evento_insulina_lenta'),
(200, 'Can view evento_insulina_lenta', 50, 'view_evento_insulina_lenta'),
(201, 'Can add evento_carbohidratos', 51, 'add_evento_carbohidratos'),
(202, 'Can change evento_carbohidratos', 51, 'change_evento_carbohidratos'),
(203, 'Can delete evento_carbohidratos', 51, 'delete_evento_carbohidratos'),
(204, 'Can view evento_carbohidratos', 51, 'view_evento_carbohidratos'),
(205, 'Can add cetonas', 52, 'add_cetonas'),
(206, 'Can change cetonas', 52, 'change_cetonas'),
(207, 'Can delete cetonas', 52, 'delete_cetonas'),
(208, 'Can view cetonas', 52, 'view_cetonas'),
(209, 'Can add carb_ratio', 53, 'add_carb_ratio'),
(210, 'Can change carb_ratio', 53, 'change_carb_ratio'),
(211, 'Can delete carb_ratio', 53, 'delete_carb_ratio'),
(212, 'Can view carb_ratio', 53, 'view_carb_ratio'),
(213, 'Can add carb_input', 54, 'add_carb_input'),
(214, 'Can change carb_input', 54, 'change_carb_input'),
(215, 'Can delete carb_input', 54, 'delete_carb_input'),
(216, 'Can view carb_input', 54, 'view_carb_input'),
(217, 'Can add calorias', 55, 'add_calorias'),
(218, 'Can change calorias', 55, 'change_calorias'),
(219, 'Can delete calorias', 55, 'delete_calorias'),
(220, 'Can view calorias', 55, 'view_calorias'),
(221, 'Can add bolus_volume_delivered', 56, 'add_bolus_volume_delivered'),
(222, 'Can change bolus_volume_delivered', 56, 'change_bolus_volume_delivered'),
(223, 'Can delete bolus_volume_delivered', 56, 'delete_bolus_volume_delivered'),
(224, 'Can view bolus_volume_delivered', 56, 'view_bolus_volume_delivered'),
(225, 'Can add bolus_type', 57, 'add_bolus_type'),
(226, 'Can change bolus_type', 57, 'change_bolus_type'),
(227, 'Can delete bolus_type', 57, 'delete_bolus_type'),
(228, 'Can view bolus_type', 57, 'view_bolus_type'),
(229, 'Can add basal_rate', 58, 'add_basal_rate'),
(230, 'Can change basal_rate', 58, 'change_basal_rate'),
(231, 'Can delete basal_rate', 58, 'delete_basal_rate'),
(232, 'Can view basal_rate', 58, 'view_basal_rate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$4tLPM4rjKhhv$Z54I4tRiBKgFcGdwZ9F9cglzL58NG6yo+kfkOBHli9E=', '2020-06-10 11:37:54.234760', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-06-10 11:08:56.152397'),
(2, 'pbkdf2_sha256$180000$x4BqTti1aGBn$ohtrn9lCBSsLrjTHEbN1Wzgt62DfQegf9zrAYvwuvLg=', '2020-06-10 11:48:21.273689', 0, 'medico1@gmail.com', 'Médico', 'Primero', 'medico1@gmail.com', 0, 1, '2020-06-10 11:15:01.665343'),
(3, 'pbkdf2_sha256$180000$s9aqlesnozmW$jNWTIIqblKd120JfWJRZHjhISLU9s8dYYe24f18UCAU=', '2020-06-10 11:22:07.670176', 0, 'investigador1@gmail.com', 'Investigador', 'Primero', 'investigador1@gmail.com', 0, 1, '2020-06-10 11:16:46.113243'),
(4, 'pbkdf2_sha256$180000$hQjfGvF89HQH$F78CNgy3ZjGKnAx711TmPAYPzpvHZQoWtV/my7DEoKc=', NULL, 0, 'paciente1@gmail.com', 'Paciente', 'Primero', 'paciente1@gmail.com', 0, 1, '2020-06-10 11:48:06.771271');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basal_rate`
--

CREATE TABLE `basal_rate` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `basal_rate_U_h` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolus_type`
--

CREATE TABLE `bolus_type` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `bolus_type` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolus_volume_delivered`
--

CREATE TABLE `bolus_volume_delivered` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `bolus_volume_delivered_U` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calorias`
--

CREATE TABLE `calorias` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `calories` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carb_input`
--

CREATE TABLE `carb_input` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `carb_input_EX` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carb_ratio`
--

CREATE TABLE `carb_ratio` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `carb_ratio_U_EX` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_formacion`
--

CREATE TABLE `casos_formacion` (
  `id` int(11) NOT NULL,
  `alcohol` int(11) DEFAULT NULL,
  `blobRecs` longtext,
  `Cetoacidosis` int(11) DEFAULT NULL,
  `cetonicos` int(11) DEFAULT NULL,
  `conocimientos_infor` int(11) DEFAULT NULL,
  `control_alimentacion` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `frecuencia_deporte` int(11) DEFAULT NULL,
  `glicosilada` int(11) DEFAULT NULL,
  `glucemia_postdeporte` int(11) DEFAULT NULL,
  `hiperglucemia` int(11) DEFAULT NULL,
  `hipoglucemia` int(11) DEFAULT NULL,
  `indice_glucemico` int(11) DEFAULT NULL,
  `intensidad_deporte` int(11) DEFAULT NULL,
  `moodle` int(11) DEFAULT NULL,
  `perfiles` int(11) DEFAULT NULL,
  `practica_deporte` int(11) DEFAULT NULL,
  `sense` int(11) DEFAULT NULL,
  `situaciones_tensas` int(11) DEFAULT NULL,
  `tomas_extras` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_seguimiento`
--

CREATE TABLE `casos_seguimiento` (
  `caseID` int(11) NOT NULL,
  `blobRecs` longtext,
  `cetonicos` int(11) DEFAULT NULL,
  `ejercicio` int(11) DEFAULT NULL,
  `fondoOjos` int(11) DEFAULT NULL,
  `hba1c` int(11) DEFAULT NULL,
  `imc` int(11) DEFAULT NULL,
  `h1` int(11) DEFAULT NULL,
  `h2` varchar(45) DEFAULT NULL,
  `h3` varchar(45) DEFAULT NULL,
  `h4` varchar(45) DEFAULT NULL,
  `h5` varchar(45) DEFAULT NULL,
  `h6` varchar(45) DEFAULT NULL,
  `h7` varchar(45) DEFAULT NULL,
  `h8` varchar(45) DEFAULT NULL,
  `h9` varchar(45) DEFAULT NULL,
  `h10` varchar(45) DEFAULT NULL,
  `h11` varchar(45) DEFAULT NULL,
  `h12` varchar(45) DEFAULT NULL,
  `h13` varchar(45) DEFAULT NULL,
  `h14` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_investigacion`
--

CREATE TABLE `centro_investigacion` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `centro_investigacion`
--

INSERT INTO `centro_investigacion` (`id`, `name`) VALUES
(1, 'Universidad Complutense de Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_medico`
--

CREATE TABLE `centro_medico` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `centro_medico`
--

INSERT INTO `centro_medico` (`id`, `name`) VALUES
(1, 'Universidad Complutense de Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cetonas`
--

CREATE TABLE `cetonas` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `cetonas_mmol_L` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino_doc`
--

CREATE TABLE `destino_doc` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dietas`
--

CREATE TABLE `dietas` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `MOMENT` int(11) DEFAULT NULL,
  `OBSERVATIONS` varchar(255) DEFAULT NULL,
  `RACIONES` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-10 11:10:13.162421', '1', 'Universidad Complutense de Madrid', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-06-10 11:10:43.616345', '1', 'Universidad Complutense de Madrid', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-06-10 11:38:59.897097', '1', 'MDI', 1, '[{\"added\": {}}]', 32, 1),
(4, '2020-06-10 11:39:22.944929', '2', 'Roche', 1, '[{\"added\": {}}]', 32, 1),
(5, '2020-06-10 11:40:08.496240', '3', 'MEDTRONIC', 1, '[{\"added\": {}}]', 32, 1),
(6, '2020-06-10 11:40:22.681498', '4', 'PASTILLAS', 1, '[{\"added\": {}}]', 32, 1),
(7, '2020-06-10 11:40:45.584484', '5', 'DIETA', 1, '[{\"added\": {}}]', 32, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(58, 'gestionPacientes', 'basal_rate'),
(57, 'gestionPacientes', 'bolus_type'),
(56, 'gestionPacientes', 'bolus_volume_delivered'),
(55, 'gestionPacientes', 'calorias'),
(54, 'gestionPacientes', 'carb_input'),
(53, 'gestionPacientes', 'carb_ratio'),
(7, 'gestionPacientes', 'casosformacion'),
(8, 'gestionPacientes', 'casosseguimiento'),
(9, 'gestionPacientes', 'centro_investigacion'),
(10, 'gestionPacientes', 'centro_medico'),
(52, 'gestionPacientes', 'cetonas'),
(11, 'gestionPacientes', 'destinodoc'),
(12, 'gestionPacientes', 'dietas'),
(13, 'gestionPacientes', 'documentaciones'),
(14, 'gestionPacientes', 'ejercicios'),
(51, 'gestionPacientes', 'evento_carbohidratos'),
(50, 'gestionPacientes', 'evento_insulina_lenta'),
(49, 'gestionPacientes', 'evento_insulina_rapida'),
(15, 'gestionPacientes', 'ficherosexportados'),
(16, 'gestionPacientes', 'gestionpedidosarticulos'),
(17, 'gestionPacientes', 'gestionpedidosclientes'),
(18, 'gestionPacientes', 'gestionpedidospedidos'),
(19, 'gestionPacientes', 'glucemias'),
(48, 'gestionPacientes', 'glucosa_freestyle'),
(47, 'gestionPacientes', 'glucosa_medtronic'),
(46, 'gestionPacientes', 'glucosa_sangre'),
(45, 'gestionPacientes', 'hito_roche'),
(20, 'gestionPacientes', 'insulinas'),
(44, 'gestionPacientes', 'insulina_lenta'),
(43, 'gestionPacientes', 'insulina_rapida'),
(35, 'gestionPacientes', 'investigador'),
(21, 'gestionPacientes', 'medico'),
(22, 'gestionPacientes', 'mensajesusuario'),
(23, 'gestionPacientes', 'modelos'),
(24, 'gestionPacientes', 'momentos'),
(25, 'gestionPacientes', 'niveleje'),
(34, 'gestionPacientes', 'paciente'),
(42, 'gestionPacientes', 'pasos'),
(41, 'gestionPacientes', 'peso'),
(26, 'gestionPacientes', 'pesos'),
(27, 'gestionPacientes', 'pruebas'),
(28, 'gestionPacientes', 'recomendaciones'),
(40, 'gestionPacientes', 'ritmo_cardiaco'),
(39, 'gestionPacientes', 'siesta'),
(38, 'gestionPacientes', 'siesta_resumen'),
(37, 'gestionPacientes', 'suenio'),
(36, 'gestionPacientes', 'suenio_resumen'),
(29, 'gestionPacientes', 'tipoeje'),
(30, 'gestionPacientes', 'tipoins'),
(31, 'gestionPacientes', 'tipopru'),
(32, 'gestionPacientes', 'tratamiento'),
(33, 'gestionPacientes', 'usuarios'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-10 11:01:54.701709'),
(2, 'auth', '0001_initial', '2020-06-10 11:01:56.351463'),
(3, 'admin', '0001_initial', '2020-06-10 11:02:04.396656'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-10 11:02:06.278812'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-10 11:02:06.353576'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-10 11:02:07.646882'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-10 11:02:08.771948'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-10 11:02:09.747626'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-10 11:02:09.797556'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-10 11:02:10.539834'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-10 11:02:10.572717'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-10 11:02:10.620877'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-10 11:02:12.672934'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-10 11:02:13.748785'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-10 11:02:15.299671'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-10 11:02:15.359545'),
(17, 'gestionPacientes', '0001_initial', '2020-06-10 11:02:31.856586'),
(18, 'sessions', '0001_initial', '2020-06-10 11:03:02.303078');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ifmx83qg673p0wqa7pgc2wiokkxuoxrf', 'YjU0NDdlNzBmMjkwODc4M2Q4NzQwYThlOWYzNDdhMmFjOTMyNWRiYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTI2YmEyNDU3MGY5NGRiNmVlYjI3YTMzYzdlNGIwNmYwYTMwMDY0In0=', '2020-06-24 11:48:21.306615');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciones`
--

CREATE TABLE `documentaciones` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `FICHERO` longtext,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` bigint(20) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `TIPODESTINO` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `FILETYPE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_carbohidratos`
--

CREATE TABLE `evento_carbohidratos` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `evento_carbohidratos` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_insulina_lenta`
--

CREATE TABLE `evento_insulina_lenta` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `evento_insulina_lenta` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_insulina_rapida`
--

CREATE TABLE `evento_insulina_rapida` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `evento_insulina_rapida` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficherosexportados`
--

CREATE TABLE `ficherosexportados` (
  `ID` bigint(20) NOT NULL,
  `FECHA` datetime(6) DEFAULT NULL,
  `FILEPATH` varchar(255) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestionpedidos_articulos`
--

CREATE TABLE `gestionpedidos_articulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `seccion` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestionpedidos_clientes`
--

CREATE TABLE `gestionpedidos_clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestionpedidos_pedidos`
--

CREATE TABLE `gestionpedidos_pedidos` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `entregado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glucemias`
--

CREATE TABLE `glucemias` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `MOMENT` int(11) DEFAULT NULL,
  `OBSERVATIONS` varchar(255) DEFAULT NULL,
  `VALUE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glucosa_freestyle`
--

CREATE TABLE `glucosa_freestyle` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `glucosa_freestyle_mg_dL` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glucosa_medtronic`
--

CREATE TABLE `glucosa_medtronic` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `glucosa_medtronic_mg_dL` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glucosa_sangre`
--

CREATE TABLE `glucosa_sangre` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `glucosa_sangre_mg_dL` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hito_roche`
--

CREATE TABLE `hito_roche` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `hito_roche` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insulinas`
--

CREATE TABLE `insulinas` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `MOMENT` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `VALUE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insulina_lenta`
--

CREATE TABLE `insulina_lenta` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `insulina_lenta_U` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insulina_rapida`
--

CREATE TABLE `insulina_rapida` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `insulina_rapida_U` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigador`
--

CREATE TABLE `investigador` (
  `user_ptr_id` int(11) NOT NULL,
  `Investigator_type` varchar(10) NOT NULL,
  `investigation_center_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `investigador`
--

INSERT INTO `investigador` (`user_ptr_id`, `Investigator_type`, `investigation_center_id`) VALUES
(3, 'Analista d', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `user_ptr_id` int(11) NOT NULL,
  `board_number` varchar(250) NOT NULL,
  `medical_center_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`user_ptr_id`, `board_number`, `medical_center_id`) VALUES
(2, '12345', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_usuario`
--

CREATE TABLE `mensajes_usuario` (
  `mensajeid` int(11) NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `nuevo` int(11) DEFAULT NULL,
  `recomendacionid` int(11) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `ID` bigint(20) NOT NULL,
  `MODELO` varchar(512) NOT NULL,
  `FECHA` datetime(6) NOT NULL,
  `IDPACIENTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `momentos`
--

CREATE TABLE `momentos` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL,
  `HOURFROM` smallint(6) DEFAULT NULL,
  `HOURTO` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_eje`
--

CREATE TABLE `nivel_eje` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `user_ptr_id` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `diabetes_type` varchar(10) NOT NULL,
  `start_date` date DEFAULT NULL,
  `first_date` datetime(6) DEFAULT NULL,
  `last_date` datetime(6) DEFAULT NULL,
  `doctor_id_id` int(11) NOT NULL,
  `treatment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`user_ptr_id`, `birth_date`, `diabetes_type`, `start_date`, `first_date`, `last_date`, `doctor_id_id`, `treatment_id`) VALUES
(4, '1992-06-08', 'Tipo 1', '2006-06-13', NULL, NULL, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasos`
--

CREATE TABLE `pasos` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `steps` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peso`
--

CREATE TABLE `peso` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `peso` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pesos`
--

CREATE TABLE `pesos` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `PESO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE `pruebas` (
  `CLAVE` bigint(20) NOT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `FICHERO` longtext,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` bigint(20) DEFAULT NULL,
  `IDUSER` bigint(20) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `FILETYPE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendaciones`
--

CREATE TABLE `recomendaciones` (
  `id` int(11) NOT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `seccion` varchar(255) DEFAULT NULL,
  `texto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ritmo_cardiaco`
--

CREATE TABLE `ritmo_cardiaco` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `heart_rate` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siesta`
--

CREATE TABLE `siesta` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `nap_state` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siesta_resumen`
--

CREATE TABLE `siesta_resumen` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `nap_main_sleep` tinyint(1) NOT NULL,
  `nap_efficiency` double NOT NULL,
  `nap_duration` double NOT NULL,
  `nap_minutes_asleep` double NOT NULL,
  `nap_minutes_light` double NOT NULL,
  `nap_minutes_deep` double NOT NULL,
  `nap_minutes_rem` double NOT NULL,
  `nap_minutes_awake` double NOT NULL,
  `nap_minutes_in_bed` double NOT NULL,
  `nap_minutes_restless` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suenio`
--

CREATE TABLE `suenio` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `sleep_state` varchar(250) NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suenio_resumen`
--

CREATE TABLE `suenio_resumen` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `sleep_main_sleep` tinyint(1) NOT NULL,
  `sleep_efficiency` double NOT NULL,
  `sleep_duration` double NOT NULL,
  `sleep_minutes_asleep` double NOT NULL,
  `sleep_minutes_light` double NOT NULL,
  `sleep_minutes_deep` double NOT NULL,
  `sleep_minutes_rem` double NOT NULL,
  `sleep_minutes_awake` double NOT NULL,
  `sleep_minutes_in_bed` double NOT NULL,
  `id_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_eje`
--

CREATE TABLE `tipo_eje` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ins`
--

CREATE TABLE `tipo_ins` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pru`
--

CREATE TABLE `tipo_pru` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id`, `code`, `name`) VALUES
(1, 'MDI', 'Multiples Dosis de Insulina'),
(2, 'Roche', 'Bomba de roche'),
(3, 'MEDTRONIC', 'Bomba de medtronic'),
(4, 'PASTILLAS', 'Pastillas'),
(5, 'DIETA', 'Dieta + Ejercicio Físico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `ALTACURSO` int(11) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `DATE` datetime(6) DEFAULT NULL,
  `DNI` varchar(32) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EXAMEN` bigint(20) DEFAULT NULL,
  `FECHAEVALUACION` datetime(6) DEFAULT NULL,
  `FIRMACONTRATO` int(11) DEFAULT NULL,
  `HEIGHT` double DEFAULT NULL,
  `IDDOCTOR` bigint(20) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `LOGIN` bigint(20) DEFAULT NULL,
  `MOODLEID` int(11) DEFAULT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `NIVEL` int(11) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  `PHONE2` varchar(32) DEFAULT NULL,
  `ROLCURSO` int(11) DEFAULT NULL,
  `SEX` varchar(6) DEFAULT NULL,
  `SURNAME1` varchar(64) DEFAULT NULL,
  `SURNAME2` varchar(64) DEFAULT NULL,
  `FECHACONSEN` datetime(6) DEFAULT NULL,
  `HIPERGLUC` int(11) DEFAULT NULL,
  `HIPOGLUC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `ADDRESS`, `ALTACURSO`, `CITY`, `DATE`, `DNI`, `EMAIL`, `EXAMEN`, `FECHAEVALUACION`, `FIRMACONTRATO`, `HEIGHT`, `IDDOCTOR`, `IP`, `LOGIN`, `MOODLEID`, `NAME`, `NIVEL`, `PASSWORD`, `PHONE`, `PHONE2`, `ROLCURSO`, `SEX`, `SURNAME1`, `SURNAME2`, `FECHACONSEN`, `HIPERGLUC`, `HIPOGLUC`) VALUES
(2, 'mi casa', NULL, 'Madrid', '1975-06-10 00:00:00.000000', '55555555H', 'medico1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Médico', 6, 'pbkdf2_sha256$180000$x4BqTti1aGB', '666999666', NULL, NULL, 'Hombre', 'Primero', 'Prueba', NULL, NULL, NULL),
(3, 'mi casa', NULL, 'Madrid', '1981-06-15 00:00:00.000000', '7777775H', 'investigador1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investigador', 6, 'pbkdf2_sha256$180000$s9aqlesnozm', '999666999', NULL, NULL, 'Hombre', 'Primero', 'Prueba', NULL, NULL, NULL),
(4, 'mi casa', NULL, 'Madrid', '1992-06-08 00:00:00.000000', '66666665H', 'paciente1@gmail.com', NULL, NULL, NULL, 185, 2, NULL, NULL, NULL, 'paciente1@gmail.com', 3, 'pbkdf2_sha256$180000$hQjfGvF89HQ', '888555888', NULL, NULL, 'Hombre', 'Primero', 'Prueba', '2017-07-09 00:00:00.000000', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `basal_rate`
--
ALTER TABLE `basal_rate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basal_rate_id_user_id_time_1901d6e3_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `bolus_type`
--
ALTER TABLE `bolus_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bolus_type_id_user_id_time_e5b93c17_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `bolus_volume_delivered`
--
ALTER TABLE `bolus_volume_delivered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bolus_volume_delivered_id_user_id_time_1bb01303_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `calorias`
--
ALTER TABLE `calorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calorias_id_user_id_time_cf14b0b1_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `carb_input`
--
ALTER TABLE `carb_input`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carb_input_id_user_id_time_065a2792_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `carb_ratio`
--
ALTER TABLE `carb_ratio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carb_ratio_id_user_id_time_954598b6_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `casos_formacion`
--
ALTER TABLE `casos_formacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `casos_seguimiento`
--
ALTER TABLE `casos_seguimiento`
  ADD PRIMARY KEY (`caseID`);

--
-- Indices de la tabla `centro_investigacion`
--
ALTER TABLE `centro_investigacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `centro_medico`
--
ALTER TABLE `centro_medico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cetonas`
--
ALTER TABLE `cetonas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cetonas_id_user_id_time_eba32f18_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `destino_doc`
--
ALTER TABLE `destino_doc`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `dietas`
--
ALTER TABLE `dietas`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `documentaciones`
--
ALTER TABLE `documentaciones`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `evento_carbohidratos`
--
ALTER TABLE `evento_carbohidratos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evento_carbohidratos_id_user_id_time_e2d18c13_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `evento_insulina_lenta`
--
ALTER TABLE `evento_insulina_lenta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evento_insulina_lenta_id_user_id_time_28aa6585_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `evento_insulina_rapida`
--
ALTER TABLE `evento_insulina_rapida`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evento_insulina_rapida_id_user_id_time_50eb834b_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `ficherosexportados`
--
ALTER TABLE `ficherosexportados`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `gestionpedidos_articulos`
--
ALTER TABLE `gestionpedidos_articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestionpedidos_clientes`
--
ALTER TABLE `gestionpedidos_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestionpedidos_pedidos`
--
ALTER TABLE `gestionpedidos_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `glucemias`
--
ALTER TABLE `glucemias`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `glucosa_freestyle`
--
ALTER TABLE `glucosa_freestyle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `glucosa_freestyle_id_user_id_time_46ec07f9_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `glucosa_medtronic`
--
ALTER TABLE `glucosa_medtronic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `glucosa_medtronic_id_user_id_time_6b1e6bac_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `glucosa_sangre`
--
ALTER TABLE `glucosa_sangre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `glucosa_sangre_id_user_id_time_3e70b399_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `hito_roche`
--
ALTER TABLE `hito_roche`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hito_roche_id_user_id_time_aee8ae0f_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `insulinas`
--
ALTER TABLE `insulinas`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `insulina_lenta`
--
ALTER TABLE `insulina_lenta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insulina_lenta_id_user_id_time_c389f24a_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `insulina_rapida`
--
ALTER TABLE `insulina_rapida`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insulina_rapida_id_user_id_time_3adae043_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `investigador`
--
ALTER TABLE `investigador`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `investigador_investigation_center_286148ea_fk_centro_in` (`investigation_center_id`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `medico_medical_center_id_bdb120c5_fk_centro_medico_id` (`medical_center_id`);

--
-- Indices de la tabla `mensajes_usuario`
--
ALTER TABLE `mensajes_usuario`
  ADD PRIMARY KEY (`mensajeid`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `momentos`
--
ALTER TABLE `momentos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `nivel_eje`
--
ALTER TABLE `nivel_eje`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `paciente_doctor_id_id_d37ce436_fk_medico_user_ptr_id` (`doctor_id_id`),
  ADD KEY `paciente_treatment_id_a55f3721_fk_tratamiento_id` (`treatment_id`);

--
-- Indices de la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pasos_id_user_id_time_c244e5c3_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `peso`
--
ALTER TABLE `peso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peso_id_user_id_time_b0ebfeb8_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `pesos`
--
ALTER TABLE `pesos`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`CLAVE`);

--
-- Indices de la tabla `recomendaciones`
--
ALTER TABLE `recomendaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ritmo_cardiaco`
--
ALTER TABLE `ritmo_cardiaco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ritmo_cardiaco_id_user_id_time_342867f1_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `siesta`
--
ALTER TABLE `siesta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siesta_id_user_id_time_06c40ccd_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `siesta_resumen`
--
ALTER TABLE `siesta_resumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siesta_resumen_id_user_id_time_a0049ac1_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `suenio`
--
ALTER TABLE `suenio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suenio_id_user_id_time_70b5608e_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `suenio_resumen`
--
ALTER TABLE `suenio_resumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suenio_resumen_id_user_id_time_90bc9ed6_uniq` (`id_user_id`,`time`);

--
-- Indices de la tabla `tipo_eje`
--
ALTER TABLE `tipo_eje`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_ins`
--
ALTER TABLE `tipo_ins`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipo_pru`
--
ALTER TABLE `tipo_pru`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `basal_rate`
--
ALTER TABLE `basal_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bolus_type`
--
ALTER TABLE `bolus_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bolus_volume_delivered`
--
ALTER TABLE `bolus_volume_delivered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calorias`
--
ALTER TABLE `calorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carb_input`
--
ALTER TABLE `carb_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carb_ratio`
--
ALTER TABLE `carb_ratio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `casos_seguimiento`
--
ALTER TABLE `casos_seguimiento`
  MODIFY `caseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `centro_investigacion`
--
ALTER TABLE `centro_investigacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `centro_medico`
--
ALTER TABLE `centro_medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cetonas`
--
ALTER TABLE `cetonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dietas`
--
ALTER TABLE `dietas`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `documentaciones`
--
ALTER TABLE `documentaciones`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_carbohidratos`
--
ALTER TABLE `evento_carbohidratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_insulina_lenta`
--
ALTER TABLE `evento_insulina_lenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_insulina_rapida`
--
ALTER TABLE `evento_insulina_rapida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ficherosexportados`
--
ALTER TABLE `ficherosexportados`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestionpedidos_articulos`
--
ALTER TABLE `gestionpedidos_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestionpedidos_clientes`
--
ALTER TABLE `gestionpedidos_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestionpedidos_pedidos`
--
ALTER TABLE `gestionpedidos_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `glucemias`
--
ALTER TABLE `glucemias`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `glucosa_freestyle`
--
ALTER TABLE `glucosa_freestyle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `glucosa_medtronic`
--
ALTER TABLE `glucosa_medtronic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `glucosa_sangre`
--
ALTER TABLE `glucosa_sangre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hito_roche`
--
ALTER TABLE `hito_roche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insulinas`
--
ALTER TABLE `insulinas`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insulina_lenta`
--
ALTER TABLE `insulina_lenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insulina_rapida`
--
ALTER TABLE `insulina_rapida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes_usuario`
--
ALTER TABLE `mensajes_usuario`
  MODIFY `mensajeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pasos`
--
ALTER TABLE `pasos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `peso`
--
ALTER TABLE `peso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pesos`
--
ALTER TABLE `pesos`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  MODIFY `CLAVE` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recomendaciones`
--
ALTER TABLE `recomendaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ritmo_cardiaco`
--
ALTER TABLE `ritmo_cardiaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `siesta`
--
ALTER TABLE `siesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `siesta_resumen`
--
ALTER TABLE `siesta_resumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suenio`
--
ALTER TABLE `suenio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suenio_resumen`
--
ALTER TABLE `suenio_resumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `basal_rate`
--
ALTER TABLE `basal_rate`
  ADD CONSTRAINT `basal_rate_id_user_id_7717e7f0_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `bolus_type`
--
ALTER TABLE `bolus_type`
  ADD CONSTRAINT `bolus_type_id_user_id_2abd5416_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `bolus_volume_delivered`
--
ALTER TABLE `bolus_volume_delivered`
  ADD CONSTRAINT `bolus_volume_deliver_id_user_id_26a34863_fk_paciente_` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `calorias`
--
ALTER TABLE `calorias`
  ADD CONSTRAINT `calorias_id_user_id_1d2d1fa0_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `carb_input`
--
ALTER TABLE `carb_input`
  ADD CONSTRAINT `carb_input_id_user_id_734046ab_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `carb_ratio`
--
ALTER TABLE `carb_ratio`
  ADD CONSTRAINT `carb_ratio_id_user_id_dbcd85eb_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `cetonas`
--
ALTER TABLE `cetonas`
  ADD CONSTRAINT `cetonas_id_user_id_8d90dddd_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `evento_carbohidratos`
--
ALTER TABLE `evento_carbohidratos`
  ADD CONSTRAINT `evento_carbohidratos_id_user_id_4fcbb16b_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `evento_insulina_lenta`
--
ALTER TABLE `evento_insulina_lenta`
  ADD CONSTRAINT `evento_insulina_lent_id_user_id_40c7c395_fk_paciente_` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `evento_insulina_rapida`
--
ALTER TABLE `evento_insulina_rapida`
  ADD CONSTRAINT `evento_insulina_rapi_id_user_id_24f55ca2_fk_paciente_` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `glucosa_freestyle`
--
ALTER TABLE `glucosa_freestyle`
  ADD CONSTRAINT `glucosa_freestyle_id_user_id_538ddc81_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `glucosa_medtronic`
--
ALTER TABLE `glucosa_medtronic`
  ADD CONSTRAINT `glucosa_medtronic_id_user_id_cdc60b8d_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `glucosa_sangre`
--
ALTER TABLE `glucosa_sangre`
  ADD CONSTRAINT `glucosa_sangre_id_user_id_ffd4efd1_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `hito_roche`
--
ALTER TABLE `hito_roche`
  ADD CONSTRAINT `hito_roche_id_user_id_95739e28_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `insulina_lenta`
--
ALTER TABLE `insulina_lenta`
  ADD CONSTRAINT `insulina_lenta_id_user_id_d72aa95c_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `insulina_rapida`
--
ALTER TABLE `insulina_rapida`
  ADD CONSTRAINT `insulina_rapida_id_user_id_986c0270_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `investigador`
--
ALTER TABLE `investigador`
  ADD CONSTRAINT `investigador_investigation_center_286148ea_fk_centro_in` FOREIGN KEY (`investigation_center_id`) REFERENCES `centro_investigacion` (`id`),
  ADD CONSTRAINT `investigador_user_ptr_id_5c7e6bb3_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_medical_center_id_bdb120c5_fk_centro_medico_id` FOREIGN KEY (`medical_center_id`) REFERENCES `centro_medico` (`id`),
  ADD CONSTRAINT `medico_user_ptr_id_58d54211_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_doctor_id_id_d37ce436_fk_medico_user_ptr_id` FOREIGN KEY (`doctor_id_id`) REFERENCES `medico` (`user_ptr_id`),
  ADD CONSTRAINT `paciente_treatment_id_a55f3721_fk_tratamiento_id` FOREIGN KEY (`treatment_id`) REFERENCES `tratamiento` (`id`),
  ADD CONSTRAINT `paciente_user_ptr_id_cd0c4b98_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD CONSTRAINT `pasos_id_user_id_8d27f674_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `peso`
--
ALTER TABLE `peso`
  ADD CONSTRAINT `peso_id_user_id_ba88f4e9_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `ritmo_cardiaco`
--
ALTER TABLE `ritmo_cardiaco`
  ADD CONSTRAINT `ritmo_cardiaco_id_user_id_5ab12a44_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `siesta`
--
ALTER TABLE `siesta`
  ADD CONSTRAINT `siesta_id_user_id_8f368dc0_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `siesta_resumen`
--
ALTER TABLE `siesta_resumen`
  ADD CONSTRAINT `siesta_resumen_id_user_id_1be4b7fb_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `suenio`
--
ALTER TABLE `suenio`
  ADD CONSTRAINT `suenio_id_user_id_e836883f_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);

--
-- Filtros para la tabla `suenio_resumen`
--
ALTER TABLE `suenio_resumen`
  ADD CONSTRAINT `suenio_resumen_id_user_id_888d3ab4_fk_paciente_user_ptr_id` FOREIGN KEY (`id_user_id`) REFERENCES `paciente` (`user_ptr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
