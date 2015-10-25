
CREATE DATABASE ClubException;
GO
USE ClubException;
GO

CREATE TABLE usuarios
(
rutUsuario int,
clave varchar(10) NOT NULL,
nombreUsuario VARCHAR(30) NOT NULL,
CONSTRAINT pk_rutUsuario PRIMARY KEY (rutUsuario)
);

CREATE TABLE comunas
(
idComuna INT,
nombreComuna VARCHAR(50) NOT NULL,
CONSTRAINT pk_idComuna PRIMARY KEY (idComuna)
);

CREATE TABLE estadios
(
idEstadio INT,
nombreEstadio VARCHAR(100),
idComuna int,
CONSTRAINT pk_idEstadio PRIMARY KEY (idEstadio),
CONSTRAINT fk_comuna_estadios FOREIGN KEY (idComuna) REFERENCES comunas (idComuna)
);

CREATE TABLE DTs
(
rutDT INT,
nombreDT VARCHAR(50) NOT NULL,
CONSTRAINT pk_rutDT PRIMARY KEY (rutDT)
);

CREATE TABLE posicion
(
idPosicion INT,
descripcion VARCHAR(50) NOT NULL,
CONSTRAINT pk_idPosicion PRIMARY KEY (idPosicion)
);

CREATE TABLE equipos
(
idEquipo INT,
nombreEquipo VARCHAR(50) UNIQUE NOT NULL,
idComuna INT,
rutDT INT UNIQUE ,
puntaje INT,
division VARCHAR(2),
CONSTRAINT pk_idEquipo PRIMARY KEY (idEquipo),
CONSTRAINT fk_comuna_equipos FOREIGN KEY (idComuna) REFERENCES comunas (idComuna),
CONSTRAINT fk_DTs_equipos FOREIGN KEY (rutDT) REFERENCES DTs (rutDT)
);

CREATE TABLE jugadores
(
rutJugador INT,
nombreJugador VARCHAR(100) NOT NULL,
edad INT NOT NULL,
idEquipo INT,
golesConvertidos INT NOT NULL,
idPosicion INT,
CONSTRAINT pk_rutJugador PRIMARY KEY (rutJugador),
CONSTRAINT fk_equipos_jugadores FOREIGN KEY (idEquipo) REFERENCES equipos (idEquipo),
CONSTRAINT fk_posicion_jugadores FOREIGN KEY (idPosicion) REFERENCES posicion (idPosicion) 
);

CREATE TABLE partidos
(
idPartido INT,
equipoLocal INT NOT NULL,
equipoVisita INT NOT NULL,
golesLocal INT NOT NULL,
golesVisita INT NOT NULL,
idEstadio INT NOT NULL,
fechaPartido DATETIME,
fechaTorneo INT,
CONSTRAINT pk_idPartido PRIMARY KEY (idPartido),
CONSTRAINT fk_equiposA_partidos FOREIGN KEY (equipoLocal) REFERENCES equipos (idEquipo),
CONSTRAINT fk_equiposB_partidos FOREIGN KEY (equipoVisita) REFERENCES equipos (idEquipo),
CONSTRAINT fk_estadio_partidos  FOREIGN KEY (idEstadio) REFERENCES estadios (idEstadio)
);


/** Alter **/

ALTER TABLE equipos ADD UNIQUE (rutDT);

/** Usuarios **/

INSERT INTO usuarios VALUES(19133111,'rick','Ricardo');
INSERT INTO usuarios VALUES(16247801,'root','Randy');

/** Comuna **/
INSERT INTO comunas
VALUES
(1,'Arica'),
(2,'Camarones'),
(3,'General Lagos'),
(4,'Putre'),
(5,'Alto Hospicio'),
(6,'Iquique'),
(7,'Camiña'),
(8,'Colchane'),
(9,'Huara'),
(10,'Pica'),
(11,'Pozo Almonte'),
(12,'Antofagasta'),
(13,'Mejillones'),
(14,'Sierra Gorda'),
(15,'Taltal'),
(16,'Calama'),
(17,'Ollague'),
(18,'San Pedro de Atacama'),
(19,'María Elena'),
(20,'Tocopilla'),
(21,'Chañaral'),
(22,'Diego de Almagro'),
(23,'Caldera'),
(24,'Copiapó'),
(25,'Tierra Amarilla'),
(26,'Alto del Carmen'),
(27,'Freirina'),
(28,'Huasco'),
(29,'Vallenar'),
(30,'Canela'),
(31,'Illapel'),
(32,'Los Vilos'),
(33,'Salamanca'),
(34,'Andacollo'),
(35,'Coquimbo'),
(36,'La Higuera'),
(37,'La Serena'),
(38,'Paihuaco'),
(39,'Vicuña'),
(40,'Combarbalá'),
(41,'Monte Patria'),
(42,'Ovalle'),
(43,'Punitaqui'),
(44,'Río Hurtado'),
(45,'Isla de Pascua'),
(46,'Calle Larga'),
(47,'Los Andes'),
(48,'Rinconada'),
(49,'San Esteban'),
(50,'La Ligua'),
(51,'Papudo'),
(52,'Petorca'),
(53,'Zapallar'),
(54,'Hijuelas'),
(55,'La Calera'),
(56,'La Cruz'),
(57,'Limache'),
(58,'Nogales'),
(59,'Olmué'),
(60,'Quillota'),
(61,'Algarrobo'),
(62,'Cartagena'),
(63,'El Quisco'),
(64,'El Tabo'),
(65,'San Antonio'),
(66,'Santo Domingo'),
(67,'Catemu'),
(68,'Llaillay'),
(69,'Panquehue'),
(70,'Putaendo'),
(71,'San Felipe'),
(72,'Santa María'),
(73,'Casablanca'),
(74,'Concón'),
(75,'Juan Fernández'),
(76,'Puchuncaví'),
(77,'Quilpué'),
(78,'Quintero'),
(79,'Valparaíso'),
(80,'Villa Alemana'),
(81,'Viña del Mar'),
(82,'Colina'),
(83,'Lampa'),
(84,'Tiltil'),
(85,'Pirque'),
(86,'Puente Alto'),
(87,'San José de Maipo'),
(88,'Buin'),
(89,'Calera de Tango'),
(90,'Paine'),
(91,'San Bernardo'),
(92,'Alhué'),
(93,'Curacaví'),
(94,'María Pinto'),
(95,'Melipilla'),
(96,'San Pedro'),
(97,'Cerrillos'),
(98,'Cerro Navia'),
(99,'Conchalí'),
(100,'El Bosque'),
(101,'Estación Central'),
(102,'Huechuraba'),
(103,'Independencia'),
(104,'La Cisterna'),
(105,'La Granja'),
(106,'La Florida'),
(107,'La Pintana'),
(108,'La Reina'),
(109,'Las Condes'),
(110,'Lo Barnechea'),
(111,'Lo Espejo'),
(112,'Lo Prado'),
(113,'Macul'),
(114,'Maipú'),
(115,'Ñuñoa'),
(116,'Pedro Aguirre Cerda'),
(117,'Peñalolén'),
(118,'Providencia'),
(119,'Pudahuel'),
(120,'Quilicura'),
(121,'Quinta Normal'),
(122,'Recoleta'),
(123,'Renca'),
(124,'San Miguel'),
(125,'San Joaquín'),
(126,'San Ramón'),
(127,'Santiago'),
(128,'Vitacura'),
(129,'El Monte'),
(130,'Isla de Maipo'),
(131,'Padre Hurtado'),
(132,'Peñaflor'),
(133,'Talagante'),
(134,'Codegua'),
(135,'Coínco'),
(136,'Coltauco'),
(137,'Doñihue'),
(138,'Graneros'),
(139,'Las Cabras'),
(140,'Machalí'),
(141,'Malloa'),
(142,'Mostazal'),
(143,'Olivar'),
(144,'Peumo'),
(145,'Pichidegua'),
(146,'Quinta de Tilcoco'),
(147,'Rancagua'),
(148,'Rengo'),
(149,'Requínoa'),
(150,'San Vicente de Tagua Tagua'),
(151,'La Estrella'),
(152,'Litueche'),
(153,'Marchihue'),
(154,'Navidad'),
(155,'Peredones'),
(156,'Pichilemu'),
(157,'Chépica'),
(158,'Chimbarongo'),
(159,'Lolol'),
(160,'Nancagua'),
(161,'Palmilla'),
(162,'Peralillo'),
(163,'Placilla'),
(164,'Pumanque'),
(165,'San Fernando'),
(166,'Santa Cruz'),
(167,'Cauquenes'),
(168,'Chanco'),
(169,'Pelluhue'),
(170,'Curicó'),
(171,'Hualañé'),
(172,'Licantén'),
(173,'Molina'),
(174,'Rauco'),
(175,'Romeral'),
(176,'Sagrada Familia'),
(177,'Teno'),
(178,'Vichuquén'),
(179,'Colbún'),
(180,'Linares'),
(181,'Longaví'),
(182,'Parral'),
(183,'Retiro'),
(184,'San Javier'),
(185,'Villa Alegre'),
(186,'Yerbas Buenas'),
(187,'Constitución'),
(188,'Curepto'),
(189,'Empedrado'),
(190,'Maule'),
(191,'Pelarco'),
(192,'Pencahue'),
(193,'Río Claro'),
(194,'San Clemente'),
(195,'San Rafael'),
(196,'Talca'),
(197,'Arauco'),
(198,'Cañete'),
(199,'Contulmo'),
(200,'Curanilahue'),
(201,'Lebu'),
(202,'Los Álamos'),
(203,'Tirúa'),
(204,'Alto Biobío'),
(205,'Antuco'),
(206,'Cabrero'),
(207,'Laja'),
(208,'Los Ángeles'),
(209,'Mulchén'),
(210,'Nacimiento'),
(211,'Negrete'),
(212,'Quilaco'),
(213,'Quilleco'),
(214,'San Rosendo'),
(215,'Santa Bárbara'),
(216,'Tucapel'),
(217,'Yumbel'),
(218,'Chiguayante'),
(219,'Concepción'),
(220,'Coronel'),
(221,'Florida'),
(222,'Hualpén'),
(223,'Hualqui'),
(224,'Lota'),
(225,'Penco'),
(226,'San Pedro de La Paz'),
(227,'Santa Juana'),
(228,'Talcahuano'),
(229,'Tomé'),
(230,'Bulnes'),
(231,'Chillán'),
(232,'Chillán Viejo'),
(233,'Cobquecura'),
(234,'Coelemu'),
(235,'Coihueco'),
(236,'El Carmen'),
(237,'Ninhue'),
(238,'Ñiquen'),
(239,'Pemuco'),
(240,'Pinto'),
(241,'Portezuelo'),
(242,'Quillón'),
(243,'Quirihue'),
(244,'Ránquil'),
(245,'San Carlos'),
(246,'San Fabián'),
(247,'San Ignacio'),
(248,'San Nicolás'),
(249,'Treguaco'),
(250,'Yungay'),
(251,'Carahue'),
(252,'Cholchol'),
(253,'Cunco'),
(254,'Curarrehue'),
(255,'Freire'),
(256,'Galvarino'),
(257,'Gorbea'),
(258,'Lautaro'),
(259,'Loncoche'),
(260,'Melipeuco'),
(261,'Nueva Imperial'),
(262,'Padre Las Casas'),
(263,'Perquenco'),
(264,'Pitrufquén'),
(265,'Pucón'),
(266,'Saavedra'),
(267,'Temuco'),
(268,'Teodoro Schmidt'),
(269,'Toltén'),
(270,'Vilcún'),
(271,'Villarrica'),
(272,'Angol'),
(273,'Collipulli'),
(274,'Curacautín'),
(275,'Ercilla'),
(276,'Lonquimay'),
(277,'Los Sauces'),
(278,'Lumaco'),
(279,'Purén'),
(280,'Renaico'),
(281,'Traiguén'),
(282,'Victoria'),
(283,'Corral'),
(284,'Lanco'),
(285,'Los Lagos'),
(286,'Máfil'),
(287,'Mariquina'),
(288,'Paillaco'),
(289,'Panguipulli'),
(290,'Valdivia'),
(291,'Futrono'),
(292,'La Unión'),
(293,'Lago Ranco'),
(294,'Río Bueno'),
(295,'Ancud'),
(296,'Castro'),
(297,'Chonchi'),
(298,'Curaco de Vélez'),
(299,'Dalcahue'),
(300,'Puqueldón'),
(301,'Queilén'),
(302,'Quemchi'),
(303,'Quellón'),
(304,'Quinchao'),
(305,'Calbuco'),
(306,'Cochamó'),
(307,'Fresia'),
(308,'Frutillar'),
(309,'Llanquihue'),
(310,'Los Muermos'),
(311,'Maullín'),
(312,'Puerto Montt'),
(313,'Puerto Varas'),
(314,'Osorno'),
(315,'Puero Octay'),
(316,'Purranque'),
(317,'Puyehue'),
(318,'Río Negro'),
(319,'San Juan de la Costa'),
(320,'San Pablo'),
(321,'Chaitén'),
(322,'Futaleufú'),
(323,'Hualaihué'),
(324,'Palena'),
(325,'Aisén'),
(326,'Cisnes'),
(327,'Guaitecas'),
(328,'Cochrane'),
(329,'Ohiggins'),
(330,'Tortel'),
(331,'Coihaique'),
(332,'Lago Verde'),
(333,'Chile Chico'),
(334,'Río Ibáñez'),
(335,'Antártica'),
(336,'Cabo de Hornos'),
(337,'Laguna Blanca'),
(338,'Punta Arenas'),
(339,'Río Verde'),
(340,'San Gregorio'),
(341,'Porvenir'),
(342,'Primavera'),
(343,'Timaukel'),
(344,'Natales'),
(345,'Torres del Paine');

