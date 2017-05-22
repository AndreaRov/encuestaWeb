-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-05-2017 a las 11:14:18
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vidaSostenible`
--
DROP DATABASE if EXISTS vidaSostenible;
CREATE DATABASE vidaSostenible;
USE vidaSostenible;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Energia'),
(2, 'Transporte'),
(3, 'Agua'),
(4, 'Materiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccaa`
--

CREATE TABLE `ccaa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ccaa`
--

INSERT INTO `ccaa` (`id`, `nombre`, `idPais`) VALUES
(1, 'Andalucía', 73),
(2, 'Aragón', 73),
(3, 'Principado de Asturias', 73),
(4, 'Illes Balears', 73),
(5, 'Canarias', 73),
(6, 'Cantabria', 73),
(7, 'Castilla y León', 73),
(8, 'Castilla - La Mancha', 73),
(9, 'Cataluña', 73),
(10, 'Comunitat Valenciana', 73),
(11, 'Extremadura', 73),
(12, 'Galicia', 73),
(13, 'Comunidad de Madrid ', 73),
(14, 'Región de Murcia', 73),
(15, 'Comunidad Foral de Navarra', 73),
(16, 'País Vasco', 73),
(17, 'La Rioja', 73),
(18, 'Ceuta', 73),
(19, 'Melilla', 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conocimientos`
--

CREATE TABLE `conocimientos` (
  `id` int(11) NOT NULL,
  `ambito` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conocimientos`
--

INSERT INTO `conocimientos` (`id`, `ambito`) VALUES
(1, 'Artes y humanidades'),
(2, 'Ciencia e Ingenierías'),
(3, 'Ciencias de la salud'),
(4, 'Ciencias sociales y jurídicas'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depende`
--

CREATE TABLE `depende` (
  `id` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL,
  `idRespuesta` int(11) NOT NULL,
  `valorRespuesta` int(11) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `depende`
--

INSERT INTO `depende` (`id`, `idPregunta`, `idRespuesta`, `valorRespuesta`, `idTexto`) VALUES
(1, 1, 1, 0, NULL),
(2, 1, 2, 2, NULL),
(3, 1, 3, 0, NULL),
(4, 2, 4, 5, NULL),
(5, 2, 5, 7, NULL),
(6, 3, 6, 1, NULL),
(7, 3, 7, 2, NULL),
(8, 3, 8, 3, NULL),
(9, 4, 9, 0, NULL),
(10, 4, 10, 0, NULL),
(11, 4, 11, 0, NULL),
(12, 4, 12, 0, NULL),
(13, 4, 13, 0, NULL),
(14, 4, 14, 0, NULL),
(15, 4, 15, 0, NULL),
(16, 4, 16, 0, NULL),
(17, 4, 17, 0, NULL),
(18, 4, 18, 0, NULL),
(19, 4, 19, 0, NULL),
(20, 4, 20, 0, NULL),
(21, 5, 21, 9, NULL),
(22, 5, 22, 0, NULL),
(23, 6, 9, 0, NULL),
(24, 6, 10, 0, NULL),
(25, 6, 11, 0, NULL),
(26, 6, 12, 0, NULL),
(27, 6, 13, 0, NULL),
(28, 6, 14, 0, NULL),
(29, 6, 15, 0, NULL),
(30, 6, 16, 0, NULL),
(31, 6, 17, 0, NULL),
(32, 6, 18, 0, NULL),
(33, 6, 19, 0, NULL),
(34, 6, 20, 0, NULL),
(35, 7, 23, 3, NULL),
(36, 7, 24, 1, NULL),
(37, 7, 25, 1, NULL),
(38, 7, 26, 1, NULL),
(39, 7, 27, -2, NULL),
(40, 8, 21, -2, NULL),
(41, 8, 22, 2, NULL),
(42, 9, 21, -1, NULL),
(43, 9, 22, 1, NULL),
(44, 9, 28, 1, NULL),
(45, 10, 29, 6, NULL),
(46, 10, 30, 3, NULL),
(47, 10, 31, 1, NULL),
(48, 10, 32, 1, NULL),
(49, 10, 33, 0, NULL),
(50, 10, 34, 0, NULL),
(51, 11, 35, 0, NULL),
(52, 11, 36, 1, NULL),
(53, 11, 37, 2, NULL),
(54, 11, 38, 3, NULL),
(55, 12, 23, 2, NULL),
(56, 12, 24, 4, NULL),
(57, 12, 25, 4, NULL),
(58, 12, 26, 4, NULL),
(59, 12, 27, 8, NULL),
(60, 13, 39, -3, NULL),
(61, 14, 40, 2, NULL),
(62, 15, 23, 3, NULL),
(63, 15, 24, 1, NULL),
(64, 15, 25, 1, NULL),
(65, 15, 26, 1, NULL),
(66, 15, 27, -1, NULL),
(67, 16, 23, -1, NULL),
(68, 16, 24, 1, NULL),
(69, 16, 25, 1, NULL),
(70, 16, 26, 1, NULL),
(71, 16, 27, 3, NULL),
(72, 17, 41, 0, NULL),
(73, 17, 42, 1, NULL),
(74, 17, 43, 7, NULL),
(75, 17, 44, 10, NULL),
(76, 17, 45, 15, NULL),
(77, 18, 21, -5, NULL),
(78, 18, 22, 7, NULL),
(79, 19, 46, 3, NULL),
(80, 19, 47, 1, NULL),
(81, 19, 48, -2, NULL),
(82, 20, 21, 1, NULL),
(83, 20, 22, 3, NULL),
(84, 20, 49, 2, NULL),
(85, 21, 23, 9, NULL),
(86, 21, 24, 5, NULL),
(87, 21, 25, 5, NULL),
(88, 21, 26, 5, NULL),
(89, 21, 27, 2, NULL),
(90, 22, 50, 7, NULL),
(91, 22, 51, 3, NULL),
(92, 22, 52, 1, NULL),
(93, 23, 23, 2, NULL),
(94, 23, 24, 4, NULL),
(95, 23, 25, 4, NULL),
(96, 23, 26, 4, NULL),
(97, 23, 27, 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE `edad` (
  `id` int(11) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `edad`
--

INSERT INTO `edad` (`id`, `edad`, `idTexto`) VALUES
(1, 'Menos de 16 años', NULL),
(2, 'Entre 17 y 36', NULL),
(3, 'Entre 37 y 56', NULL),
(4, 'de 57 a 76', NULL),
(5, 'Más de 76', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacioCasas`
--

CREATE TABLE `espacioCasas` (
  `id` int(11) NOT NULL,
  `espacio` varchar(45) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `espacioCasas`
--

INSERT INTO `espacioCasas` (`id`, `espacio`, `idTexto`) VALUES
(1, 'Menos de 60 m2', NULL),
(2, 'Entre 61 y 120 m2', NULL),
(3, 'Más de 121 m2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `nivel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `nivel`) VALUES
(1, 'Ninguno'),
(2, 'Primer grado'),
(3, 'Segundo grado'),
(4, 'Tercer grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `ingresos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `ingresos`) VALUES
(1, 'Hasta 5.000 € / $us.'),
(2, 'Entre 5.000 y 10.000 € / $us.'),
(3, 'Entre 10.000 y 20.000 € / $us.'),
(4, 'Entre 20.000 y 40.000 € / $us.'),
(5, 'Más 40.000 € / $us.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numPersonas`
--

CREATE TABLE `numPersonas` (
  `id` int(11) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `numPersonas`
--

INSERT INTO `numPersonas` (`id`, `numero`, `idTexto`) VALUES
(1, 'Uno', NULL),
(2, 'Dos', NULL),
(3, 'Tres', NULL),
(4, 'Más de tres', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`) VALUES
(1, 'Afganistán'),
(2, 'Islas Gland'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antártida'),
(9, 'Antigua y Barbuda'),
(10, 'Antillas Holandesas'),
(11, 'Arabia Saudí'),
(12, 'Argelia'),
(13, 'Argentina'),
(14, 'Armenia'),
(15, 'Aruba'),
(16, 'Australia'),
(17, 'Austria'),
(18, 'Azerbaiyán'),
(19, 'Bahamas'),
(20, 'Bahréin'),
(21, 'Bangladesh'),
(22, 'Barbados'),
(23, 'Bielorrusia'),
(24, 'Bélgica'),
(25, 'Belice'),
(26, 'Benin'),
(27, 'Bermudas'),
(28, 'Bhután'),
(29, 'Bolivia'),
(30, 'Bosnia y Herzegovina'),
(31, 'Botsuana'),
(32, 'Isla Bouvet'),
(33, 'Brasil'),
(34, 'Brunéi'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cabo Verde'),
(39, 'Islas Caimán'),
(40, 'Camboya'),
(41, 'Camerún'),
(42, 'Canadá'),
(43, 'República Centroafricana'),
(44, 'Chad'),
(45, 'República Checa'),
(46, 'Chile'),
(47, 'China'),
(48, 'Chipre'),
(49, 'Isla de Navidad'),
(50, 'Ciudad del Vaticano'),
(51, 'Islas Cocos'),
(52, 'Colombia'),
(53, 'Comoras'),
(54, 'República Democrática del Congo'),
(55, 'Congo'),
(56, 'Islas Cook'),
(57, 'Corea del Norte'),
(58, 'Corea del Sur'),
(59, 'Costa de Marfil'),
(60, 'Costa Rica'),
(61, 'Croacia'),
(62, 'Cuba'),
(63, 'Dinamarca'),
(64, 'Dominica'),
(65, 'República Dominicana'),
(66, 'Ecuador'),
(67, 'Egipto'),
(68, 'El Salvador'),
(69, 'Emiratos Árabes Unidos'),
(70, 'Eritrea'),
(71, 'Eslovaquia'),
(72, 'Eslovenia'),
(73, 'España'),
(74, 'Islas ultramarinas de Estados Unidos'),
(75, 'Estados Unidos'),
(76, 'Estonia'),
(77, 'Etiopía'),
(78, 'Islas Feroe'),
(79, 'Filipinas'),
(80, 'Finlandia'),
(81, 'Fiyi'),
(82, 'Francia'),
(83, 'Gabón'),
(84, 'Gambia'),
(85, 'Georgia'),
(86, 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'Ghana'),
(88, 'Gibraltar'),
(89, 'Granada'),
(90, 'Grecia'),
(91, 'Groenlandia'),
(92, 'Guadalupe'),
(93, 'Guam'),
(94, 'Guatemala'),
(95, 'Guayana Francesa'),
(96, 'Guinea'),
(97, 'Guinea Ecuatorial'),
(98, 'Guinea-Bissau'),
(99, 'Guyana'),
(100, 'Haití'),
(101, 'Islas Heard y McDonald'),
(102, 'Honduras'),
(103, 'Hong Kong'),
(104, 'Hungría'),
(105, 'India'),
(106, 'Indonesia'),
(107, 'Irán'),
(108, 'Iraq'),
(109, 'Irlanda'),
(110, 'Islandia'),
(111, 'Israel'),
(112, 'Italia'),
(113, 'Jamaica'),
(114, 'Japón'),
(115, 'Jordania'),
(116, 'Kazajstán'),
(117, 'Kenia'),
(118, 'Kirguistán'),
(119, 'Kiribati'),
(120, 'Kuwait'),
(121, 'Laos'),
(122, 'Lesotho'),
(123, 'Letonia'),
(124, 'Líbano'),
(125, 'Liberia'),
(126, 'Libia'),
(127, 'Liechtenstein'),
(128, 'Lituania'),
(129, 'Luxemburgo'),
(130, 'Macao'),
(131, 'ARY Macedonia'),
(132, 'Madagascar'),
(133, 'Malasia'),
(134, 'Malawi'),
(135, 'Maldivas'),
(136, 'Malí'),
(137, 'Malta'),
(138, 'Islas Malvinas'),
(139, 'Islas Marianas del Norte'),
(140, 'Marruecos'),
(141, 'Islas Marshall'),
(142, 'Martinica'),
(143, 'Mauricio'),
(144, 'Mauritania'),
(145, 'Mayotte'),
(146, 'México'),
(147, 'Micronesia'),
(148, 'Moldavia'),
(149, 'Mónaco'),
(150, 'Mongolia'),
(151, 'Montserrat'),
(152, 'Mozambique'),
(153, 'Myanmar'),
(154, 'Namibia'),
(155, 'Nauru'),
(156, 'Nepal'),
(157, 'Nicaragua'),
(158, 'Níger'),
(159, 'Nigeria'),
(160, 'Niue'),
(161, 'Isla Norfolk'),
(162, 'Noruega'),
(163, 'Nueva Caledonia'),
(164, 'Nueva Zelanda'),
(165, 'Omán'),
(166, 'Países Bajos'),
(167, 'Pakistán'),
(168, 'Palau'),
(169, 'Palestina'),
(170, 'Panamá'),
(171, 'Papúa Nueva Guinea'),
(172, 'Paraguay'),
(173, 'Perú'),
(174, 'Islas Pitcairn'),
(175, 'Polinesia Francesa'),
(176, 'Polonia'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reino Unido'),
(181, 'Reunión'),
(182, 'Ruanda'),
(183, 'Rumania'),
(184, 'Rusia'),
(185, 'Sahara Occidental'),
(186, 'Islas Salomón'),
(187, 'Samoa'),
(188, 'Samoa Americana'),
(189, 'San Cristóbal y Nevis'),
(190, 'San Marino'),
(191, 'San Pedro y Miquelón'),
(192, 'San Vicente y las Granadinas'),
(193, 'Santa Helena'),
(194, 'Santa Lucía'),
(195, 'Santo Tomé y Príncipe'),
(196, 'Senegal'),
(197, 'Serbia y Montenegro'),
(198, 'Seychelles'),
(199, 'Sierra Leona'),
(200, 'Singapur'),
(201, 'Siria'),
(202, 'Somalia'),
(203, 'Sri Lanka'),
(204, 'Suazilandia'),
(205, 'Sudáfrica'),
(206, 'Sudán'),
(207, 'Suecia'),
(208, 'Suiza'),
(209, 'Surinam'),
(210, 'Svalbard y Jan Mayen'),
(211, 'Tailandia'),
(212, 'Taiwán'),
(213, 'Tanzania'),
(214, 'Tayikistán'),
(215, 'Territorio Británico del Océano Índico'),
(216, 'Territorios Australes Franceses'),
(217, 'Timor Oriental'),
(218, 'Togo'),
(219, 'Tokelau'),
(220, 'Tonga'),
(221, 'Trinidad y Tobago'),
(222, 'Túnez'),
(223, 'Islas Turcas y Caicos'),
(224, 'Turkmenistán'),
(225, 'Turquía'),
(226, 'Tuvalu'),
(227, 'Ucrania'),
(228, 'Uganda'),
(229, 'Uruguay'),
(230, 'Uzbekistán'),
(231, 'Vanuatu'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Islas Vírgenes Británicas'),
(235, 'Islas Vírgenes de los Estados Unidos'),
(236, 'Wallis y Futuna'),
(237, 'Yemen'),
(238, 'Yibuti'),
(239, 'Zambia'),
(240, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `ccaa` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` enum('femenino','masculino','','') DEFAULT NULL,
  `tipoCasa` int(11) NOT NULL,
  `m2Casa` int(11) NOT NULL,
  `numPersonas` int(11) NOT NULL,
  `ingresos` int(11) NOT NULL,
  `conocimiento` int(11) NOT NULL,
  `estudios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `pais`, `ccaa`, `edad`, `sexo`, `tipoCasa`, `m2Casa`, `numPersonas`, `ingresos`, `conocimiento`, `estudios`) VALUES
(1, 73, 13, 4, 'masculino', 3, 1, 2, 2, 5, 3),
(2, 73, 15, 4, 'masculino', 1, 2, 1, 2, 5, 2),
(3, 73, 13, 2, 'femenino', 2, 2, 3, 5, 2, 4),
(4, 73, 9, 2, 'femenino', 2, 2, 4, 5, 2, 3),
(5, 73, 15, 4, 'femenino', 1, 3, 4, 5, 2, 2),
(6, 73, 12, 5, 'femenino', 1, 2, 2, 2, 5, 1),
(7, 73, 5, 3, 'femenino', 1, 1, 2, 3, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `id` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`id`, `idCategoria`, `idPregunta`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  `dependencia` int(11) DEFAULT NULL,
  `disponibilidad` tinyint(4) NOT NULL DEFAULT '1',
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `tipo`, `dependencia`, `disponibilidad`, `orden`) VALUES
(1, '¿Cuántos elementos de calefacción tienes en casa? (cuenta todos los radiadores, estufas, etc.)', 1, NULL, 1, 1),
(2, '¿Tu sistema de calefacción es central o individual?', 1, 3, 1, 2),
(3, 'Marca el número de radiadores:', 1, 3, 1, 3),
(4, 'Si tienes, marca los meses en que tienes encendida la calefacción', 2, 3, 1, 4),
(5, '¿Tienes una instalación de aire acondicionado?', 1, NULL, 1, 5),
(6, 'Si tienes, marca los meses en los que utilizas el aire acondicionado', 2, NULL, 1, 6),
(7, 'Si tienes calefacción y/o aire acondicionado y puedes regular la temperatura a voluntad, ¿Cuál es tu estilo de uso de la climatización?', 4, NULL, 1, 7),
(8, '¿Tienes dobles ventanas, o ventanas con doble cristal?', 1, NULL, 1, 8),
(9, '¿Tienes algún electrodoméstico con etiqueta energética \"A\" (o superior, A+, A++, A+++)', 1, NULL, 1, 9),
(10, '¿Qué vehículos usas por lo general para tus desplazamientos? (Marca más de uno si es necesario)', 1, NULL, 1, 10),
(11, '¿Cuánto tiempo tardas en desplazarte a tu trabajo o tu centro educativo? Si marcaste varias opciones en la pregunta anterior, señala el tiempo que tardas en la opción más rápida)', 1, NULL, 1, 11),
(12, 'Si tienes coche ¿cómo es de grande?', 4, NULL, 1, 12),
(13, 'Marca esta casilla si tu vehículo es eléctrico o híbrido', 2, NULL, 1, 13),
(14, 'Marca esta casilla si compraste tu coche hace más de diez años.', 2, NULL, 1, 14),
(15, '¿Vas solo en tu coche?', 4, NULL, 1, 15),
(16, '¿Con qué frecuencia haces la compra?', 4, NULL, 1, 16),
(17, '¿Cuál es tu relación con las plantas?', 1, NULL, 1, 17),
(18, 'Si tienes muchas plantas para regar, ¿empleas algún sistema de riego economizador? (es decir, riego por goteo, hidromacetas, temporizador, etc.)', 1, NULL, 1, 18),
(19, '¿Cuántos elementos economizadores de agua hay instalados en la fontanería de tu casa? (doble tecla en WC, botón de parada a voluntad, perlizadores o aeradores en grifos, etc.)', 1, NULL, 1, 19),
(20, '¿Intentas evitar la compra de productos marcados con estas indicaciones?', 1, NULL, 1, 20),
(21, '¿Cuál es tu relación con la carne?', 4, NULL, 1, 21),
(22, '¿Hay alguna de estas cosas en tu domicilio?\r\nUn sitio para guardar el papel y cartón desechado\r\nUn cubo para botellas y frascos de vidrio vacíos\r\nUn cubo o bolsa para meter las latas, bricks y envases de plástico usados\r\nUn lugar para medicamentos, etc', 1, NULL, 1, 22),
(23, '¿Cómo sueles comprar los alimentos?', 4, NULL, 1, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responde`
--

CREATE TABLE `responde` (
  `id` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idRespuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `responde`
--

INSERT INTO `responde` (`id`, `idPersona`, `idRespuesta`) VALUES
(23, 1, 3),
(24, 1, 4),
(25, 1, 7),
(26, 1, 19),
(27, 1, 20),
(28, 1, 9),
(29, 1, 10),
(30, 1, 11),
(31, 1, 22),
(32, 1, 36),
(33, 1, 40),
(34, 1, 42),
(35, 1, 48),
(36, 1, 52),
(37, 1, 68),
(38, 1, 73),
(39, 1, 79),
(40, 1, 84),
(41, 1, 85),
(42, 1, 91),
(43, 1, 94),
(44, 2, 2),
(45, 2, 22),
(46, 2, 41),
(47, 2, 43),
(48, 2, 45),
(49, 2, 51),
(50, 2, 59),
(51, 2, 62),
(52, 2, 68),
(53, 2, 75),
(54, 2, 78),
(55, 2, 80),
(56, 2, 84),
(57, 2, 86),
(58, 2, 92),
(59, 2, 93),
(60, 3, 3),
(61, 3, 5),
(62, 3, 8),
(63, 3, 19),
(64, 3, 20),
(65, 3, 9),
(66, 3, 10),
(67, 3, 11),
(68, 3, 21),
(69, 3, 29),
(70, 3, 30),
(71, 3, 35),
(72, 3, 40),
(73, 3, 42),
(74, 3, 45),
(75, 3, 53),
(76, 3, 56),
(77, 3, 63),
(78, 3, 68),
(79, 3, 75),
(80, 3, 77),
(81, 3, 81),
(82, 3, 82),
(83, 3, 86),
(84, 3, 92),
(85, 3, 94),
(86, 4, 3),
(87, 4, 5),
(88, 4, 8),
(89, 4, 19),
(90, 4, 20),
(91, 4, 9),
(92, 4, 10),
(93, 4, 11),
(94, 4, 21),
(95, 4, 29),
(96, 4, 30),
(97, 4, 36),
(98, 4, 40),
(99, 4, 42),
(100, 4, 45),
(101, 4, 52),
(102, 4, 56),
(103, 4, 60),
(104, 4, 62),
(105, 4, 68),
(106, 4, 74),
(107, 4, 77),
(108, 4, 81),
(109, 4, 82),
(110, 4, 86),
(111, 4, 92),
(112, 4, 94),
(113, 5, 3),
(114, 5, 5),
(115, 5, 8),
(116, 5, 18),
(117, 5, 19),
(118, 5, 20),
(119, 5, 9),
(120, 5, 10),
(121, 5, 11),
(122, 5, 12),
(123, 5, 22),
(124, 5, 36),
(125, 5, 40),
(126, 5, 42),
(127, 5, 45),
(128, 5, 52),
(129, 5, 59),
(130, 5, 62),
(131, 5, 68),
(132, 5, 76),
(133, 5, 77),
(134, 5, 81),
(135, 5, 82),
(136, 5, 86),
(137, 5, 92),
(138, 5, 94),
(139, 6, 2),
(140, 6, 36),
(141, 6, 41),
(142, 6, 44),
(143, 6, 50),
(144, 6, 67),
(145, 6, 74),
(146, 6, 78),
(147, 6, 80),
(148, 6, 84),
(149, 6, 86),
(150, 6, 91),
(151, 6, 94),
(152, 7, 1),
(153, 7, 22),
(154, 7, 40),
(155, 7, 42),
(156, 7, 50),
(157, 7, 51),
(158, 7, 67),
(159, 7, 72),
(160, 7, 81),
(161, 7, 82),
(162, 7, 89),
(163, 7, 92),
(164, 7, 93);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `respuesta`) VALUES
(23, '1'),
(6, '1 o 2'),
(24, '2'),
(25, '3'),
(7, '3 a 5'),
(26, '4'),
(27, '5'),
(8, '6 o más'),
(12, 'Abril'),
(16, 'Agosto'),
(34, 'Camino'),
(4, 'Central, común para todo el edificio'),
(29, 'Coche'),
(36, 'De 10 a 30 minutos'),
(37, 'De media a una hora'),
(20, 'Diciembre'),
(45, 'Disfruto de un gran jardín con césped'),
(9, 'Enero'),
(10, 'Febrero'),
(5, 'Individual, solo para mi vivienda'),
(15, 'Julio'),
(14, 'Junio'),
(11, 'Marzo'),
(38, 'Más de una hora'),
(13, 'Mayo'),
(35, 'Menos de 10 minutos'),
(32, 'Metro, tren o autobús'),
(30, 'Moto'),
(50, 'Ninguna'),
(46, 'Ninguno'),
(22, 'No'),
(41, 'No hay plantas en mi casa'),
(28, 'No lo se'),
(1, 'No tengo ninguno'),
(19, 'Noviembre'),
(49, 'Nunca me he fijado'),
(18, 'Octubre'),
(31, 'Otros vehículos urbanos: segway, urban wheel, patinete eléctrico, etc'),
(17, 'Septiembre'),
(21, 'Si'),
(39, 'Sí, es un eléctrico'),
(40, 'Sí, lo compré hace más de diez años'),
(2, 'Tengo alguna estufa o calefactor móvil'),
(43, 'Tengo algunas jardineras'),
(3, 'Tengo un sistema de calefacción con radiadores fijos'),
(52, 'Tres o cuatro'),
(44, 'Un jardincito'),
(51, 'Una o dos'),
(42, 'Unas pocas macetas'),
(47, 'Uno'),
(48, 'Varios'),
(33, 'Voy en bicicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textoInformativo`
--

CREATE TABLE `textoInformativo` (
  `id` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'radio'),
(2, 'checkbox'),
(3, 'select'),
(4, 'range');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoCasa`
--

CREATE TABLE `tipoCasa` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `idTexto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoCasa`
--

INSERT INTO `tipoCasa` (`id`, `tipo`, `idTexto`) VALUES
(1, 'Un chalet o vivienda aislada', NULL),
(2, 'Un adosado', NULL),
(3, 'Una vivienda en un bloque de pisos', NULL),
(4, 'Una vivienda en una manzana de casas', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ccaa_paises` (`idPais`);

--
-- Indices de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `depende`
--
ALTER TABLE `depende`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depende_pregunta` (`idPregunta`),
  ADD KEY `depende_respuesta` (`idRespuesta`),
  ADD KEY `fk_depende_textoinformativo` (`idTexto`);

--
-- Indices de la tabla `edad`
--
ALTER TABLE `edad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edad_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_espacioCasas_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_numPersonas_textoinformatico` (`idTexto`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_paises` (`pais`),
  ADD KEY `persona_ccaa` (`ccaa`),
  ADD KEY `persona_tipoCasa` (`tipoCasa`),
  ADD KEY `persona_m2Casa` (`m2Casa`),
  ADD KEY `persona_numPersonas` (`numPersonas`),
  ADD KEY `persona_ingresos` (`ingresos`),
  ADD KEY `persona_conocimientos` (`conocimiento`),
  ADD KEY `persona_studios` (`estudios`),
  ADD KEY `persona_edad` (`edad`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertence_categoria` (`idCategoria`),
  ADD KEY `pertence_pregunta` (`idPregunta`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pregunta_tipo` (`tipo`),
  ADD KEY `fk_pregunta_depende` (`dependencia`);

--
-- Indices de la tabla `responde`
--
ALTER TABLE `responde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responde_persona` (`idPersona`),
  ADD KEY `responde_respuesta` (`idRespuesta`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `respuesta` (`respuesta`);

--
-- Indices de la tabla `textoInformativo`
--
ALTER TABLE `textoInformativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipoCasa_textoinformatico` (`idTexto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `depende`
--
ALTER TABLE `depende`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `edad`
--
ALTER TABLE `edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `responde`
--
ALTER TABLE `responde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `textoInformativo`
--
ALTER TABLE `textoInformativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ccaa`
--
ALTER TABLE `ccaa`
  ADD CONSTRAINT `fk_ccaa_paises` FOREIGN KEY (`idPais`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `depende`
--
ALTER TABLE `depende`
  ADD CONSTRAINT `depende_pregunta` FOREIGN KEY (`idPregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `depende_respuesta` FOREIGN KEY (`idRespuesta`) REFERENCES `respuesta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_depende_textoinformativo` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `edad`
--
ALTER TABLE `edad`
  ADD CONSTRAINT `fk_edad_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `espacioCasas`
--
ALTER TABLE `espacioCasas`
  ADD CONSTRAINT `fk_espacioCasas_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `numPersonas`
--
ALTER TABLE `numPersonas`
  ADD CONSTRAINT `fk_numPersonas_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ccaa` FOREIGN KEY (`ccaa`) REFERENCES `ccaa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_conocimientos` FOREIGN KEY (`conocimiento`) REFERENCES `conocimientos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_edad` FOREIGN KEY (`edad`) REFERENCES `edad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_ingresos` FOREIGN KEY (`ingresos`) REFERENCES `ingresos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_m2Casa` FOREIGN KEY (`m2Casa`) REFERENCES `espacioCasas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_numPersonas` FOREIGN KEY (`numPersonas`) REFERENCES `numPersonas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_paises` FOREIGN KEY (`pais`) REFERENCES `paises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_studios` FOREIGN KEY (`estudios`) REFERENCES `estudios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `persona_tipoCasa` FOREIGN KEY (`tipoCasa`) REFERENCES `tipoCasa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `pertence_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pertence_pregunta` FOREIGN KEY (`idPregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_pregunta_depende` FOREIGN KEY (`dependencia`) REFERENCES `depende` (`id`),
  ADD CONSTRAINT `fk_pregunta_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`id`);

--
-- Filtros para la tabla `responde`
--
ALTER TABLE `responde`
  ADD CONSTRAINT `responde_depende` FOREIGN KEY (`idRespuesta`) REFERENCES `depende` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `responde_persona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipoCasa`
--
ALTER TABLE `tipoCasa`
  ADD CONSTRAINT `fk_tipoCasa_textoinformatico` FOREIGN KEY (`idTexto`) REFERENCES `textoInformativo` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
