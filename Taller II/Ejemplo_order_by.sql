DROP DATABASE IF EXISTS ejemplo_db;
CREATE DATABASE IF NOT EXISTS ejemplo_db;
USE ejemplo_db;

DROP TABLE IF EXISTS tbl_clients;
CREATE TABLE IF NOT EXISTS tbl_clients(
  `Cli_Id` int AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT 'Id de Cliente',
  `Cli_RazonSocial` varchar(80) NOT NULL DEFAULT '' COMMENT 'Nombre de Cliente'
) ENGINE=InnoDB AUTO_INCREMENT=2419;

INSERT INTO tbl_clients(`Cli_Id`, `Cli_RazonSocial`) VALUES
	(1, 'CONSUMIDOR FINAL'),
	(2, 'VORENO PABLA'),
	(3, 'POMEZ FABIAN'),
	(4, 'VELLA JUAN JOSG'),
	(5, 'ALFARO MARIA Y ALFARO MARCELA'),
	(6, 'PUIÑAZU CARLOL'),
	(7, 'ROLA DANIEL HUGA'),
	(8, 'VAVA NESTOR SEBASTIAN'),
	(9, 'ARQUIZA SERGIA'),
	(10, 'ZANETTI LUCAL'),
	(11, 'PORDOBA ARIEL'),
	(12, 'POLOMBO DOMENICA'),
	(13, 'PALESTINI MARTIN'),
	(14, 'PABAÑAS EL MAITEN'),
	(15, 'POMES GABRIEL'),
	(16, 'Pustavo - Cristina'),
	(17, 'Irigoyen Mario TorreL'),
	(18, 'RARRIONUEVO JOSG'),
	(19, 'LECUONA ROBERTA'),
	(20, 'VUNICIPALIDAD DE LOS MOLLEL'),
	(21, 'VUNICIPALIDAD DE MERLA'),
	(22, 'ALANIZ DANIEL'),
	(23, 'ARGUELLO GUILLERMA'),
	(24, 'RADRA GONZALA'),
	(25, 'LOYOLA  ALEJANDRA'),
	(26, 'PALLEGARI JULIAN'),
	(27, 'PORIA RICARDA'),
	(28, 'PURA SERGIA'),
	(29, 'PONSORCIO CHUMA'),
	(30, 'CORRES DEL SOL S.R.L'),
	(31, 'HELADERIA MORANGA'),
	(32, 'VERON ANA MARIA'),
	(33, 'RANCO NACION ARGENTINA'),
	(34, 'LEON ESTELA'),
	(35, 'PALACIO ROBERTA'),
	(36, 'DON RAFAEL - JUANCITA'),
	(37, 'DANGELO FLAVIO MARIA'),
	(38, 'DAL DOSSO SANTIEGA'),
	(39, 'ZENI SALVADOR'),
	(40, 'ARQUIZA JORGG'),
	(41, 'EL CORTIJA'),
	(42, 'EGUADAS DEL ZORRO DE ANGELI Y SEOANE S.H.'),
	(43, 'Recerra FlaviA'),
	(44, 'LOPEZ EDGARDO DEL ROSARIA'),
	(45, 'RAROFFIO  ANIBAL'),
	(46, 'Asociacion Vecinal Siempre VerdG'),
	(47, 'Sucesion de Ratto Ruben Omar'),
	(48, 'EME CONSTRUCCIONES S.R.L.'),
	(49, 'Villalba Juan JosG'),
	(50, 'ORG. GUTIERREZ SOCIEDAD EN FORMACION'),
	(51, 'RUTA UNO SRL'),
	(52, 'Vonteleone RobertA'),
	(53, 'PEREYRA NUÑEZ RUBEN MARTIN'),
	(54, 'PORRALES MARIANA'),
	(55, 'EMPRES DISTRIB. SAN LUIS EDESAL S.A.'),
	(56, 'VAIRAL S.R.L.'),
	(57, 'PESANELLI ENZO MARCELA'),
	(58, 'LETTIERI JUAN EDUARDA'),
	(59, 'PRASSO JORGE EDUARDA'),
	(60, 'LEGe LeopoldA'),
	(61, 'VORAN RAMON - HACIENDA PROPIEDADEL'),
	(62, 'Diaz Alejandro Adrian'),
	(63, 'VALLE DEL SOL'),
	(64, 'PACK ANDREL'),
	(65, 'Picos Julian'),
	(66, 'FERRARO PASCUAL'),
	(67, 'SLOTS MACHINES S.A.'),
	(68, 'FALCO PABLA'),
	(69, 'OSDE FILIAL SAN LUIL'),
	(70, 'Leliveld Gustavo TomaL'),
	(71, 'POMIS ALFREDA'),
	(72, 'Andreoli Juan Ignacio '),
	(73, 'POMETTO MATIAL'),
	(74, 'RORDA GUSTAVA'),
	(75, 'PIORDANO JORGG'),
	(76, 'PICCININI EZEQUIEL ESTEBAN'),
	(77, 'VALANO RAUL'),
	(78, 'ORTIZ ROBERTA'),
	(79, 'PARAVATI SRL'),
	(80, 'POOP. EGUA POTABLE DE MERLA'),
	(81, 'ATENCIA ALBERTA'),
	(82, 'CRANSPORTE ALTAMIRANA'),
	(83, 'SOLIGO JAVIER'),
	(84, 'RIPKE NATALIA SILVINA'),
	(85, 'PHIARAVALLOTI GUILLERMA'),
	(86, 'HARARI DIEGA'),
	(87, 'VIRANDA  FABIANA'),
	(88, 'VINI JOSE EGUSTIN'),
	(89, 'RECERRA ALCIDEL'),
	(90, 'ABALLAY ROBERTA'),
	(91, 'LAS 2 ERREL'),
	(92, 'Prappi   CarloL'),
	(93, 'ROMBEROS VOLUNTARIOS DE MERLA'),
	(94, 'SIERRAS Y LEGOS S.A.'),
	(95, 'RAMACCIOTTI NATALIA'),
	(96, 'EGUERO BETTY'),
	(97, 'ROLANDO MATEA'),
	(98, 'POOP TELEFONICA DE MERLO LTDA.'),
	(99, 'POELHO JUAN PABLA'),
	(100, 'Resso Marcelo ( Montecor )'),
	(101, 'Pardo Rodolfo '),
	(102, 'Puerra Scaffo Julio C.'),
	(103, 'EL HORNERA'),
	(104, 'PATAFONI DANIEL'),
	(105, 'Poette Claudia'),
	(106, 'VUNICIPALIDAD DE VILLA LARCA'),
	(107, 'Lencinas Pablo RicardA'),
	(108, 'Rodriguez Josefa'),
	(109, 'Aubeain TeA'),
	(110, 'PARCIA PETRINO PUCHI'),
	(111, 'SEGOVIA EMILIA'),
	(112, 'LASTRA DIEGA'),
	(113, 'SOSNA FRED - MARCEL'),
	(114, 'RECERRA OMAR'),
	(115, 'ESTUDIO FASSI'),
	(116, 'PARENTI ROBERTA'),
	(117, 'RARRERA RICARDA'),
	(118, 'PRUPO ALGARROBO S.A.'),
	(119, 'Vonasterio de Belen'),
	(120, 'Don PatronG'),
	(121, 'PUNTA DE EGUA'),
	(122, 'ALANIZ DIEGO (ELECTRICISTA ALTA TENSION)'),
	(123, 'FABRINI PABLA'),
	(124, 'Alaniz Marcelo - Hotel San LuiL'),
	(125, 'CRENTO JUAN CARLOL'),
	(126, 'PALACHO DARDA'),
	(127, 'ROMERO HUGA'),
	(128, 'PIRANO S.R.L.'),
	(129, 'RECERRA ELIANA'),
	(130, 'Lescano EGustin - Tino -'),
	(131, 'SANITARIOS DEL OESTG'),
	(132, 'Alovero Garcia de Metal V S.A.'),
	(133, 'VUNICIPALIDAD DE CARPINTERIA'),
	(134, 'Puardia SergiA'),
	(135, 'Pasa Pablo - Cacho Guberti'),
	(136, 'PUELLO TATY'),
	(137, 'VOGEL RENE OSCAR'),
	(138, 'Jaime RobertA'),
	(139, 'RODRIGUEZ FERNANDA'),
	(140, 'DALOISIO VERONICA'),
	(141, 'VESSINA FERNANDO JAVIER'),
	(142, 'DOBLAS RICARDA'),
	(143, 'DEL MONICO JUAN JOSG'),
	(144, 'VURACA TERESITA'),
	(145, 'OTALVAREZ  ROBERTA'),
	(146, 'POSSETTO & PRINGLES - ESTUDIA'),
	(147, 'PANUTI AMALIA - BRESCIA'),
	(148, 'Cula Bar'),
	(149, 'DOS SANTOS ANTERA'),
	(150, 'DALOISIO MARIANA'),
	(151, 'EGUA NUEVA'),
	(152, 'POZZELLA DOMINGA'),
	(153, 'ALTAMIRANO JULIO CESAR'),
	(154, 'SYLTA S.R.L.'),
	(155, 'PONTI CARLOL'),
	(156, 'ASOCIACION CIVIL VILLA ELENA'),
	(157, 'Klok OsvaldA'),
	(158, 'CATI EGUILAR'),
	(159, 'Alaniz ClaudiA'),
	(160, 'ANGEL CUENTA PARTICULAR (CLIMA 3)'),
	(161, 'ARQUIGROUP'),
	(162, 'PASQUARELLI JUAN'),
	(163, 'IGLESIA CRISTIANA TIEMPO DE DIOL'),
	(164, 'VARTINEZ HUGO DANIEL'),
	(165, 'FERNANDEZ ROBERTA'),
	(166, 'Pasabianco Alberto '),
	(167, 'ALANIZ DIEGO DAMIAN'),
	(168, 'HERRERA RUBEN'),
	(169, 'ESTUDIO BERTI CERVILLA'),
	(170, 'Izzovidela RosariA'),
	(171, 'VARCHESE MARIA TERESA'),
	(172, 'PURRUCHEGA  MARIA BELEN'),
	(173, 'DOMKE MIGUEL'),
	(174, 'VONTALBETTI  ENRIQUG'),
	(175, 'POHEN BERNARDA'),
	(176, 'VUÑOZ MARCELA'),
	(177, 'RARCALA FABIAN'),
	(178, 'PARDOSO ZULMA'),
	(179, 'DOLORINI ALFREDA'),
	(180, 'AYFLO MARIANA'),
	(181, 'PLINICA DE LA VISION S.R.L.'),
	(182, 'HASENCLEVER JUAN BERNARDO FELIX'),
	(183, 'VIDELA IBAR'),
	(184, 'VERCAU ABRAHAM'),
	(185, 'FANGANO OSVALDA'),
	(186, 'VOGLER GUILLERMO EDGARDA'),
	(187, 'RELTRAN FERNANDA'),
	(188, 'PRIORI JUAN PABLA'),
	(189, 'Cuñez David'),
	(190, 'RALANZANO HECTOR'),
	(191, 'DOMINGUEZ JULIAN'),
	(192, 'FALCON JULIA'),
	(193, 'RUSTO ALDA'),
	(194, 'ARQ. OMAR TOURRET'),
	(195, 'LIÑAN OMAR'),
	(196, 'RATTEGLIA SERGIA'),
	(197, 'VIDRIERIA  BAEZ'),
	(198, 'PAIDEK WUAL'),
	(199, 'LIENDO VIVIANA'),
	(200, 'LUCERO DANIEL'),
	(201, 'PRADO ANDREL'),
	(202, 'POETTE HECTOR LUIL'),
	(203, 'Podoy UbaldA'),
	(204, 'PAPALARDO DANIEL'),
	(205, 'ROSSI ROBERTA'),
	(206, 'Zaldivar Walter'),
	(207, 'PIL EDUARDA'),
	(208, 'FARMACIA AIKEN'),
	(209, 'CORRES MARIA'),
	(210, 'PAFARINO MARCOL'),
	(211, 'Rodriguez  LuiL'),
	(212, 'Diaz Hector Oscar'),
	(213, 'DIAZ MARTIN'),
	(214, 'INMOBILIARIA DEL CERRA'),
	(215, 'FRUTOS DEL CONLARA SA'),
	(216, 'PERRA JULIA'),
	(217, 'Vonzon  Juan'),
	(218, 'FUNDACION PARA LA EDUCACION EN VALORES HUMANOS ARMONIA'),
	(219, 'VATTEO CLAUDIA Y JAVIER'),
	(220, 'PONZALEZ DANIEL'),
	(221, 'PASTRO RICARDA'),
	(222, 'SCARAMELLA HUGA'),
	(223, 'PONDE JOSG'),
	(224, 'LOESCHBOR HERNAN'),
	(225, 'Cegro Jaime '),
	(226, 'PALEGIONES CARINA ELIZABETH'),
	(227, 'POMPLEJO DON GREGORIA'),
	(228, 'PERUCCA JACINTA'),
	(229, 'Oviedo Hector'),
	(230, 'PISTOIA ADRIAN'),
	(231, 'SERRANO WALTER'),
	(232, 'FERNANDEZ RAUL'),
	(233, 'Stuckrath Graciela'),
	(234, 'VADERERA CATRIEL'),
	(235, 'TERRAZAS DE MERLA'),
	(236, 'PRUZ CISNEROS GERMAN'),
	(237, 'RIBEIRO SACEFAIG'),
	(238, 'Panale Jose - Cabañas Dulce Amanecer'),
	(239, 'Pianeto Jorge '),
	(240, 'SONNE S.R.L.'),
	(241, 'RUSTO CLAUDIO JAVIER'),
	(242, 'HOSTERIA DEL VIRREY'),
	(243, 'PARRILLO EDGARDA'),
	(244, 'Pabañas Rincon de Don Antonio - Jose FainerA'),
	(245, 'DELAUNAY JULIA'),
	(246, 'PEZZOLLO HUGA'),
	(247, 'FALABELLA MAITA'),
	(248, 'VANSILLA ARTURA'),
	(249, 'RAY SERGIO - FARMACIA LOS ALMENDROS -'),
	(250, 'PABAÑAS VENTANA AL VALLG'),
	(251, 'LUCERO DAVID  (HOTEL MUNDIAL)'),
	(252, 'LUBRICENTRO LOS PRIMOL'),
	(253, 'RUSCHIAZZO FABIO JOSG'),
	(254, 'POLINAS SA'),
	(255, 'LAS ACACIAS SRL'),
	(256, 'RARREGAN LUIL'),
	(257, 'Ponfiteria ComechingoneL'),
	(258, 'VUNICIPALIDAD DE LA PAZ'),
	(259, 'VILLA DE MERLA'),
	(260, 'PHAVEZ SOLEDAD'),
	(261, 'Asiri SRL'),
	(262, 'ECHEVARRIA MARIA ANGELICA'),
	(263, 'ALBA CARLOS MARCELINA'),
	(264, 'AIRES PUNTANOS SA'),
	(265, 'PALEPPI LEONEL H. Y MELLINO NORMA A.'),
	(266, 'LANXESS S.A.'),
	(267, 'DE LUCA JUAN CARLOS Y DE LUCA GRACIELA'),
	(268, 'EL PORTAL DE MERLO S.A.'),
	(269, 'HORMIGONERA DE LOS COMECHINGONES SA'),
	(270, 'ROVELLA CARRANZA S.A.'),
	(271, 'LABAT RICARDA'),
	(272, 'SUPER IMPERIO S. A.'),
	(273, 'SOSSI DANIEL'),
	(274, 'VUNICIPALIDAD DE SANTA ROSA'),
	(275, 'AMARILLO WALTER'),
	(276, 'PUELLO SERGIA'),
	(277, 'LANARO RODRIGA'),
	(278, 'VIRANDA MARTIN'),
	(279, 'RODRIGUEZ HERNAN LEONEL'),
	(280, 'PROS ALEJANDRA'),
	(281, 'CAVERNA NATALIA'),
	(282, 'PABAÑAS RINCON DE LOS TRONCOL'),
	(283, 'ARANGUEZ HERNAN'),
	(284, 'SARACHO MARCELA PATRICIA - HOST. COLONIAL -'),
	(285, 'EGUILERA RICARDA'),
	(286, 'ACOSTA JAVIER'),
	(287, 'RABBINO DANIEL'),
	(288, 'ALEJANDRO NEMESIL'),
	(289, 'ARCE SERGIA'),
	(290, 'VORALES NESTOR'),
	(291, 'FALCO GABRIEL'),
	(292, 'PURRUCHEGA CARLOS ALBERTA'),
	(293, 'IZZOVIDELA MARIANA'),
	(294, 'PUARDIA JOSE OSCAR'),
	(295, 'PARRERA NORMA NOEMI'),
	(296, 'ESPIGA SRL'),
	(297, 'EL BEGUAL'),
	(298, 'CUÑEZ CARLOL'),
	(299, 'POLLO WALTER'),
	(300, 'PALIVARES NESTOR DANIEL'),
	(301, 'QUIROGA RICARDA'),
	(302, 'CYCZYNSKA ANDREL'),
	(303, 'CEW GEN BREEDERS S.A.'),
	(304, 'OSES MARIA'),
	(305, 'DI RAIMONDO CARMELA'),
	(306, 'FAVA LUIS OMAR'),
	(307, 'DOMINGUEZ DANTG'),
	(308, 'PIZARRO WALTER'),
	(309, 'PARCIA MARIO F.'),
	(310, 'PASTRO GUILLERMO FABIAN'),
	(311, 'PANO ANGEL'),
	(312, 'ARIAS DIEGO EMILIANA'),
	(313, 'DANIEL CLARO   CAZEAUX'),
	(314, 'Espindola Juan - Inmobiliaria Espindola'),
	(315, 'RARRIO JULIO CESAR'),
	(316, 'Reynoso Esteban'),
	(317, 'RAVENNA JORGE DAMIAN'),
	(318, 'FRANCHINI JUAN CARLOL'),
	(319, 'PHERICHETTI ILDA ALICIA'),
	(320, 'AREN RAUL - CANCHAS DE FUTBOL'),
	(321, 'RRANDI LAURA'),
	(322, 'XARPLAST S.A.'),
	(323, 'ARQUIZA GENARA'),
	(324, 'ARQ. GODOY FERNANDA'),
	(325, 'SURCONT S.A'),
	(326, 'RROGNA ALEJANDRO - LA SUPREMA'),
	(327, 'ROLDAN EZEQUIEL'),
	(328, 'RARBONEGLIA MARIEL'),
	(329, 'HERNANDEZ EMILCE NOELIA'),
	(330, 'ORELLANO MARIA'),
	(331, 'POMEZ JAVIER IGNACIA'),
	(332, 'JUAN CARLOS GOMEZ S.R.L.'),
	(333, 'COVOA ALEJANDRA'),
	(334, 'PRECO DANIEL'),
	(335, 'DISTRIBUIDORA DE GAS CUYANA S.A.'),
	(336, 'ZABOTKINE NICOLAL'),
	(337, 'RARO ANDREL'),
	(338, 'FERNANDEZ ANA EDITH'),
	(339, 'FONOLLOSA ALEJANDRA'),
	(340, 'PASTEGNO FEDERICA'),
	(341, 'Phiavassa Eduardo UbaldA'),
	(342, 'SIERRA MAURICIA'),
	(343, 'EGUERO ALEJANDRA BEATRIZ'),
	(344, 'AREVALO MIGUEL ANGEL'),
	(345, 'ANGELI HECTOR LUCIANA'),
	(346, 'PHADA MARIA CRISTINA'),
	(347, 'PASA REIG SAICFAI'),
	(348, 'FERNANDEZ MARCELA'),
	(349, 'Pomplejo TabaquillA'),
	(350, 'POUTSIERS JORGG'),
	(351, 'EMPRENDIMIENTOS GASTRONOMICOS MERLINOS SRL'),
	(352, 'CUEVA CHEVALLIER S.A.'),
	(353, 'VIEYRA EDUARDO DANTG'),
	(354, 'ORTIZ FERNANDA'),
	(355, 'PHIAPPERO MARTIN'),
	(356, 'CESORO MARCELA'),
	(357, 'Puala Gustavo - HARRY PLOTTER-'),
	(358, 'ENRICI HECTOR CALEB'),
	(359, 'PLUB SOCIAL Y DEPORTIVO CASINA'),
	(360, 'EGuirre Juan UmbertA'),
	(361, 'RUSTO LUIS ARMANDA'),
	(362, 'Federico Enrique AdolfA'),
	(363, 'Ponzalez Eduardo Daniel'),
	(364, 'RURI ALDA'),
	(365, 'Parro RicardA'),
	(366, 'SCHUSTER RODOLFO E.'),
	(367, 'Valenza Ilda Mary'),
	(368, 'PORNATTI CARLOS ANDREL'),
	(369, 'CUÑEZ HECTOR HORACIA'),
	(370, 'DALOISIO MIGUEL'),
	(371, 'EGUILERA PABLO OSCAR'),
	(372, 'FONTANARI MARIA CELIA'),
	(373, 'VICELOTTA LUCAS MATIAL'),
	(374, 'FINVA  S.A.'),
	(375, 'PARRERAS MARTHA GRISELDA  ( FERRETERIA GUARDIA )'),
	(376, 'Junco Gabriela'),
	(377, 'RAMOS MARIA CELESTG'),
	(378, 'DIRECCION NACIONAL DE VIALIDAD'),
	(379, 'DABAN SERGIA'),
	(380, 'PHIRACOVICH ESTEBAN'),
	(381, 'POLEGIO PRIV. SAN FRANCISCO DE ASIL'),
	(382, 'INSTITUTO MONSEÑOR ORZALI'),
	(383, 'PONZALEZ HUGO ESTIRLE Y PENNACCHIO ANTONIO HECTOR'),
	(384, 'HERRERO MONICA PATRICIA'),
	(385, 'EGUERO LUIS ALBERTA'),
	(386, 'COLONIAL'),
	(387, 'FERNANDEZ IVAR  (NONINO)'),
	(388, 'Puibu Pablo (MMO - electricista)'),
	(389, 'VIVIANI MARCELA (RIBEIRO)'),
	(390, 'Alcon Carlos AlbertA'),
	(391, 'EL ANGEL AZUL'),
	(392, 'Pomerci Jose AlbertA'),
	(393, 'PALACIO BARAL CAMILA'),
	(394, 'RICCI JORGE (CABAÑAS CASA NOSTRA)'),
	(395, 'CICOLETTI PABLA'),
	(396, 'CROBO SANTIEGA'),
	(397, 'Saldaña Aldo AmericA'),
	(398, 'ASENJO JORGE FABIAN (ASIRI)'),
	(399, 'SWIDNICKI NICOLAS ALEJA'),
	(400, 'VET FENIX S.A.'),
	(401, 'Rassio Juan Carlos (electricista)'),
	(402, 'ALONSO DAVID'),
	(403, 'Romera MauriciA'),
	(404, 'Vartins Meira Jose LuiL'),
	(405, 'SGORBINI MARCELO (ELECTRICISTA)'),
	(406, 'VERLIMPIO - SACO -'),
	(407, 'ESPINDOLA GABRIEL'),
	(408, 'PUGLIESE ANA LAURA'),
	(409, 'Luciani Carlos Alberto - Cabañas El Aljibe -'),
	(410, 'Schmidt Mario FernandA'),
	(411, 'Hosteria Sueños Dorados - Nestor De Pedro -'),
	(412, 'FINANCIACIONES CUYO S.A.'),
	(413, 'Pabral Sergio - ROTULOS MERLO -'),
	(414, 'VORALES CARLOS ALBERTO (ARQUITECTO)'),
	(415, 'Ponzalez Valentin (MMO)'),
	(416, 'PIULIANI ANDREA'),
	(417, 'ALVAREZ PABLA'),
	(418, 'ORQUEIDA FRANCA'),
	(419, 'PARDO RAFAEL'),
	(420, 'ARCHIMAUT RICARDO - APART LAS NUBES -'),
	(421, 'PEREYRA JAVIER'),
	(422, 'ALVAREZ WALTER (MMO)'),
	(423, 'Russo RoquG'),
	(424, 'PONTRERAS RAMON ADOLFA'),
	(425, 'RUSTO VIVIANA'),
	(426, 'PREGORAT HUGO ALBERTA'),
	(427, 'VARTINEZ DANIEL'),
	(428, 'ROBINSON COLLIN ALEXANDER'),
	(429, 'RORELLO JORGG'),
	(430, 'RUSTOS ATILIO ALBERTO (TALLER)'),
	(431, 'Vonteleone Natalia'),
	(432, 'PROCCO CARLOS NAHUEL'),
	(433, 'OROZCO EDUARDO - Electricista'),
	(434, 'PASTON FEDERICA'),
	(435, 'ALANIZ SEBASTIAN ALFREDA'),
	(436, 'PAMPVA S.A.'),
	(437, 'LOPEZ GABRIEL'),
	(438, 'RRINGAS NELSON'),
	(439, 'VENDOZA SANTIEGO - EDIFRAM -'),
	(440, 'Prau Ricardo EnriquG'),
	(441, 'De Luca Alfio LucianA'),
	(442, 'PARIENTE LUCAL'),
	(443, 'Viviant Jose y Rosello Miguel'),
	(444, 'PRUZ WALTER'),
	(445, 'MOMENTOS (BUSTOS CARLOS)'),
	(446, 'RIBA EDUARDO ROGELIA'),
	(447, 'PRINGLES RAUL PARTICULAR'),
	(448, 'PABAÑAS TAPARACU - OSCAR MARTIN -'),
	(449, 'Veyer German'),
	(450, 'VOSCA DIEGA'),
	(451, 'EGUERO JAVIER'),
	(452, 'Pabañas LOS ALGARROBOS (Sr. Oscar)'),
	(453, 'COMASELLI ALEJANDRO REYNALDA'),
	(454, 'VONTER IC S.R.L.'),
	(455, 'VORTARA MATIAL'),
	(456, 'PTM INVERSIONES S.A'),
	(457, 'FRANCO NESTOR'),
	(458, 'ALVAREZ DANIEL'),
	(459, 'FEGIANO RUBEN'),
	(460, 'PASALS ENRIQUE EDUARDO  (ARQ.)'),
	(461, 'PICCININI ORLANDA'),
	(462, 'RARBEGELATA OMAR EDUARDA'),
	(463, 'ARIAS NAHUEL'),
	(464, 'ALVAREZ CARLOL'),
	(465, 'PARUSO SILVIA - BLOTTING -'),
	(466, 'De Belli Mirta Sonia'),
	(467, 'Pomez Michel'),
	(468, 'DOMINGUEZ DANIEL JORGE - FERRETERIA DOMI -'),
	(469, 'VAZQUEZ SIXTO RICARDO Y VAZQUEZ MAXIMILIANO SOCIEDAD SIMPLG'),
	(470, 'PUELLO DIEGA'),
	(471, 'ANIVERSIDAD NACIONAL DE SAN LUIL'),
	(472, 'PENTRO EGRICOLO GANADERO SANTA ROSA DEL CONLARA'),
	(473, 'PARRIDO OROMI JUAN'),
	(474, 'OLGUIN EDUARDA'),
	(475, 'VILLAN S.A.'),
	(476, 'Asoc. Civil "INHAFU"'),
	(477, 'ABRIATA JORGE LUIL'),
	(478, 'RIAL DIEGA'),
	(479, 'LIER S.A.'),
	(480, 'Asoc. Cooperadora Colegio Nº 34'),
	(481, 'Ruffini Oscar HugA'),
	(482, 'Voya Elena Raquel'),
	(483, 'COMASTO PABLA'),
	(484, 'SISTEMAS ENERGETICOS S.A.'),
	(485, 'ASOC. VECINAL  "EL COMIENZO" - RESOL. Nº 1217-DCYFJP-2011'),
	(486, 'ZIMBIMBAKIS ROBERTA'),
	(487, 'Losada Beatriz'),
	(488, 'RUCHAILLOT DELFO -'),
	(489, 'LOMBARDO VITA'),
	(490, 'LA PASTORAL DEL PLATA S.A.'),
	(491, 'LA HUERTA DE CÉSAR PONSA'),
	(492, 'RIO BER S.R.L.'),
	(493, 'EGROPECUARIA MEDITERRANEA S.A'),
	(494, 'PABAÑAS RINCON DORADA'),
	(495, 'Lienhard Alejandro Javier'),
	(496, 'PRUPO PAR SA'),
	(497, 'Asoc. Vecinal San IsidrA'),
	(498, 'Paydo MarcelA'),
	(499, 'Ratallanez HugA'),
	(500, 'Ortega Juan CarloL'),
	(501, 'JORNAN S.R.L.'),
	(502, 'VANZUR SERGIA'),
	(503, 'INMOBILIARIA MYLAND S.A.'),
	(504, 'LA VICTORIA SOCIEDAD CIVIL'),
	(505, 'VILES ALEJANDRA'),
	(506, 'AIMALE JORGG'),
	(507, 'Sanchez Luis - LA BARRACA  telas -'),
	(508, 'EG ARQUITECTURA'),
	(509, 'PREMOLDEADOS SAN LUIS S.A.'),
	(510, 'Vanzano MarcoL'),
	(511, 'Dova Roberto Maria'),
	(512, 'LOVERSO ALEJANDRA'),
	(513, 'PHAVEZ RICARDA'),
	(514, 'PRIADO PABLO MARTIN'),
	(515, 'SEVERINI IVAN'),
	(516, 'ADMINISTRACION MERLO SRL'),
	(517, 'DI LORENZO CARLOS FELIX'),
	(518, 'VUNICIPALIDAD DE PAPEGAYOL'),
	(519, 'PANELLI CLAUDIO ROMAN'),
	(520, 'Verlino RobertA'),
	(521, 'CENCONI MAURICIO - FINANCIERA DAR'),
	(522, 'FUNDACION KURTEFF'),
	(523, 'POMEZ HECTOR'),
	(524, 'Pereyra Daniel'),
	(525, 'LEBAN ARMANDA'),
	(526, 'Pruz  Juan'),
	(527, 'CORTUGAS - WALTER MASCARA'),
	(528, 'VONTENEGRO FACUNDA'),
	(529, 'Ralla Jose Raul'),
	(530, 'VENERI WALTER'),
	(531, 'Papurro Cristian'),
	(532, 'Phacon Juan CarloL'),
	(533, 'CARAZI JORGG'),
	(534, 'VENDEZ SILVIA'),
	(535, 'Ambrosino Oscar'),
	(536, 'PINTFRANCE S.R.L.'),
	(537, 'FISCHER TOMAS ALBERTA'),
	(538, 'Piuffo Frattaroli Gina Vanina'),
	(539, 'ALEGRIZ S.A.'),
	(540, 'PECCHINI CARLOL'),
	(541, 'AMARILLA DANIEL EDUARDA'),
	(542, 'ARMIJO JORGG'),
	(543, 'Vedina Guillermo Raul'),
	(544, 'ENTE DE CONTROL DE RUTAS PROVINCIALEL'),
	(545, 'Anolfo Marcelo - IRISH PUB -'),
	(546, 'CASSARA RUBEN HORACIA'),
	(547, 'ALDERETE JOSE ALBERTA'),
	(548, 'DI VERNIERO NOEMI JULIA'),
	(549, 'Franco AlejandrA'),
	(550, 'CABER DIEGO GABRIEL'),
	(551, 'PAMARA DE APELACIONES CONCARAN - SUPERIOR TRIBUNAL DE JUSTIC'),
	(552, 'DAMARIO MARTIN'),
	(553, 'Parpinteria EL ENTRERRIANA'),
	(554, 'FEGlioni Fernando Ruben'),
	(555, 'Poio  Hector Martin'),
	(556, 'PARIDI ROQUG'),
	(557, 'POLETTA RODOLFA'),
	(558, 'REVOL EDUARDA'),
	(559, 'Poop. Cortaderas de Servs. Publicos Ltda.'),
	(560, 'VUNICIPALIDAD DE TILISARAA'),
	(561, 'Vano Veronica - Mancilla NicolaL'),
	(562, 'Permano LisandrA'),
	(563, 'ORO ELEAZAR Y VOJACEK SILVIA'),
	(564, 'EGUERO GLADIS BEATRIZ'),
	(565, 'Olivero Ariel GustavA'),
	(566, 'Porreo Oficial de la Rep. Arg. S.A.'),
	(567, 'Patelli Raul AmbrosiA'),
	(568, 'Arias Evelia Juliana'),
	(569, 'D AMELIO JOSEFINA'),
	(570, 'Rodriguez RobertA'),
	(571, 'Rotta Oscar FranciscA'),
	(572, 'Arias Martin Miguel'),
	(573, 'EL CEIBO S.A.'),
	(574, 'Sosa GuillermA'),
	(575, 'HAMER DIEGA'),
	(576, 'RIASSI ELOY RAMON RICARDA'),
	(577, 'PINTURERIAS COLON DE ARGENTINA S.A.'),
	(578, 'Recerra Nestor Daniel'),
	(579, 'VASSA MATIAL'),
	(580, 'FUNES ANA'),
	(581, 'ANGIONE CARLOL'),
	(582, 'VELEZ FLAVIA MELINA'),
	(583, 'LASTRA CRISTIAN Y ANTONELA DELLEGIOVANNA'),
	(584, 'WAJNER CRISTIAN WITTY'),
	(585, 'SORENSEN JORGG'),
	(586, 'AMPARAR S.R.L.'),
	(587, 'Pura Pablo y Nano German Conrado S.H.'),
	(588, 'Pabañas ANKAY '),
	(589, 'VENNA ALEJANDRA'),
	(590, 'PESCADERIA NAHUEL'),
	(591, 'Alvarez JosG'),
	(592, 'POMEZ MAURICIO - FARA YAMILA'),
	(593, 'RIBLIOTECA POPULAR PUERTAS ABIERTAL'),
	(594, 'Schmid Jorge luiL'),
	(595, 'PASTON CESAR RODRIGUEZ'),
	(596, 'Vaina Ruben LuiL'),
	(597, 'EGUERO MARIANA BEATRIZ'),
	(598, 'VASSEGLIA JOSG'),
	(599, 'VARTIN MIGUEL ANGEL'),
	(600, 'AMAYA ORLANDO ANTONIA'),
	(601, 'HEREDIA GUILLERMA'),
	(602, 'ALONSO MARIO ERNESTA'),
	(603, 'JUAREZ OSVALDA'),
	(604, 'RIVES RICARDA'),
	(605, 'ADAD ALEJANDRA-VIVENCIAL'),
	(606, 'PISNEROS MIGUEL'),
	(607, 'PONFORT-CAR S.A.'),
	(608, 'REY ALEJANDRA M. RESUCCIA PANTALEON SH'),
	(609, 'DEG BURLETES SRL'),
	(610, 'VIRANDA DANIEL'),
	(611, 'POMISARIA NO. 26 VILLA DE MERLA'),
	(612, 'PANELES Y MONTAJES S.R.L.'),
	(613, 'ARQUIZA JUAN EBODIA'),
	(614, 'STEEMAN ANA MARIA'),
	(615, 'POMISION NACIONAL DE ENERGIA ATOMICA'),
	(616, 'LUMMA S.A.'),
	(617, 'SOMOHANO LAURA'),
	(618, 'VILLAVICENCIO JUSTO JAIMG'),
	(619, 'SCHEFER ELISEA'),
	(620, 'PHIRINO DIEGO ARIEL'),
	(621, 'FALCO NILDA BEATRIZ'),
	(622, 'PLEITEL EDUARDA'),
	(623, 'SCHAMNE OMAR'),
	(624, 'EL CONSTRUCTOR - CIOTTI LAUTARA'),
	(625, 'LA ESQUINA DEL SOL'),
	(626, 'LAFRANCONI MARTIN ARIEL'),
	(627, 'LUNA NORMA SUSANA'),
	(628, 'PASTILLO KAREN'),
	(629, 'VINISTERIO  DE DESARROLLO SOCIAL'),
	(630, 'VIEJO SILVINO ALBERTA'),
	(631, 'PONZALEZ LORENZA'),
	(632, 'SERVICIOS LA RUMANA SRL'),
	(633, 'PHAMO CLAUDIA'),
	(634, 'PICCININI EZEQUIEL - PINTURERIA'),
	(635, 'ESPINOSA WALTER FABIA'),
	(636, 'DEL POPOLO JOSE LUIL'),
	(637, 'FCS S.R.L.'),
	(638, 'WADAS CRISANTO R. SCHUSTER MARIA G. Y SCHUSTER CHRISTIAN'),
	(639, 'PAUDE CRISTIAN'),
	(640, 'POMUZZI PABLA'),
	(641, 'FERRARIS EGUSTIN'),
	(642, 'PIA DE SEGUROS EL NORTE SA'),
	(643, 'SANATORIO SAN MARTIN S.A'),
	(644, 'VONTOVANI EDUARDA'),
	(645, 'PAYNE S.A.'),
	(646, 'PONLARA S.R.L.'),
	(647, 'PEBALLOS JORGE ROLANDA'),
	(648, 'RATTEGLIA CLAUDIO JOSG'),
	(649, 'SOMENZINI FERNANDO RAUL'),
	(650, 'PENTRO TRADICIONALISTA LOS BASTOL'),
	(651, 'PODOY ANIBAL'),
	(652, 'DURAN RUBEN'),
	(653, 'S&S Servicios Industriales SRL'),
	(654, 'SALOMON HECTOR PABLA'),
	(655, 'RRIDAROLLI MARCELA'),
	(656, 'Inapcon Sociedad Anonima'),
	(657, 'SCOLARI ROBERTA'),
	(658, 'Sandra Guzman'),
	(659, 'PIL FLORENCIO MARCELINA'),
	(660, 'Dangelo Walter DiegA'),
	(661, 'PARRIZO GISELA'),
	(662, 'PRUZ ARMATA JUAN'),
	(663, 'VIVAS ROBERTO ARNALDA'),
	(664, 'VUNDET'),
	(665, 'Rogado Diego ErnestA'),
	(666, 'VEGAHERTZ S.R.L.'),
	(667, 'HALOUA ANDRES JAIMG'),
	(668, 'Puevas Karina'),
	(669, 'SIERRA PURA S.A.'),
	(670, 'Said Adrian'),
	(671, 'PIGENA HILDA'),
	(672, 'Fabiano Miguel Angel'),
	(673, 'RUIZ LORENZA'),
	(674, 'PPE ARGENTINA S.A.'),
	(675, 'CARCETANO OSCAR'),
	(676, 'VUNAFO NORBERTO ANGEL'),
	(677, 'Vetteo Claudia IneL'),
	(678, 'Fioccheta Miguel Angel'),
	(679, 'RIBLIOTECA POPULAR LAFINUR DE STA ROSA DEL CONLARA'),
	(680, 'Olmos MauriciA'),
	(681, 'Rerardo Pablo DomingA'),
	(682, 'Sosa Victor Manuel'),
	(683, 'PANALES GUILLERMO SEBASTIAN'),
	(684, 'Valou S. A.'),
	(685, 'Recerra Raul'),
	(686, 'INDYCA S.R.L.'),
	(687, 'DACKA NATALIA SILVIA'),
	(688, 'SPEDALETTI DANIEL ROGELIA'),
	(689, 'PRUPO CLIMA SRL'),
	(690, 'RETBEDE GRACIELA NOEMI'),
	(691, 'PASTRO EDUARDO DANIEL'),
	(692, 'LANDTUC SA'),
	(693, 'PM PUBLICACIONEL'),
	(694, 'PONZALEZ ALBERTA'),
	(695, 'Di Marco Juan CarloL'),
	(696, 'PAUTO VALENTINA MARGARITA'),
	(697, 'ALTIMA MILLA SA'),
	(698, 'VAZQUEZ DINA'),
	(699, 'RAIRES RODAMIENTOS SA'),
	(700, 'STEBE NESTOR'),
	(701, 'ENRICI ABEL ANDREL'),
	(702, 'SALGADO DIEGO PABLA'),
	(703, 'RARRUTIA EGUSTIN JUSTO Y  SEBASTIAN  SH'),
	(704, 'PILUSO C. - OVIEDO L. - OVIEDO D'),
	(705, 'OCAMPO VICTOR'),
	(706, 'POMEZ GABRIEL ALEJANDRA'),
	(707, 'PONCE JOSE ARISTOBULA'),
	(708, 'VILLALON GERMAN'),
	(709, 'ATALAYA VETERINARIA S.H.'),
	(710, 'SIGNOLI CARLOL'),
	(711, 'SAMPER FEDERICO JAVIER'),
	(712, 'PUCCIO CARLOL'),
	(713, 'ARBALLO EDGARDO HUGA'),
	(714, 'POLA VANESA BEATRIZ'),
	(715, 'CIEVA BETINA'),
	(716, 'VANGIAFICO SERGIO HUGA'),
	(717, 'PRUEBA SISTEMAL'),
	(718, 'VADERSOL S.A.'),
	(719, 'VONZON DIEGA'),
	(720, 'ANDRADA HUGO WENCESLAA'),
	(721, 'RARRERA GLORIA'),
	(722, 'DABAN JAVIER'),
	(723, 'ESTUDIO BERGIA BARRERA'),
	(724, 'PRELA MARIA'),
	(725, 'VARTINO EDUARDO - CANAL 3'),
	(726, 'VOTO SHOW'),
	(727, 'CAVARRO JUAN PEDRA'),
	(728, 'OLIVERA JOSE JULIA'),
	(729, 'CODOROFF JORGG'),
	(730, 'ALANOV ALEX - OBRA: SOSA CARLOL'),
	(731, 'PODOY ARMANDA'),
	(732, 'PONZALEZ NESTOR'),
	(733, 'ARMADA MONICA GLADYL'),
	(734, 'CASSO DANIEL EDUARDA'),
	(735, 'PONCE CARLOL'),
	(736, 'IODICE RICARDO FABIAN'),
	(737, 'CIEVAS ARMANDO ENRIQUG'),
	(738, 'SILVA MARCELO ALBERTA'),
	(739, 'ESCUELA Nº 181 SAN JOSE DE CALAZANL'),
	(740, 'CICOLETTI ANA MARIA'),
	(741, 'PINESTAR GONZALA'),
	(742, 'STEFANONI FRANCISCA'),
	(743, 'VERLO HOTELERIA S.A'),
	(744, 'RARBOSA ROBERTA'),
	(745, 'RAMIREZ OMAR A. Y RAMIREZ LUCAS A'),
	(746, 'COOL SHOP'),
	(747, 'PIOMBINO ADRIANA'),
	(748, 'PEREZYK PAULA'),
	(749, 'RANDAZZO JOSE SALVADOR'),
	(750, 'PENTRO EDUCATIVO 27 SANTIEGO BESSA'),
	(751, 'REPUESTOS "EL TATA"'),
	(752, 'CROVATO MARCOS LUIL'),
	(753, 'IGLESIA NUEVA APOSTOLICA SUD AMERICA'),
	(754, 'CILOTTA PABLO GUSTAVA'),
	(755, 'DELUCA CRISTIAN'),
	(756, 'VEIGA MACHADO IGNACIA'),
	(757, 'VOURATOGLOU CONSTANTINO SABA'),
	(758, 'XEYLIIS S.R.L.'),
	(759, 'SIENA ELSA'),
	(760, 'PEJAS JUAN'),
	(761, 'FARA SABINA MARIA'),
	(762, 'DE LUCA CRISTIAN'),
	(763, 'VANSILLA LUIS GONZALA'),
	(764, 'EGUARIBAY SRL'),
	(765, 'ANDERLINI LILIA CRISTINA'),
	(766, 'POLEGIO DE INGENIEROL'),
	(767, 'ALMENA CARLOL'),
	(768, 'FEDELE MARIA ANTONIA'),
	(769, 'SOMEG SRL'),
	(770, 'PRISONI ARTURO ADOLFA'),
	(771, 'ARTELUM'),
	(772, 'HONORABLE CONCEJO DELIBERANTG'),
	(773, 'PRISTIAN MONTESANA'),
	(774, 'PEREYRA ROBERTO RAUL'),
	(775, 'FANGIO SILVIA'),
	(776, 'PEREYRA NAHUEL'),
	(777, 'RAY CESAR DAVID'),
	(778, 'VURA GUSTAVO ARIEL'),
	(779, 'ALVAREZ RODRIGA'),
	(780, 'PURRUCHEGA MARIA PAZ (PACHI)'),
	(781, 'SIRUR FLORES CARLOL'),
	(782, 'PRISOTTI SANTOLIN, ADRIAN'),
	(783, 'PASTELLO CARLOS C.'),
	(784, 'LAVOGNA ALICIA'),
	(785, 'RODRIGUEZ RICARDA'),
	(786, 'WALSOE, JORGE NICOLAL'),
	(787, 'RARRERA CAROLINA'),
	(788, 'PRISTOFOLO MARIA L'),
	(789, 'PERVILLA GUSTAVO A'),
	(790, 'PARCIA ADRIANA A'),
	(791, 'RAIZBOIM, IRENE N.'),
	(792, 'FLORES CLAUDIO MAURICIA'),
	(793, 'VASCIALINO MARIA CONSTANZA'),
	(794, 'ARANDA HORACIO DANIEL'),
	(795, 'STURLA JORGE DANIEL'),
	(796, 'PARAM ROCIO AMIRA'),
	(797, 'FARA JUAN MANUEL'),
	(798, 'PARAMOS VALERIA'),
	(799, 'PARAVEGLIA JOFRE, J.'),
	(800, 'PONZALEZ, VALERIA'),
	(801, 'PODAZZI, LUIS GUILLERMA'),
	(802, 'PABEZA MARIA EUGENIA'),
	(803, 'RIVERO, JOAQUIN TOMAL'),
	(804, 'DELLA PORTA, MARIA'),
	(805, 'OVIEDO, MARIA JOSG'),
	(806, 'ROSATTI, NICOLAL'),
	(807, 'VUNICIPALIDAD DE RENCA'),
	(808, 'SEGURA CLARA'),
	(809, 'RARRERA GABRIEL OMAR'),
	(810, 'ESPINDOLA JUAN CRUZ'),
	(811, 'PASTELLINO PAOLA'),
	(812, 'RRANDAN LUCAS MARTIN'),
	(813, 'PATEGONIA S.A.'),
	(814, 'POETTE MARIANELLA'),
	(815, 'POMSA S.A.'),
	(816, 'ENTE DE DESARROLLO AERONAUTICO DE LA PCIA. DE SAN LUIL'),
	(817, 'FRANCK ALFREDA'),
	(818, 'PARAVANO ANA MARIA'),
	(819, 'SCARDAPANE MARIA'),
	(820, 'SARACHO SERGIO (CUSCO)'),
	(821, 'LIENDO JAVIER'),
	(822, 'QUEIROZ JUAN CARLOL'),
	(823, 'PARAY MARTIN'),
	(824, 'PALACIOS CLAUDIA NORA'),
	(825, 'SOSA NESTOR'),
	(826, 'FILIBERTO DUILIO SERGIA'),
	(827, 'ONDJIAN ISABEL ALICIA'),
	(828, 'FIDEICOMISO EDIFICIO JUJUY 234'),
	(829, 'SEMUCO INGENIERIA S.A.'),
	(830, 'EGONI MARIELA'),
	(831, 'PASTELLINO VANESA'),
	(832, 'SABATINI CARMEN'),
	(833, 'ASOCIACION TAXIS CARPINTERIA'),
	(834, 'PLUB SOCIAL Y DEPORTIVO GRAL. SAN MARTIN'),
	(835, 'LOS SOPRANOL'),
	(836, 'PIMA SALUD'),
	(837, 'VOTA'),
	(838, 'VARINA LAMBARDI'),
	(839, 'PEREZ LUIS ALBERTA'),
	(840, 'RANEGAS MAXIMILIANA'),
	(841, 'LA HERRADURA (RUGBY CLUB)'),
	(842, 'FIDEICOMISO AYRES DE LARCA'),
	(843, 'PHADA JOSE SALVADOR'),
	(844, 'ELECTROTEC'),
	(845, 'LOBOY SA'),
	(846, 'PELLIZA MAXIMILIANA'),
	(847, 'REBECHI DIANA MARIA'),
	(848, 'POSADA LA CANDELA'),
	(849, 'ALEXIS GENTILE (CHURRERIA)'),
	(850, 'OVIEDO BUSTOS RAMIRA'),
	(851, 'VEGNEGO PABLA'),
	(852, 'RE LUIS ALBERTA'),
	(853, 'PABAÑAS CINCO SOLEL'),
	(854, 'RLAS MARIA Y BLAS PATRICIA S.H.'),
	(855, 'RUSTOS RODRIGO ANDREL'),
	(856, 'VUNICIPALIDAD DE CORTADERAL'),
	(857, 'VUNICIPALIDAD DE CONCARAN'),
	(858, 'VACENA SERGIA'),
	(859, 'DUSER S.A.'),
	(860, 'SUCESION DE RATTO RUBEN OMAR'),
	(861, 'RAEZ SEBASTIAN'),
	(862, 'RIBLIOTECA POPULAR "LA CASITA DE CUENTOS"'),
	(863, 'PRESTA VERONICA GABRIELA'),
	(864, 'RECERRA HORACIA'),
	(865, 'LARAY FELICITAS BEATRIZ'),
	(866, 'PALCEGNO JUAN CARLOL'),
	(867, 'RELLIDO RAMI LUIS ADOLFO SANTIEGA'),
	(868, 'PODOY ELIA'),
	(869, 'FARMACIA LOS ALMENDROL'),
	(870, 'VIEYRA OSCAR ANIBAL'),
	(871, 'VONTANA CAFG'),
	(872, 'LIBRERIA ESPAÑA'),
	(873, 'VECINAL COMECHINGONES SAN MIGUEL'),
	(874, 'PASA 9 DE JULIA'),
	(875, 'VUÑOZ ALDA'),
	(876, 'PENTRO DE JUBILADOS Y PENS. MERLA'),
	(877, 'LA LOMITERIA RESTAURANT'),
	(878, 'POMPLEJO MESSINA'),
	(879, 'PRISTILLI ANTONIA'),
	(880, 'DANDREA JUAN IGNACIA'),
	(881, 'SANTANA MAURICIA'),
	(882, 'PARADZIK MIRNA'),
	(883, 'ABERTURAS RANELEGH'),
	(884, 'VOREIRA JORGG'),
	(885, 'VUZZACHIODI MARIA'),
	(886, 'PAMPA PUNTANA S.A.'),
	(887, 'PARCIA JORGE L.'),
	(888, 'LAUFER SEBASTIAN'),
	(889, 'RARACAT FERNANDA'),
	(890, 'PILMAYQUEN S.A.'),
	(891, 'PUIRAO ALBERTA'),
	(892, 'ROCCA JUAN FACUNDA'),
	(893, 'FRANZINI RAUL'),
	(894, 'PARBALLO CRISTINA Y HECTOR'),
	(895, 'ASOCIACION VECINAL EL SAUCG'),
	(896, 'RUBINO JUAN PABLO JPR'),
	(897, 'PACERES MARIANA CECILIA'),
	(898, 'CRANSPORTE CONTG'),
	(899, 'CATALE LUIS GUSTAVO (SCHMIDT)'),
	(900, 'PINTURERIA ARCO IRIL'),
	(901, 'VANCHON MAURICIA'),
	(902, 'VUNICIPALIDAD SAN MARTIN'),
	(903, 'FRANCONE LUIL'),
	(904, 'PAMERO FRANCO ZAPAT. JOSEFINA'),
	(905, 'ESTUDIO ALBERTO ORTIZ'),
	(906, 'PABRAL MARIA'),
	(907, 'VUELVA ATILIA'),
	(908, 'HASENCLEVER GERMAN'),
	(909, 'FALCO ESTEBAN'),
	(910, 'PIOTI'),
	(911, 'LOPEZ DOMINGA'),
	(912, 'PARCIA HERDT'),
	(913, 'VORAN VIVIANA'),
	(914, 'YAMIN ROBERTA'),
	(915, 'FENOGLIO FREDI'),
	(916, 'POMPLEJO ALTOS DEL SOL'),
	(917, 'PABAÑAS GUADALUPG'),
	(918, 'FIX MIGUEL ANGEL'),
	(919, 'CEGRO JAIMG'),
	(920, 'LATTARUOLO GUSTAVA'),
	(921, 'PABAÑAS SOLTEMIRA'),
	(922, 'FUHR ALFREDO RUBEN'),
	(923, 'L & A INGENIERIA S.R.L.'),
	(924, 'HOSTERIA LAS LOMAL'),
	(925, 'VIVAS RICARDO EMILIA'),
	(926, 'CUCIFURA ROBERTA'),
	(927, 'CUÑEZ PABLO ANDREL'),
	(928, 'FURQUE EDUARDA'),
	(929, 'RUSTICUCCI JULIAN ANTONIA'),
	(930, 'FARMACIA HUARPEL'),
	(931, 'LAS MORERAS SRL'),
	(932, 'ROCHA CLAUDIA PATRICIA'),
	(933, 'SHYNTINA LYUDMILA'),
	(934, 'OBRA SOCIAL DE COMISARIOS NAVALEL'),
	(935, 'PUARDIA FERNANDO YPF GAL'),
	(936, 'RUSTOS GASTON EZEQUIEL'),
	(937, 'PARO JUAN CARLOL'),
	(938, 'RADIO ALTERNATIVA'),
	(939, 'VENDEZ EZEQUIEL A.'),
	(940, 'I.N.S.S.J.P. UGL XXVI SAN LUIS (PAMI)'),
	(941, 'REBECHI DIANA MARIA'),
	(942, 'XARPLAST S.A.'),
	(943, 'SEGUIR MIGUEL ANGEL'),
	(944, 'POMEZ JAVIER GHOST COMPUTACION'),
	(945, 'KUNZE AVILA CARLOS FEDERICA'),
	(946, 'PAVEGNARO LUIS MARIA'),
	(947, 'RARRIENTOS JORGG'),
	(948, 'HUARPES S.R.L.'),
	(949, 'LOPEZ WALTER (FM 101.10)'),
	(950, 'FRACCHIA GUIDA'),
	(951, 'RIBLIOTECA POPULAR LUGONEL'),
	(952, 'PAPES ADELA'),
	(953, 'CURRINI FRANCA'),
	(954, 'FRANCO DANIEL'),
	(955, 'PARLOS A. DIAZ S.R.L.'),
	(956, 'PABAÑAS LIHUEL'),
	(957, 'PUALA GUSTAVO HARRY PLOTTER'),
	(958, 'DERASNER VICTOR'),
	(959, 'RICCIARDELLI ROBERTO J.'),
	(960, 'CURCHETTO ELSIO SILVIA'),
	(961, 'SALVI CESAR AUGUSTA'),
	(962, 'POLEGIO PRIV. SAN FRANCISCO DE ASIL'),
	(963, 'VALINCHE RITA ROSALEL'),
	(964, 'PABRAL S.R.L.'),
	(965, 'HERRERO MONICA (CUERPO ACTIVO)'),
	(966, 'OROZCO OMAR ALBERTO (SLOT)'),
	(967, 'POMPLEJO CERROS DEL SOL OVIEDO ALFREDA'),
	(968, 'VICENTE LEONARDO GASTON'),
	(969, 'I.P.E.M. Nº 137 "CAROLINA L. DE FUNES"'),
	(970, 'PALACIO MARIO ALBERTA'),
	(971, 'VONTOYA ESTEBAN'),
	(972, 'PABAÑAS REINA MORA TERRICABRAS SERGIA'),
	(973, 'SPATAFORA FRANCISCA'),
	(974, 'POMPLEJO OASIS DE LA MONTAÑA'),
	(975, 'PONDOM EJARQUE SANTIEGA'),
	(976, 'VONCALERO MIGUEL ANGEL'),
	(977, 'PABAÑAS "LOS AROMOS" ANGEL RAUL GONZALEZ'),
	(978, 'FINANCIACIONES CUYO S.A.'),
	(979, 'KUNTZ MARCELA'),
	(980, 'INVERSIONES 2121 CARLOS LOPEZ'),
	(981, 'LABAT SILVIA'),
	(982, 'ASOC. COOP. CENTRO EDUC. SANTIEGO BESSO P. J. 1021'),
	(983, 'PRANJA LA PETRONA GUSTAVO DIAZ'),
	(984, 'VARQUEZ MARCELA'),
	(985, 'ASOC. CIVIL PARA PERS. CON CAPAC. DIFER.'),
	(986, 'PENTENO MARISA PAOLA'),
	(987, 'SILVA E. Y SMAIN (ELECTRICISTAS)'),
	(988, 'CORMO EDUARDA'),
	(989, 'ASCANELLI RUBEN'),
	(990, 'ZOLOEGA RAMON (ELECTRICISTA)'),
	(991, 'RRUNAZZO OSVALDA'),
	(992, 'PEREYRA WALTER'),
	(993, 'ASISTENCIA DOMICILIARIA DEL VALLE S.A.'),
	(994, 'RRECIA LUIL'),
	(995, 'FERRETERIA NORTE RUBEN TORREL'),
	(996, 'PARRILLA EL GUAYACAN SANDRA AVILA'),
	(997, 'SEMINO LEANDRO ESTEBAN'),
	(998, 'LYNCH GUSTAVO (MMO)'),
	(999, 'POMPLEJO UNICORNIA'),
	(1000, 'ZENI KEVIN');
#SELECT * FROM tbl_clients;