/** Estadios **/

INSERT INTO estadios VALUES (1, 'Estadio Nacional Julio Martínez Prádanos', 155);
INSERT INTO estadios VALUES (2, 'Estadio Monumental David Arellano', 113);
INSERT INTO estadios VALUES (3, 'Estadio Municipal de Concepción', 219);
INSERT INTO estadios VALUES (4, 'Estadio Sausalito', 81);
INSERT INTO estadios VALUES (5, 'Estadio Santa Laura', 103);
INSERT INTO estadios VALUES (6, 'Estadio Regional Calvo y Bascuñán', 12);
INSERT INTO estadios VALUES (7, 'Estadio Elías Figueroa Brander', 79);
INSERT INTO estadios VALUES (8, 'Estadio El Cobre', 2);
INSERT INTO estadios VALUES (9, 'Estadio San Carlos de Apoquindo', 109);
INSERT INTO estadios VALUES (10, 'Estadio Francisco Sánchez Rumoroso', 35);
INSERT INTO estadios VALUES (11, 'Estadio La Portada', 37);
INSERT INTO estadios VALUES (12, 'Estadio Germán Becker', 267);
INSERT INTO estadios VALUES (13, 'Estadio El Teniente', 147);
INSERT INTO estadios VALUES (14, 'Estadio Carlos Dittborn', 1);
INSERT INTO estadios VALUES (15, 'Bicentenario Zorros del Desierto', 16);
INSERT INTO estadios VALUES (16, 'Estadio Bicentenario de La Florida', 106);
INSERT INTO estadios VALUES (17, 'Estadio Municipal de San Felipe', 71);
INSERT INTO estadios VALUES (18, 'Estadio Nelson Oyarzún', 231);
INSERT INTO estadios VALUES (19, 'Estadio Tierra de Campeones', 6);
INSERT INTO estadios VALUES (20, 'Estadio Municipal de La Cisterna', 104);
INSERT INTO estadios VALUES (21, 'Estadio Rubén Marcos Peralta', 314);
INSERT INTO estadios VALUES (22, 'Estadio CAP', 228);
INSERT INTO estadios VALUES (23, 'Estadio Regional de Chinquihue', 312);
INSERT INTO estadios VALUES (24, 'Estadio Municipal Nicolás Chahuán', 55);
INSERT INTO estadios VALUES (25, 'Estadio Fiscal de Talca', 196);
INSERT INTO estadios VALUES (26, 'Estadio La Granja', 170);
INSERT INTO estadios VALUES (27, 'Municipal de Ovalle', 42);
INSERT INTO estadios VALUES (28, 'Estadio Luis Valenzuela Hermosilla', 24);
INSERT INTO estadios VALUES (29, 'Estadio Municipal Lucio Fariña Fernández', 60);
INSERT INTO estadios VALUES (30, 'Estadio El Morro', 228);
INSERT INTO estadios VALUES (31, 'Estadio Municipal de Linares', 180);
INSERT INTO estadios VALUES (32, 'Estadio Municipal Roberto Bravo Santibáñez', 95);
INSERT INTO estadios VALUES (33, 'Estadio Municipal de Vallenar', 29);
INSERT INTO estadios VALUES (34, 'Estadio Municipal de La Pintana', 107);
INSERT INTO estadios VALUES (35, 'Jorge Silva Valenzuela', 165);
INSERT INTO estadios VALUES (36, 'Estadio Federico Schwager', 220);
INSERT INTO estadios VALUES (37, 'Parque Municipal', 290);
INSERT INTO estadios VALUES (38, 'Estadio Santiago Bueras', 114);
INSERT INTO estadios VALUES (39, 'Estadio Municipal Antonio Rispoli Díaz', 338);
INSERT INTO estadios VALUES (40, 'Municipal de Los Ángeles', 208);
INSERT INTO estadios VALUES (41, 'Estadio Alberto Larraguibel', 272);
INSERT INTO estadios VALUES (42, 'Estadio La Pampilla', 35);
INSERT INTO estadios VALUES (43, 'Estadio Luis Becerra Constanzo', 16);
INSERT INTO estadios VALUES (44, 'Estadio Municipal Alejandro Barrientos Barría', 341);
INSERT INTO estadios VALUES (45, 'Estadio Más Austral del Mundo', 344);

 
/** DTs **/ 

INSERT INTO DTs VALUES (1,'Jorge Pellicer');
INSERT INTO DTs VALUES (2,'Rubén Vallejos');
INSERT INTO DTs VALUES (3,'José Luis Sierra');
INSERT INTO DTs VALUES (4,'Beñat San José');
INSERT INTO DTs VALUES (5,'Jaime Vera');
INSERT INTO DTs VALUES (6,'Hugo Vilches');
INSERT INTO DTs VALUES (7,'Pablo Sánchez');
INSERT INTO DTs VALUES (8,'Pablo Guede');
INSERT INTO DTs VALUES (9,'Miguel Ramírez');
INSERT INTO DTs VALUES (10,'Marco Antonio Figueroa');
INSERT INTO DTs VALUES (11,'Emiliano Astorga');
INSERT INTO DTs VALUES (12,'Fernando Vergara');
INSERT INTO DTs VALUES (13,'Miguel Riffo');
INSERT INTO DTs VALUES (14,'Mario Salas');
INSERT INTO DTs VALUES (15,'Martín Lasarte');
INSERT INTO DTs VALUES (16,'Ronald Fuentes');
INSERT INTO DTs VALUES (17, 'Francisco Bozán');
INSERT INTO DTs VALUES (18, 'Cesar Vigevani');
INSERT INTO DTs VALUES (19, 'Víctor Hugo Castañeda');
INSERT INTO DTs VALUES (20, 'Luis Marcoleta');
INSERT INTO DTs VALUES (21, 'Juan José Ribera');
INSERT INTO DTs VALUES (22, 'Rubén Sánchez');
INSERT INTO DTs VALUES (23, 'Luis Musrri');
INSERT INTO DTs VALUES (24, 'Erwin Durán');
INSERT INTO DTs VALUES (25, 'Luis Landeros');
INSERT INTO DTs VALUES (26, 'Víctor Rivero');
INSERT INTO DTs VALUES (27, 'Nelson Soto');
INSERT INTO DTs VALUES (28, 'Pablo Abraham');
INSERT INTO DTs VALUES (29, 'Fernando Díaz');
INSERT INTO DTs VALUES (30, 'Héctor Almandoz');
INSERT INTO DTs VALUES (31, 'Mauricio Pozo');
INSERT INTO DTs VALUES (32, 'Pepe Aived');


/** Posicion **/
INSERT INTO posicion VALUES (1, 'Delantero');
INSERT INTO posicion VALUES (2, 'Defensa');
INSERT INTO posicion VALUES (3, 'Arquero');
INSERT INTO posicion VALUES (4, 'Medio campista');
INSERT INTO posicion VALUES (5, 'Lateral izquierdo');
INSERT INTO posicion VALUES (6, 'Lateral derecho');

/** Equipos **/

INSERT INTO equipos VALUES (1, 'Audax Italiano', 127, 1, 0, '1A');
INSERT INTO equipos VALUES (2, 'Cobresal', 16, 2, 0, '1A');
INSERT INTO equipos VALUES (3, 'Colo-Colo', 127, 3, 0, '1A');
INSERT INTO equipos VALUES (4, 'Deportes Antofagasta', 12, 4, 0, '1A');
INSERT INTO equipos VALUES (5, 'Deportes Iquique', 6, 5, 0, '1A');
INSERT INTO equipos VALUES (6, 'Huachipato', 228, 6, 0, '1A');
INSERT INTO equipos VALUES (7, 'OHiggins', 147, 7, 0, '1A');
INSERT INTO equipos VALUES (8, 'Palestino', 127, 8, 0, '1A');
INSERT INTO equipos VALUES (9, 'San Luis', 60, 9, 0, '1A');
INSERT INTO equipos VALUES (10, 'San Marcos de Arica', 1, 10, 0, '1A');
INSERT INTO equipos VALUES (11, 'Santiago Wanderers', 79, 11, 0, '1A');
INSERT INTO equipos VALUES (12, 'Unión Española', 127, 12, 0, '1A');
INSERT INTO equipos VALUES (13, 'Unión La Calera', 79, 13, 0, '1A');
INSERT INTO equipos VALUES (14, 'Universidad Católica', 127, 14, 0, '1A');
INSERT INTO equipos VALUES (15, 'Universidad de Chile', 127, 15, 0, '1A');
INSERT INTO equipos VALUES (16, 'Universidad de Concepción', 219, 16, 0, '1A');
INSERT INTO equipos VALUES (17, 'Cobreloa', 16, 17, 0, '1B');
INSERT INTO equipos VALUES (18, 'Coquimbo Unido', 35, 18, 0, '1B');
INSERT INTO equipos VALUES (19, 'Everton', 81, 25, 0, '1B');
INSERT INTO equipos VALUES (20, 'Santiago Morning', 127, 19, 0,'1B');
INSERT INTO equipos VALUES (21, 'Exception', 127, 32, 0, '1A');

