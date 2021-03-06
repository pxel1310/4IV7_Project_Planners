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
INSERT INTO `asignaturas` VALUES (1,'Administraci??n de proyectos de tecnolog??as de la informaci??n I',2,1),(2,'Laboratorio de proyectos de tecnologias de la informacion I',2,1),(3,'Programacion Orientada a Objetos',2,1),(4,'Administraci??n de Proyectos de Tecnolog??as de la Informaci??n II',2,2),(5,'Bases de Datos',2,2),(6,'Laboratorio de Proyectos de Tecnolog??as de la Informaci??n II',2,2),(7,'Programaci??n y Servicios Web',2,2),(8,'T??cnicas de Programaci??n Personal con Calidad',2,2),(9,'Automatizaci??n de Pruebas',2,3),(10,'Desarrollo Humano y Personal',2,3),(11,'Introducci??n a la Ingenier??a de Pruebas',2,3),(12,'Introducci??n a los Sistemas Distribuidos',2,3),(13,'Laboratorio de Proyectos de Tecnolog??as de la Informaci??n III',2,3),(14,'Seguridad Web y Aplicaciones',2,3),(15,'Soporte de Software',2,4),(16,'Laboratorio de Proyectos de Tecnolog??as de la Informaci??n IV',2,4),(17,'M??todos ??giles de Programaci??n',2,4),(18,'Plan de Negocios',2,4),(19,'Proyecto Integrador',2,4),(20,'Soporte de Software',2,4);
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
INSERT INTO `bibliografias` VALUES (1,1,' Ingenier??a del Software. Un enfoque Pr??ctico, Pressman, Roger McGrawHill, 2005.\r Desarrollo y Gesti??n de Proyectos Inform??ticos, McConnell, Steve, McGrawHill, 1997.\r Aprendiendo UML en 24 Horas, Schmuller, Joseph, Prentice Hall, 2001.\r Universidad Aut??noma de M??xico, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en M??xico, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.p df, 1/Noviembre/2009.\r Consejo Superior de Administraci??n Electr??nica, Espa??a, Metodolog??a de Planificaci??n, Desarrollo y Mantenimiento de sistemas de informaci??n, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009'),(2,2,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r  HTML/XML. Pott Oliver. Boixareu|\r Creaci??n de sitios Web con ASP.NET Amundsen/ Litwin. Prentice Hall.\r Universidad Aut??noma de M??xico, Estudio para Determinar la  Cantidad  yCalidad de Recursos Humanos  Necesariospara  el Desarrollo  de  la Industria deSoftware en M??xico, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r Consejo Superior de Administraci??n Electr??nica, Espa??a, Metodolog??a de Planificaci??n, Desarrollo y Mantenimiento de sistemas de informaci??n, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009'),(3,3,' Manual de Referencia Java 2, Herbert Schildt, Mc Graw Hill 2006.\r  Java: A Beginner???s Guide 4th Ed., Herbert Schildt, Mc Graw Hill 2007.\r  Aprendiendo Programaci??n Orientada a Objetos en 21 lecciones avanzadas, Sintes Anthony, Pearson 2004.\r Instituto Tecnol??gico de Apizaco, Programaci??n Orientada a Objetos, http://www.itapizaco.edu.mx/paginas/Poo/Tutorial/introduccion.html, 31/Octubre/2009.\r Hermanos Carrero, Java en Castellano, http://www.programacion.com/java/tutoriales/J2SE/, 31/Octubre/2009'),(4,4,' Administraci??n exitosa de proyectos Jack Gido / James P. ClementsCENGAGE,2007\r Administraci??n Profesional de Proyectos Yamal ChamounMcGrawHill, 2002\r Ingenier??a de Software Una Perspectiva Orientada a Objetos Braude, Eric J.RA-MA, 2003.\r LA PLANEACI??N ESTRATAEGICA Crece Negocios, Powered by WordPress, mayo 2009, http://www.crecenegocios.com/la-planeacion-estrategica/, 28/Octubre/ 2009.\r TALLER REDES Y TRABAJO COLABORATIVO ENTRE PROFESORES Barbara de Benito Universidad Islas Baleares, EDUTEC 99, http://gte.uib.es/articulo/EDUTEC99.pdf, 28/Octubre/2009.'),(5,5,' Fundamentos de Bases de Datos Silberschatz, Abraham / Korth / SudarshanMc Graw Hill, 2006\r Fundamentos y modelos de Bases de Datos Adoraci??n de Miguel / Piattini, MarioAlfaOmega RA-MA, 1999\r Dise??o de Bases de Datos Relacionales Adoraci??n de Miguel / Piattini, MarioAlfaOmega RA-MA, 1999\r Ing.Lourdes Arl??n Campoy Medrano,Tutorial de Bases de Datos 1, http://sistemas.itlp.edu.mx/tutoriales/basedat1/, 28/Octubre/2009\r Mercedes Marqu??s,Apuntes de Ficheros y Bases de Datos,http://www3.uji.es/~mmarques/f47/apun,28 /Octubre/2009'),(6,6,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r   Desarrollo de soluciones XML. Sturm Jack. Mc Graw Hill\r  Manual de referencia HTML. Powell A.Thomas Mc Graw Hill\r Microsoft, Microsoft SQL server 2008, http://www.microsoft.com/latam/sqlserver/default.aspx, 28 /Octubre/2009\r MYSQL, MYSQL Hispano, http://www.mysql-hispano.org/, 28 /Octubre/2009'),(7,7,' TCP/IP. E. Comer Douglas, Stevens Davi L. Prentice Hall\r  HTML/XML. Pott Oliver. Boixareu|\r Desarrollo de soluciones XML. Sturm Jack. Mc Graw Hill\r Fernando Berzal, Internet,http://elvex.ugr.es, 29/Octubre/2009\r Rub??n Alvarez, Tutoriales web, http://www.desarrolloweb.com29/Octubre/2009'),(8,8,' Introducci??n al Proceso Software Personal S. Humphrey WattsAddison Wesley 1998\r  Ingenier??a de SoftwareRoger S. PressmanMc Graw Hill  2006\r Ingenier??a de SoftwareSommerville IanAddison Wesley 2002\r Macario Polo Usaola, PSP, http://www.inf-cr.uclm.es/www/mpolo/asig/0304/psp.pdf, 28/Octubre/2009\r LCC. Marcela Garc??a Alonso, M??tricas y Procesos PSP, www.utim.edu.mx/~mgarcia/DOCUMENTO/CSW/CSW02.ppt, 28/Octubre/2009'),(9,9,' Ingenier??a del Software un enfoque pr??ctico. S. Pressman Roger Mc Graw Hill\r  Ingenier??a de Software. Sommerville Ian. Adisson Wesley.\r Ingenier??a de Software Teor??a y Pr??ctica. X Shari Lawrence Pleeger Prentice may\r Escuela de Ingenier??a de Sistemas y Computaci??n. Presentaci??n proceso de pruebas de softwarehttp://eisc.univalle.edu.co/cursos/web/material/750092M/80/DS2-Clase19-Pruebas2.pdf29/Octubre/2009\r Rubiano, Freddy Sanjuan, Ernesto Garc??a, Jaime Flores,Carolina Universidad Alejandro de Humboldt http://www.slideshare.net/Rubiano/automatizacion-de-pruebas-de-software-124596929/Octubre/2009'),(10,10,' Autoestima y salud X Gonz??lez, L:J: Font M??xico, 1998\r  Teor??as de la Personalidad X Fadiman, James Har??a 1979\r  Viviendo con Autoestima X Alberti, Robert PAX M??xico 1999\r  Los seis pilares de la autoestima X Branden, Nathaniel Paid??s 2008\r Rubiano, Freddy Sanjuan, Ernesto Garc??a, Jaime Flores,Carolina Universidad Alejandro de Humboldt http://www.slideshare.net/Rubiano/automatizacion-de-pruebas-de-software-124596929/Octubre/2009\r AUTOESTIMA Francisco Masso http://es.salut.conecta.it/pdf/injuve/IIguianorexia _4.pdf Unidad 2, Tema 1 y 2 28/Octubre/2009'),(11,11,' Ingenier??a del Software un enfoque pr??ctico.  S. Pressman Roger Mc Graw Hill   Ingenier??a de Software.\r Sommerville Ian. Adisson Wesley.   Ingenier??a de Software Teor??a y Pr??ctica.\r Shari Lawrence Pleeger Prentice may   An??lisis y dise??o detallado de Aplicaciones Inform??ticas de Gesti??n.\r Beatriz P??rez Centro de Ensayos de software http://www.ces.com.uy/documentos/Metodologi a%20de%20Trabajo%20Testing%20Funcional. PDF, 29 /Octubre/2009\r Gustavo V??zquez Centro de Ensayos de software http://www.ces.com.uy/documentos/Herramient as%20de%20Generacion%20de%20Carga.PD F, 29 /Octubre/2009'),(12,12,' Sistemas Distribuidos Conceptos y Dise??o  Coulouris George Dollimore Jean Kindberg Pearson Addison Wesley 2001\r Sistemas Distribuidos Principios y Paradigmas  Tanenbaum Andrew S. Van Steen Maarten Pearson Prentice Hall 2008 \r Ingenier??a del Software  Sommerville Ian Pearson Addison Wesley 2005\r Omar Hurtado Jara, Sistemas Distribuidos,  http://www.monografias.com/trabajos16/sistemas-  distribuidos/sistemas-distribuidos.shtml , 29/Octubre/2009\r S/A, Computaci??n Distribuida, http://es.wikipedia.org/wiki/Sistemas_Distribuidos, 29/Octubre/2009'),(13,13,' TCP/IP.  E. Comer Douglas, Stevens Davi L. Prentice Hall HTML/XML.  Pott Oliver. Boixareu\r Creaci??n de sitios Web con ASP.NET  Amundsen/ Litwin. Prentice Hall   Desarrollo de soluciones XML.\r Sturm Jack. Mc Graw Hill   Manual de referencia HTML. Powell A.Thomas Mc Graw Hill\r Usr.code, Ciclo de Vida del Software, http://www.cepeu.edu.py/LIBROS_ELECTRON ICOS_3/lpcu097%20-%2001.pdf , 1/Noviembre/2009\r Jos?? R. ??lvarez y Manuel Arias, Ciclo de Vida del software, http://www.ia.uned.es/ia/asignaturas/adms/Gui aDidADMS/node10.html , 1/Noviembre/2009'),(14,14,' Introducci??n al Proceso Software Personal S. Humphrey WattsAddison Wesley 1998\r  Ingenier??a de SoftwareRoger S. PressmanMc Graw Hill  2006\r Ingenier??a de SoftwareSommerville IanAddison Wesley 2002\r S/A , Seguridad Inform??tica, http://es.wikipedia.org/wiki/Seguridad_inform%C3 %A1tica , 29/Octubre/2009\r M??ximo Merlat , Seguridad Inform??tica, http://www.monografias.com/trabajos/hackers/hac kers.shtml , 29/Octubre/2009'),(15,15,'Ingenier??a del Software un enfoque pr??ctico, S. Pressman Roger, Mc Graw Hill 2005.\r Ingenier??a de Software, Sommerville Ian. , Adisson Wesley. 2005.\r Ingenier??a de Software Teor??a y Pr??ctica, Lawrence Pleeger Shari., Prentice Hall.\r Fundada por Jimmy Wales y Larry Sanger, http://es.wikipedia.org/wiki/Ingenier%C3%ADa_de_software, 29/Octubre/2009.\r Solange Gal??z 1ro. de Analista de Sistemas, C. Del U. Entre R??os, Argentina, http://www.monografias.com/trabajos5/inso/inso.s html, 29/Octubre/2009.'),(16,16,'HTML/XML., Pott Oliver. , Boixareu.\r Creaci??n de sitios Web con ASP.NET, Amundsen Litwin., Prentice Hall.\r La Biblia HTML., Charte Ojeda Fco., Anaya Multimedia.\r Programaci??n con XML., Ricardo Eito Brun., Anaya Multimedia.\r Universidad Aut??noma de M??xico, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en M??xico, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r Consejo Superior de Administraci??n Electr??nica, Espa??a, Metodolog??a de Planificaci??n, Desarrollo y Mantenimiento de sistemas de informaci??n, http://www.csi.map.es/csi/metrica3/, 1/Noviembre/2009.'),(17,17,'Desarrollo y gesti??n de proyectos inform??ticos., Steve McConnell , Mc Graw Hill 1998.\r Una explicaci??n de la programaci??n extrema. Aceptar el cambio., Beck, K., Addison-Wesley 1999.\r Large-scale Agile Software Development., Ron Crocker., Addison-Wesley. 2004.\r Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland, Dave Thomas, http://agilemanifesto.org/, 03/Noviembre/2009.\r Scott W. Ambler, http://www.agilemodeling.com, 03/Noviembre/2009.\r Agile Alliance, http://www.agilealliance.com/, 03/Noviembre/2009.'),(18,18,'Plan de Negocios, Stutely, Richard, Pearson Educaci??n 2000.\r El Plan de Negocios en una P??gina, Horan, Jim, Panorama 2008.\r Gu??a para la elaboraci??n de un plan de negocios, Garc??a, Marisol, SIP 20071338 2008.\r LEY DE SOCIEDADES MERCANTILES C??MARA DE DIPUTADOS DEL H. CONGRESO DE LA UNI??N, http://www.diputados.gob.mx/LeyesBiblio/pdf/144.pdf , 28/Octubre/2009.\r PLAN DE NEGOCIOS PARA LA PYME ??s Programa de Formaci??n de Consultores Empresariales, http://www.infomipyme.com/Docs/GT/Offline/inicioempresa/PDPP.htm, 28/Octubre/2009.'),(19,19,'Manual de Referencia Java 2, Herbert Schildt, Mc Graw Hill 2006.\r Java: A Beginner???s Guide 4th Ed. , Herbert Schildt, Mc Graw Hill 2007.\r Aprendiendo Programaci??n Orientada a Objetos en 21 lecciones avanzadas, Sintes Anthony, Pearson 2004.\r Universidad Aut??noma de M??xico, Estudio para Determinar la Cantidad y Calidad de Recursos Humanos Necesarios para el Desarrollo de la Industria de Software en M??xico, http://www.software.net.mx/NR/rdonlyres/F79A511D-A45A-4E0A-9F86-49B3B48F528D/1143/resumen_investigacion.pdf, 1/Noviembre/2009.\r Jos?? R. ??lvarez y Manuel Arias, Ciclo de Vida del software, http://www.ia.uned.es/ia/asignaturas/adms/GuiaDidADMS/node10.html , 1/Noviembre/2009.\r Universidad Cat??lica ???Nuestra Se??ora de la Asunci??n???, Sistemas Operativos, http://www.dei.uc.edu.py/tai2004-2/14/index.htm , 1 /Noviembre/2009.'),(20,20,'Ingenier??a del Software, Sommerville Ian, Pearson Addison Wesley 2005.\r Ingenier??a del Software, Pressman Roger S., McGrawHill 2005.\r Calidad de los sistemas inform??ticos , Piattini Mario G., Garc??a F??lix O. y Caballero Ismael, Alfaomega Ra-Ma 2007.\r S/A , Mantenimiento de Software, http://es.wikipedia.org/wiki/Mantenimiento_de_software , 29/Octubre/2009.\r Grupo Alarcos , Mantenimiento del Software, http://alarcos.inf-cr.uclm.es/doc/ISOFTWAREI/Tema16.pdf , 29/Octubre/2009.\r Jorge ??lvarez, Manual de Soporte T??cnico, http://www.mailxmail.com/curso-manual-soporte-tecnico , 29/Octubre/2009.\r S/A, Help Desk, http://es.wikipedia.org/wiki/Help_desk ,29/Octubre/2009.');
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
INSERT INTO `cogeneral` VALUES (1,1,'UNIDAD DE APRENDIZAJE: Administraci??n de proyectos de tecnolog??as de la informaci??n I\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL: Administra Proyectos de Tecnolog??as de la Informaci??n implementando herramientas, t??cnicas, metodolog??as y estrategias para asegurar la calidad del producto de software.','./pdf/PROGRAMACI??N 3?? NIVEL/Administraci??n de Proyectos de Tecnolog??as de la Informaci??n.pdf'),(2,2,'UNIDAD DE APRENDIZAJE: Laboratorio de proyectos de tecnolog??as de la informaci??n I\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL:Desarrolla proyectos de software, poniendo en pr??ctica los conocimientos de administraci??n de proyectos de tecnolog??as de la informaci??n y fundamentos y elementos de programaci??n orientada a objetos, en fu nci??n de las necesidades de la Industria del Software.','./pdf/PROGRAMACI??N 3?? NIVEL/Laboratorio de Proyectos de Tecnolog??as de la Informaci??n I.pdf'),(3,3,'UNIDAD DE APRENDIZAJE: Programaci??n orientada a objetos I\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Tercero\r COMPETENCIA GENERAL: Aplica los fundamentos y elementos del paradigma de programaci??n Orientado a Objetos interpretando modelos conceptuales seg??n el contexto del problemaa trav??s de herramientas de programaci??n.','./pdf/PROGRAMACI??N 3?? NIVEL/Programaci??n Orientada a Objetos.pdf'),(4,4,'UNIDAD DE APRENDIZAJE: Administraci??n de proyectos de tecnolog??as de la informaci??n II\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Integra equipos colaborativos para el desarrollo de software, adquiriendo competencias para la construcci??n\r  y comercializaci??n de proyectos en funci??n de las necesidades de la industria de software.','./pdf/PROGRAMACI??N 4?? NIVEL/Administraci??n de Proyectos de Tecnolog??as de la Informaci??n.pdf'),(5,5,'UNIDAD DE APRENDIZAJE: Base de datos\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Desarrolla bases de datos normalizadas e implementando pol??ticas de seguridad \r con gestores de bases de datos para la explotaci??n de la informaci??n a  trav??s de lenguajes consulta a base de datos.','./pdf/PROGRAMACI??N 4?? NIVEL/Bases de Datos.pdf'),(6,6,'UNIDAD DE APRENDIZAJE: Laboratorio de proyectos de tecnolog??as de la informaci??n II\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL: Desarrollar proyectos de software, poniendo en pr??ctica los conocimientos de: Programaci??n y Servicios Web, Base de datos, Administraci??n de proyectos de tecnolog??as de la informaci??n I y Programaci??n orientada a objetos, en funci??n de las necesidades de la Industria del Software.','./pdf/PROGRAMACI??N 4?? NIVEL/Laboratorio de Proyectos de Tecnolog??as de la Informaci??n II.pdf'),(7,7,'UNIDAD DE APRENDIZAJE: Programaci??n y servicios web\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Cuarto\r COMPETENCIA GENERAL: Aplica elementos, fundamentos y lenguajes de programaci??n Web, a partir de arquitecturas y  tecnolog??as incorporadas en los Servicios Web.','./pdf/PROGRAMACI??N 4?? NIVEL/Programaci??n y Servicios Web.pdf'),(8,8,'UNIDAD DE APRENDIZAJE: T??cnicas de programaci??n personal con calidad\r CARRERA:T??cnico en programaci??n\r AREA:Tecnol??gica\r SEMESTRE:Cuarto\r COMPETENCIA GENERAL:Aplica t??cnicas para la calidad en el desarrollo de software personal, en  funci??n de metodolog??as apropiadas y de impacto en la industria de desarrollo de software.','./pdf/PROGRAMACI??N 4?? NIVEL/T??cnicas de Programaci??n Personal con Calidad.pdf'),(9,9,'UNIDAD DE APRENDIZAJE: Automatizaci??n de Pruebas\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Aplica herramientas de automatizaci??n de pruebas de software para desarrollar software de calidad.','./pdf/PROGRAMACI??N 5?? NIVEL/Automatizaci??n de Pruebas.pdf'),(10,10,'UNIDAD DE APRENDIZAJE: Desarrollo Humano y Personal\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL:Proyecta una actitud comprometida, con valores y principios humanos y personales para el desarrollo de proyectos de software de impacto social.','./pdf/PROGRAMACI??N 5?? NIVEL/Desarrollo Humano y Personal.pdf'),(11,11,'UNIDAD DE APRENDIZAJE: Introducci??n a la Ingenier??a de Pruebas\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r  COMPETENCIA GENERAL:Incorpora indicadores en la fase de pruebas para determinar  calidad y eficiencia en los c??digos de las aplicaciones de software.','./pdf/PROGRAMACI??N 5?? NIVEL/Introducci??n a la Ingenier??a de Pruebas.pdf'),(12,12,'UNIDAD DE APRENDIZAJE: Introducci??n a los Sistemas Distribuidos\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Desarrolla Sistemas Distribuidos empleando modelos establecidos en\r la interconexi??n de redes y las tecnolog??as de la informaci??n, con base en protocolos y est??ndares de la industria del software.','./pdf/PROGRAMACI??N 5?? NIVEL/Introducci??n a los Sistemas Distribuidos.pdf'),(13,13,'UNIDAD DE APRENDIZAJE: Laboratorio de Proyectos de Tecnolog??as de la Informaci??n III\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Desarrollar proyectos de software, poniendo en pr??ctica los conocimientos te??ricos adqueridos en las adignaturas correspondientes al tercer, cuarto y quinto semestre de la Carrera (Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones), en funci??n de las necesidades de la Industria del Software.','./pdf/PROGRAMACI??N 5?? NIVEL/Laboratorio de Proyectos de Tecnolog??as de la Informaci??n III.pdf'),(14,14,'UNIDAD DE APRENDIZAJE: Seguridad Web y Aplicaciones\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Quinto\r COMPETENCIA GENERAL: Aplica Seguridad a los sistemas de informacion web y aplicaciones, empleando servicios y mecanismos de seguridad establecidos por  las tecnologias de las informacion, con base en los entandares de la indistria del software.','./pdf/PROGRAMACI??N 5?? NIVEL/Seguridad Web y Aplicaciones.pdf'),(15,15,'UNIDAD DE APRENDIZAJE: Ingenier??a de Software B??sica\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gico\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Aplica los principios fundamentales de la Ingenier??a de software como indicador de la calidad del software.','./pdf/PROGRAMACI??N 6?? NIVEL/Ingenier??a de Software B??sica.pdf'),(16,16,'UNIDAD DE APRENDIZAJE: Laboratorio de Proyectos de Tecnolog??as de la Informaci??n IV\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla proyectos de software, poniendo en pr??ctica los conocimientos te??ricos adquiridos en las asignaturas correspondientes al tercer, cuarto, quinto, y sexto semestre de la Carrera (M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica), en funci??n de las necesidades de la Industria del Software.','./pdf/PROGRAMACI??N 6?? NIVEL/Laboratorio de Proyectos de Tecnolog??as de la Informaci??n IV.pdf'),(17,17,'UNIDAD DE APRENDIZAJE: M??todos ??giles de Programaci??n\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Aplica metodolog??as ??giles y entornos inform??ticos para la gesti??n del desarrollo de proyectos de innovaci??n en sistemas de software con calidad.','./pdf/PROGRAMACI??N 6?? NIVEL/M??todos ??giles de Programaci??n.pdf'),(18,18,'UNIDAD DE APRENDIZAJE: Plan de Negocios\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla Planes de Negocios utilizando las herramientas, metodolog??as y estrategias que determinen la factibilidad y ??xito de proyectos en el mercado de la Industria de Software.','./pdf/PROGRAMACI??N 6?? NIVEL/Plan de Negocios.pdf'),(19,19,'UNIDAD DE APRENDIZAJE: Proyecto Integrador\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Desarrolla un proyecto con transferencia tecnol??gica a los diferentes sectores productivos, donde se apliquen los conocimientos adquiridos en las unidades de aprendizaje del plan de estudios de la carrera, beneficiando el desarrollo de la Industria del Software.','./pdf/PROGRAMACI??N 6?? NIVEL/Proyecto Integrador.pdf'),(20,20,'UNIDAD DE APRENDIZAJE: Soporte de Software\r CARRERA: T??cnico en programaci??n\r AREA: Tecnol??gica\r SEMESTRE: Sexto\r COMPETENCIA GENERAL: Emplea el Soporte de Software en el mantenimiento y administraci??n de las tecnolog??as de la informaci??n, con base en procesos establecidos por la industria del software.','./pdf/PROGRAMACI??N 6?? NIVEL/Soporte de Software.pdf');
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
INSERT INTO `coparticulares` VALUES (1,1,'1.1','Competencia 1: Aplica los elementos de la planeaci??n estrat??gica que le permita organizar y dirigir proyectos con calidad entorno a la Industria del Software.\r Competencia 2:Aplica las estrategias y herramientas de planeaci??n de desarrollo de proyectos de software, estimando los factores que intervienen y afectan a las actividades del mismo.\r Competencia 3: Aplica las t??cnicas y metodolog??as para llevar a cabo las actividades que conforman a las etapas de desarrollo de proyectos de software.\r Competencia 4:Presenta los resultados del proyecto de software para su evaluaci??n.'),(5,2,'2.1','Competencia 1: Realiza la planeaci??n estrat??gica y de desarrollo, del proyecto de software con base a los requerimientos presentados.\r Competencia 2: Realiza la ejecuci??n del proyecto de desarrollo de Software en funci??n de la planeaci??n proyectada.\r Competencia 3: Realiza el plan de mejora continua del proyecto de software con base a su ejecuci??n.\r Competencia 4: Sustenta el impacto que tiene el proyecto del software para la Industria del Software.'),(9,3,'3.1','Competencia 1: Resuelve algoritmos directamente traducibles a lenguajes de programaci??n utilizando las t??cnicas de Programaci??n Estructurada u Orientada a Objetos.\r Competencia 2: Soluciona problemas inform??ticos mediante la programaci??n de los conceptos fundamentales de la orientaci??n a objetos.\r Competencia 3: Aplica los conceptos asociados a estructuras de datos y control, interfaces, manejo de errores e interfaz gr??fica en el desarrollo de aplicaciones de software.\r Competencia 4: Interpreta modelos estructurales y de comportamiento de software con base en las especificaciones UML.'),(13,4,'4.1','Competencia 1: Construye el plan a seguir para el desarrollo de proyectos de software, con una actitud emprendedora.\rCompetencia 2: Dirige el desarrollo de proyectos con calidad, a trav??s de una actitud responsable y comprometida  hacia tr abajo colaborativo.\rCompetencia 3: Aplica t??cnicas y herramientas de desarrollo y control de proyectos, observando su cumplimiento en cuanto a calidad y entrega oportuna.\rCompetencia 4: Implementa estrategias decomunicaci??n mercadol??gica para la presentaci??n del software desarrollado.'),(17,5,'5.1','Competencia 1: Dise??a Bases de Datos normalizadas aplicando el modelado de datos Entidad-Relaci??n y Relacional para generar el esquema conceptual y l??gico.\rCompetencia 2: Utiliza gestores y lenguajes de bases de datos para la gesti??n y manipulaci??n de la informaci??n de las bases datos.\r Competencia 3: Aplica protecci??n a las bases de datos para su confidencialidad, disponibilidad e integridad. '),(20,6,'6.1','Competencia 1: Realiza la planeaci??n estrat??gica del proyecto de desarrollo de Software, con base en los requerimientos presentados.\r Competencia 2: Realiza la ejecuci??n del proyecto de desarrollo de Software en funci??n de la planeaci??n proyectada.\r Competencia 3: Implementa el plan de mejora continua del proyecto de software con base a su ejecuci??n.\r Competencia 4: Sustenta el impacto que tiene el proyecto del software para la Industria del Software.'),(24,7,'7.1','Competencia 1: Explica los protocolos de comunicaci??n que intervienen en la arquitectura de Internet para el desarrollo Web.\r Competencia 2: Aplica diferentes herramientas y lenguajes de programaci??n Web para el desarrollo de aplicaciones.\r Competencia 3: Contextualiza los protocolos y est??ndares de los servicios Web.\r Competencia 4: Aplica los conceptos fundamentales asociados a los diferentes niveles de seguridad de los Servicios Web'),(28,8,'8.1','Competencia 1: Explica las actividades y los est??ndares de la administraci??n de la calidad del software haciendo uso de t??cnicas de programaci??n personal.\r Competencia 2: Aplica m??todos de administraci??n de tiempos de la calidad del software conforme a las actividades clave del proceso para el aseguramiento, la planeaci??n y el control de la calidad de un producto de software.\r Competencia 3: Eval??a la calidad del producto de software a trav??s de la elaboraci??n de los planes del proyecto que presentan los valores estimados y reales, del tama??o del programa y el tiempo de desarrollo, as?? como la previsi??n de los defectos usando m??todos que los identifiquen.'),(31,9,'9.1','Competencia 1: Reconoce los elementos y fundamentos de la automatizaci??n de pruebas de software.\r Competencia 2: Construye los artefactos y entregables para la automatizaci??n de pruebas de software.\r Competencia 3: Implementa el ciclo de vida de la automatizaci??n de pruebas de software.\r Competencia 4: Aplica los conceptos y t??cnicas de la automatizaci??n de pruebas de software de acuerdo a estrategias previamente establecidas.'),(35,10,'10.1','Competencia 1: Eval??a su actuaci??n en relaci??n al trabajo personal y al contexto social.\r Competencia 2: Reconoce los componentes de la autoestima que promueven la calidad de vida y fortalecen el trabajo colaborativo.\r Competencia 3: Asume los atributos personales y de formaci??n profesional que orientan eldesarrollo de proyectos de calidad.\r Competencia 4: Optimiza su rendimiento profesional a trav??s de m??todos y procesos de desarrollo humano y personal.'),(39,11,'11.1','Competencia 1: Contextualiza la evoluci??n de la Ingenier??a de Pruebas como disciplina y m??todos de pruebas de software para lograr la calidad y eficiencia del producto de software.\r Competencia particular 2: Aplica fundamentos de la administraci??n de errores y defectos para asegurar la calidad del desarrollo del software.\r Competencia particular 3: Implementa el proceso de pruebas de software para asegurar la calidad del producto con los aspectos organizacionales y los perfiles de personal adecuados para pruebas de software.\r Competencia particular 4: Analiza el ciclo de vida de las pruebas de software en el desarrollo del mismo, con los recursos de hardware y software con respecto a la plataforma relacionada a las pruebas de software.'),(43,12,'12.1','Competencia 1: Contextualiza los conceptos que caracterizan a los sistemas distribuidos.\r Competencia particular 2: Modela sistemas distribuidos utilizando redes e interconexi??n de redes.\r Competencia particular 3: Emplea la comunicaci??n entre procesos para la transferencia de informaci??n con base en protocolos est??ndares.\r Competencia particular 4: Estructura sistemas distribuidos con base en redes, tecnolog??a web e informaci??n ubicada en plataformas y entornos de programaci??n distintos.'),(47,13,'13.1','Competencia 1: Planea estrat??gicamente el proyecto de software bas??ndose en conceptos de Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones, determinando los requerimientos presentados.\r Competencia particular 2: Programa el proyecto de software basado en los conceptos de Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones, usando herramientas de desarrollo de software adecuadas.\r Competencia particular 3: Realiza el plan de mejora continua del proyecto de software en base en su ejecuci??n para obtener la calidad esperada.\r Competencia particular 4: Analiza el producto final del proyecto de Software, en funci??n de los resultados e impacto para la Industria del Software.'),(51,14,'14.1','Competencia 1: Contextualiza los conceptos que caracterizan a la seguridad en sistemas web y aplicaciones.\r Competencia 2: Emplea algoritmos criptogr??ficos y protocolos fundamentales en aplicaciones de seguridad en redes.\r Competencia 3: Examina el uso de algoritmos criptogr??ficos y protocolos de seguridad para proporcionar seguridad a las redes e Internet.\r Competencia 4: Emplea herramientas de seguridad en la protecci??n de sistemas de la informaci??n.'),(52,15,'15.1','Competencia 1: Contextualiza la evoluci??n de la Ingenier??a de Software como disciplina.\rCompetencia 2: Contextualiza los modelos, procesos, actividades,acciones y tareas en sistemas y aplicaciones basados en web.\rCompetencia 3: Administra la planificaci??n, el seguimiento, control de las actividades, los recursos humanos y materiales que intervienen en el desarrollo del software con calidad.'),(53,16,'16.1','Competencia 1: Planea estrat??gicamente el proyecto de software bas??ndose en conceptos de M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica, determinando los requerimientos presentados.\rCompetencia 2: Programa el proyecto de software basado en los conceptos de M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica, usando herramientas de desarrollo de software adecuadas.\rCompetencia 3: Realiza el plan de mejora continua del proyecto de software en base en su ejecuci??n para obtener la calidad esperada.\rCompetencia particular 4: Analiza el producto final del proyecto de Software, en funci??n de los resultados e impacto para la Industria del Software.'),(54,17,'17.1','Competencia 1: Identifica elementos b??sicos, t??cnicas, procesos, valores y caracter??sticas de las diversas metodolog??as ??giles logrando la vinculaci??n de estas con problemas reales.\rCompetencia 2: Aplica los elementos, t??cnicas, procesos y artefactos de las metodolog??as ??giles de mayor impacto en la industria del software para el desarrollo de proyectos de software\rCompetencia 3: Describe las ventajas y desventajas de las metodolog??as ??giles y alternas identificando la conveniencia de utilizaci??n de estas de acuerdo a las caracter??sticas de la problem??tica a resolver.'),(55,18,'18.1','Competencia 1: Identifica el marco jur??dico legal de una organizaci??n para la operatividad de actividades comerciales.\rCompetencia 2: Define la estructura formal de la empresa, delimitando funciones y responsabilidades que oriente el ??xito del negocio.\rCompetencia 3: Aplica t??cnicas, herramientas y estrategias mercadol??gicas que orienten la mejor toma de decisiones en la introducci??n y desarrollo del producto en el mercado de la industria de software.\rCompetencia 4: Determina la viabilidad y factibilidad del negocio a trav??s del an??lisis y pron??stico financiero.'),(56,19,'19.1','Competencia 1: Planea estrat??gicamente el proyecto de software bas??ndose en conceptos de Administraci??n de Proyectos inform??ticos Adquiridos en la carrera, determinando los requerimientos presentados.\rCompetencia 2: Programa el proyecto de software basado en los conceptos de los paradigmas y tecnolog??as adquiridos en la carrera, usando herramientas de desarrollo de software adecuadas.\rCompetencia 3: Realiza el plan de mejora continua del proyecto de software en base a su ejecuci??n, para obtener la calidad esperada.\rCompetencia 4: Analiza el producto final del proyecto de software, en funci??n de los resultados e impacto para la industria del software.'),(57,20,'20.1','Competencia 1: Contextualiza los conceptos que caracterizan al soporte de software en las tecnolog??as de la informaci??n.\rCompetencia 2: Justifica la reingenier??a de software en el mantenimiento de las tecnolog??as de la informaci??n.\rCompetencia 3: Emplea la gesti??n de configuraciones con base en herramientas utilizadas en las tecnolog??as de la informaci??n.\rCompetencia 4: Planea el soporte t??cnico en la administraci??n de las tecnolog??as de la informaci??n.');
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
INSERT INTO `especialidades` VALUES (2,'T??cnico en Programaci??n'),(1,'Tronco Com??n');
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
INSERT INTO `raps` VALUES (1,'1.1','1.1.1','RAP 1.1: Contextualiza las condiciones de desarrollo de la Industria del Software que existen actualmente en el pa??s.\r RAP 1.2: Plantea las acciones de la organizaci??n, a trav??s de los elementos de la planeaci??n estrat??gica.\r RAP 2.1: Emplea las estrategias de desarrollo de proyectos de software, tomando en cuenta los elementos que lo afectan.\r RAP 2.2: Aplica las herramientas de planeaci??n y de control de las actividades en el desarrollo del software.\r RAP 3.1: Contextualiza los diferentes modelos de procesos del software que determinan las etapas del desarrollo del proyecto.\r RAP 3.2: Aplica las tareas y t??cnicas a efectuar para la obtenci??n de requerimientos.\r RAP 3.3: Aplica los diferentes tipos de modelados para la representaci??n de los requisitos de los datos\r RAP 3.4: Aplicar los diferentes tipos de modelados para la representaci??n del dise??o del software.\r RAP 3.5: Describe las pruebas que se utilizan para detectar defectos en el software.\r RAP 3.6: Analiza las herramientas y plataformas tecnol??gicas adecuadas para el ??ptimo funcionamiento del proyecto.\r RAP 4.1: Prepara la presentaci??n de del proyecto, utilizando comunicaci??n escrita, oral, gr??fica y de imagen acorde al lugar y al usuario final.\r RAP 4.2: Realiza planes de mejora continua para alcanzar la calidad del proyecto, a partir de las debilidades identificadas.'),(13,'2.1','2.1.1','RAP 1.1: Realiza la planeaci??n estrat??gica para lograr los objetivos y metas de la organizaci??n.\r RAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\r RAP 2.1: Modela el proyecto de software con base al an??lisis de los requerimientos de acuerdo a las t??cnicas y estrategias de administraci??n de proyectos de tecnolog??as de la informaci??n, bases de datos y servicios web.\r RAP 2.2: Programa el proyecto de software bas??ndose en los conceptos de Programaci??n y servicios Web, de Bases de datos con herramientas de desarrollo de software actuales.\r RAP 3.1: Implementa el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\r RAP 4.1: Presenta el proyecto de software en funci??n de los resultados para la industria del software.'),(19,'3.1','3.1.1','RAP 1.1: Contextualiza los conceptos y elementos b??sicos de los principales paradigmas de programaci??n.\r RAP 1.2: Identifica los elementos de los lenguajes de programaci??n para ser utilizados como entornos de desarrollo de software aplicado.\r RAP 1.3: Identifica los elementos b??sicos que conforman el c??digo de programaci??n para la gesti??n de aplicaciones de software.\r RAP 1.4: Utiliza sentencias de control de flujo de programa aplicando l??gica deductiva en el desarrollo de aplicaciones de software.\r RAP 1.5: Emplea la asignaci??n y el manejo de memoria en la implementaci??n de arreglos en el desarrollo de aplicaciones de software.\r RAP 2.1: Aplica los conceptos de clase, objeto e identidad en la soluci??n de problemas.\r RAP 2.2: Aplica los principios de abstracci??n, encapsulamiento, herencia y polimorfismo en la soluci??n de problemas en un entorno real.\r RAP 2.3: Aplica la Persistencia como una forma de almacenamiento y administraci??n de la informaci??n.\r RAP 3.1: Aplica los conceptos asociados a  estructuras de datos mediante el paradigma orientado objetos en la soluci??n de problemas de aplicaciones de software.\r RAP 3.2: Aplica los conceptos de interfaces en la soluci??n de problemas de aplicaciones de software.\r RAP 3.3: Aplica los conceptos y elementos del manejo de errores en el c??digo generado para la soluci??n de problemas de software.\r RAP 3.4: Aplica archivos como una forma de almacenamiento y administraci??n de informaci??n en la soluci??n de problemas de desarrollo de software.\r RAP 3.5: Analiza la forma de organizar los recursos de la memoria aplicando conceptos y elementos de hilos en la soluci??n de problemas de desarrollo de software.\r RAP 3.6: Aplica elementos gr??ficos y manejo de eventos para la creaci??n de interfaz de usuario en la soluci??n de problemas de desarrollo de software.\r RAP 4.1: Analiza los elementos y fundamentos de UML para los modelos estructurales y de comportamiento.\r RAP 4.2: Integra las especificaciones de UML en los modelos estructurales y de comportamiento.'),(35,'4.1','4.1.1','RAP 1.1: Realiza la planeaci??n estrat??gica que guiar?? el desarrollo del proyecto.\r RAP 1.2: Justifica la planeaci??n y an??lisis del proyecto de desarrollo de software a realizar.\r RAP 2.1: Participa activamente en el desarrollo del proyecto como integrante de un equipo colaborativo.\r RAP 2.2: Comparte el conflicto como un valor para implementar y aplicar estrategias de mejora continua.\r RAP 3.1: Desarrolla el sistema de informaci??n comparando el alcance obtenido de acuerdo a lo planeado, y a las t??cnicas y herramientas utilizadas.\r RAP 3.2: Conforma documentaci??n trascendental que gu??en el seguimiento y control de las actividades de desarrollo del proyecto.\r RAP 3.3: Integra los informes ejecutivo y extenso del proyecto de software desarrollado, para su presentaci??n y evaluaci??n.\r RAP 4.1: Desarrollar el marketing del proyecto para su comercializaci??n y negociaci??n.\r RAP 4.2: Implementa el plan para la presentaci??n formal del proyecto.\r RAP 4.3: Realiza la autoevaluaci??n de la presentaci??n del proyecto para la propuesta de la mejora continua.'),(45,'5.1','5.1.1','RAP 1.1: Contextualiza los conceptos fundamentales de Bases de Datos.\r RAP 1.2: Contextualiza los diferentes Modelos de datos utilizados para el dise??o de Bases de Datos.\r RAP 1.3: Modela bases de datos normalizadas aplicando las metodolog??as de desarrollo del esquema conceptual y l??gico.\r RAP 2.1: Utiliza gestores de bases de datos para la administraci??n de las bases de datos.\r RAP 2.2: Utilizan lenguajes de acceso a bases de datos para la manipulaci??n de la informaci??n contenida en las Bases de Datos.\r RAP 3.1: Aplica protecci??n al acceso de los datos para mantener su privacidad.\r RAP 3.2: Aplica transacciones para asegurar la autenticidad de la informaci??n para asegurar su confiabilidad'),(52,'6.1','6.1.1','RAP 1.1: Realiza la planeaci??n estrat??gica para lograr los objetivos y metas de la organizaci??n.\r RAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\r RAP 2.1: Modela el proyecto de software con base al an??lisis de los requerimientos de acuerdo a las t??cnicas y estrategias de administraci??n de proyectos de tecnolog??as de la informaci??n, bases de datos y servicios web.\r RAP 2.2: Programa el proyecto de software bas??ndose en los conceptos de Programaci??n y servicios Web, de Bases de datos con herramientas de desarrollo de software actuales.\r RAP 3.1: Detecta las demoras de las actividades del proyecto de software por medio del seguimiento de las mismas.\r RAP 3.2: Realiza el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\r RAP 4.1: Eval??a la factibilidad del proyecto de software.\r RAP 4.2: Presenta el funcionamiento e impacto del proyecto de software para la Industria del Software.'),(60,'7.1','7.1.1','RAP 1.1: Describe los elementos que conforman el modelo Cliente-Servidor y su operaci??n en funci??n del modelo de arquitectura.\r RAP 1.2: Contextualiza los protocolos para las comunicaciones de los ordenadores conectados a Internet.\r RAP 2.1: Aplica lenguajes de marcas para dise??ar y procesar documentos en forma de hipertexto.\r RAP 2.2: Aplica elementos de multimedia para la presentaci??n de la informaci??n.\r RAP 2.3: Aplica los controles Web para la creaci??n de formularios.\r RAP 2.4: Aplica lenguajes de programaci??n para la creaci??n de p??ginas din??micas y explotaci??n de la informaci??n de Bases de Datos.\r RAP 3.1: Explica la importancia, los roles, est??ndares y protocolos de los servicios Web.\r RAP 3.2: Contextualiza los protocolos que se llevan a cabo en el intercambio de datos dentro de un conjunto de servicios Web.\r RAP 4.1: Explica los conceptos b??sicos de seguridad en los servicios Web.\r RAP 4.2: Aplica los niveles de seguridad b??sicos en los Servicios Web.'),(70,'8.1','8.1.1','RAP 1.1: Explica la importancia de los est??ndares en el proceso de la administraci??n de la calidad.\r RAP 1.2: Describe el proceso de la administraci??n de la calidad y las actividades clave del proceso.\r RAP 2.1: Aplica m??todos de gesti??n y control de tiempos basados en el Proceso Software Personal para controlar el rendimiento del trabajo.\r RAP 2.2: Aplica m??todos de planificaci??n de periodos y productos que intervienen en el desarrollo de software.\r RAP 2.3: Planifica el producto de software a partir de las medidas del tama??o del mismo.\r RAP 3.1: Elabora planes de proyectos para gestionar la revisi??n y el control del tiempo y el tama??o estimados en relaci??n con el de desarrollo real.\r RAP 3.2: Aplica m??todos para identificar defectos en el desarrollo de un producto de software, a trav??s de su descripci??n con base en criterios de an??lisis.\r RAP 3.3: Elabora estrategias para la previsi??n de defectos en funci??n de mejorar los planes de desarrollo de un producto de software.\r RAP 3.4: Analiza el coste relativo que genera la remoci??n de los defectos y su impacto sobre el coste resultante del soporte al producto de software.\r RAP 3.5: Aplica las estrategias para calcular y controlar medidas que eval??an la calidad del trabajo de desarrollo del software.'),(80,'9.1','9.1.1','RAP 1.1: Describe los fundamentos, etapas y requerimientos del desarrollo de pruebas de software\r RAP 1.2: Analiza el impacto y los beneficios que tienen las pruebas automatizadas en el ciclo de desarrollo de software\r RAP 1.3: Reconoce la importancia de la disciplina y las normas principales que rigen el proceso de pruebas automatizadas de software.\r RAP 1.4: Describe los roles y organizaci??n que desempe??a el personal que realiza la automatizaci??n de pruebas de software.\r RAP 2.1: Desarrolla planes, procedimientos y guiones de pruebas automatizadas tomando en cuenta los requerimientos.\r RAP 2.2: Desarrolla un documento para el registro de incidencias que se presentan durante las pruebas de desarrollo de software.\r RAP 2.3: Elabora manuales de pruebas del software, analizando los elementos que se requieren para llevarlos a cabo.\r RAP 3.1: Analiza los elementos que se requieren para llevar a cabo la planeaci??n de pruebas automatizadas.\r RAP 3.2: Administra adecuadamente los requerimientos de prueba del software tomando en cuenta su ciclo de vida.\r RAP 3.3: Eval??a el an??lisis y dise??o a pruebas automatizadas de acuerdo a m??tricas establecidas.\r RAP 4.1: Aplicar diversos tipos de pruebas automatizadas dentro del ciclo de desarrollo de software\r RAP 4.2: Aplica procesos de calidad para evaluar el desempe??o de calidad y eficiencia del producto de software.'),(92,'10.1','10.1.1','RAP 1.1: Reconoce la estructura de valores que integran su personalidad.\r RAP 1.2: Mejora su calidad de comunicaci??n en sus relaciones interpersonales.\r RAP 1.3: Identifica los factores del contexto social que orientan la personalidad.\r RAP 2.1: Eval??a su nivel de autoestima en base a las capacidades que integra la eficiencia personal y el respeto a uno mismo.\r RAP 2.2: Aplica estrategias para mejorar la autoestima, y que a su vezfortalecer?? el trabajo colaborativopara el desarrollo de proyectos.\r RAP 3.1: Analiza las condiciones trascendentales para el trabajo colaborativo, en funci??n del desarrollo personal y profesional.\r RAP 3.2: Aplica herramientas de direcci??n de personal que favorecen el trabajo profesional.\r RAP 4.1: Dirige las emociones y sentimientos al arte de desarrollar proyectos de software.\r RAP 4.2: Asume el cambio como el proceso de mejora para el desarrollo humano, personal y del trabajo colaborativo.'),(101,'11.1','11.1.1','RAP 1.1: Explica la importancia de las pr??cticas de la ingenier??a de software.\r RAP 1.2: Describe los objetivos y principios de la calidad mediante el proceso de prueba de software.\r RAP 2.1: Identifica los elementos de los defectos, errores y fallas de software para planificar el proceso de administraci??n de errores\r RAP 2.2: Aplica procesos de calidad para evaluar el desempe??o de calidad y eficiencia del producto de software.\r RAP 3.1: Define conceptos b??sicos, caracter??sticas y tipos de pruebas de software.\r RAP 3.2: Analiza los m??todos de dise??o de casos de prueba.\r RAP 3.3: Aplica las Pruebas de Unidad, integraci??n, sistema, validaci??n y regresi??n para evaluar el desempe??o de calidad y eficiencia del producto de software de acuerdo a los elementos de organizaci??n y personal organizado para realizar la prueba al producto de software.\r RAP 4.1: Identifica los aspectos de plataformas asociados a las pruebas de software, as?? como los elementos esenciales de la arquitectura de componentes.\r RAP 4.2: Define los fundamentos y etapas del ciclo de vida de pruebas del desarrollo del software.'),(110,'12.1','12.1.1','RAP 1.1: Describe los elementos b??sicos que componen un sistema distribuido.\r RAP 1.2 Contextualiza el concepto de sistema distribuido basado en modelos establecidos.\r RAP 2.1. Esquematiza los tipos de redes utilizadas por los sistemas distribuidos.\r RAP 2.2 Explica los fundamentos de las redes.\r RAP 2.3: Describe los protocolos utilizados en internet.\r RAP 2.4: Explica los fundamentos de las redes.\r RAP 3.1 Utiliza API ??para la comunicaci??n entre procesos.\r RAP 3.2 Utiliza la representaci??n externa de datos y empaquetados en la comunicaci??n entre procesos.\r RAP 3.3 Utiliza la representaci??n externa de datos y empaquetados en la comunicaci??n entre procesos.\r RAP 3.4: Describe la comunicaci??n de grupo en t??rminos de multidifusi??n\r RAP 4.1: Programa sistema distribuido basado en objetos remoto\r RAP 4.2: Programa sistema distribuido basado en servicios web.'),(122,'13.1','13.1.1','RAP 1.1: Elabora la planeaci??n del proyecto de software bas??ndose en conceptos de Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones, determinando los requerimientos presentados.\r RAP 1.2 Realiza el plan estrat??gico del proyecto de software con base a requerimientos especificados.\r RAP 2.1 Dise??a el proyecto de software basado en los conceptos de Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones, usando herramientas de dise??o de software adecuadas.\r RAP 2.2 Programa el proyecto de software basado en los conceptos de Introducci??n a los sistemas distribuidos, Introducci??n a la Ingenier??a de Pruebas y Seguridad web y aplicaciones, usando herramientas de desarrollo de software adecuadas.\r RAP 3.1 Elaborar el plan de mejora continua del proyecto de software.\r RAP 3.2 Realiza el plan de mejora continua del proyecto de software en base en su ejecuci??n para obtener la calidad esperada.\r RAP 4.1 Analiza el producto final del proyecto de Software.\r RAP 4.2 Eval??a del proyecto en funci??n de los resultados e impacto para la Industria del Software.'),(130,'14.1','14.1.1','RAP 1.1: Describe los elementos que se relacionan con la seguridad en las tecnolog??as de la informaci??n.\r RAP 1.2 Contextualiza el concepto de servicio de seguridad con base en est??ndares establecidos.\r RAP 2.1. Aplica t??cnicas de cifrado sim??trico a trav??s de lenguajes de programaci??n.\r RAP 2.2 Emplea autentificaci??n y criptograf??a de clave p??blica para implementar seguridad.\r RAP 3.1: Describe las especificaciones de autentificaci??n en la seguridad de redes.\r RAP 3.2: Describe la seguridad usada en las aplicaciones de correo electr??nico a partir de est??ndares.\r RAP 3.3: Esquematiza el modelo de seguridad IP.\r RAP 3.4: Contextualiza el modelo de seguridad Web a trav??s de est??ndares.\r RAP 3.5: Describe el sistema de seguridad basado en la gesti??n de redes.\r RAP 4.1 Describe enfoques de prevenci??n y detecci??n de intrusos en las tecnolog??as de la informaci??n.\r RAP 4.2 Aplica mecanismos de seguridad contra las amenazas de software da??ino.\r RAP 4.3 Describe el sistema de seguridad basado en el uso de cortafuegos.'),(131,'15.1','15.1.1','RAP 1.1: Explica la importancia de la Ingenier??a de Software para el desarrollo de software.\rRAP 1.2: Explica la diferencia entre Ingenier??a de software e ingenier??a de sistemas, as?? como las propiedades, y organizaci??n de los Sistemas de Informaci??n.\rRAP 2.1: Contextualiza los principios, conceptos, actividades para el desarrollo de sistemas y aplicaciones basados en web con calidad.\rRAP 2.2: Describe la formulaci??n y planeaci??n de la ingenier??a web.\rRAP 2.3: Presenta el modelado de an??lisis para aplicaciones web.\rRAP 2.4: Presenta un modelado de dise??o para aplicaciones web.\rRAP 2.5: Aplica pruebas para WebApps como indicadores de calidad.\rRAP 3.1: Describe la gesti??n de personal con calidad.\rRAP 3.2: Aplica estimaci??n de costes del software.\rRAP 3.3: Contextualiza la mejora de procesos en el software.'),(132,'16.1','16.1.1','RAP 1.1: Elabora la planeaci??n del proyecto de software bas??ndose en conceptos de M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica, determinando los requerimientos presentados.\rRAP 1.2: Realiza el plan estrat??gico del proyecto de software con base a requerimientos especificados.\rRAP 2.1: Dise??a el proyecto de software basado en los conceptos de M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica, usando herramientas de dise??o de software adecuadas.\rRAP 2.2: Programa el proyecto de software basado en los conceptos de M??todos ??giles de Programaci??n, Soporte de Software, Ingenier??a de Software B??sica, usando herramientas de desarrollo de software adecuadas.\rRAP 3.1: Elabora el plan de mejora continua del proyecto de software.\rRAP 3.2: Realiza el plan de mejora continua del proyecto de software en base en su ejecuci??n para obtener la calidad esperada.\rRAP 4.1: Analiza el producto final del proyecto de Software.\rRAP 4.2: Eval??a el proyecto en funci??n de los resultados e impacto para la Industria del Software.'),(133,'17.1','17.1.1','RAP 1.1: Define capacidades y limitaciones de las metodolog??as tradicionales en el desarrollo de productos de software.\rRAP 1.2: Analiza la fundamentaci??n de modelos de proceso de aplicaci??n del paradigma ??gil de desarrollo de software.\rRAP 1.3: Identifica filosof??a, conceptos, notaci??n, t??cnicas, procesos, valores y principios del paradigma ??gil de desarrollo de Software.\rRAP 2.1: Identifica los elementos de las metodolog??as ??giles de mayor impacto en la industria del software para el desarrollo de proyectos.\rRAP 2.2: Desarrolla aplicaciones de software aplicando los elementos de las metodolog??as ??giles de mayor impacto en la industria del software.\rRAP 3.1: Identifica la problem??tica inherente a cada metodolog??a ??gil, as?? como la aplicaci??n de sus procesos.\rRAP 3.2: Analiza las posibilidades que ofrecen otras herramientas basadas en la metodolog??a ??gil y los entornos de desarrollo de software actuales.'),(134,'18.1','18.1.1','RAP 1.1: Diferencia las caracter??sticas y condiciones de las sociedades mercantiles por las cuales se puede constituir una empresa.\rRAP 1.2: Identifica los tr??mites de apertura y de operaci??n de una empresa para desarrollar actos de comercio.\rRAP 2.1: Dise??a la estructura org??nica del negocio, optimizando los recursos humanos a trav??s de la evaluaci??n de perfiles a integrar.\rRAP 2.2: Admite que el proceso de selecci??n y contrataci??n de personal es el medio para la obtenci??n de personal id??neo que guiara el ??xito del negocio.\rRAP 3.1: Atribuye los estudios de mercado como el proceso trascendental para el ??xito del negocio.\rRAP 3.2: Describe los atributos del producto considerando las expectativas del mercado.\rRAP 3.3: Integra estrategias de comunicaci??n mercadol??gica para fortalecer la introducci??n y venta del producto.\rRAP 4.1: Realiza an??lisis financiero para la determinar el costo-beneficio del producto.\rRAP 4.2: Identifica los elementos y herramientas a aplicar para la elaboraci??n del estado de situaci??n financiera del negocio.'),(135,'19.1','19.1.1','RAP 1.1: Realiza la planeaci??n estrat??gica para lograr los objetivos y metas de la organizaci??n.\rRAP 1.2: Planea el proyecto de software basado en los requerimientos presentados.\rRAP 2.1: Modela el proyecto de software con base al an??lisis de los requerimientos de acuerdo a las t??cnicas y estrategias de administraci??n de proyectos de software.\rRAP 2.2: Desarrolla el Software correspondiente al proyecto, cubriendo los requerimientos solicitados utilizando los conocimientos de Programaci??n Orientada a objetos, Programaci??n y servicios Web, Base de Datos, Sistemas distribuidos, Ing. De Pruebas, Seguridad Web, M??todos Agiles, Soporte de software y bases de datos Ingenier??a de Software.\rRAP 3.1: Detecta las demoras de las actividades del proyecto de software por medio del seguimiento de las mismas.\rRAP 3.2: Realiza el plan de mejora continua del proyecto de software a partir de las debilidades identificadas, para obtener la calidad esperada.\rRAP 4.1: Eval??a la factibilidad del proyecto de software.\rRAP 4.2: Presenta el funcionamiento e impacto del proyecto de software para la industria del software'),(136,'20.1','20.1.1','RAP 1.1: Describe los elementos b??sicos que componen el soporte de software.\rRAP 1.2: Contextualiza el concepto de mantenimiento de software basado en situaciones establecidas.\rRAP 2.1: Establece el proceso de la reingenier??a de software en el soporte de software.\rRAP 2.2: Establece el proceso de la ingenier??a inversa en el soporte de software.\rRAP 3.1: Planea la gesti??n del cambio en el proceso de gesti??n de configuraciones.\rRAP 3.2: Describe la gesti??n de configuraci??n del software en las tecnolog??as de la informaci??n.\rRAP 3.3: Describe la gesti??n de configuraciones para la ingenier??a web.\rRAP 4.1: Describe la administraci??n del soporte t??cnico con base en modelos establecidos.\rRAP 4.2: Contextualiza la gesti??n del conocimiento en la administraci??n de las tecnolog??as de la informaci??n.');
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
INSERT INTO `situaciones` VALUES (1111111111,17,1,2,2),(2021090081,14,1,2,2),(2021090083,14,1,2,4),(2021090116,14,1,2,1),(2021090613,4,2,2,2),(2021091516,14,1,2,1);
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
INSERT INTO `usuarios` VALUES (1111111111,'Alumno','Example','Example',1,'2000-01-01','example@gmail.com','1234','2022-06-14 03:47:32',1,1),(2021090081,'Maestro','Example','Example',2,'2000-01-01','example2@gmail.com','1234','2022-06-14 04:00:51',1,2),(2021090083,'Ian','Ayala','Gonzalez',1,'2004-10-13','ayala.gonzalez.ian@gmail.com','99310675','2022-05-30 13:18:36',1,3),(2021090116,'Jaret','Garcia','Gomez',1,'2005-06-11','jaret.gg@outlook.com','227430','2022-06-12 16:46:43',1,3),(2021090613,'Axel','Gomez','Herrera',1,'2004-05-25','gomez.herrera.axel.25@gmail.com','hola1234','2022-05-31 05:51:22',1,2),(2021091516,'Jaime','Minor','Gomez',1,'1990-03-31','jaime123@gmail.com','soyjaime123','2022-06-12 17:32:36',1,2);
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

-- Dump completed on 2022-06-14  1:05:02
