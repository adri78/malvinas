-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2017 a las 19:08:31
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `re`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tvkm`
--

CREATE TABLE `tvkm` (
  `idvkm` int(11) NOT NULL,
  `ValorKM` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tvkm`
--

INSERT INTO `tvkm` (`idvkm`, `ValorKM`) VALUES
(1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_chofer`
--

CREATE TABLE `t_chofer` (
  `idch` int(11) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Celu` varchar(20) NOT NULL,
  `Tel` int(20) NOT NULL,
  `Reg` varchar(20) NOT NULL,
  `Domicilio` varchar(220) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_chofer`
--

INSERT INTO `t_chofer` (`idch`, `Nombre`, `Celu`, `Tel`, `Reg`, `Domicilio`, `Status`) VALUES
(1, 'CHOFER  A', '78', 456, '987654', 'CALLE 2323', 1),
(3, 'JUAN', '123', 456, '3232', 'CASA XXX', 1),
(4, 'chofer xxxxxb', '9999', 456, '00212', 'calle t', 0),
(5, '13456', '8888', 9999, '123456', 'CALLE BUENA', 0),
(6, 'CHOFER B', '8888', 9999, '23.354.687', 'CALLE BUENA', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_clientes`
--

CREATE TABLE `t_clientes` (
  `idcli` int(11) NOT NULL,
  `Cliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` int(35) NOT NULL,
  `Domicilio` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_clientes`
--

INSERT INTO `t_clientes` (`idcli`, `Cliente`, `Telefono`, `Domicilio`, `Codigo`) VALUES
(1, 'SOFIA  LEYES', 42980022, 'direccion', '22'),
(2, 'ANA ', 42840025, 'direccion', '25'),
(3, 'MELISA IBAÑEZ', 42980035, 'direccion', '35'),
(4, 'CONFORTO MARIO', 42790040, 'direccion', '40'),
(5, 'BRENDA GONZALEZ', 1561010042, 'direccion', '42'),
(6, 'CRISTINA MERIDA', 50830045, 'direccion', '45'),
(7, 'NORMA SEGOVIA', 42140049, 'direccion', '49'),
(8, 'FAMILIA TERLUK', 42146308, 'direccion', '54'),
(9, 'RUBEN YAMAL', 42310055, 'direccion', '55'),
(10, 'CARMEN ', 0, 'direccion', '56'),
(11, 'CECILIA VIDELA', 1557340072, 'direccion', '72'),
(12, 'YESICA OLIVA', 42820075, 'direccion', '75'),
(13, 'ILDA LUNA', 42386726, 'direccion', '77'),
(14, 'MIRIAM GARCIA', 0, 'direccion', '83'),
(15, 'PAMELA SUR', 156660090, 'direccion', '90'),
(16, 'ANA ISABEL ACEBEDO', 42900108, 'direccion', '108'),
(17, 'JUAN ESPOSITO', 1561320113, 'direccion', '113'),
(18, 'NELSON MIRANDA', 42140123, 'direccion', '123'),
(19, 'NICOLAS ROLANDO ZUCCA', 42980124, 'direccion', '124'),
(20, 'PAULA ', 1110126, 'direccion', '126'),
(21, 'MARIO LEO', 0, 'direccion', '127'),
(22, 'WALTER GONZALEZ', 42980128, 'direccion', '128'),
(23, 'MIRIAN MONICA MORALES', 0, 'direccion', '133'),
(24, 'sandra mendez', 1530316652, 'direccion', '135'),
(25, ' GAUNA', 42310138, 'direccion', '138'),
(26, 'ROMINA SANCHEZ', 4238, 'direccion', '140'),
(27, 'FIAMBRERIA LA CABAÑA', 1557030142, 'direccion', '142'),
(28, 'LUJAN RAMIREZ', 0, 'direccion', '149'),
(29, 'HILDA SOTO', 41500151, 'direccion', '151'),
(30, 'LUIS SOTO', 0, 'direccion', '158'),
(31, 'EVER ', 42940159, 'direccion', '159'),
(32, 'PASTOR TORRES', 42310162, 'direccion', '162'),
(33, 'MORENA  ', 0, 'direccion', '163'),
(34, 'NARCISA ACOSTA', 42140165, 'direccion', '165'),
(35, 'RICARDO ENERO', 54, 'direccion', '168'),
(36, 'GLADYS ', 0, 'direccion', '175'),
(37, 'mayra', 1568939193, 'direccion', '176'),
(38, 'NANCY ', 1530240181, 'direccion', '181'),
(39, 'EZEQUIEL SANDOVAL', 20050564, 'direccion', '184'),
(40, ' CHAVEZ', 42140193, 'direccion', '193'),
(41, 'ANDREA CHAPARRO', 1160141067, 'direccion', '203'),
(42, 'JESICA ', 0, 'direccion', '206'),
(43, 'SANDRA RAMIREZ', 42640208, 'direccion', '208'),
(44, 'SERPERT CORDOBA', 1160320211, 'direccion', '211'),
(45, 'CECILIA TERESA ', 42140213, 'direccion', '213'),
(46, 'RUBEN  GONZALEZ', 42930217, 'direccion', '217'),
(47, 'SONIA GOMEZ', 0, 'direccion', '230'),
(48, 'ERICA   MAIDANA', 4293, 'direccion', '241'),
(49, 'VANINA  RIVADANEIRA', 0, 'direccion', '248'),
(50, 'ESTHER CACERES', 154620253, 'direccion', '253'),
(51, 'NATALIA  BASUALDO', 42140263, 'direccion', '263'),
(52, 'ZULMA MARINA MEDINA ', 4297, 'direccion', '264'),
(53, 'PEDRO FERNANDEZ', 42840267, 'direccion', '267'),
(54, 'CAROLINA  BORDONALI', 42310277, 'direccion', '277'),
(55, 'CARLOS  LENCINA', 42978141, 'direccion', '278'),
(56, 'DIEGO  RICARD', 42310283, 'direccion', '283'),
(57, 'ALEJANDRA AGUIRRE', 42140291, 'direccion', '291'),
(58, ' FERNANDEZ', 1558120296, 'direccion', '296'),
(59, 'ANA MARIA SECCHI', 42930301, 'direccion', '301'),
(60, 'SANDRA CAMPOS', 1559400302, 'direccion', '302'),
(61, 'BEATRIZ  QUIROGA', 42310309, 'direccion', '309'),
(62, 'MARIO LEZANO', 1564070312, 'direccion', '312'),
(63, 'SERGIO ', 54, 'direccion', '327'),
(64, ' SELVA DIAZ', 0, 'direccion', '330'),
(65, 'PATRICIA QUINTIEROS', 9, 'direccion', '332'),
(66, 'LORENA VILLANUEVA', 1131100333, 'direccion', '333'),
(67, 'JUAN CARLOS  LOPEZ', 42386740, 'direccion', '338'),
(68, 'PATRICIA  CORONEL', 0, 'direccion', '349'),
(69, 'MARIA NAVARRO', 1568460352, 'direccion', '352'),
(70, 'PEREZ GONZALEZ', 42140357, 'direccion', '357'),
(71, 'ANDREOTI  ABOMORATO', 50830359, 'direccion', '359'),
(72, 'PABLO TUÑON', 42980368, 'direccion', '368'),
(73, 'MONICA VELAZQUEZ', 42940378, 'direccion', '378'),
(74, 'OMAR FAMA', 42140379, 'direccion', '379'),
(75, 'JUAN DETRALIS', 1540840390, 'direccion', '390'),
(76, 'JOSE LUIS REBELEN', 1567380392, 'direccion', '392'),
(77, 'MABEL CHIELLI', 42930399, 'direccion', '399'),
(78, 'JUAN ANTONIO JAKOWZUK', 42380400, 'direccion', '400'),
(79, 'T GELELES', 1560920409, 'direccion', '409'),
(80, 'MAXIMILIANO GARCIA', 42987570, 'direccion', '421'),
(81, 'NATALIA  LUCONI', 1557740422, 'direccion', '422'),
(82, 'FERNANDO SOLER', 42140423, 'direccion', '423'),
(83, 'FAMILIA RUIZ', 42810425, 'direccion', '425'),
(84, 'LORENA SANCHEZ', 1144390428, 'direccion', '428'),
(85, 'MIRIAN FERNANDEZ', 42960429, 'direccion', '429'),
(86, 'SARA SOFIA FRANCO', 0, 'direccion', '439'),
(87, 'RODRIGO ARAGON', 4294, 'direccion', '449'),
(88, 'CLAUDIA PAREDES', 0, 'direccion', '452'),
(89, 'SILVIA  RUIZ DIAZ', 42930460, 'direccion', '460'),
(90, 'FATIMA  ENRIQUES', 42140465, 'direccion', '465'),
(91, 'ANDRES ESPINELI', 42930470, 'direccion', '470'),
(92, 'ALFREDO VELARDI', 43870471, 'direccion', '471'),
(93, 'FRANCISCO ', 42140479, 'direccion', '479'),
(94, 'MONICA ANDRADE', 42380487, 'direccion', '487'),
(95, 'FLORENCIA  ', 42940500, 'direccion', '500'),
(96, 'JUAN JOSE NOWOSAD', 42930510, 'direccion', '510'),
(97, 'JORGE ARANDA', 1566400512, 'direccion', '512'),
(98, 'MARIANO LOPEZ', 0, 'direccion', '516'),
(99, ' RUIZ DIAZ', 1561290518, 'direccion', '518'),
(100, 'PANADERIA LUJAN', 42310544, 'direccion', '544'),
(101, 'ALDO CAÑAS', 1562570551, 'direccion', '551'),
(102, 'ELENA MALCHUK', 1540627911, 'direccion', '552'),
(103, 'norma fierro', 4214, 'direccion', '553'),
(104, ' BEATRIZ LUACES', 42940557, 'direccion', '557'),
(105, 'DAMIAN ', 1540430564, 'direccion', '564'),
(106, 'OLGA BAHLYK', 0, 'direccion', '567'),
(107, 'JORGE  ALVARELO', 0, 'direccion', '570'),
(108, 'CESAR  PAVETTI', 42140573, 'direccion', '573'),
(109, 'MARIANELA SILVA', 1144490575, 'direccion', '575'),
(110, 'ROMINA FARIAS', 42860576, 'direccion', '576'),
(111, 'MARIA ROSA  PEREZ', 42140587, 'direccion', '587'),
(112, ' LUQUE', 0, 'direccion', '602'),
(113, 'TERESA CUELLO', 1164540607, 'direccion', '607'),
(114, 'HUGO FARIAS', 1566550612, 'direccion', '612'),
(115, 'M SILVIA NUÑEZ NUÑEZ', 0, 'direccion', '618'),
(116, 'SERGIO ESCOBAR', 2147483647, 'direccion', '637'),
(117, 'PIERRE SALAS', 42840638, 'direccion', '638'),
(118, 'JOSE LUIS PEREZ', 42930644, 'direccion', '644'),
(119, 'clara ', 0, 'direccion', '651'),
(120, 'MATIAS BURGOS', 42940659, 'direccion', '652'),
(121, ' ROQUE FARIAS', 0, 'direccion', '656'),
(122, 'norma ortiz', 1523054998, 'direccion', '663'),
(123, 'EDGARDO PEREYRO', 42310676, 'direccion', '676'),
(124, 'MIRTA PAYVA', 42930685, 'direccion', '685'),
(125, 'EDUARDO SUAREZ', 1559890689, 'direccion', '689'),
(126, 'VALENTIN PARED', 1563920690, 'direccion', '690'),
(127, 'ANABELA MARINGOLO', 49330697, 'direccion', '697'),
(128, 'MARTA SANCHEZ', 49330699, 'direccion', '699'),
(129, 'LEANDRO PANIZZA', 1567500703, 'direccion', '703'),
(130, 'ANDREA  FERREIRA', 20031737, 'direccion', '720'),
(131, 'MARISA ', 1532130722, 'direccion', '722'),
(132, 'HORACIO REYNOSO', 42930728, 'direccion', '728'),
(133, 'ISABEL CEJAS', 42980729, 'direccion', '729'),
(134, 'SUSANA BEATRIZ  RODRIGUEZ', 1535970739, 'direccion', '739'),
(135, 'CARLOS MORALES', 1568670749, 'direccion', '749'),
(136, 'RAMON FELLIPE TOMAINO', 1559750754, 'direccion', '754'),
(137, 'ESTER ARGAÑARAZ', 0, 'direccion', '768'),
(138, 'OSVALDO YUGES', 42140786, 'direccion', '786'),
(139, 'PEDRO ROLDAN', 1562110795, 'direccion', '795'),
(140, 'MARIA ROLDAN', 42310801, 'direccion', '801'),
(141, 'CLAUDIA ', 42140810, 'direccion', '810'),
(142, 'CARMEN  LEZCANO', 42930817, 'direccion', '817'),
(143, 'IVAN  YEDES', 0, 'direccion', '821'),
(144, 'CLARA ', 42147710, 'direccion', '826'),
(145, 'SANDRA AVALOS', 42386741, 'direccion', '835'),
(146, 'VICTOR ROMAN', 0, 'direccion', '845'),
(147, 'GABRIEL FISCINA', 42980848, 'direccion', '848'),
(148, 'EUCLIDES MOLINAS', 42140849, 'direccion', '849'),
(149, 'SANDRA SANCHEZ', 1563030856, 'direccion', '852'),
(150, ' MONICA PEREYRA', 42310854, 'direccion', '854'),
(151, 'sol roman', 1111, 'direccion', '856'),
(152, 'RAUL  BORDON ', 0, 'direccion', '859'),
(153, 'MARIA CARRIZO', 1565830861, 'direccion', '861'),
(154, 'MARCELA  ', 0, 'direccion', '864'),
(155, 'LORENA ALVARENQUE', 1562060869, 'direccion', '869'),
(156, 'ALEJANDRO FERNANDEZ', 2147483647, 'direccion', '870'),
(157, 'ALEJANDRO  TETRIL', 42310874, 'direccion', '874'),
(158, 'OSCAR  ALDERETE', 1566900879, 'direccion', '879'),
(159, 'POCHI ', 42900889, 'direccion', '889'),
(160, 'LAURA DE INOCENTIS', 11111, 'direccion', '890'),
(161, 'GISELA  BILLORDO', 1557220912, 'direccion', '912'),
(162, 'MARIA DEL CARMEN  VARGAS', 1161310914, 'direccion', '914'),
(163, 'ERICA REARTES', 1550830936, 'direccion', '936'),
(164, ' SENA', 1556450938, 'direccion', '938'),
(165, 'DORA  FLORES', 42140939, 'direccion', '939'),
(166, 'MARIA MORENO', 1538130949, 'direccion', '949'),
(167, 'MARIO ', 42140958, 'direccion', '958'),
(168, 'GABRIELA  MALDONADO', 42940962, 'direccion', '962'),
(169, 'PEDRO GONZALEZ', 42141348, 'direccion', '964'),
(170, 'CRISTIAN BRIZUELA', 42310960, 'direccion', '968'),
(171, 'LILIANA IMPINI', 1558550970, 'direccion', '970'),
(172, 'GUSTAVO BENITEZ', 42140975, 'direccion', '975'),
(173, 'PAULA PEREZ', 42140989, 'direccion', '989'),
(174, 'OTAVINA  ARUTTI', 42900990, 'direccion', '990'),
(175, 'MARTA FALLARES', 1565101002, 'direccion', '1002'),
(176, ' AMADOR VALENTE', 42991007, 'direccion', '1007'),
(177, 'J.LUIS AIRALA', 42981014, 'direccion', '1014'),
(178, 'CRISTIAN BOYDER', 46931015, 'direccion', '1015'),
(179, 'DAIANA LOCATELLI', 42931025, 'direccion', '1025'),
(180, 'fransisco perez ', 4387, 'direccion', '1028'),
(181, 'ROXANA LUQUE', 42931030, 'direccion', '1030'),
(182, 'HORACIO MONTIEL', 1563581031, 'direccion', '1031'),
(183, 'ANA MARIA MANINONI', 42631035, 'direccion', '1035'),
(184, 'FLIA.GOMEZ LUNA', 42141038, 'direccion', '1038'),
(185, 'NOELIA  PEREZ', 42841047, 'direccion', '1047'),
(186, 'JORGE CANO', 2147483647, 'direccion', '1048'),
(187, 'LORENA FIAKOSKY', 1536451058, 'direccion', '1058'),
(188, 'VICTOR AGUILERA', 0, 'direccion', '1061'),
(189, 'LILIANA- SIMON FLIA  AYALA', 1540361062, 'direccion', '1062'),
(190, 'ALFONSO GONZALEZ', 42141075, 'direccion', '1075'),
(191, 'JUAN SIBERHAR', 42141079, 'direccion', '1079'),
(192, 'ANDRES CUOZZO', 1563541081, 'direccion', '1081'),
(193, ' TRINIDAD', 40401087, 'direccion', '1087'),
(194, 'ADA  MEDINA', 42141092, 'direccion', '1092'),
(195, 'CINTIA  AGUILERA', 1558961093, 'direccion', '1093'),
(196, 'ELSA MARTA LUNA', 42141099, 'direccion', '1099'),
(197, 'HAYDEE SEQUEIRA', 42451106, 'direccion', '1106'),
(198, 'EDUARDO RODRIGUEZ', 42971108, 'direccion', '1108'),
(199, 'JOHANNA ENRRIQUEZ', 1565821112, 'direccion', '1112'),
(200, 'GRACIELA  HESSEL', 42311120, 'direccion', '1120'),
(201, 'VANDA  ARNESINO', 42141121, 'direccion', '1121'),
(202, 'ROXANA ALVAREZ', 1564901128, 'direccion', '1128'),
(203, ' SANTILLAN', 1531101137, 'direccion', '1137'),
(204, 'FLIA.PINTOS MARTINEZ', 1560141141, 'direccion', '1141'),
(205, 'IRIS DODER', 42941152, 'direccion', '1152'),
(206, 'HAYDEE VARELA', 42141156, 'direccion', '1156'),
(207, 'BETINA ', 577, 'direccion', '1161'),
(208, 'MARIA PUCINETI', 52901166, 'direccion', '1166'),
(209, 'BEATRIZ  BARREIRO', 42931176, 'direccion', '1176'),
(210, 'EDUARDO  ORTIZ', 1550831188, 'direccion', '1188'),
(211, 'SILVIA ORONA', 42141189, 'direccion', '1189'),
(212, 'ROBERTO JESUS DEL GAUDIO', 1161231190, 'direccion', '1190'),
(213, 'ANDREA  IÑIGUEZ', 0, 'direccion', '1201'),
(214, 'CARLOS DIAZ', 42141203, 'direccion', '1203'),
(215, 'NANCY ', 42931217, 'direccion', '1217'),
(216, 'LORENA ALBEDRO', 1566771227, 'direccion', '1227'),
(217, 'ALFREDO   DE CUADRA', 1554109446, 'direccion', '1228'),
(218, 'FAMILIA MANCUSO', 42141231, 'direccion', '1231'),
(219, 'COTILLON GUADALUPE', 1556201235, 'direccion', '1235'),
(220, 'KARINA FACU', 42141237, 'direccion', '1237'),
(221, 'LUIS CABRERA', 42141238, 'direccion', '1238'),
(222, 'JOHANA ', 0, 'direccion', '1242'),
(223, 'VALSESIA MELISA', 42981245, 'direccion', '1245'),
(224, 'OMAR LUIS BARRETO', 1566941252, 'direccion', '1252'),
(225, 'ANTONIA PERALTA', 0, 'direccion', '1253'),
(226, 'JORGE ACUÑA', 42981256, 'direccion', '1256'),
(227, 'MIRIAM  ORBE', 1558771260, 'direccion', '1260'),
(228, 'MA CRISTINA BARTOLINI', 43871263, 'direccion', '1263'),
(229, 'PAMELA ', 0, 'direccion', '1265'),
(230, 'MARIA ORTEGA', 4214, 'direccion', '1269'),
(231, 'BEATRIZ DOMINGUEZ', 1551021270, 'direccion', '1270'),
(232, 'OLGA MOLINA', 2147483647, 'direccion', '1271'),
(233, 'LEONARDO  GUERRA', 42311274, 'direccion', '1274'),
(234, 'CARINA TORRES', 42901286, 'direccion', '1286'),
(235, 'GRACIELA BELEN', 2147483647, 'direccion', '1294'),
(236, 'FAMILIA SUAREZ', 1531601297, 'direccion', '1297'),
(237, 'LUCIA  MUSIN', 1552471298, 'direccion', '1298'),
(238, 'SEBASTIAN KRYSKIW', 0, 'direccion', '1303'),
(239, 'IRMA MUJICA', 1137761306, 'direccion', '1306'),
(240, 'SILVANA RAMIREZ', 1568031310, 'direccion', '1310'),
(241, 'JUAN ALBERTO ', 42631315, 'direccion', '1315'),
(242, 'LUCIANO GONZALEZ', 716, 'direccion', '1325'),
(243, 'MARIA ESTER PELLEGRINI', 42941326, 'direccion', '1326'),
(244, 'CARINA MUZZUPPAPA', 42311328, 'direccion', '1328'),
(245, 'KARINA PERALTA', 0, 'direccion', '1333'),
(246, 'SILVANA ', 43871335, 'direccion', '1335'),
(247, 'MARIA ELENA MEDEROS', 42141336, 'direccion', '1336'),
(248, 'NORMA ESQUIVEL', 1564441341, 'direccion', '1341'),
(249, 'LEONIDAS KOWALENKE', 42981343, 'direccion', '1343'),
(250, 'LORENA GRAÑA', 40401348, 'direccion', '1348'),
(251, 'CELENI  MANZON', 11111, 'direccion', '1351'),
(252, 'ROSA FERNANDEZ', 1551611352, 'direccion', '1352'),
(253, 'CAPETINA ', 42311355, 'direccion', '1355'),
(254, 'HILDA DUARTE', 0, 'direccion', '1359'),
(255, 'MARIA INES SACARA', 1550101365, 'direccion', '1365'),
(256, 'AGUSTIN PEREIRA', 42386698, 'direccion', '1372'),
(257, 'RUTH GALARZA', 42141373, 'direccion', '1373'),
(258, 'S & S CELULARES CARLOS SILVA', 1555071376, 'direccion', '1376'),
(259, 'CLAUDIA MOREIRA', 42931382, 'direccion', '1382'),
(260, 'LILIA ', 42311384, 'direccion', '1384'),
(261, 'JAVIER BRAGA', 42931386, 'direccion', '1385'),
(262, 'MARTA MARTINEZ', 42981400, 'direccion', '1400'),
(263, 'JOSE SIGLETA', 0, 'direccion', '1402'),
(264, 'LIDIA RIOS', 43271411, 'direccion', '1411'),
(265, 'MA LUISA GEREZ', 42941412, 'direccion', '1412'),
(266, 'GABRIEL DARIO SOLANO', 1557741413, 'direccion', '1413'),
(267, 'ELODIA JARA', 42386732, 'direccion', '1415'),
(268, 'ERICA ', 42981419, 'direccion', '1419'),
(269, 'ESTELA CABRAL', 1569350142, 'direccion', '1420'),
(270, 'JUAN DIAZ', 0, 'direccion', '1426'),
(271, 'OLGA BEATRIZ FLORES', 1563361427, 'direccion', '1427'),
(272, 'GUSTAVO RODRIGUEZ', 1554941428, 'direccion', '1428'),
(273, 'EDELMIRA FERREIRA', 1569461433, 'direccion', '1433'),
(274, 'GOMERIA LUIS', 42931443, 'direccion', '1443'),
(275, 'HECTOR PARDO', 42141964, 'direccion', '1445'),
(276, 'BEATRIZ  FERNANDEZ', 4293, 'direccion', '1447'),
(277, 'ANA ', 42971452, 'direccion', '1452'),
(278, 'SILVIA ORONAS', 42311453, 'direccion', '1453'),
(279, 'JORGE QUINTEROS', 1568591464, 'direccion', '1464'),
(280, 'NORA SALVATIERRA ', 42931479, 'direccion', '1479'),
(281, 'ELVIRA  CACERES', 1538211480, 'direccion', '1480'),
(282, 'HECTOR MIR', 42141482, 'direccion', '1482'),
(283, 'CARINA SANCHEZ', 0, 'direccion', '1491'),
(284, 'DARIO MARCELO ALCARAZ', 0, 'direccion', '1492'),
(285, 'MARTA  CANTEROS', 42981497, 'direccion', '1497'),
(286, 'JESICA URIARTE', 42981500, 'direccion', '1500'),
(287, 'NORMA BEATRIZ MEZA', 1166771501, 'direccion', '1501'),
(288, 'ESTELA FERNANDOTORRES TORRES', 1550611508, 'direccion', '1508'),
(289, 'YAEL  PANIGASSI', 1558661515, 'direccion', '1515'),
(290, 'AZUCENA HERNANDEZ', 42311516, 'direccion', '1516'),
(291, 'MONICA DIAZ', 1556541521, 'direccion', '1521'),
(292, 'SERGIO  MARTINEZ', 1151101531, 'direccion', '1531'),
(293, 'HECTOR WILDER BUSTAMANTE', 1550078669, 'direccion', '1533'),
(294, 'JOHANA ARGAÑARAS', 40401540, 'direccion', '1540'),
(295, 'EVA ALBORNOZ', 42631541, 'direccion', '1541'),
(296, 'GRACIELA CONTRERAS', 43871546, 'direccion', '1546'),
(297, 'MARIANA  ORSINI', 1564731552, 'direccion', '1552'),
(298, 'PATRICIA MONJES', 42931554, 'direccion', '1554'),
(299, 'CARLA ', 1130211557, 'direccion', '1557'),
(300, 'CARLA  HERNANDEZ', 42931567, 'direccion', '1567'),
(301, 'ROSARIO GUGLIARE', 42981570, 'direccion', '1570'),
(302, 'ALEJANDRO CARRERA', 43672873, 'direccion', '1585'),
(303, 'OFELIA  AYALA', 42981586, 'direccion', '1586'),
(304, 'WALTER PEREZ', 42311587, 'direccion', '1587'),
(305, 'MIRTA SANCHES', 42141595, 'direccion', '1595'),
(306, 'PABLO PANIZA', 42141597, 'direccion', '1597'),
(307, 'MAYORISTA EL TREBOL', 42311599, 'direccion', '1599'),
(308, 'MIRTA ', 42311610, 'direccion', '1610'),
(309, 'GRACIELA PORTILLO ', 0, 'direccion', '1615'),
(310, 'EDUARDO BUET', 42981619, 'direccion', '1619'),
(311, 'MARIA  SOUTO', 42931620, 'direccion', '1620'),
(312, 'ELMA  ROSALES', 42931621, 'direccion', '1621'),
(313, 'ANA LAURA QUIROGA', 0, 'direccion', '1622'),
(314, 'MARIELA  WILVERRS', 42971623, 'direccion', '1623'),
(315, 'GABRIELA ORLANDO', 42931625, 'direccion', '1625'),
(316, 'J CARLOS CANALE', 1111, 'direccion', '1635'),
(317, 'MANUEL  MANTULAK', 1536721639, 'direccion', '1639'),
(318, 'VICTORIA GARCIA', 1556021647, 'direccion', '1647'),
(319, 'MIRANDA ', 42141650, 'direccion', '1650'),
(320, 'MEDINA  NOEMI', 42381653, 'direccion', '1653'),
(321, 'ALICIA    FOSARO', 42311661, 'direccion', '1661'),
(322, 'ALEJANDRIA NIEVAS', 4299, 'direccion', '1663'),
(323, 'CARLOS KUHN', 1556121665, 'direccion', '1665'),
(324, 'ERICA ROCIANO', 42311666, 'direccion', '1666'),
(325, 'GABRIELA ERYEGORENA', 42981668, 'direccion', '1668'),
(326, 'DORA ', 43871670, 'direccion', '1670'),
(327, 'GLADIS  GUZMAN', 42141678, 'direccion', '1676'),
(328, 'MA PAULA TOÑALES', 1566731677, 'direccion', '1677'),
(329, 'MARIO  ', 43871691, 'direccion', '1691'),
(330, 'MANUEL GOMEZ', 42931692, 'direccion', '1692'),
(331, 'MATIAS  PALACIOS', 1560451694, 'direccion', '1694'),
(332, 'CRISTINA PERSICO', 0, 'direccion', '1696'),
(333, 'SUSANA ALUAS', 42981702, 'direccion', '1702'),
(334, 'ALCIRA ALVAREZ', 42931704, 'direccion', '1704'),
(335, 'MARCELA  BONINI', 214801705, 'direccion', '1705'),
(336, 'SANDRA  CASTRO', 42931911, 'direccion', '1711'),
(337, 'EDUARDO GARCIA', 1561411714, 'direccion', '1714'),
(338, 'ALFREDO   CONDORIMOYO', 42631717, 'direccion', '1717'),
(339, 'LIDIA BUSTOS', 42981719, 'direccion', '1719'),
(340, 'KARINA  CAÑETE', 1565151720, 'direccion', '1720'),
(341, 'MARISA BARTOLI', 1537871723, 'direccion', '1723'),
(342, 'AGUSTIN  BERON', 42931737, 'direccion', '1737'),
(343, 'BETINA ALEGRE', 111111111, 'direccion', '1739'),
(344, ' ARIEL ARANDA', 1565511740, 'direccion', '1740'),
(345, 'ERMITAS GASALLA', 0, 'direccion', '1746'),
(346, 'SUSANA  BUSTAMANTE', 42141748, 'direccion', '1748'),
(347, 'PATRICIA FARIAS', 42311752, 'direccion', '1752'),
(348, 'MARCELA BRAZO', 42311753, 'direccion', '1753'),
(349, ' PIARDI ', 42311762, 'direccion', '1762'),
(350, 'NELIDA DE SACO', 42311764, 'direccion', '1764'),
(351, 'JORGE  SIMON', 42311765, 'direccion', '1765'),
(352, 'MARIA VIVES', 42311766, 'direccion', '1766'),
(353, 'ALDANA BRAVO', 42311767, 'direccion', '1767'),
(354, 'MARIA  RODRIGUEZ', 42311769, 'direccion', '1769'),
(355, 'OLGA  GAGGIO', 42311770, 'direccion', '1770'),
(356, 'ANDREA  GARCIA', 42311771, 'direccion', '1771'),
(357, 'CLAUDIA ANTONELLI', 42311774, 'direccion', '1774'),
(358, 'JUAN THOMPSON', 42311776, 'direccion', '1776'),
(359, 'YESICA AGUIN', 42311777, 'direccion', '1777'),
(360, 'SILVIA FERNANDEZ', 4214, 'direccion', '1780'),
(361, 'LUIS GALLARDO', 42311782, 'direccion', '1782'),
(362, 'MERCEDES UCRANIA 1062', 0, 'direccion', '1783'),
(363, 'NORMA ASTREMICH', 42976914, 'direccion', '1792'),
(364, 'omar RAMIREZ', 42976451, 'direccion', '1794'),
(365, 'CRISTIAN RAMIREZ', 42481802, 'direccion', '1802'),
(366, 'JACOBO RAIMON', 1532196172, 'direccion', '1806'),
(367, 'MABEL ', 42977635, 'direccion', '1809'),
(368, 'JUAN MEDINA', 0, 'direccion', '1810'),
(369, ' ANA GOMEZ', 42311817, 'direccion', '1817'),
(370, 'EMA  AGUILAR', 0, 'direccion', '1820'),
(371, 'ROSA CRISTINA  RATISZ', 42981621, 'direccion', '1821'),
(372, 'MIGUEL  ROJAS', 42191824, 'direccion', '1824'),
(373, 'MIGUEL ESPINOZA', 1554641825, 'direccion', '1825'),
(374, 'ZARAZARA LILIANA', 0, 'direccion', '1831'),
(375, 'EMILIO ROJAS', 50831834, 'direccion', '1834'),
(376, 'ANALIA VANESA TOVANI', 50831836, 'direccion', '1836'),
(377, 'PABLO DEÑACEAL', 54, 'direccion', '1845'),
(378, 'PABLO  MARMOL', 1564001851, 'direccion', '1851'),
(379, 'JUMBO VENECIANA', 2311855, 'direccion', '1855'),
(380, 'MONICA BLOIS', 42961859, 'direccion', '1859'),
(381, 'JAVIER (TURKO) RAVA', 1567240186, 'direccion', '1860'),
(382, 'VERONICA ', 1561011867, 'direccion', '1861'),
(383, 'CARLA BALBI', 42141865, 'direccion', '1865'),
(384, 'FAMILIA ', 42931881, 'direccion', '1881'),
(385, 'FAMILIA SANCHEZ', 42931883, 'direccion', '1883'),
(386, 'ANGELA CASTRO', 1558911885, 'direccion', '1885'),
(387, 'ALICIA VALUCI', 42931898, 'direccion', '1898'),
(388, ' LENCINA', 42941903, 'direccion', '1903'),
(389, 'MELINA BERNARDEZ', 1569061905, 'direccion', '1905'),
(390, 'MIGUEL SANTOS', 1561331906, 'direccion', '1906'),
(391, 'NATALIA ', 1558901907, 'direccion', '1907'),
(392, 'LEANDRO ATULA', 35341912, 'direccion', '1912'),
(393, 'HUGO  ARROJO', 1556401919, 'direccion', '1919'),
(394, 'MARIA  VILLA', 42901920, 'direccion', '1920'),
(395, 'ANGELA GILLOT', 42931922, 'direccion', '1922'),
(396, 'NORMA ', 42311937, 'direccion', '1937'),
(397, 'MARTIN DORADO', 1555931938, 'direccion', '1938'),
(398, 'JORGE MANZEIRA', 42941940, 'direccion', '1940'),
(399, 'JUAN PAREDES', 1554181945, 'direccion', '1945'),
(400, 'ROMINA VALLEJOS', 0, 'direccion', '1953'),
(401, 'AMALIA  TORRES', 42961956, 'direccion', '1956'),
(402, 'MIGUEL ANGEL  AYALA', 0, 'direccion', '1958'),
(403, 'CARLA MARTINEZ', 42311959, 'direccion', '1959'),
(404, 'GRACIELA ', 0, 'direccion', '1963'),
(405, 'DELIA ', 1559471965, 'direccion', '1965'),
(406, 'RAMON MANSILLA', 0, 'direccion', '1968'),
(407, 'HUGO ', 42141974, 'direccion', '1974'),
(408, 'AURORA INES RIBOREDO', 42961978, 'direccion', '1978'),
(409, ' LUIS ANGULO', 42141986, 'direccion', '1986'),
(410, 'SERGIO  OJEDA', 0, 'direccion', '1987'),
(411, ' CASANOVA', 40401988, 'direccion', '1988'),
(412, 'TEOFILA CHANQUIA', 0, 'direccion', '1989'),
(413, 'TERESA  QUINTANA', 0, 'direccion', '1990'),
(414, 'CLAUDIO MONTENEGRO', 111, 'direccion', '1997'),
(415, 'MIRTA  ARANDA', 42386742, 'direccion', '2004'),
(416, 'lorena herrera', 2005, 'direccion', '2005'),
(417, 'MONICA ARMOA', 42932006, 'direccion', '2006'),
(418, 'JAVIER BAEZ', 1567242007, 'direccion', '2007'),
(419, 'EVA MARTINEZ', 42932011, 'direccion', '2011'),
(420, 'MARTA DICHIACHIO', 1558672013, 'direccion', '2013'),
(421, 'natalia', 42842020, 'direccion', '2020'),
(422, 'OSCAR FOLIANI', 42932022, 'direccion', '2022'),
(423, ' MARTIN FLORES', 0, 'direccion', '2025'),
(424, 'AGUINAGA HECTOR', 2, 'direccion', '2026'),
(425, 'GUSTAVO  CONTRERAS', 0, 'direccion', '2028'),
(426, 'MARIA  GUERRA', 0, 'direccion', '2029'),
(427, 'ROSALVA MUSSIOLO', 42962031, 'direccion', '2031'),
(428, 'ROSA ALMADA', 42962034, 'direccion', '2034'),
(429, 'MABEL VALDEZ', 4214, 'direccion', '2039'),
(430, 'MERCEDES AUTORRADIO', 612, 'direccion', '2041'),
(431, 'MA LAURA RIVERA', 1557143752, 'direccion', '2046'),
(432, 'RAMON ROMERO', 42962051, 'direccion', '2051'),
(433, 'J CARLOS DOMINGUEZ', 1563762054, 'direccion', '2054'),
(434, 'JULIO  MEDINA', 2, 'direccion', '2060'),
(435, 'LUIS NOVILLO', 0, 'direccion', '2067'),
(436, 'MARIA PAULA MARTINEZ', 15, 'direccion', '2068'),
(437, 'PAULINO LEANDRO RUIZ', 0, 'direccion', '2074'),
(438, 'CRISTIAN DE LA CORTE', 1565962078, 'direccion', '2078'),
(439, 'DEBORA  SALAZAR', 2080, 'direccion', '2080'),
(440, 'ELENA ', 1561902081, 'direccion', '2081'),
(441, 'SUSANA ', 0, 'direccion', '2083'),
(442, 'ELENA ', 42942084, 'direccion', '2084'),
(443, 'LAURA LOPEZ', 1567842085, 'direccion', '2085'),
(444, ' MARCELO MOLINA', 1551822086, 'direccion', '2086'),
(445, 'ANDRES ANSELMO', 1153542095, 'direccion', '2095'),
(446, 'NORMA ICETA', 42976412, 'direccion', '2096'),
(447, 'NATALIA  GONZALEZ', 1556132107, 'direccion', '2107'),
(448, 'maria florencia nieto', 1167649399, 'direccion', '2109'),
(449, 'MIRIAM  MONZON', 42632111, 'direccion', '2111'),
(450, 'LUIS TAGLIANI', 42312112, 'direccion', '2112'),
(451, 'ALFONSO PINTOS', 42972122, 'direccion', '2122'),
(452, 'NATALIA VALDEZ', 11111, 'direccion', '2126'),
(453, 'PEDRO ANTONIO  IÑIGUEZ', 1551372127, 'direccion', '2127'),
(454, 'DANIEL RODRIGUEZ', 42382129, 'direccion', '2129'),
(455, 'MARTA  LEDEZMA', 42386668, 'direccion', '2130'),
(456, 'MABEL PIZARRO', 150542132, 'direccion', '2132'),
(457, 'JOSE LUIS FIGUEROA', 42972133, 'direccion', '2133'),
(458, 'GLADIS NOVILLO', 42980092, 'direccion', '2135'),
(459, 'GLADIS LEDESMA', 42812136, 'direccion', '2136'),
(460, 'JAVIER VARGAS', 42142137, 'direccion', '2137'),
(461, 'VIVIANA BARRIONUEVO', 1565052138, 'direccion', '2138'),
(462, 'ALBERTO  CALLEJAS', 1550094366, 'direccion', '2140'),
(463, 'JUAN  MOLINA', 42142147, 'direccion', '2147'),
(464, 'DIEGO PEREZ', 0, 'direccion', '2148'),
(465, 'ADRIANA GOMEZ', 42942150, 'direccion', '2150'),
(466, 'CARLOS RODRIGUEZ', 0, 'direccion', '2152'),
(467, 'DON ONES  NELCO', 1558902153, 'direccion', '2153'),
(468, 'MARCELA GAITE', 1566888301, 'direccion', '2155'),
(469, 'MAXIMILIANO CESPEDES', 1531732157, 'direccion', '2157'),
(470, 'FRANCISCO RAMIREZ', 0, 'direccion', '2163'),
(471, 'OSCAR ROMANI', 1563022164, 'direccion', '2164'),
(472, 'MARIA CEJAS', 0, 'direccion', '2166'),
(473, 'JORGE PREDIGER', 42842168, 'direccion', '2168'),
(474, 'CARLOS ALBERTO MARINZULICH', 42632170, 'direccion', '2170'),
(475, 'SEBASTIAN FECHNER', 0, 'direccion', '2172'),
(476, 'JULIO  YANO', 52652175, 'direccion', '2175'),
(477, 'SANTINA DE LA LLERA', 42982187, 'direccion', '2187'),
(478, 'MARIO EL DLOS  LOCALES', 0, 'direccion', '2188'),
(479, 'CARINA GIMENEZ', 0, 'direccion', '2199'),
(480, 'PABLO ANTONIO', 1562202200, 'direccion', '2200'),
(481, 'MONICA MONTES', 42142206, 'direccion', '2206'),
(482, 'MARISA MORALES', 42932209, 'direccion', '2209'),
(483, 'STELLA MARIS  MARTINEZ', 1558752213, 'direccion', '2213'),
(484, 'AURORA TRCHYEN', 0, 'direccion', '2220'),
(485, 'JORGE QUITO', 42942221, 'direccion', '2221'),
(486, 'las chicas', 22222222, 'direccion', '2222'),
(487, 'carina alegre hija mv 12', 2147483647, 'direccion', '2224'),
(488, 'HELADERIA CAPRI', 0, 'direccion', '2226'),
(489, 'ROMINA PORTUGAL', 2147483647, 'direccion', '2228'),
(490, 'GISELLE SALAS', 50832233, 'direccion', '2233'),
(491, 'MERCEDES OJEDA', 42812234, 'direccion', '2234'),
(492, 'OMAR MONTENEGRO', 42812235, 'direccion', '2235'),
(493, 'ADRIAN BRET', 1567292236, 'direccion', '2236'),
(494, 'CINTIA LORENA MONTES', 1551202241, 'direccion', '2241'),
(495, 'NATALIA FARIAS', 42932248, 'direccion', '2248'),
(496, 'VICTOR HUGO MORES', 0, 'direccion', '2249'),
(497, 'NORMA BANEGAS', 42932258, 'direccion', '2258'),
(498, 'MARCELO GODOY', 0, 'direccion', '2264'),
(499, 'MARIA  BAIZ', 42632267, 'direccion', '2267'),
(500, 'LUIS  ANDRADA', 0, 'direccion', '2268'),
(501, 'GUSTAVO RODRIGUEZ', 0, 'direccion', '2274'),
(502, 'ANDRES  ROMERO', 1565872280, 'direccion', '2280'),
(503, 'JUSTA DI DOMENICO', 1533252281, 'direccion', '2281'),
(504, 'LUIS ZABATTO', 0, 'direccion', '2284'),
(505, 'RENATO FERRARI', 42982287, 'direccion', '2287'),
(506, 'ANDRES j rosso 1157 gral acha ', 42982289, 'direccion', '2289'),
(507, 'MIRTA MATEOS', 42312295, 'direccion', '2295'),
(508, 'CARLOS ROJO', 42312297, 'direccion', '2297'),
(509, 'LEO SANCHES', 42977891, 'direccion', '2300'),
(510, 'LUIS SAMANIEGO', 42942302, 'direccion', '2302'),
(511, 'ELIZABETH SAQUILAN', 42902307, 'direccion', '2307'),
(512, 'CRISTINA   FILLET', 42982309, 'direccion', '2309'),
(513, ' RAMOS', 42982310, 'direccion', '2310'),
(514, 'SILVINA CAPOZZOLO', 1565402321, 'direccion', '2321'),
(515, 'MARISA ', 50922322, 'direccion', '2322'),
(516, 'GUSTAVO ZARZA', 1169732324, 'direccion', '2324'),
(517, 'BARBARA VALLEJOS', 1562582335, 'direccion', '2335'),
(518, 'M ARIA   ORTEGA', 42142336, 'direccion', '2336'),
(519, 'DANIEL VALENCIA', 42982337, 'direccion', '2337'),
(520, 'PAOLA PIÑERO', 42312338, 'direccion', '2338'),
(521, 'MARCELO FARIAS', 1562133465, 'direccion', '2347'),
(522, 'VIVIANA ABADIE', 1553202350, 'direccion', '2350'),
(523, 'ALICIA ', 1560032354, 'direccion', '2354'),
(524, 'ALICIA KUHN', 1566152372, 'direccion', '2372'),
(525, 'ALICIA ACEVEDO', 42812375, 'direccion', '2375'),
(526, 'NORMA DIMURO', 42812378, 'direccion', '2378'),
(527, 'HERNANDA ROJAS', 42942381, 'direccion', '2381'),
(528, 'PETRONA MORALES', 42812387, 'direccion', '2387'),
(529, 'SERGIO ZANAZZO', 42932388, 'direccion', '2388'),
(530, 'NATALIA BUET', 42312389, 'direccion', '2389'),
(531, 'ANIBAL PINTOS', 0, 'direccion', '2391'),
(532, 'DAVID  OJEDA', 1562872393, 'direccion', '2393'),
(533, 'MARIO JAVIER MIRANDA', 155232396, 'direccion', '2396'),
(534, 'NORMA  FARIAS', 42982397, 'direccion', '2397'),
(535, 'EMILIA PIZZERIA', 42942398, 'direccion', '2398'),
(536, 'M DEL CARMEN TRABADO', 42942407, 'direccion', '2407'),
(537, 'ROSA DELIA SANTI', 42982410, 'direccion', '2410'),
(538, 'CELVA RIVERO', 42932415, 'direccion', '2415'),
(539, 'ANASTACIO CENTURION', 1558682417, 'direccion', '2417'),
(540, 'BEATRIZ  CABRERA', 42932418, 'direccion', '2418'),
(541, 'CAROLINA GOMEZ', 111111, 'direccion', '2423'),
(542, 'MARCIANA  RODRIGUEZ', 2147483647, 'direccion', '2431'),
(543, 'DELICIA ', 49332432, 'direccion', '2432'),
(544, 'ANALIA TERCEROS', 42142433, 'direccion', '2433'),
(545, 'EZEQUIEL ', 0, 'direccion', '2435'),
(546, 'MATIAS PINO', 1162242436, 'direccion', '2436'),
(547, 'FERNANDA ', 4214, 'direccion', '2438'),
(548, 'TAMARA RAVA', 1111111, 'direccion', '2440'),
(549, 'ELISEO TONEGUZZO', 42932443, 'direccion', '2443'),
(550, 'EVA  NOVILLO', 0, 'direccion', '2445'),
(551, 'MARTIN  SANCHEZ', 42386650, 'direccion', '2448'),
(552, 'GABRIELA GONZALEZ', 1166532451, 'direccion', '2451'),
(553, 'MABEL  FERREIRA', 42142452, 'direccion', '2452'),
(554, 'ALEJANDRO ASCOLANI', 42942468, 'direccion', '2468'),
(555, 'DANIEL ENRIQUE MORENO', 42142470, 'direccion', '2470'),
(556, 'GABRIELA MURCE', 42932471, 'direccion', '2471'),
(557, 'GLADIS LEZCANO', 0, 'direccion', '2475'),
(558, 'PABLO FACTORY', 42312487, 'direccion', '2483'),
(559, 'SERGIO MARTINEZ', 0, 'direccion', '2492'),
(560, 'YAMILA ', 0, 'direccion', '2494'),
(561, 'ESTER  MOLINA', 1567442502, 'direccion', '2502'),
(562, 'MICAELA FERNANDEZ', 42982513, 'direccion', '2513'),
(563, 'GLENDA GARCIA', 1558372515, 'direccion', '2515'),
(564, 'CINTHIA CASTELUCCI', 0, 'direccion', '2517'),
(565, 'J CARLOS OLIVERA', 42982525, 'direccion', '2525'),
(566, 'MARIA GONZALEZ', 1140662526, 'direccion', '2526'),
(567, 'FELICIANA AVILA', 0, 'direccion', '2533'),
(568, 'AMELIA PICOTI', 42312537, 'direccion', '2537'),
(569, 'ISAIAS CONTRETRAS', 42386729, 'direccion', '2538'),
(570, 'LUCAS ALAMO', 0, 'direccion', '2539'),
(571, 'ALICIA CABEZAS', 42942543, 'direccion', '2543'),
(572, 'SOLANGE CLAVARIO', 4214, 'direccion', '2545'),
(573, 'LUCIA BIGACIO', 42312551, 'direccion', '2551'),
(574, 'DARIO YTAMAME', 42312569, 'direccion', '2569'),
(575, 'WALTER FARIAS', 42632571, 'direccion', '2571'),
(576, 'ALICIA URIARTE', 42942572, 'direccion', '2572'),
(577, 'JOSE ALBES', 42932579, 'direccion', '2579'),
(578, 'ELSA AGUILAR', 42142586, 'direccion', '2586'),
(579, 'MARIA GONZALEZ', 1557732587, 'direccion', '2587'),
(580, 'MARGARITA TATO', 42982594, 'direccion', '2594'),
(581, 'NATALIA CENA', 1561802597, 'direccion', '2597'),
(582, 'NORMA DELGADO', 1559222605, 'direccion', '2605'),
(583, 'BEATRIZ PESSI', 2982608, 'direccion', '2608'),
(584, 'SILVIA AMATO AMATO', 42982615, 'direccion', '2615'),
(585, 'MARIA ELENA  SILVA', 42632617, 'direccion', '2617'),
(586, 'GASTON PUGLIAN', 42982619, 'direccion', '2619'),
(587, 'BRIGGS PABLO', 1566672621, 'direccion', '2621'),
(588, 'MARIO ', 42312625, 'direccion', '2625'),
(589, 'NORBERTO TORRES', 42942628, 'direccion', '2628'),
(590, 'LORENA UNGARO', 1563092631, 'direccion', '2631'),
(591, 'MARIELA ', 42312638, 'direccion', '2638'),
(592, 'JUAN CARLOS MARQUEZ', 0, 'direccion', '2649'),
(593, 'DIEGO FREITAS', 1536122654, 'direccion', '2654'),
(594, 'IRMA PONCE', 43672666, 'direccion', '2666'),
(595, 'MONICA ACUÑA', 42142674, 'direccion', '2674'),
(596, 'PATRICIA IÑIGUEZ', 0, 'direccion', '2679'),
(597, 'ARGELIA QUINTEROS', 42932682, 'direccion', '2682'),
(598, 'ANALIA SILVA', 1561582684, 'direccion', '2684'),
(599, 'MARIA MARTINEZ', 0, 'direccion', '2685'),
(600, 'ESTER ARMOA', 0, 'direccion', '2689'),
(601, 'ANA MARIA ALVAREZ VARELA', 42386702, 'direccion', '2692'),
(602, 'LORENA MOLINA', 42982696, 'direccion', '2696'),
(603, 'BEATRIZ MABEL NUÑEZ', 1136782702, 'direccion', '2702'),
(604, 'TALLER DE LITO ', 42982711, 'direccion', '2711'),
(605, 'ANGELA PEÑALVER', 42142713, 'direccion', '2713'),
(606, 'ROBERTO ESQUIVEL', 42632717, 'direccion', '2717'),
(607, 'HUGO  ARDISANA', 42312724, 'direccion', '2724'),
(608, 'MIRIAM BARTOLINI', 42942741, 'direccion', '2741'),
(609, 'GASPAR F', 0, 'direccion', '2743'),
(610, 'MARIANA HERNANDEZ', 1556582747, 'direccion', '2747'),
(611, 'PICARDI ', 42311762, 'direccion', '2762'),
(612, 'LUCIO VEDIA', 42812769, 'direccion', '2769'),
(613, 'CARLA LUJAN', 1166452773, 'direccion', '2773'),
(614, 'NOELIA ', 54, 'direccion', '2779'),
(615, 'MARCELA NAVARRO', 42312784, 'direccion', '2784'),
(616, 'SERGIO GIL', 2147483647, 'direccion', '2788'),
(617, 'LILIANA COSTA', 1558432800, 'direccion', '2800'),
(618, 'LILIANA  RODRIGUEZ', 138, 'direccion', '2804'),
(619, 'IRMA  RODRIGUEZ', 42142814, 'direccion', '2814'),
(620, 'ANTONIO BARRERA', 1549152819, 'direccion', '2819'),
(621, 'ALEXIS RUDKO', 1551262825, 'direccion', '2825'),
(622, 'GISELLA FLAVIA SOLIS', 1138032827, 'direccion', '2827'),
(623, 'LILIANA  AGÜERO', 42386654, 'direccion', '2828'),
(624, 'SEFERINA AMAYA', 42942841, 'direccion', '2841'),
(625, 'ARAGON MOREL', 1562382861, 'direccion', '2861'),
(626, 'MERCEDES IBAÑEZ', 0, 'direccion', '2864'),
(627, 'CARLOS MONZON', 1530962865, 'direccion', '2865'),
(628, 'CINTIA  CHAVEZ', 42142868, 'direccion', '2868'),
(629, 'NIDIA BESSI', 42932875, 'direccion', '2875'),
(630, 'PEDRO ROLDAN', 0, 'direccion', '2889'),
(631, 'MARIANA DIAZ', 1535552895, 'direccion', '2895'),
(632, 'DEBE 1 VIAJE MINIMO ', 547, 'direccion', '2896'),
(633, 'ANABEL GENTA', 42312902, 'direccion', '2902'),
(634, 'RUBEN OBANDO', 42312904, 'direccion', '2904'),
(635, 'JOSE RAMIREZ', 1550522906, 'direccion', '2906'),
(636, 'HECTOR LA PUENTE', 1566292909, 'direccion', '2909'),
(637, 'SILVIA ', 42142917, 'direccion', '2917'),
(638, 'LUCIO FUNES', 1556442926, 'direccion', '2926'),
(639, 'NICOLAS ROLANDO CABRERA', 42932927, 'direccion', '2927'),
(640, 'CLAUDIA ', 1560182935, 'direccion', '2935'),
(641, 'ANABEL ', 42312937, 'direccion', '2937'),
(642, 'MARIANO LOPEZ', 42942947, 'direccion', '2947'),
(643, 'ANITA GUTINA', 42312949, 'direccion', '2949'),
(644, 'SUSANA MIÑOS', 1157002950, 'direccion', '2950'),
(645, 'PEDRO RAMIREZ', 42932951, 'direccion', '2951'),
(646, 'CARLA ACOSTA', 42992953, 'direccion', '2953'),
(647, 'MONICA ORTEGA', 2954, 'direccion', '2954'),
(648, 'JUAN GALARZA', 1168572955, 'direccion', '2955'),
(649, 'ELENA NATERO', 42982959, 'direccion', '2959'),
(650, 'FABIANA ALMEIDA', 42942964, 'direccion', '2964'),
(651, 'MAria ALEJANDRA ', 1111, 'direccion', '2968'),
(652, 'FERMIN ARAMBERRY', 42942970, 'direccion', '2970'),
(653, 'ANDREA DURAND', 42992987, 'direccion', '2987'),
(654, 'CECILIA PIONIERE', 42312988, 'direccion', '2988'),
(655, 'ESTEFANIA SOSA', 42942990, 'direccion', '2990'),
(656, 'ALICIA ZALICEGA', 42932992, 'direccion', '2992'),
(657, 'MARIA CACERES', 0, 'direccion', '2999'),
(658, 'FRANCISCO BASILE', 42143009, 'direccion', '3009'),
(659, 'JAVIER ORTIZ', 1554763010, 'direccion', '3010'),
(660, 'GABRIELA CLAUDIA REYNA', 1162940469, 'direccion', '3012'),
(661, 'WALTER ', 0, 'direccion', '3015'),
(662, 'IVANA TORRES', 42143016, 'direccion', '3016'),
(663, 'DANIELA RIOS', 1560033018, 'direccion', '3018'),
(664, 'SABRINA SEGOVIA', 0, 'direccion', '3020'),
(665, 'MATILDE FLANIC', 42943036, 'direccion', '3036'),
(666, 'ANDREA  SOSA', 42843043, 'direccion', '3043'),
(667, 'OSCAR TORRES', 1556523049, 'direccion', '3049'),
(668, 'GRACIELA CANDIA', 1559653050, 'direccion', '3050'),
(669, 'CARINA LAGORIA', 1554263052, 'direccion', '3052'),
(670, 'ALBERTO IURO', 1153493053, 'direccion', '3053'),
(671, 'MIGUEL ANGEL NAVARRO', 1564163055, 'direccion', '3055'),
(672, 'ALICIA VARELA', 42943062, 'direccion', '3062'),
(673, 'NOELIA SEGOVIA', 1168143070, 'direccion', '3070'),
(674, 'CLAUDIA RUIZ', 1567593075, 'direccion', '3075'),
(675, 'EUGENIO VACCA', 42143076, 'direccion', '3076'),
(676, 'BLANCA DE SANSARO', 42313077, 'direccion', '3077'),
(677, 'IRMA ', 42933080, 'direccion', '3080'),
(678, 'CLARA VILLARREAL', 42313081, 'direccion', '3081'),
(679, 'CARLOS OLMEDO', 1561243088, 'direccion', '3088'),
(680, 'MARIA PEREYRA', 42313093, 'direccion', '3093'),
(681, 'ABEL GOMEZ', 42933094, 'direccion', '3094'),
(682, 'SUSANA LEONOR COLLIARD', 42143101, 'direccion', '3101'),
(683, 'AGUIRRE ', 1566393114, 'direccion', '3114'),
(684, 'MARIA BELEN AMBROGIO', 1567973122, 'direccion', '3122'),
(685, 'DAIANA  CORREA', 1568763126, 'direccion', '3126'),
(686, 'TERESA KRUTLI', 1157283132, 'direccion', '3132'),
(687, 'JUAN COITIA', 42143133, 'direccion', '3133'),
(688, 'MONICA DI GENARO', 1560073137, 'direccion', '3137'),
(689, 'BEATRIZ SANCELONI', 42933142, 'direccion', '3142'),
(690, 'JUAN CANCELA', 42943145, 'direccion', '3145'),
(691, 'FABIO DIEGAS', 1568133150, 'direccion', '3150'),
(692, 'JOANA PERALTA', 1549973997, 'direccion', '3156'),
(693, 'GREGORIO JACQUET', 42843162, 'direccion', '3162'),
(694, 'CLAUDIA VIVAS', 42813172, 'direccion', '3172'),
(695, 'MARIA SORIA DE VARGAS', 1565483177, 'direccion', '3177'),
(696, 'M BEATRIZ GIMENES', 1535043178, 'direccion', '3178'),
(697, 'FERMIN CABALLERO', 1536523179, 'direccion', '3179'),
(698, ' SILLETTA', 1166813180, 'direccion', '3180'),
(699, 'LUJAN RAMIREZ', 1562243196, 'direccion', '3196'),
(700, 'SERGIO CHATARRERO', 42143203, 'direccion', '3203'),
(701, 'GABRIELA SANDOVAL', 42993208, 'direccion', '3208'),
(702, 'MARCELO JAVIER UTRERA', 42143215, 'direccion', '3215'),
(703, 'BLANCA DIAZ', 1557813224, 'direccion', '3224'),
(704, 'MONICA RIDAO', 1586593232, 'direccion', '3232'),
(705, 'JUAN LEDESMA', 42386672, 'direccion', '3243'),
(706, 'DARDO ADRIAN LOTO', 1557203246, 'direccion', '3246'),
(707, 'DEVORA ALBEDRO', 1535530635, 'direccion', '3252'),
(708, 'ANIBAL CALUL ', 1566583254, 'direccion', '3254'),
(709, 'OMAR CELANO', 42983258, 'direccion', '3258'),
(710, 'CINTIA BARROMERES', 42943266, 'direccion', '3266'),
(711, 'DAMIAN ', 1563613275, 'direccion', '3275'),
(712, 'HILDA  BOURQUET', 42983288, 'direccion', '3288'),
(713, 'MARTIN DIEZ', 42933290, 'direccion', '3290'),
(714, 'PASCUALA LOPEZ', 42143291, 'direccion', '3291'),
(715, 'ISAURA VILLAROEL', 42386653, 'direccion', '3296'),
(716, 'PAULA VELAZQUEZ', 1564873298, 'direccion', '3298'),
(717, 'OMAR SANCIVERO', 42313301, 'direccion', '3301'),
(718, 'ROSANA BZINKIEWICZ', 42313303, 'direccion', '3303'),
(719, 'EVANGELINA SERDA', 1553114369, 'direccion', '3306'),
(720, 'ANDREA ', 42143327, 'direccion', '3327'),
(721, 'COINDA MONZON', 1551463328, 'direccion', '3328'),
(722, 'ANGELICA ALGAMENDIA', 42983332, 'direccion', '3332'),
(723, 'VLADIMIRO HAWRYLUK', 42143334, 'direccion', '3334'),
(724, 'SANDRA BANEGAS', 2147483647, 'direccion', '3337'),
(725, 'MARCELO CORDOBA', 1568723339, 'direccion', '3339'),
(726, 'FLIA.REY ', 42143340, 'direccion', '3340'),
(727, 'GLADYZ ESPINDOLA', 42813344, 'direccion', '3344'),
(728, 'ROXANA MUÑOS', 1157183348, 'direccion', '3348'),
(729, 'LEDESMA RIOS', 1538423355, 'direccion', '3355'),
(730, 'CECILIA SANTILLAN', 42143356, 'direccion', '3356'),
(731, 'ALDO MARTINEZ', 1558803359, 'direccion', '3359'),
(732, 'WALTER MELGARES', 42933360, 'direccion', '3360'),
(733, 'MAYRA  SEGURA', 1562163362, 'direccion', '3362'),
(734, 'ROSALIA GOMEZ ANA GODOY', 1564083374, 'direccion', '3374'),
(735, 'ELVA ZAMARVIDEZ SOSA', 42933376, 'direccion', '3376'),
(736, 'IRMA VILLAFANIE', 42933377, 'direccion', '3377'),
(737, 'ALICIA ', 0, 'direccion', '3390'),
(738, 'ELIANA DE VILLALBA', 42383393, 'direccion', '3393'),
(739, 'MARIA MERCEDES BEDIONE', 602, 'direccion', '3395'),
(740, 'YOLANDA BARRIOS', 1535543610, 'direccion', '3407'),
(741, 'RICARDO ROMERO', 1559373410, 'direccion', '3410'),
(742, 'ISABEL BORDON', 42943420, 'direccion', '3420'),
(743, 'MARIA PUENTE', 42933423, 'direccion', '3423'),
(744, 'ADRIAN GIMENEZ', 42313430, 'direccion', '3430'),
(745, 'MAXIMILIANO GIOMI', 42313431, 'direccion', '3431'),
(746, 'JORGE SOTO', 0, 'direccion', '3434'),
(747, 'CHINO VAZQUEZ', 0, 'direccion', '3436'),
(748, 'CAYETANA MARECO', 0, 'direccion', '3439'),
(749, 'ANA LEONOR BUIDAS', 42983448, 'direccion', '3448'),
(750, 'J.JOSE AGUIRRE', 4293, 'direccion', '3449'),
(751, 'ANA MARIA BALLON', 42933453, 'direccion', '3453'),
(752, 'JAQUELIN VICENTE', 42963465, 'direccion', '3465'),
(753, 'SILVIA LAURITA', 42143472, 'direccion', '3472'),
(754, 'SILVINA LAMEIRO', 42143484, 'direccion', '3484'),
(755, 'AMALIA Y HECTOR FERREIRA', 42983489, 'direccion', '3489'),
(756, 'CLUDIA MASIOTI', 42149492, 'direccion', '3492'),
(757, 'MARIA MESA', 42313494, 'direccion', '3494'),
(758, 'JHONATAN OLIVERA', 42983501, 'direccion', '3501'),
(759, 'ANGEL GOMEZ', 42143503, 'direccion', '3503'),
(760, 'MARIA ANGELICA VAZQUEZ', 1140563505, 'direccion', '3505'),
(761, 'MARIA ROSALES', 42983513, 'direccion', '3513'),
(762, 'WALTER FERNANDEZ', 1563063525, 'direccion', '3525'),
(763, 'CAROLINA RABA', 42933526, 'direccion', '3526'),
(764, 'MABEL GOMES', 42383538, 'direccion', '3538'),
(765, 'VERONICA GIGENA', 42633539, 'direccion', '3539'),
(766, 'GLADIS DA SILVA', 1557693540, 'direccion', '3540'),
(767, 'VERONICA MITTAG', 42823541, 'direccion', '3541'),
(768, 'NORMA VIERA', 42313546, 'direccion', '3546'),
(769, 'JOE CHOQUE', 42143553, 'direccion', '3553'),
(770, 'JORGE CNOCHAERT', 4214, 'direccion', '3558'),
(771, 'VIVIANA LUNA', 42943563, 'direccion', '3563'),
(772, 'PATRICIA NEUMEN', 42983565, 'direccion', '3565'),
(773, 'GERARDO ROGRIGUEZ', 1563593569, 'direccion', '3569'),
(774, 'LUQUE AROINTERO', 1566543573, 'direccion', '3573'),
(775, 'SERGIO  ORELLANA', 42933577, 'direccion', '3577'),
(776, 'BEATRIZ MIÑOS', 42313579, 'direccion', '3579'),
(777, 'YAMILA BARGAS', 1567013580, 'direccion', '3580'),
(778, 'FLAVIA SOSA', 42933581, 'direccion', '3581'),
(779, 'PAULA KALYSZ', 1556463596, 'direccion', '3596'),
(780, 'CENA NATALIA', 1561803597, 'direccion', '3597'),
(781, 'MAGALI ', 0, 'direccion', '3605'),
(782, 'SERGIO CHAVEZ', 1536933606, 'direccion', '3606'),
(783, 'ANALIA ESPINOSA BANEGAS', 42963615, 'direccion', '3615'),
(784, 'SARA QUINTEROS', 42383621, 'direccion', '3621'),
(785, 'ROSANA LOPARDO ', 1558043626, 'direccion', '3626'),
(786, 'HECTOR LUGO', 1550283628, 'direccion', '3628'),
(787, 'TORRES LORENA', 1532193629, 'direccion', '3629'),
(788, 'GLADIS COLLAR', 42943633, 'direccion', '3633'),
(789, 'LAURA CAMAÑO', 42313636, 'direccion', '3636'),
(790, 'GERMAN NOYA', 1562483646, 'direccion', '3646'),
(791, 'paula toloza', 1536508361, 'direccion', '3650'),
(792, 'FAMILIA BURGOS', 42843651, 'direccion', '3651'),
(793, 'ENRIQUE  ', 1556433656, 'direccion', '3656'),
(794, 'JUAN CARLOS ALANES', 42313661, 'direccion', '3661'),
(795, 'CINTIA  GOMEZ', 42143665, 'direccion', '3665'),
(796, 'JOSE LUIS  RIVERO', 42983667, 'direccion', '3667'),
(797, 'SANDRA ETCHETTO', 42933668, 'direccion', '3668'),
(798, 'UBALDO LEDESMA', 42943672, 'direccion', '3672'),
(799, 'OFELIA  SAUCEDO', 42383673, 'direccion', '3673'),
(800, 'EVELINA PONCE', 1560453684, 'direccion', '3684'),
(801, 'ADRIANA PALACIO', 50830230, 'direccion', '3689'),
(802, 'ERIKA PEREIRA', 0, 'direccion', '3691'),
(803, 'NANCY CALAHORRA', 1554133694, 'direccion', '3694'),
(804, 'EDGARDO  CHAPARRO', 42143696, 'direccion', '3696'),
(805, 'PABLO CASTRO', 1560083700, 'direccion', '3700'),
(806, 'MERCEDES SANDRA', 42143708, 'direccion', '3708'),
(807, 'WALTER REALES', 42147137, 'direccion', '3709'),
(808, 'GRACIELA TORRES', 42993714, 'direccion', '3714'),
(809, 'TIENDA ARELLANO', 1566773720, 'direccion', '3720'),
(810, 'HECTOR SOTELO', 42143721, 'direccion', '3721'),
(811, 'MARCELA DUBELLY', 2147483647, 'direccion', '3732'),
(812, 'MARCELA ', 1562993739, 'direccion', '3739'),
(813, 'GABRIEL GARCIA BUSSI', 42983749, 'direccion', '3749'),
(814, 'ESTELA HERNAN', 1565413751, 'direccion', '3751'),
(815, 'MARIA DOMEL', 1562993752, 'direccion', '3752'),
(816, 'AZUCENA ', 1138333754, 'direccion', '3754'),
(817, 'MIRTA ESCALANTE', 42383757, 'direccion', '3757'),
(818, 'FLORENCIA ROMERO', 42933762, 'direccion', '3762'),
(819, 'MARI NARCISO', 42143766, 'direccion', '3766'),
(820, 'TEIXITO ROJAS', 42983773, 'direccion', '3773'),
(821, 'ANTONIO VILLALVA', 42143776, 'direccion', '3776'),
(822, 'MARTA JACUWCHUK', 1559283780, 'direccion', '3780'),
(823, 'LAURA SACCOLITI', 42143783, 'direccion', '3783'),
(824, 'GRACIELA SIMONETI', 42933784, 'direccion', '3784'),
(825, 'MARIO ESCOBAR', 4214, 'direccion', '3798'),
(826, 'ELIZABETH RODRIGUEZ', 1540363799, 'direccion', '3799'),
(827, 'MARIA RAMIREZ', 1551433805, 'direccion', '3805'),
(828, 'CARLOS GONZALEZ', 42933807, 'direccion', '3807'),
(829, 'ESTELA APAZA', 1154193811, 'direccion', '3811'),
(830, 'MARIO RIOS RODRIGUEZ', 42933813, 'direccion', '3813'),
(831, 'WALTER PRETO', 42143814, 'direccion', '3814'),
(832, 'JOHANA FERREIRA', 42933820, 'direccion', '3820'),
(833, 'LILIANA MONTOYA', 42979419, 'direccion', '3831'),
(834, 'VERONICA ', 1560443937, 'direccion', '3837'),
(835, 'ROMINA CARRIZO', 42983845, 'direccion', '3845'),
(836, 'EDELMIRO BRUN BERTOLO', 1564933851, 'direccion', '3851'),
(837, 'CLAUDIO FERNANDEZ', 1565203857, 'direccion', '3857'),
(838, 'OSVALDO  POZZO', 42933858, 'direccion', '3858'),
(839, 'LUIS MEDINA', 42383859, 'direccion', '3859'),
(840, 'OMAR AGÜERO', 42933861, 'direccion', '3861'),
(841, 'FAMILIA  ORBE', 1536983864, 'direccion', '3864'),
(842, 'FAMILIA LOPEZ', 42313865, 'direccion', '3865'),
(843, 'NOEMI GULLAUMENT', 1168393868, 'direccion', '3868'),
(844, 'ANGEL VIZZO', 42933872, 'direccion', '3872'),
(845, 'EMILSE  LOBOS', 42933875, 'direccion', '3875'),
(846, 'DAMIAN MANSILLA', 42389878, 'direccion', '3878'),
(847, 'SOLEDAD ', 0, 'direccion', '3893'),
(848, 'PEREYRA DIEGO', 68813899, 'direccion', '3899'),
(849, 'EZEQUIEL AEDO', 42633910, 'direccion', '3910'),
(850, 'MARIANA NARDIN', 42813914, 'direccion', '3914');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_distancia`
--

CREATE TABLE `t_distancia` (
  `iddis` int(11) NOT NULL,
  `Lugar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `distancia` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_distancia`
--

INSERT INTO `t_distancia` (`iddis`, `Lugar`, `distancia`) VALUES
(1, 'COTO', 11.3),
(2, 'ADROGUE', 8),
(3, 'ESTACION TURDERA', 14.2),
(4, 'AGENCIA', 0),
(5, 'BOULEVARD ADROGUE', 7.5),
(6, 'LOMAS DE ZAMORA', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_modo`
--

CREATE TABLE `t_modo` (
  `idmo` int(11) NOT NULL,
  `elmodo` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `codmodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `t_modo`
--

INSERT INTO `t_modo` (`idmo`, `elmodo`, `codmodo`) VALUES
(1, 'En Base', 1),
(2, 'Volviendo', 2),
(3, 'Viajando', 3),
(4, 'Combustible', 4),
(5, 'Comiendo', 5),
(6, 'Baño', 6),
(7, 'Taller', 7),
(8, 'Lavadero', 8),
(9, '-Sin Chofer-', 9),
(10, 'En Reparacion', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_movil`
--

CREATE TABLE `t_movil` (
  `idm` int(11) NOT NULL,
  `movil` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `auto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `patente` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `seguro` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `MM` int(11) NOT NULL,
  `duenio` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_movil`
--

INSERT INTO `t_movil` (`idm`, `movil`, `auto`, `patente`, `seguro`, `MM`, `duenio`) VALUES
(1, 'MOVIL 1', 'LOGAN BLANCO', 'XXX-5555', '123564', 0, 1),
(2, 'MOVIL 2', 'LOGAN GRIS', 'RRR-0000', '878', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_operadora`
--

CREATE TABLE `t_operadora` (
  `idop` int(11) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `Domicilio` varchar(220) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_operadora`
--

INSERT INTO `t_operadora` (`idop`, `Nombre`, `Tel`, `DNI`, `Domicilio`, `tipo`) VALUES
(2, '11111', '2222', '99999', 'CALLE A', 1),
(3, 'EJEMPLO', '999888777', '654321', 'CALLE EJEMPLO 3323', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_turno`
--

CREATE TABLE `t_turno` (
  `idtur` int(11) NOT NULL,
  `choid` int(11) NOT NULL,
  `autoid` int(11) NOT NULL,
  `feini` datetime NOT NULL,
  `fecie` datetime NOT NULL,
  `kmini` int(11) NOT NULL,
  `kmfin` int(11) NOT NULL,
  `um` int(11) NOT NULL,
  `opini` int(11) NOT NULL,
  `opfin` int(11) NOT NULL,
  `monto` float NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_viaje`
--

CREATE TABLE `t_viaje` (
  `idv` int(11) NOT NULL,
  `fr` datetime NOT NULL,
  `fs` datetime NOT NULL,
  `fv` datetime NOT NULL,
  `ft` datetime NOT NULL,
  `opr` int(11) NOT NULL,
  `ops` int(11) NOT NULL,
  `opv` int(11) NOT NULL,
  `opt` int(11) NOT NULL,
  `cliid` int(11) NOT NULL,
  `Origen` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Destino` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `turid` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `pago` int(11) NOT NULL,
  `EstaV` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tvkm`
--
ALTER TABLE `tvkm`
  ADD PRIMARY KEY (`idvkm`);

--
-- Indices de la tabla `t_chofer`
--
ALTER TABLE `t_chofer`
  ADD PRIMARY KEY (`idch`);

--
-- Indices de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indices de la tabla `t_distancia`
--
ALTER TABLE `t_distancia`
  ADD PRIMARY KEY (`iddis`),
  ADD UNIQUE KEY `iddis` (`iddis`);

--
-- Indices de la tabla `t_modo`
--
ALTER TABLE `t_modo`
  ADD PRIMARY KEY (`idmo`);

--
-- Indices de la tabla `t_movil`
--
ALTER TABLE `t_movil`
  ADD PRIMARY KEY (`idm`);

--
-- Indices de la tabla `t_operadora`
--
ALTER TABLE `t_operadora`
  ADD PRIMARY KEY (`idop`);

--
-- Indices de la tabla `t_turno`
--
ALTER TABLE `t_turno`
  ADD PRIMARY KEY (`idtur`);

--
-- Indices de la tabla `t_viaje`
--
ALTER TABLE `t_viaje`
  ADD PRIMARY KEY (`idv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tvkm`
--
ALTER TABLE `tvkm`
  MODIFY `idvkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `t_chofer`
--
ALTER TABLE `t_chofer`
  MODIFY `idch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `t_clientes`
--
ALTER TABLE `t_clientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;
--
-- AUTO_INCREMENT de la tabla `t_distancia`
--
ALTER TABLE `t_distancia`
  MODIFY `iddis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `t_modo`
--
ALTER TABLE `t_modo`
  MODIFY `idmo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `t_movil`
--
ALTER TABLE `t_movil`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `t_operadora`
--
ALTER TABLE `t_operadora`
  MODIFY `idop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `t_turno`
--
ALTER TABLE `t_turno`
  MODIFY `idtur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `t_viaje`
--
ALTER TABLE `t_viaje`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