/*** Jugadores ***/ 
/** Audax Italiano **/
INSERT INTO jugadores VALUES (1, 'Joaquín Muñoz', 24, 1, 0, 3);
INSERT INTO jugadores VALUES (2, 'Nicolás Peric', 37, 1, 0, 3);
INSERT INTO jugadores VALUES (3, 'Eryin Sanhueza', 19, 1, 0, 3);
INSERT INTO jugadores VALUES (4, 'Carlos Labrín', 24, 1, 0, 2);
INSERT INTO jugadores VALUES (5, 'Sebastián Silva', 24, 1, 0, 2);
INSERT INTO jugadores VALUES (6, 'Sebastián Vegas', 18, 1, 0, 2);
INSERT INTO jugadores VALUES (7, 'José Contreras ', 33, 1, 0, 2);
INSERT INTO jugadores VALUES (8, 'Rafael Olarra 1°', 37, 1, 0, 2);
INSERT INTO jugadores VALUES (9, 'Juan Cornejo', 25, 1, 0, 2);
INSERT INTO jugadores VALUES (10, 'Eduardo Navarrete', 19, 1, 0, 2);
INSERT INTO jugadores VALUES (11, 'Jorge Faúndez', 19, 1, 0, 2);
INSERT INTO jugadores VALUES (12, 'Bryan Reyes', 23, 1, 0, 5);
INSERT INTO jugadores VALUES (13, 'Osvaldo Bosso', 22, 1, 0, 5);
INSERT INTO jugadores VALUES (14, 'David Drocco', 26 , 1, 0, 5);
INSERT INTO jugadores VALUES (15, 'Iván Vásquez 2°', 30 , 1, 0, 5);
INSERT INTO jugadores VALUES (16, 'Pablo López', 33 , 1, 0, 5);
INSERT INTO jugadores VALUES (17, 'Bryan Carrasco ', 24 , 1, 0, 6);
INSERT INTO jugadores VALUES (18, 'Rodrigo Tello', 36 , 1, 0, 6);
INSERT INTO jugadores VALUES (19, 'Juan Pablo Miño', 28 , 1, 0, 6);
INSERT INTO jugadores VALUES (20, 'Diego Valdés', 21 , 1, 0, 6);
INSERT INTO jugadores VALUES (21, 'Jorge Henríquez', 21 , 1, 0, 6);
INSERT INTO jugadores VALUES (22, 'René Meléndez', 16 , 1, 0, 6);
INSERT INTO jugadores VALUES (23, 'Felipe Mora', 22 , 1, 0, 1);
INSERT INTO jugadores VALUES (24, 'Sergio Santos', 21 , 1, 0, 1);
INSERT INTO jugadores VALUES (25, 'Matías Campos ', 24 , 1, 0, 1);
INSERT INTO jugadores VALUES (26, 'Javier Elizondo ', 32 , 1, 0, 1);
INSERT INTO jugadores VALUES (27, 'Diego Vallejos', 25 , 1, 0, 1);
INSERT INTO jugadores VALUES (28, 'Sebastián Pol', 27 , 1, 0, 1);
/** Cobresal **/
INSERT INTO jugadores VALUES (29, 'Jeff Barría', 21 , 2, 0, 3);
INSERT INTO jugadores VALUES (30, 'Sebastián Cuerdo', 29 , 2, 0, 3);
INSERT INTO jugadores VALUES (31, 'Eduardo Lobos', 34 , 2, 0, 3);
INSERT INTO jugadores VALUES (32, 'Diego Cerón', 24 , 2, 0, 2);
INSERT INTO jugadores VALUES (33, 'Diego Silva', 32 , 2, 0, 2);
INSERT INTO jugadores VALUES (34, 'Alexis Salazar', 32 , 2, 0, 2);
INSERT INTO jugadores VALUES (35, 'Miguel Escalona', 25 , 2, 0, 2);
INSERT INTO jugadores VALUES (36, 'Eduardo Otárola', 23 , 2, 0, 2);
INSERT INTO jugadores VALUES (37, 'Flavio Rojas', 21 , 2, 0, 2);
INSERT INTO jugadores VALUES (38, 'Alejandro López', 26 , 2, 0, 2);
INSERT INTO jugadores VALUES (39, 'Daniel Aguilera', 27 , 2, 0, 2);
INSERT INTO jugadores VALUES (40, 'Jorge Acuña', 37 , 2, 0, 4);
INSERT INTO jugadores VALUES (41, 'Pablo González', 28 , 2, 0, 4);
INSERT INTO jugadores VALUES (42, 'José Luis Cabión', 31 , 2, 0, 4);
INSERT INTO jugadores VALUES (43, 'Luis Valenzuela', 27 , 2, 0, 4);
INSERT INTO jugadores VALUES (44, 'Mauricio Flores', 18 , 2, 0, 4);
INSERT INTO jugadores VALUES (45, 'Felipe Vásquez', 22 , 2, 0, 4);
INSERT INTO jugadores VALUES (46, 'Aaron Villagra', 19 , 2, 0, 4);
INSERT INTO jugadores VALUES (47, 'Nelson Sepúlveda', 23 , 2, 0, 4);
INSERT INTO jugadores VALUES (48, 'Israel Poblete', 20 , 2, 0, 4);
INSERT INTO jugadores VALUES (49, 'Víctor Hugo Sarabia', 31 , 2, 0, 4);
INSERT INTO jugadores VALUES (50, 'Iván Sandoval', 20 , 2, 0, 4);
INSERT INTO jugadores VALUES (51, 'Patricio Jerez', 28 , 2, 0, 4);
INSERT INTO jugadores VALUES (52, 'Johan Fuentes ', 31 , 2, 0, 4);
INSERT INTO jugadores VALUES (53, 'Diego Muñoz', 25 , 2, 0, 4);
INSERT INTO jugadores VALUES (54, 'Ever Cantero', 29 , 2, 0, 1);
INSERT INTO jugadores VALUES (55, 'Jonathan Benítez', 24 , 2, 0, 1);
INSERT INTO jugadores VALUES (56, 'Lino Maldonado', 25 , 2, 0, 1);
/** Colo-Colo **/
INSERT INTO jugadores VALUES (57, 'Justo Villar', 38 , 3, 0, 3);
INSERT INTO jugadores VALUES (58, 'Paulo Díaz', 21 , 3, 0, 2);
INSERT INTO jugadores VALUES (59, 'Mou Jadama ', 21 , 3, 0, 2);
INSERT INTO jugadores VALUES (60, 'Leonardo Cáceres', 30 , 3, 0, 2);
INSERT INTO jugadores VALUES (61, 'Julio Barroso', 30 , 3, 0, 2);
INSERT INTO jugadores VALUES (62, 'Christofer Gonzales', 23 , 3, 0, 4);
INSERT INTO jugadores VALUES (63, 'Esteban Paredes', 35 , 3, 0, 1);
INSERT INTO jugadores VALUES (64, 'Esteban Pavez', 25 , 3, 0, 4);
INSERT INTO jugadores VALUES (65, 'Luis Pedro Figueroa', 32 , 3, 0, 1);
INSERT INTO jugadores VALUES (66, 'Emiliano Vecchio', 26 , 3, 0, 4);
INSERT INTO jugadores VALUES (67, 'Gonzalo Fierro', 32 , 3, 0, 2);
INSERT INTO jugadores VALUES (68, 'Paulo Garcés ', 31 , 3, 0, 3);
INSERT INTO jugadores VALUES (69, 'Álvaro Salazar', 22 , 3, 0, 3);
INSERT INTO jugadores VALUES (70, 'Martín Rodríguez', 21 , 3, 0, 4);
INSERT INTO jugadores VALUES (71, 'Jean Beausejour', 31 , 3, 0, 2);
INSERT INTO jugadores VALUES (72, 'Bryan Carvallo', 19 , 3, 0, 4);
INSERT INTO jugadores VALUES (73, 'Gabriel Suazo', 18 , 3, 0, 4);
INSERT INTO jugadores VALUES (74, 'Andrés Vilches', 23 , 3, 0, 1);
INSERT INTO jugadores VALUES (75, 'Jaime Valdés', 34 , 3, 0, 4);
INSERT INTO jugadores VALUES (76, 'Camilo Rodríguez', 20 , 3, 0, 2);
INSERT INTO jugadores VALUES (77, 'Juan Delgado', 22 , 3, 0, 1);
INSERT INTO jugadores VALUES (78, 'Claudio Baeza', 21 , 3, 0, 4);
INSERT INTO jugadores VALUES (79, 'Jorge Araya', 19 , 3, 0, 4);
INSERT INTO jugadores VALUES (80, 'Pablo Soto', 20 , 3, 0, 3);
INSERT INTO jugadores VALUES (81, 'Cristián Gutiérrez', 18 , 3, 0, 2);
INSERT INTO jugadores VALUES (82, 'Dilan Zúñiga', 19 , 3, 0, 2);
INSERT INTO jugadores VALUES (83, 'Carlos Contreras', 20 , 3, 0, 4);
INSERT INTO jugadores VALUES (84, 'Roberto Riveros', 19 , 3, 0, 1);
INSERT INTO jugadores VALUES (85, 'Hardy Cavero', 19 , 3, 0, 2);
INSERT INTO jugadores VALUES (86, 'Jorge Lagües', 18 , 3, 0, 4);
INSERT INTO jugadores VALUES (87, 'Kevin Orrián', 19 , 3, 0, 1);
/** Deportes Antofagasta **/
INSERT INTO jugadores VALUES (88, 'Matías Dituro', 28 , 4, 0, 3);
INSERT INTO jugadores VALUES (89, 'Alan Cortés', 18 , 4, 0, 3);
INSERT INTO jugadores VALUES (90, 'Nicolás Araya', 17 , 4, 0, 3);
INSERT INTO jugadores VALUES (91, 'Fernando Hurtado', 32 , 4, 0, 3);
INSERT INTO jugadores VALUES (92, 'Rodrigo Riquelme', 31 , 4, 0, 2);
INSERT INTO jugadores VALUES (93, 'Rodolfo González', 26 , 4, 0, 2);
INSERT INTO jugadores VALUES (94, 'Cristián Rojas', 29 , 4, 0, 2);
INSERT INTO jugadores VALUES (95, 'Francisco Sánchez', 30 , 4, 0, 2);
INSERT INTO jugadores VALUES (96, 'Alejandro Delfino', 26 , 4, 0, 2);
INSERT INTO jugadores VALUES (97, 'Francisco Sepúlveda', 24 , 4, 0, 2);
INSERT INTO jugadores VALUES (98, 'Mathias Saavedra', 19 , 4, 0, 2);
INSERT INTO jugadores VALUES (99, 'Patricio Jerez', 30 , 4, 0, 2);
INSERT INTO jugadores VALUES (100, 'Marcelo Tapia', 17 , 4, 0, 2);
INSERT INTO jugadores VALUES (101, 'Branco Ampuero', 22 , 4, 0, 2);
INSERT INTO jugadores VALUES (102, 'Ian Cordova', 20 , 4, 0, 2);
INSERT INTO jugadores VALUES (103, 'Gonzalo Villagra', 34 , 4, 0, 4);
INSERT INTO jugadores VALUES (104, 'Ángelo González', 26 , 4, 0, 4);
INSERT INTO jugadores VALUES (105, 'Marcos Aguirre', 31 , 4, 0, 4);
INSERT INTO jugadores VALUES (106, 'Jason Silva', 24 , 4, 0, 4);
INSERT INTO jugadores VALUES (107, 'Luis Cabrera', 21 , 4, 0, 4);
INSERT INTO jugadores VALUES (108, 'Sebastian Leyton', 22 , 4, 0, 4);
INSERT INTO jugadores VALUES (109, 'Johao Rios', 18 , 4, 0, 4);
INSERT INTO jugadores VALUES (110, 'Ángelo Araos', 18 , 4, 0, 4);
INSERT INTO jugadores VALUES (111, 'Ronald González', 25 , 4, 0, 1);
INSERT INTO jugadores VALUES (112, 'Renato Ramos', 36 , 4, 0, 1);
INSERT INTO jugadores VALUES (113, 'Hugo Valencia', 17 , 4, 0, 1);
INSERT INTO jugadores VALUES (114, 'Juan Gonzalo Lorca', 30 , 4, 0, 1);
INSERT INTO jugadores VALUES (115, 'Mauricio Diaz', 21 , 4, 0, 2);
INSERT INTO jugadores VALUES (116, 'Marcos Bolados', 19 , 4, 0, 1);
INSERT INTO jugadores VALUES (117, 'Felipe Muñoz', 19 , 4, 0, 1);
INSERT INTO jugadores VALUES (118, 'Martín Gómez', 32 , 4, 0, 1);
INSERT INTO jugadores VALUES (119, 'Cristian Ivanobski', 25 , 4, 0, 1);
INSERT INTO jugadores VALUES (120, 'Gerson Martínez', 26 , 4, 0, 1);
/** Deportes Iquique **/
INSERT INTO jugadores VALUES (121, 'Rodrigo Naranjo', 36 , 5, 0, 3);
INSERT INTO jugadores VALUES (122, 'Brayan Cortés', 20 , 5, 0, 3);
INSERT INTO jugadores VALUES (123, 'Ignacio Sotomayor', 19 , 5, 0, 3);
INSERT INTO jugadores VALUES (124, 'Carlos González', 18 , 5, 0, 3);
INSERT INTO jugadores VALUES (125, 'Francisco Bahamondes', 27 , 5, 0, 2);
INSERT INTO jugadores VALUES (126, 'Cristián Oviedo', 35 , 5, 0, 2);
INSERT INTO jugadores VALUES (127, 'Javier Muñoz', 22 , 5, 0, 2);
INSERT INTO jugadores VALUES (128, 'Mauricio Zenteno', 31 , 5, 0, 2);
INSERT INTO jugadores VALUES (129, 'Javier Cabezas', 22 , 5, 0, 2);
INSERT INTO jugadores VALUES (130, 'Tomás Charles', 30 , 5, 0, 2);
INSERT INTO jugadores VALUES (131, 'Alan Moreno', 19 , 5, 0, 2);
INSERT INTO jugadores VALUES (132, 'Rafael Caroca', 26 , 5, 0, 4);
INSERT INTO jugadores VALUES (133, 'Mathías Riquero', 33 , 5, 0, 4);
INSERT INTO jugadores VALUES (134, 'César Pinares', 24 , 5, 0, 4);
INSERT INTO jugadores VALUES (135, 'Jonathan Rebolledo', 24 , 5, 0, 4);
INSERT INTO jugadores VALUES (136, 'Misael Dávila', 24 , 5, 0, 4);
INSERT INTO jugadores VALUES (137, 'Fernando Lazcano', 26 , 5, 0, 4);
INSERT INTO jugadores VALUES (138, 'Misael Cubillos', 19 , 5, 0, 4);
INSERT INTO jugadores VALUES (139, 'Gonzalo Bustamante', 29 , 5, 0, 4);
INSERT INTO jugadores VALUES (140, 'Álvaro Delgado', 20 , 5, 0, 4);
INSERT INTO jugadores VALUES (141, 'Walter Mazzolatti', 25 , 5, 0, 4);
INSERT INTO jugadores VALUES (142, 'Bryan Cubillos', 21 , 5, 0, 4);
INSERT INTO jugadores VALUES (143, 'Manuel Villalobos', 35 , 5, 0, 1);
INSERT INTO jugadores VALUES (144, 'Carlos Soza', 25 , 5, 0, 1);
INSERT INTO jugadores VALUES (145, 'Cristian Bogado', 28 , 5, 0, 1);
INSERT INTO jugadores VALUES (146, 'Ignacio Herrera', 27 , 5, 0, 1);
INSERT INTO jugadores VALUES (147, 'Piero Paz', 20 , 5, 0, 1);
INSERT INTO jugadores VALUES (148, 'Kevin Mellado', 17 , 5, 0, 1);
INSERT INTO jugadores VALUES (149, 'Cristian Ivanobski', 25 , 5, 0, 1);
INSERT INTO jugadores VALUES (150, 'Gerson Martínez', 26 , 5, 0, 1);
/** Huachipato **/
INSERT INTO jugadores VALUES (151, 'Álvaro Sáenz-Laguna', 24 , 6, 0, 3);
INSERT INTO jugadores VALUES (152, 'Franco Collado', 21 , 6, 0, 3);
INSERT INTO jugadores VALUES (153, 'Yerko Urra', 19 , 6, 0, 3);
INSERT INTO jugadores VALUES (154, 'Felipe Núñez', 36 , 6, 0, 3);
INSERT INTO jugadores VALUES (155, 'Bryan Manosalva', 20, 6, 0, 3);
INSERT INTO jugadores VALUES (156, 'Kevin Hidalgo', 20 , 6, 0, 2);
INSERT INTO jugadores VALUES (157, 'Claudio Muñoz ', 30 , 6, 0, 2);
INSERT INTO jugadores VALUES (158, 'Yerson Opazo', 30 , 6, 0, 2);
INSERT INTO jugadores VALUES (159, 'Omar Merlo 3', 28 , 6, 0, 2);
INSERT INTO jugadores VALUES (160, 'Brayan Véjar', 20 , 6, 0, 2);
INSERT INTO jugadores VALUES (161, 'José Bizama', 21 , 6, 0, 2);
INSERT INTO jugadores VALUES (162, 'Leandro Delgado', 33 , 6, 0, 2);
INSERT INTO jugadores VALUES (163, 'John Santander', 21 , 6, 0, 2);
INSERT INTO jugadores VALUES (164, 'Claudio Sepúlveda', 23 , 6, 0, 4);
INSERT INTO jugadores VALUES (165, 'Francisco Arrué 2', 38 , 6, 0, 4);
INSERT INTO jugadores VALUES (166, 'Camilo Pontoni', 20 , 6, 0, 4);
INSERT INTO jugadores VALUES (167, 'Romulo Otero', 22 , 6, 0, 4);
INSERT INTO jugadores VALUES (168, 'Leonardo Povea', 21 , 6, 0, 4);
INSERT INTO jugadores VALUES (169, 'Ramon Saez Navarro',22, 6, 0, 4);
INSERT INTO jugadores VALUES (170, 'Víctor Dávila', 17 , 6, 0, 4);
INSERT INTO jugadores VALUES (171, 'Mikel Arguinarena', 24 , 6, 0, 4);
INSERT INTO jugadores VALUES (172, 'Ángelo Sagal', 22 , 6, 0, 4);
INSERT INTO jugadores VALUES (173, 'Ricardo Gonzalez', 23, 6, 0, 4);
INSERT INTO jugadores VALUES (174, 'Jair Castro', 24, 6, 0, 4);
INSERT INTO jugadores VALUES (175, 'Jimmy Martínez', 18 , 6, 0, 4);
INSERT INTO jugadores VALUES (176, 'Sergio Villalobos', 20, 6, 0, 4);
INSERT INTO jugadores VALUES (177, 'Juan Méndez', 19 , 6, 0, 4);
INSERT INTO jugadores VALUES (178, 'Javier Parraguez', 25 , 6, 0, 1);
INSERT INTO jugadores VALUES (179, 'Juan Ignacio Duma', 21 , 6, 0, 1);
INSERT INTO jugadores VALUES (180, 'Lucas Simón', 29 , 6, 0, 1);
/** OHiggins **/
INSERT INTO jugadores VALUES (181, 'Roberto González', 39 , 7, 0, 3);
INSERT INTO jugadores VALUES (182, 'Víctor Gálvez', 18 , 7, 0, 3);
INSERT INTO jugadores VALUES (183, 'Jorge Carranza', 34 , 7, 0, 3);
INSERT INTO jugadores VALUES (184, 'Felipe Ochagavía', 22 , 7, 0, 3);
INSERT INTO jugadores VALUES (185, 'Albert Acevedo', 32 , 7, 0, 2);
INSERT INTO jugadores VALUES (186, 'Guillermo Cubillos', 20 , 7, 0, 2);
INSERT INTO jugadores VALUES (187, 'Nicolás Vargas', 22 , 7, 0, 2);
INSERT INTO jugadores VALUES (188, 'Raúl Osorio', 20 , 7, 0, 2);
INSERT INTO jugadores VALUES (189, 'Esteban González', 33 , 7, 0, 2);
INSERT INTO jugadores VALUES (190, 'Brian Torrealba', 18 , 7, 0, 2);
INSERT INTO jugadores VALUES (191, 'Bastián San Juan', 21 , 7, 0, 2);
INSERT INTO jugadores VALUES (192, 'Braulio Leal ', 34 , 7, 0, 4);
INSERT INTO jugadores VALUES (193, 'Alejandro Márquez', 23 , 7, 0, 4);
INSERT INTO jugadores VALUES (194, 'Juan Fuentes', 20 , 7, 0, 4);
INSERT INTO jugadores VALUES (195, 'Ramón Fernández', 30 , 7, 0, 4);
INSERT INTO jugadores VALUES (196, 'Gonzalo Barriga', 31 , 7, 0, 4);
INSERT INTO jugadores VALUES (197, 'Moisés Ávila', 18, 7, 0, 4);
INSERT INTO jugadores VALUES (198, 'Hugo Droguett', 33 , 7, 0, 4);
INSERT INTO jugadores VALUES (199, 'Iván Pardo', 19 , 7, 0, 4);
INSERT INTO jugadores VALUES (200, 'Juan Zuñiga', 19 , 7, 0, 4);
INSERT INTO jugadores VALUES (201, 'Santiago Lizana ', 23 , 7, 0, 4);
INSERT INTO jugadores VALUES (202, 'Pedro Muñoz', 29 , 7, 0, 1);
INSERT INTO jugadores VALUES (203, 'Emilio Zelaya', 28 , 7, 0, 1);
INSERT INTO jugadores VALUES (204, 'Pablo Calandria', 33 , 7, 0, 1);
INSERT INTO jugadores VALUES (205, 'Gastón Lezcano', 28 , 7, 0, 1);
INSERT INTO jugadores VALUES (206, 'David Salazar', 16 , 7, 0, 1);
INSERT INTO jugadores VALUES (207, 'Fabián Hormazábal', 19 , 7, 0, 1);
INSERT INTO jugadores VALUES (208, 'Vicente Gatica ', 19 , 7, 0, 1);
INSERT INTO jugadores VALUES (209, 'Eliseo Miranda ', 18 , 7, 0, 1);
INSERT INTO jugadores VALUES (210, 'Luciano Vázquez', 30 , 7, 0, 1);
/** Palestino **/
INSERT INTO jugadores VALUES (211, 'Darío Melo', 21 , 8, 0, 3);
INSERT INTO jugadores VALUES (212, 'Luis Marín', 32 , 8, 0, 3);
INSERT INTO jugadores VALUES (213, 'Iván Meirone', 20 , 8, 0, 3);
INSERT INTO jugadores VALUES (214, 'Matías Herrera', 20 , 8, 0, 3);
INSERT INTO jugadores VALUES (215, 'Lucas Domínguez', 25 , 8, 0, 2);
INSERT INTO jugadores VALUES (216, 'Francisco Alarcón', 25 , 8, 0, 2);
INSERT INTO jugadores VALUES (217, 'Alejandro Contreras', 22 , 8, 0, 2);
INSERT INTO jugadores VALUES (218, 'Matías Escudero', 26, 8, 0, 2);
INSERT INTO jugadores VALUES (219, 'Byron Saavedra', 18, 8, 0, 2);
INSERT INTO jugadores VALUES (220, 'Felipe Campos', 21, 8, 0, 2);
INSERT INTO jugadores VALUES (221, 'Fernando Meza', 25, 8, 0, 2);
INSERT INTO jugadores VALUES (222, 'Agustín Farías', 27 , 8, 0, 4);
INSERT INTO jugadores VALUES (223, 'Diego Rosende', 29 , 8, 0, 4);
INSERT INTO jugadores VALUES (224, 'César Valenzuela', 23 , 8, 0, 4);
INSERT INTO jugadores VALUES (225, 'Cristián Álvarez', 23 , 8, 0, 4);
INSERT INTO jugadores VALUES (226, 'Jonathan Cantillana', 23 , 8, 0, 4);
INSERT INTO jugadores VALUES (227, 'Roberto Ávalos', 35 , 8, 0, 4);
INSERT INTO jugadores VALUES (228, 'Esteban Carvajal', 26 , 8, 0, 4);
INSERT INTO jugadores VALUES (229, 'Nicolás Maturana', 22 , 8, 0, 4);
INSERT INTO jugadores VALUES (230, 'Jonathan Zacaría', 25 , 8, 0, 4);
INSERT INTO jugadores VALUES (231, 'Jonathan Cisternas', 35 , 8, 0, 4);
INSERT INTO jugadores VALUES (232, 'Diego Torres', 23 , 8, 0, 4);
INSERT INTO jugadores VALUES (233, 'Marcos Riquelme', 26 , 8, 0, 1);
INSERT INTO jugadores VALUES (234, 'Enzo Gutiérrez', 29 , 8, 0, 1);
INSERT INTO jugadores VALUES (235, 'César Cortés', 31 , 8, 0, 1);
INSERT INTO jugadores VALUES (236, 'Richard Paredes', 18, 8, 0, 1);
INSERT INTO jugadores VALUES (237, 'Matías Ramírez', 19 , 8, 0, 1);
/** San Luis **/
INSERT INTO jugadores VALUES (238, 'Fernando de Paul  1°', 24 , 9, 0, 3);
INSERT INTO jugadores VALUES (240, 'Alan Chaparro', 19 , 9, 0, 3);
INSERT INTO jugadores VALUES (241, 'David Reyes', 30 , 9, 0, 3);
INSERT INTO jugadores VALUES (242, 'Federico Martorell', 34 , 9, 0, 2);
INSERT INTO jugadores VALUES (243, 'Víctor Morales', 24 , 9, 0, 2);
INSERT INTO jugadores VALUES (244, 'Giakumis Kodogiannis', 23 , 9, 0, 2);
INSERT INTO jugadores VALUES (245, 'Alexi Gómez', 22 , 9, 0, 2);
INSERT INTO jugadores VALUES (246, 'Daniel Vicencio', 23 , 9, 0, 2);
INSERT INTO jugadores VALUES (247, 'Javier Guzmán', 20 , 9, 0, 2);
INSERT INTO jugadores VALUES (248, 'Brayams Viveros', 23 , 9, 0, 2);
INSERT INTO jugadores VALUES (249, 'Guillermo Pacheco', 26 , 9, 0, 2);
INSERT INTO jugadores VALUES (250, 'Guillermo Díaz', 21, 9, 0, 2);
INSERT INTO jugadores VALUES (251, 'Claudio Meneses', 27 , 9, 0, 4);
INSERT INTO jugadores VALUES (252, 'Álvaro Césped', 24 , 9, 0, 4);
INSERT INTO jugadores VALUES (253, 'Jean Meneses', 22 , 9, 0, 4);
INSERT INTO jugadores VALUES (254, 'Gastón Sirino', 24 , 9, 0, 4);
INSERT INTO jugadores VALUES (255, 'Sebastián Zuñiga', 25 , 9, 0, 4);
INSERT INTO jugadores VALUES (256, 'Marcos Fernández', 22 , 9, 0, 4);
INSERT INTO jugadores VALUES (257, 'Pablo Tamburrini', 25 , 9, 0, 4);
INSERT INTO jugadores VALUES (258, 'Boris Sagredo', 26 , 9, 0, 4);
INSERT INTO jugadores VALUES (259, 'Gonzalo Rivas', 20 , 9, 0, 4);
INSERT INTO jugadores VALUES (260, 'Felipe Saavedra', 19 , 9, 0, 4);
INSERT INTO jugadores VALUES (261, 'Marco Estrada', 32 , 9, 0, 4);
INSERT INTO jugadores VALUES (262, 'Carlos Escobar', 25 , 9, 0, 1);
INSERT INTO jugadores VALUES (263, 'Ricardo Paz', 23 , 9, 0, 1);
INSERT INTO jugadores VALUES (264, 'Matías Román', 21 , 9, 0, 1);
INSERT INTO jugadores VALUES (265, 'Jaime Grondona', 28 , 9, 0, 1);
INSERT INTO jugadores VALUES (266, 'Alejandro Fiorina', 27 , 9, 0, 1);
INSERT INTO jugadores VALUES (267, 'José Pizarro', 20 , 9, 0, 1);
/** San Marcos de Árica **/
INSERT INTO jugadores VALUES (268, 'Luciano Palos', 35 , 10, 0, 3);
INSERT INTO jugadores VALUES (269, 'Zacarías López', 17 , 10, 0, 3);
INSERT INTO jugadores VALUES (270, 'Pedro Carrizo ', 34 , 10, 0, 3);
INSERT INTO jugadores VALUES (271, 'Luis Casanova', 23 , 10, 0, 2);
INSERT INTO jugadores VALUES (272, 'Nicolás Ferreyra', 22 , 10, 0, 2);
INSERT INTO jugadores VALUES (273, 'Augusto Barrios', 24 , 10, 0, 2);
INSERT INTO jugadores VALUES (274, 'Claudio Jopia', 23 , 10, 0, 2);
INSERT INTO jugadores VALUES (275, 'Christian Jelves', 24 , 10, 0, 2);
INSERT INTO jugadores VALUES (276, 'Juan Abarca', 26 , 10, 0, 2);
INSERT INTO jugadores VALUES (277, 'Nicolás Núñez', 31 , 10, 0, 4);
INSERT INTO jugadores VALUES (278, 'Sebastián Méndez', 29 , 10, 0, 4);
INSERT INTO jugadores VALUES (279, 'Christopher Singer', 21 , 10, 0, 4);
INSERT INTO jugadores VALUES (280, 'Kevin Medel', 19 , 10, 0, 4);
INSERT INTO jugadores VALUES (281, 'Pablo Corral', 23 , 10, 0, 4);
INSERT INTO jugadores VALUES (282, 'Sebastián Rivera', 27 , 10, 0, 4);
INSERT INTO jugadores VALUES (283, 'Brandon Olivares', 20 , 10, 0, 4);
INSERT INTO jugadores VALUES (284, 'Alejandro Vásquez', 31 , 10, 0, 4);
INSERT INTO jugadores VALUES (285, 'Miguel Coronado', 28 , 10, 0, 4);
INSERT INTO jugadores VALUES (286, 'Nicolás Medina', 28 , 10, 0, 1);
INSERT INTO jugadores VALUES (287, 'Nicolás Fagundez', 29 , 10, 0, 1);
INSERT INTO jugadores VALUES (288, 'Nicolás Orellana', 20 , 10, 0, 1);
INSERT INTO jugadores VALUES (289, 'Nicolás Bubas', 26 , 10, 0, 1);
/** Wanderers **/
INSERT INTO jugadores VALUES (290, 'David Pérez', 18 , 11, 0, 3);
INSERT INTO jugadores VALUES (291, 'Mario López', 20 , 11, 0, 2);
INSERT INTO jugadores VALUES (292, 'Kevin Valenzuela', 22 , 11, 0, 4);
INSERT INTO jugadores VALUES (293, 'Mauricio Prieto', 28 , 11, 0, 2);
INSERT INTO jugadores VALUES (294, 'Nelson Saavedra', 27 , 11, 0, 2);
INSERT INTO jugadores VALUES (295, 'Andrés Robles', 21 , 11, 0, 4);
INSERT INTO jugadores VALUES (296, 'David Pizarro', 36 , 11, 0, 4);
INSERT INTO jugadores VALUES (297, 'Jorge Ormeño ', 38 , 11, 0, 4);
INSERT INTO jugadores VALUES (298, 'Ronnie Fernández', 24 , 11, 0, 1);
INSERT INTO jugadores VALUES (299, 'Paulo Rosales', 31 , 11, 0, 4);
INSERT INTO jugadores VALUES (300, 'Roberto Saldías', 22 , 11, 0, 1);
INSERT INTO jugadores VALUES (301, 'Mauricio Viana', 26 , 11, 0, 3);
INSERT INTO jugadores VALUES (302, 'Matías Fernández', 20 , 11, 0, 2);
INSERT INTO jugadores VALUES (303, 'Franz Schultz', 24 , 11, 0, 2);
INSERT INTO jugadores VALUES (304, 'Manuel Bravo', 22 , 11, 0, 4);
INSERT INTO jugadores VALUES (305, 'Carlos Muñoz', 26 , 11, 0, 1);
INSERT INTO jugadores VALUES (306, 'Álvaro Ramos', 23 , 11, 0, 1);
INSERT INTO jugadores VALUES (307, 'Carlos González', 22 , 11, 0, 1);
INSERT INTO jugadores VALUES (308, 'Ezequiel Luna  3°', 28 , 11, 0, 2);
INSERT INTO jugadores VALUES (309, 'Jimmy Cisterna', 22 , 11, 0, 4);
INSERT INTO jugadores VALUES (310, 'Bryan Cortés', 24 , 11, 0, 4);
INSERT INTO jugadores VALUES (311, 'Óscar Opazo', 25 , 11, 0, 2);
INSERT INTO jugadores VALUES (312, 'Yerko Muñoz', 19 , 11, 0, 4);
INSERT INTO jugadores VALUES (313, 'Luis García', 19 , 11, 0, 2);
INSERT INTO jugadores VALUES (314, 'Gabriel Castellón', 22 , 11, 0, 3);
INSERT INTO jugadores VALUES (315, 'Agustín Parra', 26 , 11, 0, 2);
INSERT INTO jugadores VALUES (316, 'Kevin Flores', 20 , 11, 0, 4);
INSERT INTO jugadores VALUES (317, 'Bryan Chepulich', 20 , 11, 0, 2);
INSERT INTO jugadores VALUES (318, 'Juan Soto', 21 , 11, 0, 2);
INSERT INTO jugadores VALUES (319, 'Christian Fuentes', 16 , 11, 0, 3);
/** Union Española **/
INSERT INTO jugadores VALUES (320, 'Nery Veloso', 28 , 12, 0, 3);
INSERT INTO jugadores VALUES (321, 'Cristián Guerra', 21 , 12, 0, 3);
INSERT INTO jugadores VALUES (322, 'Diego Sánchez', 28 , 12, 0, 3);
INSERT INTO jugadores VALUES (323, 'Ángel Marin', 19 , 12, 0, 3);
INSERT INTO jugadores VALUES (324, 'Mario Larenas', 22 , 12, 0, 2);
INSERT INTO jugadores VALUES (325, 'Matías Navarrete', 23 , 12, 0, 2);
INSERT INTO jugadores VALUES (326, 'Fernando Cornejo', 21 , 12, 0, 2);
INSERT INTO jugadores VALUES (327, 'Nicolás Berardo', 25 , 12, 0, 2);
INSERT INTO jugadores VALUES (328, 'Jorge Ampuero  1º', 28 , 12, 0, 2);
INSERT INTO jugadores VALUES (329, 'Dagoberto Currimilla', 27 , 12, 0, 2);
INSERT INTO jugadores VALUES (330, 'Tomás Astaburuaga', 20 , 12, 0, 2);
INSERT INTO jugadores VALUES (331, 'Nicolás Mancilla', 22 , 12, 0, 2);
INSERT INTO jugadores VALUES (332, 'Óscar Hernández', 21 , 12, 0, 4);
INSERT INTO jugadores VALUES (333, 'Gabriel Sandoval', 31 , 12, 0, 4);
INSERT INTO jugadores VALUES (334, 'Milovan Mirosevic', 35 , 12, 0, 4);
INSERT INTO jugadores VALUES (335, 'Sergio López', 26 , 12, 0, 4);
INSERT INTO jugadores VALUES (336, 'René Lima', 30 , 12, 0, 4);
INSERT INTO jugadores VALUES (337, 'Dante Martínez', 21 , 12, 0, 4);
INSERT INTO jugadores VALUES (338, 'Pablo Aránguiz',21, 12, 0, 4);
INSERT INTO jugadores VALUES (339, 'Christopher Ross', 18 , 12, 0, 4);
INSERT INTO jugadores VALUES (340, 'Ángel Muñoz', 19 , 12, 0, 4);
INSERT INTO jugadores VALUES (341, 'Kevin Harbottle', 25 , 12, 0, 4);
INSERT INTO jugadores VALUES (342, 'Pablo Galdames', 18 , 12, 0, 4);
INSERT INTO jugadores VALUES (343, 'Nicolás Higueras',21, 12, 0, 4);
INSERT INTO jugadores VALUES (344, 'Gabriel Méndez ', 27 , 12, 0, 1);
INSERT INTO jugadores VALUES (345, 'Carlos Salom', 28 , 12, 0, 1);
INSERT INTO jugadores VALUES (346, 'Juan Carlos Ferreyra', 32 , 12, 0, 1);
INSERT INTO jugadores VALUES (347, 'Gonzalo Abán', 28 , 12, 0, 1);
INSERT INTO jugadores VALUES (348, 'Fabián Saavedra', 23 , 12, 0, 1);
INSERT INTO jugadores VALUES (349, 'José Luis Sierra', 18 , 12, 0, 1);
/** Union La Calera **/
INSERT INTO jugadores VALUES (350, 'Lucas Giovini', 34 , 13, 0, 3);
INSERT INTO jugadores VALUES (351, 'José Aguilera', 27 , 13, 0, 3);
INSERT INTO jugadores VALUES (352, 'Cristofer Fuentes', 19 , 13, 0, 3);
INSERT INTO jugadores VALUES (353, 'Ezequiel Michelli', 24 , 13, 0, 2);
INSERT INTO jugadores VALUES (354, 'Franco Coca', 23 , 13, 0, 2);
INSERT INTO jugadores VALUES (355, 'Nicolás Ortíz', 31 , 13, 0, 2);
INSERT INTO jugadores VALUES (356, 'Francisco Romero', 19 , 13, 0, 2);
INSERT INTO jugadores VALUES (357, 'Mario Berríos', 34 , 13, 0, 2);
INSERT INTO jugadores VALUES (358, 'Hugo Bascuñán', 30 , 13, 0, 2);
INSERT INTO jugadores VALUES (359, 'Jonathan Suazo', 25 , 13, 0, 2);
INSERT INTO jugadores VALUES (360, 'Diego Oyarzún', 22 , 13, 0, 2);
INSERT INTO jugadores VALUES (361, 'Benjamín Ruiz', 34 , 13, 0, 2);
INSERT INTO jugadores VALUES (362, 'Cristian Collao', 19 , 13, 0, 4);
INSERT INTO jugadores VALUES (363, 'Agustín González', 32 , 13, 0, 4);
INSERT INTO jugadores VALUES (364, 'Carlos Sepúlveda', 20 , 13, 0, 4);
INSERT INTO jugadores VALUES (365, 'Michael Silva', 27 , 13, 0, 4);
INSERT INTO jugadores VALUES (366, 'Matías Guardia', 24 , 13, 0, 4);
INSERT INTO jugadores VALUES (367, 'Matías Arrua', 32 , 13, 0, 4);
INSERT INTO jugadores VALUES (368, 'Akermann Silva', 20 , 13, 0, 4);
INSERT INTO jugadores VALUES (369, 'Maximiliano Bajter', 29 , 13, 0, 4);
INSERT INTO jugadores VALUES (370, 'Gonzalo Sepúlveda', 26 , 13, 0, 4);
INSERT INTO jugadores VALUES (371, 'Mirko Serrano', 24 , 13, 0, 4);
INSERT INTO jugadores VALUES (372, 'Eduardo Farías', 27 , 13, 0, 4);
INSERT INTO jugadores VALUES (373, 'Carlos Varas', 18 , 13, 0, 4);
INSERT INTO jugadores VALUES (374, 'Javier Ramírez', 18 , 13, 0, 4);
INSERT INTO jugadores VALUES (375, 'Fabián Beas', 22 , 13, 0, 4);
INSERT INTO jugadores VALUES (376, 'Martín Bordonaro', 27 , 13, 0, 1);
INSERT INTO jugadores VALUES (377, 'Ignacio Jeraldino', 19 , 13, 0, 1);
INSERT INTO jugadores VALUES (378, 'Patricio Vidal', 23 , 13, 0, 1);
INSERT INTO jugadores VALUES (379, 'Allan Luttecke', 22 , 13, 0, 1);
/** Universidad Catolica **/
INSERT INTO jugadores VALUES (380, 'Christopher Toselli', 27 , 14, 0, 3);
INSERT INTO jugadores VALUES (381, 'Álvaro Ogalde', 18 , 14, 0, 3);
INSERT INTO jugadores VALUES (382, 'Franco Costanzo', 35 , 14, 0, 3);
INSERT INTO jugadores VALUES (383, 'Miguel Vargas', 19 , 14, 0, 3);
INSERT INTO jugadores VALUES (384, 'Germán Lanaro', 29 , 14, 0, 2);
INSERT INTO jugadores VALUES (385, 'Raimundo Rebolledo', 18 , 14, 0, 2);
INSERT INTO jugadores VALUES (386, 'Cristian Álvarez ', 35 , 14, 0, 2);
INSERT INTO jugadores VALUES (387, 'Pablo Álvarez', 30 , 14, 0, 2);
INSERT INTO jugadores VALUES (388, 'Benjamín Kuscevic', 19 , 14, 0, 2);
INSERT INTO jugadores VALUES (389, 'Francisco Sierralta', 18 , 14, 0, 2);
INSERT INTO jugadores VALUES (390, 'Guillermo Maripán', 21 , 14, 0, 2);
INSERT INTO jugadores VALUES (391, 'Juan Carlos Espinoza', 24 , 14, 0, 2);
INSERT INTO jugadores VALUES (392, 'Stefano Magnasco', 23 , 14, 0, 2);
INSERT INTO jugadores VALUES (393, 'Bastián Campos', 18 , 14, 0, 2);
INSERT INTO jugadores VALUES (394, 'Walter Ibáñez', 30 , 14, 0, 2);
INSERT INTO jugadores VALUES (395, 'Marko Biskupovic', 26 , 14, 0, 2);
INSERT INTO jugadores VALUES (396, 'Alfonso Parot', 26 , 14, 0, 2);
INSERT INTO jugadores VALUES (397, 'Tomás Costa', 30 , 14, 0, 4);
INSERT INTO jugadores VALUES (398, 'César Fuentes', 22 , 14, 0, 4);
INSERT INTO jugadores VALUES (399, 'Christian Bravo', 22 , 14, 0, 4);
INSERT INTO jugadores VALUES (400, 'Diego Rojas', 20 , 14, 0, 4);
INSERT INTO jugadores VALUES (401, 'Fernando Cordero', 28 , 14, 0, 4);
INSERT INTO jugadores VALUES (402, 'Michael Ríos', 30 , 14, 0, 4);
INSERT INTO jugadores VALUES (403, 'Carlos Espinosa', 32 , 14, 0, 4);
INSERT INTO jugadores VALUES (404, 'Mark González', 31 , 14, 0, 4);
INSERT INTO jugadores VALUES (405, 'Fabián Manzano', 21 , 14, 0, 4);
INSERT INTO jugadores VALUES (406, 'Marco Medel', 26 , 14, 0, 4);
INSERT INTO jugadores VALUES (407, 'Carlos Lobos', 18 , 14, 0, 4);
INSERT INTO jugadores VALUES (408, 'Jaime Carreño', 18 , 14, 0, 4);
INSERT INTO jugadores VALUES (409, 'José Luis Muñoz', 28 , 14, 0, 1);
/** Universidad de Chile **/
INSERT INTO jugadores VALUES (410, 'Miguel Jiménez', 34 , 15, 0, 3);
INSERT INTO jugadores VALUES (411, 'Nelson Espinoza', 20 , 15, 0, 3);
INSERT INTO jugadores VALUES (412, 'Johnny Herrera  2°', 34 , 15, 0, 3);
INSERT INTO jugadores VALUES (413, 'Benjamín Vidal', 24 , 15, 0, 2);
INSERT INTO jugadores VALUES (414, 'José Rojas ', 32 , 15, 0, 2);
INSERT INTO jugadores VALUES (415, 'Osvaldo González  3°', 31 , 15, 0, 2);
INSERT INTO jugadores VALUES (416, 'Mathías Corujo', 29 , 15, 0, 2);
INSERT INTO jugadores VALUES (417, 'Paulo Magalhães', 25 , 15, 0, 2);
INSERT INTO jugadores VALUES (418, 'Matías Rodríguez', 29 , 15, 0, 2);
INSERT INTO jugadores VALUES (419, 'João Ortiz', 24 , 15, 0, 2);
INSERT INTO jugadores VALUES (420, 'Cristián Suárez', 28 , 15, 0, 2);
INSERT INTO jugadores VALUES (421, 'Michael Contreras', 22 , 15, 0, 2);
INSERT INTO jugadores VALUES (422, 'Sebastián Martínez', 22 , 15, 0, 4);
INSERT INTO jugadores VALUES (423, 'Renato González', 25 , 15, 0, 4);
INSERT INTO jugadores VALUES (424, 'Diego González', 19 , 15, 0, 4);
INSERT INTO jugadores VALUES (425, 'Leonardo Valencia', 24 , 15, 0, 4);
INSERT INTO jugadores VALUES (426, 'Rodrigo Ureña', 22 , 15, 0, 4);
INSERT INTO jugadores VALUES (427, 'Gonzalo Espinoza', 25 , 15, 0, 4);
INSERT INTO jugadores VALUES (428, 'Gustavo Lorenzetti ', 30 , 15, 0, 4);
INSERT INTO jugadores VALUES (429, 'Guzmán Pereira ', 24 , 15, 0, 4);
INSERT INTO jugadores VALUES (430, 'Fabián Carmona ', 21 , 15, 0, 4);
INSERT INTO jugadores VALUES (431, 'Francisco Castro', 25 , 15, 0, 1);
INSERT INTO jugadores VALUES (432, 'Patricio Rubio', 26 , 15, 0, 1);
INSERT INTO jugadores VALUES (433, 'Felipe Pinilla', 18 , 15, 0, 1);
INSERT INTO jugadores VALUES (434, 'Sebastián Ubilla', 25 , 15, 0, 1);
INSERT INTO jugadores VALUES (435, 'Rubén Farfán ', 24 , 15, 0, 1);
INSERT INTO jugadores VALUES (436, 'Gustavo Canales ', 33 , 15, 0, 1);
INSERT INTO jugadores VALUES (437, 'Leandro Benegas', 26 , 15, 0, 1);
INSERT INTO jugadores VALUES (438, 'Sebastián Gómez', 19 , 15, 0, 1);
INSERT INTO jugadores VALUES (439, 'Roberto Gutiérrez', 32 , 15, 0, 1);
/** Universidad de Concepción **/
INSERT INTO jugadores VALUES (440, 'Cristián Muñoz', 38 , 16, 0, 3);
INSERT INTO jugadores VALUES (441, 'Daniel Castillo', 24 , 16, 0, 3);
INSERT INTO jugadores VALUES (442, 'Leonardo Figueroa', 23 , 16, 0, 3);
INSERT INTO jugadores VALUES (443, 'Pablo Benítez', 18 , 16, 0, 3);
INSERT INTO jugadores VALUES (444, 'Diego Díaz', 29 , 16, 0, 2);
INSERT INTO jugadores VALUES (445, 'Waldo Ponce', 32 , 16, 0, 2);
INSERT INTO jugadores VALUES (446, 'Alexis Machuca', 25 , 16, 0, 2);
INSERT INTO jugadores VALUES (447, 'Felipe Muñoz', 30 , 16, 0, 2);
INSERT INTO jugadores VALUES (448, 'Esteban Flores', 23 , 16, 0, 2);
INSERT INTO jugadores VALUES (449, 'Juan Pablo Gómez', 24 , 16, 0, 2);
INSERT INTO jugadores VALUES (450, 'Sebastián Roco', 32 , 16, 0, 2);
INSERT INTO jugadores VALUES (451, 'Alejandro Camargo', 26 , 16, 0, 4);
INSERT INTO jugadores VALUES (452, 'Hans Salinas', 25 , 16, 0, 4);
INSERT INTO jugadores VALUES (453, 'Felipe Reynero', 26 , 16, 0, 4);
INSERT INTO jugadores VALUES (454, 'José Pérez', 30 , 16, 0, 4);
INSERT INTO jugadores VALUES (455, 'Michael Lepe', 25 , 16, 0, 4);
INSERT INTO jugadores VALUES (456, 'Héctor Berrios', 29 , 16, 0, 4);
INSERT INTO jugadores VALUES (457, 'Francisco Portillo', 28 , 16, 0, 4);
INSERT INTO jugadores VALUES (458, 'Fernando Manríquez', 31 , 16, 0, 4);
INSERT INTO jugadores VALUES (459, 'Diego Guastavino', 31 , 16, 0, 4);
INSERT INTO jugadores VALUES (460, 'Ronald de la Fuente', 24 , 16, 0, 4);
INSERT INTO jugadores VALUES (461, 'José Lagos', 24, 16, 0, 4);
INSERT INTO jugadores VALUES (462, 'Luis Roa', 18 , 16, 0, 4);
INSERT INTO jugadores VALUES (463, 'José Huentelaf', 26 , 16, 0, 1);
INSERT INTO jugadores VALUES (464, 'Aníbal Carvallo', 25 , 16, 0, 1);
INSERT INTO jugadores VALUES (465, 'Diego Churín', 25 , 16, 0, 1);
INSERT INTO jugadores VALUES (466, 'Gustavo Cristaldo', 26 , 16, 0, 1);
INSERT INTO jugadores VALUES (467, 'Gabriel Vargas ', 31 , 16, 0, 1);
INSERT INTO jugadores VALUES (468, 'Jorge Troncoso', 22 , 16, 0, 1);
INSERT INTO jugadores VALUES (469, 'Felipe Fritz', 18 , 16, 0, 1);
/** Cobreloa **/
INSERT INTO jugadores VALUES (470, 'Sebastián Contreras', 27 , 17, 0, 3);
INSERT INTO jugadores VALUES (471, 'Matías Carrasco', 19 , 17, 0, 3);
INSERT INTO jugadores VALUES (472, 'Jorge De Olivera ', 33 , 17, 0, 3);
INSERT INTO jugadores VALUES (473, 'Miguel Sanhueza ', 24 , 17, 0, 2);
INSERT INTO jugadores VALUES (474, 'Paulo Olivares', 25 , 17, 0, 2);
INSERT INTO jugadores VALUES (475, 'Enzo Guerrero', 24 , 17, 0, 2);
INSERT INTO jugadores VALUES (476, 'Boris Sandoval', 28 , 17, 0, 2);
INSERT INTO jugadores VALUES (477, 'Walter Gómez', 25 , 17, 0, 2);
INSERT INTO jugadores VALUES (478, 'Eric Ahumada ', 21 , 17, 0, 2);
INSERT INTO jugadores VALUES (479, 'Mathías López', 19 , 17, 0, 4);
INSERT INTO jugadores VALUES (480, 'Jonathan Retamal', 25 , 17, 0, 4);
INSERT INTO jugadores VALUES (481, 'José Barrera', 27 , 17, 0, 4);
INSERT INTO jugadores VALUES (482, 'Fernando Cornejo', 19 , 17, 0, 4);
INSERT INTO jugadores VALUES (483, 'Carlos Santibáñez', 29 , 17, 0, 4);
INSERT INTO jugadores VALUES (484, 'Iván Ledezma', 20 , 17, 0, 4);
INSERT INTO jugadores VALUES (485, 'Carlos Gómez', 23 , 17, 0, 4);
INSERT INTO jugadores VALUES (486, 'Manuel Simpertegui', 27 , 17, 0, 4);
INSERT INTO jugadores VALUES (487, 'Nahuel Pansardi', 26 , 17, 0, 4);
INSERT INTO jugadores VALUES (488, 'Cristian Gaitán ', 25 , 17, 0, 4);
INSERT INTO jugadores VALUES (489, 'Bryan Danesi', 26 , 17, 0, 4);
INSERT INTO jugadores VALUES (490, 'Jorge Piris', 25 , 17, 0, 1);
INSERT INTO jugadores VALUES (491, 'Facundo Peraza', 23 , 17, 0, 1);
INSERT INTO jugadores VALUES (492, 'Sebastián Romero', 19 , 17, 0, 1);
INSERT INTO jugadores VALUES (493, 'José Luis Jiménez', 32 , 17, 0, 1);
INSERT INTO jugadores VALUES (494, 'Diego de Gregorio', 29 , 17, 0, 1);
INSERT INTO jugadores VALUES (495, 'Vildan Alfaro', 20 , 17, 0, 1);
INSERT INTO jugadores VALUES (496, 'Nino Rojas', 28 , 17, 0, 1);
INSERT INTO jugadores VALUES (497, 'Mauricio Sánchez', 19 , 17, 0, 1);
/** Coquimbo Unido **/
INSERT INTO jugadores VALUES (498, 'Guillermo Orellana', 29 , 18, 0, 3);
INSERT INTO jugadores VALUES (499, 'Jaime Bravo', 33 , 18, 0, 3);
INSERT INTO jugadores VALUES (500, 'Héctor Pérez', 27 , 18, 0, 3);
INSERT INTO jugadores VALUES (501, 'Franco Zambra', 19 , 18, 0, 3);
INSERT INTO jugadores VALUES (502, 'Elian Parrino', 27 , 18, 0, 2);
INSERT INTO jugadores VALUES (503, 'Diego Carrasco', 20 , 18, 0, 2);
INSERT INTO jugadores VALUES (504, 'Ismael Fuentes', 34 , 18, 0, 2);
INSERT INTO jugadores VALUES (505, 'Claudio Calderón', 29 , 18, 0, 2);
INSERT INTO jugadores VALUES (506, 'Manuel Olivares', 25 , 18, 0, 2);
INSERT INTO jugadores VALUES (507, 'Oscar Magaña', 28 , 18, 0, 2);
INSERT INTO jugadores VALUES (508, 'Rodrigo Moya', 21 , 18, 0, 2);
INSERT INTO jugadores VALUES (509, 'Michael López', 26 , 18, 0, 2);
INSERT INTO jugadores VALUES (510, 'Gonzalo Menéndez', 22 , 18, 0, 4);
INSERT INTO jugadores VALUES (511, 'Matías Gutiérrez', 21 , 18, 0, 2);
INSERT INTO jugadores VALUES (512, 'Sebastián Cabrera', 17 , 18, 0, 2);
INSERT INTO jugadores VALUES (513, 'Luis Pavez', 27 , 18, 0, 4);
INSERT INTO jugadores VALUES (514, 'Ariel Martínez', 21 , 18, 0, 4);
INSERT INTO jugadores VALUES (515, 'Miqueas Lapalma', 20 , 18, 0, 4);
INSERT INTO jugadores VALUES (516, 'Franco Seida', 20 , 18, 0, 4);
INSERT INTO jugadores VALUES (517, 'Ángel Rojas', 30 , 18, 0, 4);
INSERT INTO jugadores VALUES (518, 'Luis Aguirre', 24 , 18, 0, 4);
INSERT INTO jugadores VALUES (519, 'Carlos Martinez Aibar', 26 , 18, 0, 4);
INSERT INTO jugadores VALUES (520, 'Guillermo Suárez', 30 , 18, 0, 1);
INSERT INTO jugadores VALUES (521, 'Leonardo Monje', 34 , 18, 0, 1);
INSERT INTO jugadores VALUES (522, 'Mario Salgado', 34 , 18, 0, 1);
INSERT INTO jugadores VALUES (523, 'Lucas Farías', 20 , 18, 0, 1);
INSERT INTO jugadores VALUES (524, 'Renato Tarifeño', 19 , 18, 0, 1);
INSERT INTO jugadores VALUES (525, 'Gustavo Lanaro', 29 , 18, 0, 1);
INSERT INTO jugadores VALUES (526, 'Francisco Cortés', 19 , 18, 0, 1);
INSERT INTO jugadores VALUES (527, 'Atilio Berrios', 19 , 18, 0, 1);
/** Everton **/
INSERT INTO jugadores VALUES (528, 'Gustavo Dalsasso ', 39 , 19, 0, 3);
INSERT INTO jugadores VALUES (529, 'Claudio González', 25 , 19, 0, 3);
INSERT INTO jugadores VALUES (530, 'Luis Velásquez', 22 , 19, 0, 3);
INSERT INTO jugadores VALUES (531, 'Jordano Cisterna', 19 , 19, 0, 2);
INSERT INTO jugadores VALUES (532, 'Felipe Salinas', 33 , 19, 0, 2);
INSERT INTO jugadores VALUES (533, 'Italo Pizarro', 20 , 19, 0, 2);
INSERT INTO jugadores VALUES (534, 'Douglas Estay', 23 , 19, 0, 2);
INSERT INTO jugadores VALUES (535, 'Marcos Velásquez', 27 , 19, 0, 2);
INSERT INTO jugadores VALUES (536, 'Matías Blásquez', 24 , 19, 0, 2);
INSERT INTO jugadores VALUES (537, 'Nicolás Suárez', 33 , 19, 0, 2);
INSERT INTO jugadores VALUES (538, 'Gino Alucema', 23 , 19, 0, 4);
INSERT INTO jugadores VALUES (539, 'Nicolás Peñailillo', 24 , 19, 0, 4);
INSERT INTO jugadores VALUES (540, 'Alejandro Carrasco', 37 , 19, 0, 4);
INSERT INTO jugadores VALUES (541, 'Jorge Gálvez', 22 , 19, 0, 4);
INSERT INTO jugadores VALUES (542, 'Gabriel Díaz', 26 , 19, 0, 4);
INSERT INTO jugadores VALUES (543, 'Fernando Saavedra2°', 29 , 19, 0, 4);
INSERT INTO jugadores VALUES (544, 'Diego Orellana', 22 , 19, 0, 4);
INSERT INTO jugadores VALUES (545, 'Álvaro Madrid', 20 , 19, 0, 4);
INSERT INTO jugadores VALUES (546, 'Alfonso Urbina', 22 , 19, 0, 4);
INSERT INTO jugadores VALUES (547, 'Sebastián González', 23 , 19, 0, 4);
INSERT INTO jugadores VALUES (548, 'Rafael Viotti', 27 , 19, 0, 1);
INSERT INTO jugadores VALUES (549, 'Lucas Concistre', 32 , 19, 0, 1);
INSERT INTO jugadores VALUES (550, 'Maximiliano Ceratto', 27 , 19, 0, 1);
INSERT INTO jugadores VALUES (551, 'Sergio Riffo', 18 , 19, 0, 1);
INSERT INTO jugadores VALUES (552, 'Franco Ragusa', 22 , 19, 0, 1);
INSERT INTO jugadores VALUES (553, 'Francisco Cortés', 19 , 19, 0, 1);
INSERT INTO jugadores VALUES (554, 'Atilio Berrios', 19 , 19, 0, 1);
INSERT INTO jugadores VALUES (555, 'Emilio Hernández', 31 , 19, 0, 1);
/** Santiago Morning **/
INSERT INTO jugadores VALUES (556, 'José Lafrentz', 23 , 20, 0, 3);
INSERT INTO jugadores VALUES (557, 'Ángelo Astorga', 22 , 20, 0, 3);
INSERT INTO jugadores VALUES (558, 'Hernán Muñoz', 27 , 20, 0, 3);
INSERT INTO jugadores VALUES (559, 'Felipe Rojas', 29 , 20, 0, 2);
INSERT INTO jugadores VALUES (560, 'Christian Sepúlveda', 28 , 20, 0, 2);
INSERT INTO jugadores VALUES (561, 'Nozomi Kimura', 18 , 20, 0, 2);
INSERT INTO jugadores VALUES (562, 'Bryan Coñoman', 20 , 20, 0, 2);
INSERT INTO jugadores VALUES (563, 'Daniel Silva', 21 , 20, 0, 2);
INSERT INTO jugadores VALUES (564, 'Cristóbal Cáceres', 19 , 20, 0, 2);
INSERT INTO jugadores VALUES (565, 'José Horacio Rivas', 22 , 20, 0, 2);
INSERT INTO jugadores VALUES (566, 'Sebastián Contreras', 20 , 20, 0, 2);
INSERT INTO jugadores VALUES (567, 'Mauricio Yedro', 28 , 20, 0, 4);
INSERT INTO jugadores VALUES (568, 'Luis Fernández', 26 , 20, 0, 4);
INSERT INTO jugadores VALUES (569, 'Felipe Díaz', 32 , 20, 0, 4);
INSERT INTO jugadores VALUES (570, 'Sebastián Pino', 18 , 20, 0, 4);
INSERT INTO jugadores VALUES (571, 'Yerko García', 22 , 20, 0, 4);
INSERT INTO jugadores VALUES (572, 'Mario Sandoval', 24 , 20, 0, 4);
INSERT INTO jugadores VALUES (573, 'Roberto Reyes ', 27 , 20, 0, 4);
INSERT INTO jugadores VALUES (574, 'Gonzalo Reyes', 20 , 20, 0, 4);
INSERT INTO jugadores VALUES (575, 'Miguel Cárdenas', 19 , 20, 0, 4);
INSERT INTO jugadores VALUES (576, 'Gerardo Cortés', 27 , 20, 0, 4);
INSERT INTO jugadores VALUES (577, 'Jorge Gatíca', 19 , 20, 0, 4);
INSERT INTO jugadores VALUES (578, 'Daniel Faúndez', 19 , 20, 0, 4);
INSERT INTO jugadores VALUES (579, 'Claudio Gálvez', 21 , 20, 0, 4);
INSERT INTO jugadores VALUES (580, 'David Escalante', 24 , 20, 0, 1);
INSERT INTO jugadores VALUES (581, 'Fabián Núñez', 23 , 20, 0, 1);
INSERT INTO jugadores VALUES (582, 'Gonzalo Malán', 27 , 20, 0, 1);
INSERT INTO jugadores VALUES (583, 'Carlos Paredes', 19 , 20, 0, 1);
INSERT INTO jugadores VALUES (584, 'Oscar Ortega', 25 , 20, 0, 1);
INSERT INTO jugadores VALUES (585, 'Osvaldo Paillacán', 18 , 20, 0, 1);
/** Exception **/
INSERT INTO jugadores VALUES (586, 'Ter Stegen', 23, 21, 0, 3);
INSERT INTO jugadores VALUES (587, 'Montoya', 24, 21, 0, 2);
INSERT INTO jugadores VALUES (588, 'Piqué', 28, 21, 0, 2);
INSERT INTO jugadores VALUES (589, 'I. Rakitić', 27, 21, 0, 4);
INSERT INTO jugadores VALUES (590, 'Sergio', 27, 21, 0, 4);
INSERT INTO jugadores VALUES (591, 'Xavi', 35, 21, 0, 4);
INSERT INTO jugadores VALUES (592, 'Pedro', 28, 21, 0, 1);
INSERT INTO jugadores VALUES (593, 'A. Iniesta', 31, 21, 0, 4);
INSERT INTO jugadores VALUES (594, 'Suárez', 28, 21, 0, 1);
INSERT INTO jugadores VALUES (595, 'Messi', 28, 21, 0, 1);
INSERT INTO jugadores VALUES (596, 'Neymar Jr', 23, 21, 0, 1);
INSERT INTO jugadores VALUES (597, 'Rafinha', 22, 21, 0, 4);
INSERT INTO jugadores VALUES (598, 'C. Bravo', 32, 21, 0, 3);
INSERT INTO jugadores VALUES (599, 'Mascherano', 31, 21, 0, 4);
INSERT INTO jugadores VALUES (600, 'Bartra', 24, 21, 0, 2);
INSERT INTO jugadores VALUES (601, 'Douglas S.', 25, 21, 0, 2);
INSERT INTO jugadores VALUES (602, 'Jordi Alba', 26, 21, 0, 2);
INSERT INTO jugadores VALUES (603, 'S. Roberto', 23, 21, 0, 4);
INSERT INTO jugadores VALUES (604, 'Adriano', 30, 21, 0, 2);
INSERT INTO jugadores VALUES (605, 'Dani Alves', 32, 21, 0, 2);
INSERT INTO jugadores VALUES (606, 'Vermaelen', 29, 21, 0, 2);
INSERT INTO jugadores VALUES (607, 'Mathieu', 31, 21, 0, 2);
INSERT INTO jugadores VALUES (608, 'Masip', 26, 21, 0, 3);

