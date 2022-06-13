CREATE DATABASE  IF NOT EXISTS `cecyt-integrador` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cecyt-integrador`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cecyt-integrador
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaturas` (
  `id_asi` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_asi` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8_spanish_ci NOT NULL,
  `id_esp` int unsigned NOT NULL,
  `id_sem` int unsigned NOT NULL,
  PRIMARY KEY (`id_asi`),
  KEY `nom_asi` (`nom_asi`) /*!80000 INVISIBLE */,
  KEY `id_esp` (`id_esp`),
  KEY `id_sem` (`id_sem`),
  CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`id_esp`) REFERENCES `especialidades` (`id_esp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `asignaturas_ibfk_2` FOREIGN KEY (`id_sem`) REFERENCES `semestres` (`id_sem`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` VALUES (1,'Administración de proyectos de tecnologías de la información I',2,1),(2,'Laboratorio de proyectos de tecnologias de la informacion I',2,1),(3,'Programacion Orientada a Objetos',2,1),(4,'Administración de Proyectos de Tecnologías de la Información II',2,2),(5,'Bases de Datos',2,2),(6,'Laboratorio de Proyectos de Tecnologías de la Información II',2,2),(7,'Programación y Servicios Web',2,2),(8,'Técnicas de Programación Personal con Calidad',2,2),(9,'Automatización de Pruebas',2,3),(10,'Desarrollo Humano y Personal',2,3),(11,'Introducción a la Ingeniería de Pruebas',2,3),(12,'Introducción a los Sistemas Distribuidos',2,3),(13,'Laboratorio de Proyectos de Tecnologías de la Información III',2,3),(14,'Seguridad Web y Aplicaciones',2,3),(15,'Soporte de Software',2,4),(16,'Laboratorio de Proyectos de Tecnologías de la Información IV',2,4),(17,'Métodos Ágiles de Programación',2,4),(18,'Plan de Negocios',2,4),(19,'Proyecto Integrador',2,4),(20,'Soporte de Software',2,4);
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografias`
--

DROP TABLE IF EXISTS `bibliografias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliografias` (
  `id_bib` int unsigned NOT NULL AUTO_INCREMENT,
  `id_asi` int unsigned NOT NULL,
  `con_bib` text NOT NULL,
  PRIMARY KEY (`id_bib`),
  KEY `id_asi` (`id_asi`),
  CONSTRAINT `bibliografias_ibfk_2` FOREIGN KEY (`id_asi`) REFERENCES `asignaturas` (`id_asi`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografias`
--

LOCK TABLES `bibliografias` WRITE;
/*!40000 ALTER TABLE `bibliografias` DISABLE KEYS */;
INSERT INTO `bibliografias` VALUES (1,1,' Ingeniería del Software. Un enfoque Práctico, Pressman, Roger McGrawHill, 2005.\r Desarrollo y Gestión de Proyectos Informáticos, McConnell, Steve, McGrawHill, 1997.\r Aprendiendo UML en 24 Horas, Schmuller, Joseph, Prentice Hall, 2001.\r Universidad Autónoma de México, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en México, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.p df, 1/Noviembre/2009.\r Consejo Superior de Administración Electrónica, España, Metodología de Planificación, Desarrollo y Mantenimiento de sistemas de información, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009'),(2,2,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r  HTML/XML. Pott Oliver. Boixareu|\r Creación de sitios Web con ASP.NET Amundsen/ Litwin. Prentice Hall.\r Universidad Autónoma de México, Estudio para Determinar la  Cantidad  yCalidad de Recursos Humanos  Necesariospara  el Desarrollo  de  la Industria deSoftware en México, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r Consejo Superior de Administración Electrónica, España, Metodología de Planificación, Desarrollo y Mantenimiento de sistemas de información, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009'),(3,3,' Manual de Referencia Java 2, Herbert Schildt, Mc Graw Hill 2006.\r  Java: A Beginner’s Guide 4th Ed., Herbert Schildt, Mc Graw Hill 2007.\r  Aprendiendo Programación Orientada a Objetos en 21 lecciones avanzadas, Sintes Anthony, Pearson 2004.\r Instituto Tecnológico de Apizaco, Programación Orientada a Objetos, http://www.itapizaco.edu.mx/paginas/Poo/Tutorial/introduccion.html, 31/Octubre/2009.\r Hermanos Carrero, Java en Castellano, http://www.programacion.com/java/tutoriales/J2SE/, 31/Octubre/2009'),(4,4,' Administración exitosa de proyectos Jack Gido / James P. ClementsCENGAGE,2007\r Administración Profesional de Proyectos Yamal ChamounMcGrawHill, 2002\r Ingeniería de Software Una Perspectiva Orientada a Objetos Braude, Eric J.RA-MA, 2003.\r LA PLANEACIÓN ESTRATAEGICA Crece Negocios, Powered by WordPress, mayo 2009, http://www.crecenegocios.com/la-planeacion-estrategica/, 28/Octubre/ 2009.\r TALLER REDES Y TRABAJO COLABORATIVO ENTRE PROFESORES Barbara de Benito Universidad Islas Baleares, EDUTEC 99, http://gte.uib.es/articulo/EDUTEC99.pdf, 28/Octubre/2009.'),(5,5,' Fundamentos de Bases de Datos Silberschatz, Abraham / Korth / SudarshanMc Graw Hill, 2006\r Fundamentos y modelos de Bases de Datos Adoración de Miguel / Piattini, MarioAlfaOmega RA-MA, 1999\r Diseño de Bases de Datos Relacionales Adoración de Miguel / Piattini, MarioAlfaOmega RA-MA, 1999\r Ing.Lourdes Arlín Campoy Medrano,Tutorial de Bases de Datos 1, http://sistemas.itlp.edu.mx/tutoriales/basedat1/, 28/Octubre/2009\r Mercedes Marqués,Apuntes de Ficheros y Bases de Datos,http://www3.uji.es/~mmarques/f47/apun,28 /Octubre/2009'),(6,6,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r   Desarrollo de soluciones XML. Sturm Jack. Mc Graw Hill\r  Manual de referencia HTML. Powell A.Thomas Mc Graw Hill\r Microsoft, Microsoft SQL server 2008, http://www.microsoft.com/latam/sqlserver/default.aspx, 28 /Octubre/2009\r MYSQL, MYSQL Hispano, http://www.mysql-hispano.org/, 28 /Octubre/2009'),(7,7,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r  HTML/XML. Pott Oliver. Boixareu|\r Desarrollo de soluciones XML. Sturm Jack. Mc Graw Hill\r Fernando Berzal, Internet,http://elvex.ugr.es, 29/Octubre/2009\r Rubén Alvarez, Tutoriales web, http://www.desarrolloweb.com29/Octubre/2009'),(8,8,' Introducción al Proceso Software Personal S. Humphrey WattsAddison Wesley 1998\r  Ingeniería de SoftwareRoger S. PressmanMc Graw Hill  2006\r Ingeniería de SoftwareSommerville IanAddison Wesley 2002\r Macario Polo Usaola, PSP, http://www.inf-cr.uclm.es/www/mpolo/asig/0304/psp.pdf, 28/Octubre/2009\r LCC. Marcela García Alonso, Métricas y Procesos PSP, www.utim.edu.mx/~mgarcia/DOCUMENTO/CSW/CSW02.ppt, 28/Octubre/2009'),(9,9,' Ingeniería del Software un enfoque práctico. S. Pressman Roger Mc Graw Hill\r  Ingeniería de Software. Sommerville Ian. Adisson Wesley.\r Ingeniería de Software Teoría y Práctica. X Shari Lawrence Pleeger Prentice may\r Escuela de Ingeniería de Sistemas y Computación. Presentación proceso de pruebas de softwarehttp://eisc.univalle.edu.co/cursos/web/material/750092M/80/DS2-Clase19-Pruebas2.pdf29/Octubre/2009\r Rubiano, Freddy Sanjuan, Ernesto García, Jaime Flores,Carolina Universidad Alejandro de Humboldt http://www.slideshare.net/Rubiano/automatizacion-de-pruebas-de-software-124596929/Octubre/2009'),(10,10,' Autoestima y salud X González, L:J: Font México, 1998\r  Teorías de la Personalidad X Fadiman, James Haría 1979\r  Viviendo con Autoestima X Alberti, Robert PAX México 1999\r  Los seis pilares de la autoestima X Branden, Nathaniel Paidós 2008\r Rubiano, Freddy Sanjuan, Ernesto García, Jaime Flores,Carolina Universidad Alejandro de Humboldt http://www.slideshare.net/Rubiano/automatizacion-de-pruebas-de-software-124596929/Octubre/2009\r AUTOESTIMA Francisco Masso http://es.salut.conecta.it/pdf/injuve/IIguianorexia _4.pdf Unidad 2, Tema 1 y 2 28/Octubre/2009'),(11,11,' Ingeniería del Software un enfoque práctico.  S. Pressman Roger Mc Graw Hill   Ingeniería de Software.\r Sommerville Ian. Adisson Wesley.   Ingeniería de Software Teoría y Práctica.\r Shari Lawrence Pleeger Prentice may   Análisis y diseño detallado de Aplicaciones Informáticas de Gestión.\r Beatriz Pérez Centro de Ensayos de software http://www.ces.com.uy/documentos/Metodologi a%20de%20Trabajo%20Testing%20Funcional. PDF, 29 /Octubre/2009\r Gustavo Vázquez Centro de Ensayos de software http://www.ces.com.uy/documentos/Herramient as%20de%20Generacion%20de%20Carga.PD F, 29 /Octubre/2009'),(12,12,' Sistemas Distribuidos Conceptos y Diseño  Coulouris George Dollimore Jean Kindberg Pearson Addison Wesley 2001\r Sistemas Distribuidos Principios y Paradigmas  Tanenbaum Andrew S. Van Steen Maarten Pearson Prentice Hall 2008 \r Ingeniería del Software  Sommerville Ian Pearson Addison Wesley 2005\r Omar Hurtado Jara, Sistemas Distribuidos,  http://www.monografias.com/trabajos16/sistemas-  distribuidos/sistemas-distribuidos.shtml , 29/Octubre/2009\r S/A, Computación Distribuida, http://es.wikipedia.org/wiki/Sistemas_Distribuidos, 29/Octubre/2009'),(13,13,' TCP/IP.  E. Comer Douglas, Stevens Davi L. Prentice Hall HTML/XML.  Pott Oliver. Boixareu\r Creación de sitios Web con ASP.NET  Amundsen/ Litwin. Prentice Hall   Desarrollo de soluciones XML.\r Sturm Jack. Mc Graw Hill   Manual de referencia HTML. Powell A.Thomas Mc Graw Hill\r Usr.code, Ciclo de Vida del Software, http://www.cepeu.edu.py/LIBROS_ELECTRON ICOS_3/lpcu097%20-%2001.pdf , 1/Noviembre/2009\r José R. Álvarez y Manuel Arias, Ciclo de Vida del software, http://www.ia.uned.es/ia/asignaturas/adms/Gui aDidADMS/node10.html , 1/Noviembre/2009'),(14,14,' Introducción al Proceso Software Personal S. Humphrey WattsAddison Wesley 1998\r  Ingeniería de SoftwareRoger S. PressmanMc Graw Hill  2006\r Ingeniería de SoftwareSommerville IanAddison Wesley 2002\r S/A , Seguridad Informática, http://es.wikipedia.org/wiki/Seguridad_inform%C3 %A1tica , 29/Octubre/2009\r Máximo Merlat , Seguridad Informática, http://www.monografias.com/trabajos/hackers/hac kers.shtml , 29/Octubre/2009'),(15,15,'Ingeniería del Software un enfoque práctico, S. Pressman Roger, Mc Graw Hill 2005.\r Ingeniería de Software, Sommerville Ian. , Adisson Wesley. 2005.\r Ingeniería de Software Teoría y Práctica, Lawrence Pleeger Shari., Prentice Hall.\r Fundada por Jimmy Wales y Larry Sanger, http://es.wikipedia.org/wiki/Ingenier%C3%ADa_de_software, 29/Octubre/2009.\r Solange Galáz 1ro. de Analista de Sistemas, C. Del U. Entre Ríos, Argentina, http://www.monografias.com/trabajos5/inso/inso.s html, 29/Octubre/2009.'),(16,16,'HTML/XML., Pott Oliver. , Boixareu.\r Creación de sitios Web con ASP.NET, Amundsen Litwin., Prentice Hall.\r La Biblia HTML., Charte Ojeda Fco., Anaya Multimedia.\r Programación con XML., Ricardo Eito Brun., Anaya Multimedia.\r Universidad Autónoma de México, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en México, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r Consejo Superior de Administración Electrónica, España, Metodología de Planificación, Desarrollo y Mantenimiento de sistemas de información, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009.'),(17,17,'Desarrollo y gestión de proyectos informáticos., Steve McConnell , Mc Graw Hill 1998.\r Una explicación de la programación extrema. Aceptar el cambio., Beck, K., Addison-Wesley 1999.\r Large-scale Agile Software Development., Ron Crocker., Addison-Wesley. 2004.\r Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland, Dave Thomas, http://agilemanifesto.org/, 03/Noviembre/2009.\r Scott W. Ambler, http://www.agilemodeling.com, 03/Noviembre/2009.\r Agile Alliance, http://www.agilealliance.com/, 03/Noviembre/2009.'),(18,18,'Plan de Negocios, Stutely, Richard, Pearson Educación 2000.\r El Plan de Negocios en una Página, Horan, Jim, Panorama 2008.\r Guía para la elaboración de un plan de negocios, García, Marisol, SIP 20071338 2008.\r LEY DE SOCIEDADES MERCANTILES CÁMARA DE DIPUTADOS DEL H. CONGRESO DE LA UNIÓN, http://www.diputados.gob.mx/LeyesBiblio/pdf/144.pdf , 28/Octubre/2009.\r PLAN DE NEGOCIOS PARA LA PYME ́s Programa de Formación de Consultores Empresariales, http://www.infomipyme.com/Docs/GT/Offline/inicioempresa/PDPP.htm, 28/Octubre/2009.'),(19,19,'Manual de Referencia Java 2, Herbert Schildt, Mc Graw Hill 2006.\r Java: A Beginner’s Guide 4th Ed. , Herbert Schildt, Mc Graw Hill 2007.\r Aprendiendo Programación Orientada a Objetos en 21 lecciones avanzadas, Sintes Anthony, Pearson 2004.\r Universidad Autónoma de México, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en México, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r José R. Álvarez y Manuel Arias, Ciclo de Vida del software, http://www.ia.uned.es/ia/asignaturas/adms/GuiaDidADMS/node10.html , 1/Noviembre/2009.\r Universidad Católica “Nuestra Señora de la Asunción”, Sistemas Operativos, http://www.dei.uc.edu.py/tai2004-2/14/index.htm , 1 /Noviembre/2009.'),(20,20,'Ingeniería del Software, Sommerville Ian, Pearson Addison Wesley 2005.\r Ingeniería del Software, Pressman Roger S., McGrawHill 2005.\r Calidad de los sistemas informáticos , Piattini Mario G., García Félix O. y Caballero Ismael, Alfaomega Ra-Ma 2007.\r S/A , Mantenimiento de Software, http://es.wikipedia.org/wiki/Mantenimiento_de_software , 29/Octubre/2009.\r Grupo Alarcos , Mantenimiento del Software, http://alarcos.inf-cr.uclm.es/doc/ISOFTWAREI/Tema16.pdf , 29/Octubre/2009.\r Jorge Álvarez, Manual de Soporte Técnico, http://www.mailxmail.com/curso-manual-soporte-tecnico , 29/Octubre/2009.\r S/A, Help Desk, http://es.wikipedia.org/wiki/Help_desk ,29/Octubre/2009.');
/*!40000 ALTER TABLE `bibliografias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cogeneral`
--

DROP TABLE IF EXISTS `cogeneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cogeneral` (
  `id_cog` int unsigned NOT NULL AUTO_INCREMENT,
  `id_asi` int unsigned NOT NULL,
  `con_cog` text NOT NULL,
  `url_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cog`),
  KEY `id_asi` (`id_asi`),
  CONSTRAINT `cogeneral_ibfk_1` FOREIGN KEY (`id_asi`) REFERENCES `asignaturas` (`id_asi`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cogeneral`
--

LOCK TABLES `cogeneral` WRITE;
/*!40000 ALTER TABLE `cogeneral` DISABLE KEYS */;
INSERT INTO `cogeneral` VALUES (1,1,'UNIDAD DE APRENDIZAJE: Administración de proyectos de tecnologías de la información I\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL: Administra Proyectos de Tecnologías de la Información implementando herramientas, técnicas, metodologías y estrategias para asegurar la calidad del producto de software.','./pdf/PROGRAMACIÓN 3º NIVEL/Administración de Proyectos de Tecnologías de la Información.pdf'),(2,2,'UNIDAD DE APRENDIZAJE: Laboratorio de proyectos de tecnologías de la información I\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL:Desarrolla proyectos de software, poniendo en práctica los conocimientos de administración de proyectos de tecnologías de la información y fundamentos y elementos de programación orientada a objetos, en fu nción de las necesidades de la Industria del Software.','./pdf/PROGRAMACIÓN 3º NIVEL/Laboratorio de Proyectos de Tecnologías de la Información I.pdf'),(3,3,'UNIDAD DE APRENDIZAJE: Programación orientada a objetos I\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL: Aplica los fundamentos y elementos del paradigma de programación Orientado a Objetos interpretando modelos conceptuales según el contexto del problemaa través de herramientas de programación.','./pdf/PROGRAMACIÓN 3º NIVEL/Programación Orientada a Objetos.pdf'),(4,4,'UNIDAD DE APRENDIZAJE: Administración de proyectos de tecnologías de la información II\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Integra equipos colaborativos para el desarrollo de software, adquiriendo competencias para la construcción\r  y comercialización de proyectos en función de las necesidades de la industria de software.','./pdf/PROGRAMACIÓN 4º NIVEL/Administración de Proyectos de Tecnologías de la Información.pdf'),(5,5,'UNIDAD DE APRENDIZAJE: Base de datos\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Desarrolla bases de datos normalizadas e implementando políticas de seguridad \r con gestores de bases de datos para la explotación de la información a  través de lenguajes consulta a base de datos.','./pdf/PROGRAMACIÓN 4º NIVEL/Bases de Datos.pdf'),(6,6,'UNIDAD DE APRENDIZAJE: Laboratorio de proyectos de tecnologías de la información II\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL: Desarrollar proyectos de software, poniendo en práctica los conocimientos de: Programación y Servicios Web, Base de datos, Administración de proyectos de tecnologías de la información I y Programación orientada a objetos, en función de las necesidades de la Industria del Software.','./pdf/PROGRAMACIÓN 4º NIVEL/Laboratorio de Proyectos de Tecnologías de la Información II.pdf'),(7,7,'UNIDAD DE APRENDIZAJE: Programación y servicios web\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Cuarto\r COMPETENCIA GENERAL: Aplica elementos, fundamentos y lenguajes de programación Web, a partir de arquitecturas y  tecnologías incorporadas en los Servicios Web.','./pdf/PROGRAMACIÓN 4º NIVEL/Programación y Servicios Web.pdf'),(8,8,'UNIDAD DE APRENDIZAJE: Técnicas de programación personal con calidad\r CARRERA:Técnico en programación\r AREA:Tecnológica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Aplica técnicas para la calidad en el desarrollo de software personal, en  función de metodologías apropiadas y de impacto en la industria de desarrollo de software.','./pdf/PROGRAMACIÓN 4º NIVEL/Técnicas de Programación Personal con Calidad.pdf'),(9,9,'UNIDAD DE APRENDIZAJE: Automatización de Pruebas\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Aplica herramientas de automatización de pruebas de software para desarrollar software de calidad.','./pdf/PROGRAMACIÓN 5º NIVEL/Automatización de Pruebas.pdf'),(10,10,'UNIDAD DE APRENDIZAJE: Desarrollo Humano y Personal\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL:Proyecta una actitud comprometida, con valores y principios humanos y personales para el desarrollo de proyectos de software de impacto social.','./pdf/PROGRAMACIÓN 5º NIVEL/Desarrollo Humano y Personal.pdf'),(11,11,'UNIDAD DE APRENDIZAJE: Introducción a la Ingeniería de Pruebas\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r  COMPETENCIA GENERAL:Incorpora indicadores en la fase de pruebas para determinar  calidad y eficiencia en los códigos de las aplicaciones de software.','./pdf/PROGRAMACIÓN 5º NIVEL/Introducción a la Ingeniería de Pruebas.pdf'),(12,12,'UNIDAD DE APRENDIZAJE: Introducción a los Sistemas Distribuidos\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Desarrolla Sistemas Distribuidos empleando modelos establecidos en\r la interconexión de redes y las tecnologías de la información, con base en protocolos y estándares de la industria del software.','./pdf/PROGRAMACIÓN 5º NIVEL/Introducción a los Sistemas Distribuidos.pdf'),(13,13,'UNIDAD DE APRENDIZAJE: Laboratorio de Proyectos de Tecnologías de la Información III\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Desarrollar proyectos de software, poniendo en práctica los conocimientos teóricos adqueridos en las adignaturas correspondientes al tercer, cuarto y quinto semestre de la Carrera (Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones), en función de las necesidades de la Industria del Software.','./pdf/PROGRAMACIÓN 5º NIVEL/Laboratorio de Proyectos de Tecnologías de la Información III.pdf'),(14,14,'UNIDAD DE APRENDIZAJE: Seguridad Web y Aplicaciones\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Aplica Seguridad a los sistemas de informacion web y aplicaciones, empleando servicios y mecanismos de seguridad establecidos por  las tecnologias de las informacion, con base en los entandares de la indistria del software.','./pdf/PROGRAMACIÓN 5º NIVEL/Seguridad Web y Aplicaciones.pdf'),(15,15,'UNIDAD DE APRENDIZAJE: Ingeniería de Software Básica\r CARRERA: Técnico en programación\r AREA: Tecnológico\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Aplica los principios fundamentales de la Ingeniería de software como indicador de la calidad del software.','./pdf/PROGRAMACIÓN 6º NIVEL/Ingeniería de Software Básica.pdf'),(16,16,'UNIDAD DE APRENDIZAJE: Laboratorio de Proyectos de Tecnologías de la Información IV\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla proyectos de software, poniendo en práctica los conocimientos teóricos adquiridos en las asignaturas correspondientes al tercer, cuarto, quinto, y sexto semestre de la Carrera (Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica), en función de las necesidades de la Industria del Software.','./pdf/PROGRAMACIÓN 6º NIVEL/Laboratorio de Proyectos de Tecnologías de la Información IV.pdf'),(17,17,'UNIDAD DE APRENDIZAJE: Métodos Ágiles de Programación\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Aplica metodologías ágiles y entornos informáticos para la gestión del desarrollo de proyectos de innovación en sistemas de software con calidad.','./pdf/PROGRAMACIÓN 6º NIVEL/Métodos Ágiles de Programación.pdf'),(18,18,'UNIDAD DE APRENDIZAJE: Plan de Negocios\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla Planes de Negocios utilizando las herramientas, metodologías y estrategias que determinen la factibilidad y éxito de proyectos en el mercado de la Industria de Software.','./pdf/PROGRAMACIÓN 6º NIVEL/Plan de Negocios.pdf'),(19,19,'UNIDAD DE APRENDIZAJE: Proyecto Integrador\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla un proyecto con transferencia tecnológica a los diferentes sectores productivos, donde se apliquen los conocimientos adquiridos en las unidades de aprendizaje del plan de estudios de la carrera, beneficiando el desarrollo de la Industria del Software.','./pdf/PROGRAMACIÓN 6º NIVEL/Proyecto Integrador.pdf'),(20,20,'UNIDAD DE APRENDIZAJE: Soporte de Software\r CARRERA: Técnico en programación\r AREA: Tecnológica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Emplea el Soporte de Software en el mantenimiento y administración de las tecnologías de la información, con base en procesos establecidos por la industria del software.','./pdf/PROGRAMACIÓN 6º NIVEL/Soporte de Software.pdf');
/*!40000 ALTER TABLE `cogeneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coparticulares`
--

DROP TABLE IF EXISTS `coparticulares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coparticulares` (
  `id_cop` int unsigned NOT NULL AUTO_INCREMENT,
  `id_asi` int unsigned NOT NULL,
  `nom_cop` varchar(45) NOT NULL,
  `con_cop` text NOT NULL,
  PRIMARY KEY (`id_cop`),
  KEY `nom_cop` (`nom_cop`),
  KEY `id_asi` (`id_asi`),
  CONSTRAINT `coparticulares_ibfk_1` FOREIGN KEY (`id_asi`) REFERENCES `asignaturas` (`id_asi`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coparticulares`
--

LOCK TABLES `coparticulares` WRITE;
/*!40000 ALTER TABLE `coparticulares` DISABLE KEYS */;
INSERT INTO `coparticulares` VALUES (1,1,'1.1','Competencia 1: Aplica los elementos de la planeación estratégica que le permita organizar y dirigir proyectos con calidad entorno a la Industria del Software.\r Competencia 2:Aplica las estrategias y herramientas de planeación de desarrollo de proyectos de software, estimando los factores que intervienen y afectan a las actividades del mismo.\r Competencia 3: Aplica las técnicas y metodologías para llevar a cabo las actividades que conforman a las etapas de desarrollo de proyectos de software.\r Competencia 4:Presenta los resultados del proyecto de software para su evaluación.'),(5,2,'2.1','Competencia 1: Realiza la planeación estratégica y de desarrollo, del proyecto de software con base a los requerimientos presentados.\r Competencia 2: Realiza la ejecución del proyecto de desarrollo de Software en función de la planeación proyectada.\r Competencia 3: Realiza el plan de mejora continua del proyecto de software con base a su ejecución.\r Competencia 4: Sustenta el impacto que tiene el proyecto del software para la Industria del Software.'),(9,3,'3.1','Competencia 1: Resuelve algoritmos directamente traducibles a lenguajes de programación utilizando las técnicas de Programación Estructurada u Orientada a Objetos.\r Competencia 2: Soluciona problemas informáticos mediante la programación de los conceptos fundamentales de la orientación a objetos.\r Competencia 3: Aplica los conceptos asociados a estructuras de datos y control, interfaces, manejo de errores e interfaz gráfica en el desarrollo de aplicaciones de software.\r Competencia 4: Interpreta modelos estructurales y de comportamiento de software con base en las especificaciones UML.'),(13,4,'4.1','Competencia 1: Construye el plan a seguir para el desarrollo de proyectos de software, con una actitud emprendedora.\rCompetencia 2: Dirige el desarrollo de proyectos con calidad, a través de una actitud responsable y comprometida  hacia tr abajo colaborativo.\rCompetencia 3: Aplica técnicas y herramientas de desarrollo y control de proyectos, observando su cumplimiento en cuanto a calidad y entrega oportuna.\rCompetencia 4: Implementa estrategias decomunicación mercadológica para la presentación del software desarrollado.'),(17,5,'5.1','Competencia 1: Diseña Bases de Datos normalizadas aplicando el modelado de datos Entidad-Relación y Relacional para generar el esquema conceptual y lógico.\rCompetencia 2: Utiliza gestores y lenguajes de bases de datos para la gestión y manipulación de la información de las bases datos.\r Competencia 3: Aplica protección a las bases de datos para su confidencialidad, disponibilidad e integridad. '),(20,6,'6.1','Competencia 1: Realiza la planeación estratégica del proyecto de desarrollo de Software, con base en los requerimientos presentados.\r Competencia 2: Realiza la ejecución del proyecto de desarrollo de Software en función de la planeación proyectada.\r Competencia 3: Implementa el plan de mejora continua del proyecto de software con base a su ejecución.\r Competencia 4: Sustenta el impacto que tiene el proyecto del software para la Industria del Software.'),(24,7,'7.1','Competencia 1: Explica los protocolos de comunicación que intervienen en la arquitectura de Internet para el desarrollo Web.\r Competencia 2: Aplica diferentes herramientas y lenguajes de programación Web para el desarrollo de aplicaciones.\r Competencia 3: Contextualiza los protocolos y estándares de los servicios Web.\r Competencia 4: Aplica los conceptos fundamentales asociados a los diferentes niveles de seguridad de los Servicios Web'),(28,8,'8.1','Competencia 1: Explica las actividades y los estándares de la administración de la calidad del software haciendo uso de técnicas de programación personal.\r Competencia 2: Aplica métodos de administración de tiempos de la calidad del software conforme a las actividades clave del proceso para el aseguramiento, la planeación y el control de la calidad de un producto de software.\r Competencia 3: Evalúa la calidad del producto de software a través de la elaboración de los planes del proyecto que presentan los valores estimados y reales, del tamaño del programa y el tiempo de desarrollo, así como la previsión de los defectos usando métodos que los identifiquen.'),(31,9,'9.1','Competencia 1: Reconoce los elementos y fundamentos de la automatización de pruebas de software.\r Competencia 2: Construye los artefactos y entregables para la automatización de pruebas de software.\r Competencia 3: Implementa el ciclo de vida de la automatización de pruebas de software.\r Competencia 4: Aplica los conceptos y técnicas de la automatización de pruebas de software de acuerdo a estrategias previamente establecidas.'),(35,10,'10.1','Competencia 1: Evalúa su actuación en relación al trabajo personal y al contexto social.\r Competencia 2: Reconoce los componentes de la autoestima que promueven la calidad de vida y fortalecen el trabajo colaborativo.\r Competencia 3: Asume los atributos personales y de formación profesional que orientan eldesarrollo de proyectos de calidad.\r Competencia 4: Optimiza su rendimiento profesional a través de métodos y procesos de desarrollo humano y personal.'),(39,11,'11.1','Competencia 1: Contextualiza la evolución de la Ingeniería de Pruebas como disciplina y métodos de pruebas de software para lograr la calidad y eficiencia del producto de software.\r Competencia particular 2: Aplica fundamentos de la administración de errores y defectos para asegurar la calidad del desarrollo del software.\r Competencia particular 3: Implementa el proceso de pruebas de software para asegurar la calidad del producto con los aspectos organizacionales y los perfiles de personal adecuados para pruebas de software.\r Competencia particular 4: Analiza el ciclo de vida de las pruebas de software en el desarrollo del mismo, con los recursos de hardware y software con respecto a la plataforma relacionada a las pruebas de software.'),(43,12,'12.1','Competencia 1: Contextualiza los conceptos que caracterizan a los sistemas distribuidos.\r Competencia particular 2: Modela sistemas distribuidos utilizando redes e interconexión de redes.\r Competencia particular 3: Emplea la comunicación entre procesos para la transferencia de información con base en protocolos estándares.\r Competencia particular 4: Estructura sistemas distribuidos con base en redes, tecnología web e información ubicada en plataformas y entornos de programación distintos.'),(47,13,'13.1','Competencia 1: Planea estratégicamente el proyecto de software basándose en conceptos de Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones, determinando los requerimientos presentados.\r Competencia particular 2: Programa el proyecto de software basado en los conceptos de Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones, usando herramientas de desarrollo de software adecuadas.\r Competencia particular 3: Realiza el plan de mejora continua del proyecto de software en base en su ejecución para obtener la calidad esperada.\r Competencia particular 4: Analiza el producto final del proyecto de Software, en función de los resultados e impacto para la Industria del Software.'),(51,14,'14.1','Competencia 1: Contextualiza los conceptos que caracterizan a la seguridad en sistemas web y aplicaciones.\r Competencia 2: Emplea algoritmos criptográficos y protocolos fundamentales en aplicaciones de seguridad en redes.\r Competencia 3: Examina el uso de algoritmos criptográficos y protocolos de seguridad para proporcionar seguridad a las redes e Internet.\r Competencia 4: Emplea herramientas de seguridad en la protección de sistemas de la información.'),(52,15,'15.1','Competencia 1: Contextualiza la evolución de la Ingeniería de Software como disciplina.\rCompetencia 2: Contextualiza los modelos, procesos, actividades,acciones y tareas en sistemas y aplicaciones basados en web.\rCompetencia 3: Administra la planificación, el seguimiento, control de las actividades, los recursos humanos y materiales que intervienen en el desarrollo del software con calidad.'),(53,16,'16.1','Competencia 1: Planea estratégicamente el proyecto de software basándose en conceptos de Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica, determinando los requerimientos presentados.\rCompetencia 2: Programa el proyecto de software basado en los conceptos de Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica, usando herramientas de desarrollo de software adecuadas.\rCompetencia 3: Realiza el plan de mejora continua del proyecto de software en base en su ejecución para obtener la calidad esperada.\rCompetencia particular 4: Analiza el producto final del proyecto de Software, en función de los resultados e impacto para la Industria del Software.'),(54,17,'17.1','Competencia 1: Identifica elementos básicos, técnicas, procesos, valores y características de las diversas metodologías ágiles logrando la vinculación de estas con problemas reales.\rCompetencia 2: Aplica los elementos, técnicas, procesos y artefactos de las metodologías ágiles de mayor impacto en la industria del software para el desarrollo de proyectos de software\rCompetencia 3: Describe las ventajas y desventajas de las metodologías ágiles y alternas identificando la conveniencia de utilización de estas de acuerdo a las características de la problemática a resolver.'),(55,18,'18.1','Competencia 1: Identifica el marco jurídico legal de una organización para la operatividad de actividades comerciales.\rCompetencia 2: Define la estructura formal de la empresa, delimitando funciones y responsabilidades que oriente el éxito del negocio.\rCompetencia 3: Aplica técnicas, herramientas y estrategias mercadológicas que orienten la mejor toma de decisiones en la introducción y desarrollo del producto en el mercado de la industria de software.\rCompetencia 4: Determina la viabilidad y factibilidad del negocio a través del análisis y pronóstico financiero.'),(56,19,'19.1','Competencia 1: Planea estratégicamente el proyecto de software basándose en conceptos de Administración de Proyectos informáticos Adquiridos en la carrera, determinando los requerimientos presentados.\rCompetencia 2: Programa el proyecto de software basado en los conceptos de los paradigmas y tecnologías adquiridos en la carrera, usando herramientas de desarrollo de software adecuadas.\rCompetencia 3: Realiza el plan de mejora continua del proyecto de software en base a su ejecución, para obtener la calidad esperada.\rCompetencia 4: Analiza el producto final del proyecto de software, en función de los resultados e impacto para la industria del software.'),(57,20,'20.1','Competencia 1: Contextualiza los conceptos que caracterizan al soporte de software en las tecnologías de la información.\rCompetencia 2: Justifica la reingeniería de software en el mantenimiento de las tecnologías de la información.\rCompetencia 3: Emplea la gestión de configuraciones con base en herramientas utilizadas en las tecnologías de la información.\rCompetencia 4: Planea el soporte técnico en la administración de las tecnologías de la información.');
/*!40000 ALTER TABLE `coparticulares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id_esp` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_esp` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_esp`),
  KEY `nom_esp` (`nom_esp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (2,'Técnico en Programación'),(1,'Tronco Común');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extra` (
  `id_ext` int unsigned NOT NULL AUTO_INCREMENT,
  `ur1_ext` varchar(255) DEFAULT NULL,
  `ur2_ext` varchar(255) DEFAULT NULL,
  `id_asi` int unsigned NOT NULL,
  PRIMARY KEY (`id_ext`),
  KEY `ur1_ext` (`ur1_ext`),
  KEY `ur2_ext` (`ur2_ext`),
  KEY `id_asi` (`id_asi`) /*!80000 INVISIBLE */,
  CONSTRAINT `extra_ibfk_1` FOREIGN KEY (`id_asi`) REFERENCES `asignaturas` (`id_asi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
INSERT INTO `extra` VALUES (1,'./pdf/Extra/admin_de_info1.pdf','./pdf/Extra/cuestionario_admin.pdf',1),(3,'./pdf/Extra/POO.pdf','./pdf/Extra/Preguntas_de_examen_para_la_certificacion.pdf',3),(7,'./pdf/Extra/cuestionario_servicios_web.pdf','./pdf/Extra/servicios_web.pdf',7),(10,'./pdf/Extra/CUESTIONARIO_PERSONAL.pdf','./pdf/Extra/desarrollo_personal.pdf',10),(18,'./pdf/Extra/plan_de_negocios.pdf','./pdf/Extra/Cuestionario-Plan-de-Negocios.pdf',18);
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id_gru` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_gru` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_gru`),
  KEY `nom_gru` (`nom_gru`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (14,'3IM7'),(15,'3IM8'),(16,'3IM9'),(1,'3IV7'),(2,'3IV8'),(3,'3IV9'),(20,'4IM10'),(17,'4IM7'),(18,'4IM8'),(19,'4IM9'),(7,'4IV10'),(4,'4IV7'),(5,'4IV8'),(6,'4IV9'),(21,'5IM7'),(22,'5IM8'),(23,'5IM9'),(8,'5IV7'),(9,'5IV8'),(10,'5IV9'),(24,'6IM7'),(25,'6IM8'),(26,'6IM9'),(11,'6IV7'),(12,'6IV8'),(13,'6IV9');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raps`
--

DROP TABLE IF EXISTS `raps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raps` (
  `id_rap` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_cop` varchar(45) NOT NULL,
  `nom_rap` varchar(45) DEFAULT NULL,
  `con_rap` text NOT NULL,
  PRIMARY KEY (`id_rap`),
  KEY `nom_ram` (`nom_rap`) /*!80000 INVISIBLE */,
  KEY `nom_cop` (`nom_cop`),
  CONSTRAINT `raps_ibfk_1` FOREIGN KEY (`nom_cop`) REFERENCES `coparticulares` (`nom_cop`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raps`
--

LOCK TABLES `raps` WRITE;
/*!40000 ALTER TABLE `raps` DISABLE KEYS */;
INSERT INTO `raps` VALUES (1,'1.1','1.1.1','RAP 1.1: Contextualiza las condiciones de desarrollo de la Industria del Software que existen actualmente en el país.\r RAP 1.2: Plantea las acciones de la organización, a través de los elementos de la planeación estratégica.\r RAP 2.1: Emplea las estrategias de desarrollo de proyectos de software, tomando en cuenta los elementos que lo afectan.\r RAP 2.2: Aplica las herramientas de planeación y de control de las actividades en el desarrollo del software.\r RAP 3.1: Contextualiza los diferentes modelos de procesos del software que determinan las etapas del desarrollo del proyecto.\r RAP 3.2: Aplica las tareas y técnicas a efectuar para la obtención de requerimientos.\r RAP 3.3: Aplica los diferentes tipos de modelados para la representación de los requisitos de los datos\r RAP 3.4: Aplicar los diferentes tipos de modelados para la representación del diseño del software.\r RAP 3.5: Describe las pruebas que se utilizan para detectar defectos en el software.\r RAP 3.6: Analiza las herramientas y plataformas tecnológicas adecuadas para el óptimo funcionamiento del proyecto.\r RAP 4.1: Prepara la presentación de del proyecto, utilizando comunicación escrita, oral, gráfica y de imagen acorde al lugar y al usuario final.\r RAP 4.2: Realiza planes de mejora continua para alcanzar la calidad del proyecto, a partir de las debilidades identificadas.'),(13,'2.1','2.1.1','RAP 1.1: Realiza la planeación estratégica para lograr los objetivos y metas de la organización.\r RAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\r RAP 2.1: Modela el proyecto de software con base al análisis de los requerimientos de acuerdo a las técnicas y estrategias de administración de proyectos de tecnologías de la información, bases de datos y servicios web.\r RAP 2.2: Programa el proyecto de software basándose en los conceptos de Programación y servicios Web, de Bases de datos con herramientas de desarrollo de software actuales.\r RAP 3.1: Implementa el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\r RAP 4.1: Presenta el proyecto de software en función de los resultados para la industria del software.'),(19,'3.1','3.1.1','RAP 1.1: Contextualiza los conceptos y elementos básicos de los principales paradigmas de programación.\r RAP 1.2: Identifica los elementos de los lenguajes de programación para ser utilizados como entornos de desarrollo de software aplicado.\r RAP 1.3: Identifica los elementos básicos que conforman el código de programación para la gestión de aplicaciones de software.\r RAP 1.4: Utiliza sentencias de control de flujo de programa aplicando lógica deductiva en el desarrollo de aplicaciones de software.\r RAP 1.5: Emplea la asignación y el manejo de memoria en la implementación de arreglos en el desarrollo de aplicaciones de software.\r RAP 2.1: Aplica los conceptos de clase, objeto e identidad en la solución de problemas.\r RAP 2.2: Aplica los principios de abstracción, encapsulamiento, herencia y polimorfismo en la solución de problemas en un entorno real.\r RAP 2.3: Aplica la Persistencia como una forma de almacenamiento y administración de la información.\r RAP 3.1: Aplica los conceptos asociados a  estructuras de datos mediante el paradigma orientado objetos en la solución de problemas de aplicaciones de software.\r RAP 3.2: Aplica los conceptos de interfaces en la solución de problemas de aplicaciones de software.\r RAP 3.3: Aplica los conceptos y elementos del manejo de errores en el código generado para la solución de problemas de software.\r RAP 3.4: Aplica archivos como una forma de almacenamiento y administración de información en la solución de problemas de desarrollo de software.\r RAP 3.5: Analiza la forma de organizar los recursos de la memoria aplicando conceptos y elementos de hilos en la solución de problemas de desarrollo de software.\r RAP 3.6: Aplica elementos gráficos y manejo de eventos para la creación de interfaz de usuario en la solución de problemas de desarrollo de software.\r RAP 4.1: Analiza los elementos y fundamentos de UML para los modelos estructurales y de comportamiento.\r RAP 4.2: Integra las especificaciones de UML en los modelos estructurales y de comportamiento.'),(35,'4.1','4.1.1','RAP 1.1: Realiza la planeación estratégica que guiará el desarrollo del proyecto.\r RAP 1.2: Justifica la planeación y análisis del proyecto de desarrollo de software a realizar.\r RAP 2.1: Participa activamente en el desarrollo del proyecto como integrante de un equipo colaborativo.\r RAP 2.2: Comparte el conflicto como un valor para implementar y aplicar estrategias de mejora continua.\r RAP 3.1: Desarrolla el sistema de información comparando el alcance obtenido de acuerdo a lo planeado, y a las técnicas y herramientas utilizadas.\r RAP 3.2: Conforma documentación trascendental que guíen el seguimiento y control de las actividades de desarrollo del proyecto.\r RAP 3.3: Integra los informes ejecutivo y extenso del proyecto de software desarrollado, para su presentación y evaluación.\r RAP 4.1: Desarrollar el marketing del proyecto para su comercialización y negociación.\r RAP 4.2: Implementa el plan para la presentación formal del proyecto.\r RAP 4.3: Realiza la autoevaluación de la presentación del proyecto para la propuesta de la mejora continua.'),(45,'5.1','5.1.1','RAP 1.1: Contextualiza los conceptos fundamentales de Bases de Datos.\r RAP 1.2: Contextualiza los diferentes Modelos de datos utilizados para el diseño de Bases de Datos.\r RAP 1.3: Modela bases de datos normalizadas aplicando las metodologías de desarrollo del esquema conceptual y lógico.\r RAP 2.1: Utiliza gestores de bases de datos para la administración de las bases de datos.\r RAP 2.2: Utilizan lenguajes de acceso a bases de datos para la manipulación de la información contenida en las Bases de Datos.\r RAP 3.1: Aplica protección al acceso de los datos para mantener su privacidad.\r RAP 3.2: Aplica transacciones para asegurar la autenticidad de la información para asegurar su confiabilidad'),(52,'6.1','6.1.1','RAP 1.1: Realiza la planeación estratégica para lograr los objetivos y metas de la organización.\r RAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\r RAP 2.1: Modela el proyecto de software con base al análisis de los requerimientos de acuerdo a las técnicas y estrategias de administración de proyectos de tecnologías de la información, bases de datos y servicios web.\r RAP 2.2: Programa el proyecto de software basándose en los conceptos de Programación y servicios Web, de Bases de datos con herramientas de desarrollo de software actuales.\r RAP 3.1: Detecta las demoras de las actividades del proyecto de software por medio del seguimiento de las mismas.\r RAP 3.2: Realiza el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\r RAP 4.1: Evalúa la factibilidad del proyecto de software.\r RAP 4.2: Presenta el funcionamiento e impacto del proyecto de software para la Industria del Software.'),(60,'7.1','7.1.1','RAP 1.1: Describe los elementos que conforman el modelo Cliente-Servidor y su operación en función del modelo de arquitectura.\r RAP 1.2: Contextualiza los protocolos para las comunicaciones de los ordenadores conectados a Internet.\r RAP 2.1: Aplica lenguajes de marcas para diseñar y procesar documentos en forma de hipertexto.\r RAP 2.2: Aplica elementos de multimedia para la presentación de la información.\r RAP 2.3: Aplica los controles Web para la creación de formularios.\r RAP 2.4: Aplica lenguajes de programación para la creación de páginas dinámicas y explotación de la información de Bases de Datos.\r RAP 3.1: Explica la importancia, los roles, estándares y protocolos de los servicios Web.\r RAP 3.2: Contextualiza los protocolos que se llevan a cabo en el intercambio de datos dentro de un conjunto de servicios Web.\r RAP 4.1: Explica los conceptos básicos de seguridad en los servicios Web.\r RAP 4.2: Aplica los niveles de seguridad básicos en los Servicios Web.'),(70,'8.1','8.1.1','RAP 1.1: Explica la importancia de los estándares en el proceso de la administración de la calidad.\r RAP 1.2: Describe el proceso de la administración de la calidad y las actividades clave del proceso.\r RAP 2.1: Aplica métodos de gestión y control de tiempos basados en el Proceso Software Personal para controlar el rendimiento del trabajo.\r RAP 2.2: Aplica métodos de planificación de periodos y productos que intervienen en el desarrollo de software.\r RAP 2.3: Planifica el producto de software a partir de las medidas del tamaño del mismo.\r RAP 3.1: Elabora planes de proyectos para gestionar la revisión y el control del tiempo y el tamaño estimados en relación con el de desarrollo real.\r RAP 3.2: Aplica métodos para identificar defectos en el desarrollo de un producto de software, a través de su descripción con base en criterios de análisis.\r RAP 3.3: Elabora estrategias para la previsión de defectos en función de mejorar los planes de desarrollo de un producto de software.\r RAP 3.4: Analiza el coste relativo que genera la remoción de los defectos y su impacto sobre el coste resultante del soporte al producto de software.\r RAP 3.5: Aplica las estrategias para calcular y controlar medidas que evalúan la calidad del trabajo de desarrollo del software.'),(80,'9.1','9.1.1','RAP 1.1: Describe los fundamentos, etapas y requerimientos del desarrollo de pruebas de software\r RAP 1.2: Analiza el impacto y los beneficios que tienen las pruebas automatizadas en el ciclo de desarrollo de software\r RAP 1.3: Reconoce la importancia de la disciplina y las normas principales que rigen el proceso de pruebas automatizadas de software.\r RAP 1.4: Describe los roles y organización que desempeña el personal que realiza la automatización de pruebas de software.\r RAP 2.1: Desarrolla planes, procedimientos y guiones de pruebas automatizadas tomando en cuenta los requerimientos.\r RAP 2.2: Desarrolla un documento para el registro de incidencias que se presentan durante las pruebas de desarrollo de software.\r RAP 2.3: Elabora manuales de pruebas del software, analizando los elementos que se requieren para llevarlos a cabo.\r RAP 3.1: Analiza los elementos que se requieren para llevar a cabo la planeación de pruebas automatizadas.\r RAP 3.2: Administra adecuadamente los requerimientos de prueba del software tomando en cuenta su ciclo de vida.\r RAP 3.3: Evalúa el análisis y diseño a pruebas automatizadas de acuerdo a métricas establecidas.\r RAP 4.1: Aplicar diversos tipos de pruebas automatizadas dentro del ciclo de desarrollo de software\r RAP 4.2: Aplica procesos de calidad para evaluar el desempeño de calidad y eficiencia del producto de software.'),(92,'10.1','10.1.1','RAP 1.1: Reconoce la estructura de valores que integran su personalidad.\r RAP 1.2: Mejora su calidad de comunicación en sus relaciones interpersonales.\r RAP 1.3: Identifica los factores del contexto social que orientan la personalidad.\r RAP 2.1: Evalúa su nivel de autoestima en base a las capacidades que integra la eficiencia personal y el respeto a uno mismo.\r RAP 2.2: Aplica estrategias para mejorar la autoestima, y que a su vezfortalecerá el trabajo colaborativopara el desarrollo de proyectos.\r RAP 3.1: Analiza las condiciones trascendentales para el trabajo colaborativo, en función del desarrollo personal y profesional.\r RAP 3.2: Aplica herramientas de dirección de personal que favorecen el trabajo profesional.\r RAP 4.1: Dirige las emociones y sentimientos al arte de desarrollar proyectos de software.\r RAP 4.2: Asume el cambio como el proceso de mejora para el desarrollo humano, personal y del trabajo colaborativo.'),(101,'11.1','11.1.1','RAP 1.1: Explica la importancia de las prácticas de la ingeniería de software.\r RAP 1.2: Describe los objetivos y principios de la calidad mediante el proceso de prueba de software.\r RAP 2.1: Identifica los elementos de los defectos, errores y fallas de software para planificar el proceso de administración de errores\r RAP 2.2: Aplica procesos de calidad para evaluar el desempeño de calidad y eficiencia del producto de software.\r RAP 3.1: Define conceptos básicos, características y tipos de pruebas de software.\r RAP 3.2: Analiza los métodos de diseño de casos de prueba.\r RAP 3.3: Aplica las Pruebas de Unidad, integración, sistema, validación y regresión para evaluar el desempeño de calidad y eficiencia del producto de software de acuerdo a los elementos de organización y personal organizado para realizar la prueba al producto de software.\r RAP 4.1: Identifica los aspectos de plataformas asociados a las pruebas de software, así como los elementos esenciales de la arquitectura de componentes.\r RAP 4.2: Define los fundamentos y etapas del ciclo de vida de pruebas del desarrollo del software.'),(110,'12.1','12.1.1','RAP 1.1: Describe los elementos básicos que componen un sistema distribuido.\r RAP 1.2 Contextualiza el concepto de sistema distribuido basado en modelos establecidos.\r RAP 2.1. Esquematiza los tipos de redes utilizadas por los sistemas distribuidos.\r RAP 2.2 Explica los fundamentos de las redes.\r RAP 2.3: Describe los protocolos utilizados en internet.\r RAP 2.4: Explica los fundamentos de las redes.\r RAP 3.1 Utiliza API ́para la comunicación entre procesos.\r RAP 3.2 Utiliza la representación externa de datos y empaquetados en la comunicación entre procesos.\r RAP 3.3 Utiliza la representación externa de datos y empaquetados en la comunicación entre procesos.\r RAP 3.4: Describe la comunicación de grupo en términos de multidifusión\r RAP 4.1: Programa sistema distribuido basado en objetos remoto\r RAP 4.2: Programa sistema distribuido basado en servicios web.'),(122,'13.1','13.1.1','RAP 1.1: Elabora la planeación del proyecto de software basándose en conceptos de Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones, determinando los requerimientos presentados.\r RAP 1.2 Realiza el plan estratégico del proyecto de software con base a requerimientos especificados.\r RAP 2.1 Diseña el proyecto de software basado en los conceptos de Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones, usando herramientas de diseño de software adecuadas.\r RAP 2.2 Programa el proyecto de software basado en los conceptos de Introducción a los sistemas distribuidos, Introducción a la Ingeniería de Pruebas y Seguridad web y aplicaciones, usando herramientas de desarrollo de software adecuadas.\r RAP 3.1 Elaborar el plan de mejora continua del proyecto de software.\r RAP 3.2 Realiza el plan de mejora continua del proyecto de software en base en su ejecución para obtener la calidad esperada.\r RAP 4.1 Analiza el producto final del proyecto de Software.\r RAP 4.2 Evalúa del proyecto en función de los resultados e impacto para la Industria del Software.'),(130,'14.1','14.1.1','RAP 1.1: Describe los elementos que se relacionan con la seguridad en las tecnologías de la información.\r RAP 1.2 Contextualiza el concepto de servicio de seguridad con base en estándares establecidos.\r RAP 2.1. Aplica técnicas de cifrado simétrico a través de lenguajes de programación.\r RAP 2.2 Emplea autentificación y criptografía de clave pública para implementar seguridad.\r RAP 3.1: Describe las especificaciones de autentificación en la seguridad de redes.\r RAP 3.2: Describe la seguridad usada en las aplicaciones de correo electrónico a partir de estándares.\r RAP 3.3: Esquematiza el modelo de seguridad IP.\r RAP 3.4: Contextualiza el modelo de seguridad Web a través de estándares.\r RAP 3.5: Describe el sistema de seguridad basado en la gestión de redes.\r RAP 4.1 Describe enfoques de prevención y detección de intrusos en las tecnologías de la información.\r RAP 4.2 Aplica mecanismos de seguridad contra las amenazas de software dañino.\r RAP 4.3 Describe el sistema de seguridad basado en el uso de cortafuegos.'),(131,'15.1','15.1.1','RAP 1.1: Explica la importancia de la Ingeniería de Software para el desarrollo de software.\rRAP 1.2: Explica la diferencia entre Ingeniería de software e ingeniería de sistemas, así como las propiedades, y organización de los Sistemas de Información.\rRAP 2.1: Contextualiza los principios, conceptos, actividades para el desarrollo de sistemas y aplicaciones basados en web con calidad.\rRAP 2.2: Describe la formulación y planeación de la ingeniería web.\rRAP 2.3: Presenta el modelado de análisis para aplicaciones web.\rRAP 2.4: Presenta un modelado de diseño para aplicaciones web.\rRAP 2.5: Aplica pruebas para WebApps como indicadores de calidad.\rRAP 3.1: Describe la gestión de personal con calidad.\rRAP 3.2: Aplica estimación de costes del software.\rRAP 3.3: Contextualiza la mejora de procesos en el software.'),(132,'16.1','16.1.1','RAP 1.1: Elabora la planeación del proyecto de software basándose en conceptos de Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica, determinando los requerimientos presentados.\rRAP 1.2: Realiza el plan estratégico del proyecto de software con base a requerimientos especificados.\rRAP 2.1: Diseña el proyecto de software basado en los conceptos de Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica, usando herramientas de diseño de software adecuadas.\rRAP 2.2: Programa el proyecto de software basado en los conceptos de Métodos Ágiles de Programación, Soporte de Software, Ingeniería de Software Básica, usando herramientas de desarrollo de software adecuadas.\rRAP 3.1: Elabora el plan de mejora continua del proyecto de software.\rRAP 3.2: Realiza el plan de mejora continua del proyecto de software en base en su ejecución para obtener la calidad esperada.\rRAP 4.1: Analiza el producto final del proyecto de Software.\rRAP 4.2: Evalúa el proyecto en función de los resultados e impacto para la Industria del Software.'),(133,'17.1','17.1.1','RAP 1.1: Define capacidades y limitaciones de las metodologías tradicionales en el desarrollo de productos de software.\rRAP 1.2: Analiza la fundamentación de modelos de proceso de aplicación del paradigma ágil de desarrollo de software.\rRAP 1.3: Identifica filosofía, conceptos, notación, técnicas, procesos, valores y principios del paradigma ágil de desarrollo de Software.\rRAP 2.1: Identifica los elementos de las metodologías ágiles de mayor impacto en la industria del software para el desarrollo de proyectos.\rRAP 2.2: Desarrolla aplicaciones de software aplicando los elementos de las metodologías ágiles de mayor impacto en la industria del software.\rRAP 3.1: Identifica la problemática inherente a cada metodología ágil, así como la aplicación de sus procesos.\rRAP 3.2: Analiza las posibilidades que ofrecen otras herramientas basadas en la metodología ágil y los entornos de desarrollo de software actuales.'),(134,'18.1','18.1.1','RAP 1.1: Diferencia las características y condiciones de las sociedades mercantiles por las cuales se puede constituir una empresa.\rRAP 1.2: Identifica los trámites de apertura y de operación de una empresa para desarrollar actos de comercio.\rRAP 2.1: Diseña la estructura orgánica del negocio, optimizando los recursos humanos a través de la evaluación de perfiles a integrar.\rRAP 2.2: Admite que el proceso de selección y contratación de personal es el medio para la obtención de personal idóneo que guiara el éxito del negocio.\rRAP 3.1: Atribuye los estudios de mercado como el proceso trascendental para el éxito del negocio.\rRAP 3.2: Describe los atributos del producto considerando las expectativas del mercado.\rRAP 3.3: Integra estrategias de comunicación mercadológica para fortalecer la introducción y venta del producto.\rRAP 4.1: Realiza análisis financiero para la determinar el costo-beneficio del producto.\rRAP 4.2: Identifica los elementos y herramientas a aplicar para la elaboración del estado de situación financiera del negocio.'),(135,'19.1','19.1.1','RAP 1.1: Realiza la planeación estratégica para lograr los objetivos y metas de la organización.\rRAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\rRAP 2.1: Modela el proyecto de software con base al análisis de los requerimientos de acuerdo a las técnicas y estrategias de administración de proyectos de software.\rRAP 2.2: Desarrolla el Software correspondiente al proyecto, cubriendo los requerimientos solicitados utilizando los conocimientos de Programación Orientada a objetos, Programación y servicios Web, Base de Datos, Sistemas distribuidos, Ing. De Pruebas, Seguridad Web, Métodos Agiles, Soporte de software y bases de datos Ingeniería de Software.\rRAP 3.1: Detecta las demoras de las actividades del proyecto de software por medio del seguimiento de las mismas.\rRAP 3.2: Realiza el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\rRAP 4.1: Evalúa la factibilidad del proyecto de software.\rRAP 4.2: Presenta el funcionamiento e impacto del proyecto de software para la industria del software'),(136,'20.1','20.1.1','RAP 1.1: Describe los elementos básicos que componen el soporte de software.\rRAP 1.2: Contextualiza el concepto de mantenimiento de software basado en situaciones establecidas.\rRAP 2.1: Establece el proceso de la reingeniería de software en el soporte de software.\rRAP 2.2: Establece el proceso de la ingeniería inversa en el soporte de software.\rRAP 3.1: Planea la gestión del cambio en el proceso de gestión de configuraciones.\rRAP 3.2: Describe la gestión de configuración del software en las tecnologías de la información.\rRAP 3.3: Describe la gestión de configuraciones para la ingeniería web.\rRAP 4.1: Describe la administración del soporte técnico con base en modelos establecidos.\rRAP 4.2: Contextualiza la gestión del conocimiento en la administración de las tecnologías de la información.');
/*!40000 ALTER TABLE `raps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_rol` varchar(28) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `nom_rol` (`nom_rol`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Alumno'),(2,'Administrador'),(3,'Maestro');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestres`
--

DROP TABLE IF EXISTS `semestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestres` (
  `id_sem` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_sem` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_sem`),
  KEY `nom_sem` (`nom_sem`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestres`
--

LOCK TABLES `semestres` WRITE;
/*!40000 ALTER TABLE `semestres` DISABLE KEYS */;
INSERT INTO `semestres` VALUES (2,'Cuarto Semestre'),(3,'Quinto Semestre'),(4,'Sexto Semestre'),(1,'Tercer Semestre');
/*!40000 ALTER TABLE `semestres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexos` (
  `id_sex` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_sex` varchar(28) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_sex`),
  KEY `nom_sex` (`nom_sex`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (2,'Femenino'),(1,'Masculino');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situaciones`
--

DROP TABLE IF EXISTS `situaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situaciones` (
  `bol_usu` int unsigned NOT NULL,
  `id_gru` int unsigned DEFAULT NULL,
  `id_tur` int unsigned DEFAULT NULL,
  `id_esp` int unsigned DEFAULT NULL,
  `id_sem` int unsigned DEFAULT NULL,
  PRIMARY KEY (`bol_usu`),
  KEY `id_gru` (`id_gru`),
  KEY `id_esp` (`id_esp`) /*!80000 INVISIBLE */,
  KEY `id_tur` (`id_tur`) /*!80000 INVISIBLE */,
  KEY `id_sem` (`id_sem`) /*!80000 INVISIBLE */,
  CONSTRAINT `situaciones_ibfk_1` FOREIGN KEY (`id_gru`) REFERENCES `grupos` (`id_gru`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `situaciones_ibfk_2` FOREIGN KEY (`id_esp`) REFERENCES `especialidades` (`id_esp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `situaciones_ibfk_3` FOREIGN KEY (`id_tur`) REFERENCES `turnos` (`id_tur`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `situaciones_ibfk_4` FOREIGN KEY (`bol_usu`) REFERENCES `usuarios` (`bol_usu`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `situaciones_ibfk_5` FOREIGN KEY (`id_sem`) REFERENCES `semestres` (`id_sem`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situaciones`
--

LOCK TABLES `situaciones` WRITE;
/*!40000 ALTER TABLE `situaciones` DISABLE KEYS */;
INSERT INTO `situaciones` VALUES (1111111111,13,2,2,4),(1231232313,14,1,1,1),(2021090043,4,2,1,2),(2021090083,11,2,2,4),(2021090116,14,1,1,1),(2021090613,4,2,2,2),(2021091516,14,1,1,1);
/*!40000 ALTER TABLE `situaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id_tur` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_tur` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_tur`),
  KEY `nom_tur` (`nom_tur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'Matutino'),(2,'Vespertino');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `bol_usu` int unsigned NOT NULL,
  `nom_usu` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `app_usu` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `apm_usu` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `id_sex` int unsigned DEFAULT NULL,
  `fna_usu` date DEFAULT NULL,
  `ema_usu` varchar(124) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `pas_usu` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `cre_usu` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `act_usu` int unsigned NOT NULL DEFAULT '1',
  `id_rol` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bol_usu`),
  UNIQUE KEY `ema_usu` (`ema_usu`) /*!80000 INVISIBLE */,
  KEY `id_sex` (`id_sex`),
  KEY `id_rol` (`id_rol`),
  KEY `bol_usu` (`bol_usu`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_sex`) REFERENCES `sexos` (`id_sex`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1111111111,'Example','Example','Example',2,'2022-06-06','example@gmail.com','1234','2022-06-13 00:06:12',1,2),(1231232313,'asddas','dasasd','dasdasasd',1,'2022-06-01','examp3le@gmail.com','1','2022-06-13 02:40:01',1,1),(2021090043,'Edwin Uriel','Astudillo','Perez',1,'2005-03-21','urigod@gmail.com','1234','2022-05-30 13:24:59',1,1),(2021090083,'Ian','Ayala','Gonzalez',1,'2004-10-13','ayala.gonzalez.ian@gmail.com','99310675','2022-05-30 13:18:36',1,3),(2021090116,'Jaret','Garcia','Gomez',1,'2005-06-11','jaret.gg@outlook.com','227430','2022-06-12 16:46:43',1,3),(2021090613,'Axel','Gomez','Herrera',1,'2004-05-25','gomez.herrera.axel.25@gmail.com','hola1234','2022-05-31 05:51:22',1,2),(2021091516,'Jaime','Minor','Gomez',1,'1990-03-31','jaime123@gmail.com','soyjaime123','2022-06-12 17:32:36',1,2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-12 22:34:47