/** Consulta Cliente **/ 

SELECT * FROM usuarios WHERE rutUsuario = 19133111 AND clave = 'rick';

/** Consulta Cantidad de goles del torneo (Punto IV) **/

SELECT p.descripcion AS 'Posición', j.nombrejugador AS 'Nombre Jugador', e.nombreEquipo AS 'Equipo', j.golesConvertidos AS 'Goles'
FROM jugadores j 
	 INNER JOIN posicion p ON j.idPosicion = p.idPosicion
	 INNER JOIN equipos  e ON j.idEquipo = e.idEquipo
WHERE j.golesConvertidos > 0 AND e.division = '1A'
ORDER BY j.golesConvertidos DESC;

/** Partidos Jugados (V)**/
SELECT * FROM jugadores;
INSERT INTO partidos VALUES(2,2,4,0,0,3,'2015-01-01',1);

SELECT p.fechaTorneo AS 'Fecha Torneo', CONCAT(eql.nombreEquipo , ' ' , p.golesLocal , ' V/S ' ,p.golesVisita , ' ' , eqv.nombreEquipo) AS 'Partido' , es.nombreEstadio AS 'Estadio', p.fechaPartido AS 'Fecha Partido', SUM(p.golesLocal*100000) AS 'Total a pagar Equipo Local' , SUM(p.golesVisita*100000) AS 'Total a pagar Equipo Visita'
FROM partidos p 
	 INNER JOIN estadios es ON p.idEstadio = es.idEstadio
	 INNER JOIN equipos eql ON p.equipoLocal = eql.idEquipo
	 INNER JOIN equipos eqv ON p.equipoVisita = eqv.idEquipo
	 INNER JOIN jugadores jel ON jel.idEquipo = eql.idEquipo
	 INNER JOIN jugadores jev ON jev.idEquipo = eqv.idEquipo
GROUP BY  p.fechaTorneo, eql.nombreEquipo, p.golesLocal, eqv.nombreEquipo, p.golesVisita, es.nombreEstadio, p.fechaPartido;

/** Listado de Equipo (VI) **/

SELECT e.idEquipo AS 'ID Equipo', e.nombreEquipo AS 'Equipo' , d.nombreDT AS 'DT'
FROM equipos e INNER JOIN DTs d ON e.rutDT = d.rutDT
WHERE e.division = '1A';

/** Puntos del torneo (VII) **/

SELECT nombreEquipo AS 'Equipo', puntaje AS 'Puntaje'
FROM equipos
WHERE division = '1A'
ORDER BY 2 DESC;

/** 3 mejores jugadores (VIII) **/

SELECT TOP 3 j.nombreJugador AS 'Jugador', e.nombreEquipo AS 'Equipo', j.golesConvertidos AS 'Goles'
FROM jugadores j INNER JOIN equipos e ON j.idEquipo = e.idEquipo
WHERE j.golesConvertidos > 0  AND e.division = '1A'  
ORDER BY 3 DESC;

/** Nombre DT (IX) **/

SELECT d.nombreDT AS 'Nombre DT'
FROM DTs d INNER JOIN equipos e ON d.rutDT = e.rutDT
WHERE e.nombreEquipo = 'Exception';

/** ID Equipo **/

SELECT COUNT(idEquipo)+1 FROM equipos;

/** ID Partidos **/

SELECT COUNT(idPartido)+1 FROM partidos;

/** Update goleadores **/

UPDATE jugadores SET golesConvertidos = 1 WHERE rutJugador = 1;

/** Consulta equipo jugador **/

SELECT e.nombreEquipo FROM equipos e INNER JOIN jugadores j ON e.idEquipo = j.idEquipo
WHERE j.rutJugador = 1;

/** Consulta nombre jugador **/

SELECT nombreJugador FROM jugadores  
WHERE rutJugador = 1;

/** Consulta Posicion **/
SELECT p.descripcion FROM posicion p INNER JOIN jugadores j ON p.idPosicion = j.idPosicion
WHERE j.rutJugador = 1;

/** Update puntaje equipo Local **/

UPDATE SET 

