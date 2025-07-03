-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb78270
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (16,'Accesorios'),(13,'Aires Acondicionados'),(5,'Auriculares'),(8,'Cámaras'),(20,'Cargadores y Cables'),(7,'Consolas de Videojuegos'),(11,'Heladeras'),(9,'Impresoras'),(12,'Lavarropas'),(14,'Microondas'),(10,'Monitores'),(3,'Notebooks'),(6,'Parlantes'),(18,'PC de Escritorio'),(15,'Pequeños Electrodomésticos'),(19,'Proyectores'),(1,'Smartphones'),(17,'Smartwatches'),(4,'Tablets'),(2,'Televisores');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (10,'Acer'),(2,'Apple'),(9,'Asus'),(15,'BGH'),(20,'Canon'),(8,'Dell'),(19,'Epson'),(17,'Hisense'),(7,'HP'),(11,'Huawei'),(18,'JBL'),(6,'Lenovo'),(3,'LG'),(13,'Motorola'),(14,'Noblex'),(5,'Philips'),(1,'Samsung'),(4,'Sony'),(16,'TCL'),(12,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` varchar(12) NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier','25852410','2008-12-12'),(2,'González','Mónica','36520147','2005-09-30'),(3,'Martínez','Vanesa','35741951','2006-06-21'),(4,'Álvarez','Fernando','32912457','2007-11-02'),(5,'Page','Jimmy','18543219','1944-01-09'),(6,'Plant','Robert','18543220','1948-08-20'),(7,'Bonham','Bonzo','18543221','1948-05-31'),(8,'Jones','John','18543222','1946-01-03');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `simple` float NOT NULL,
  `doble` double NOT NULL,
  `exacto` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (15,15,15.00),(22.36,22.36,22.36),(38.26,38.26,38.26),(27,27,27.00),(54,54,54.00),(67.75,67.75,67.75),(8.3,8.3,8.30),(67.88,67.88,67.88),(93.11,93.11,93.11),(30,30,30.00);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `producto` (`producto`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Samsung Galaxy S25',1200000.00,1,1,'Smartphone con pantalla AMOLED 6.7\", 256GB almacenamiento, 12GB RAM.','galaxy_s25.jpg',1),(2,'Apple iPhone 16 Pro',1800000.00,2,1,'iPhone con chip A18, cámara triple 48MP, 512GB almacenamiento.','iphone_16_pro.jpg',1),(3,'LG OLED 55\" 4K',2500000.00,3,2,'Televisor OLED 4K con HDR, Smart TV, 120Hz.','lg_oled_55.jpg',1),(4,'Sony PlayStation 5 Pro',1500000.00,4,7,'Consola de videojuegos con 2TB SSD, soporte 8K.','ps5_pro.jpg',1),(5,'Philips AirFryer XXL',350000.00,5,15,'Freidora sin aceite, capacidad 1.4kg, tecnología Rapid Air.','airfryer_xxl.jpg',1),(6,'Lenovo ThinkPad X1 Carbon',2200000.00,6,3,'Notebook ultraliviana, Intel i7, 16GB RAM, 1TB SSD.','thinkpad_x1.jpg',1),(7,'HP Pavilion 15\"',1400000.00,7,3,'Notebook para trabajo y gaming, Ryzen 5, 8GB RAM.','pavilion_15.jpg',1),(8,'Dell XPS 13',2000000.00,8,3,'Notebook premium, pantalla 13.4\" 4K, Intel i5.','xps_13.jpg',1),(9,'Asus ROG Strix Gaming',2800000.00,9,3,'Notebook gamer, RTX 3060, Ryzen 7, 16GB RAM.','rog_strix.jpg',1),(10,'Acer Nitro 5',1600000.00,10,3,'Notebook gamer, GTX 1650, 512GB SSD.','nitro_5.jpg',1),(11,'Huawei MatePad 11',600000.00,11,4,'Tablet con pantalla 11\" 120Hz, 128GB almacenamiento.','matepad_11.jpg',1),(12,'Xiaomi Redmi Note 14',800000.00,12,1,'Smartphone con cámara 108MP, 128GB almacenamiento.','redmi_note_14.jpg',1),(13,'Motorola Edge 50',950000.00,13,1,'Smartphone 5G, pantalla OLED 6.5\", 256GB.','edge_50.jpg',1),(14,'Noblex Smart TV 43\" FHD',500000.00,14,2,'Televisor LED Full HD, sistema Android TV.','noblex_43.jpg',1),(15,'BGH Heladera 350L',900000.00,15,11,'Heladera No Frost, 350 litros, eficiencia A++.','bgh_heladera.jpg',1),(16,'TCL QLED 65\" 4K',1800000.00,16,2,'Televisor QLED 4K, Dolby Vision, Smart TV.','tcl_qled_65.jpg',1),(17,'Hisense Lavarropas 8kg',700000.00,17,12,'Lavarropas automático, 8kg, 1200 RPM.','hisense_lavadora.jpg',1),(18,'JBL Charge 5',250000.00,18,6,'Parlante Bluetooth, resistente al agua, 20h batería.','jbl_charge_5.jpg',1),(19,'Epson EcoTank L3250',400000.00,19,9,'Impresora multifunción con tanque de tinta.','ecotank_l3250.jpg',1),(20,'Canon EOS R50',1200000.00,20,8,'Cámara mirrorless, sensor 24MP, grabación 4K.','eos_r50.jpg',1),(21,'Samsung Galaxy Tab S9',1100000.00,1,4,'Tablet con pantalla AMOLED 12.4\", 256GB.','galaxy_tab_s9.jpg',1),(22,'Apple AirPods Pro 2',450000.00,2,5,'Auriculares inalámbricos con cancelación de ruido.','airpods_pro_2.jpg',1),(23,'LG UltraWide 34\" Monitor',900000.00,3,10,'Monitor curvo 34\" WQHD, ideal para productividad.','lg_ultrawide.jpg',1),(24,'Sony WH-1000XM5',600000.00,4,5,'Auriculares Bluetooth con cancelación de ruido.','wh_1000xm5.jpg',1),(25,'Philips Microondas 30L',300000.00,5,14,'Microondas con grill, 30 litros, 900W.','philips_microondas.jpg',1),(26,'Lenovo IdeaPad 3',1100000.00,6,3,'Notebook para estudiantes, Intel i3, 8GB RAM.','ideapad_3.jpg',1),(27,'HP DeskJet 2775',200000.00,7,9,'Impresora multifunción, ideal para hogar.','deskjet_2775.jpg',1),(28,'Dell Inspiron 24 All-in-One',1800000.00,8,18,'PC de escritorio todo en uno, Intel i5, 16GB RAM.','inspiron_24.jpg',1),(29,'Asus TUF Gaming Monitor 27\"',700000.00,9,10,'Monitor gamer 27\" Full HD, 144Hz.','tuf_monitor.jpg',1),(30,'Acer Aspire 5',1300000.00,10,3,'Notebook versátil, Ryzen 5, 512GB SSD.','aspire_5.jpg',1),(31,'Huawei Watch GT 4',400000.00,11,17,'Smartwatch con monitor de salud, 14 días batería.','watch_gt_4.jpg',1),(32,'Xiaomi Smart TV 55\" 4K',800000.00,12,2,'Televisor LED 4K, Android TV, HDR10.','xiaomi_tv_55.jpg',1),(33,'Motorola Moto G85',650000.00,13,1,'Smartphone 5G, cámara 50MP, 128GB.','moto_g85.jpg',1),(34,'Noblex Aire Acondicionado 3000F',900000.00,14,13,'Aire split 3000 frigorías, inverter, frío/calor.','noblex_aire.jpg',1),(35,'BGH Microondas 20L',250000.00,15,14,'Microondas compacto, 20 litros, 700W.','bgh_microondas.jpg',1),(36,'TCL Smartphone 20 Pro',700000.00,16,1,'Smartphone 5G, pantalla AMOLED 6.6\".','tcl_20_pro.jpg',1),(37,'Hisense Heladera 400L',1100000.00,17,11,'Heladera No Frost, 400 litros, dispenser de agua.','hisense_heladera.jpg',1),(38,'JBL Flip 6',200000.00,18,6,'Parlante Bluetooth portátil, resistente al agua.','jbl_flip_6.jpg',1),(39,'Epson Proyector Home Cinema',1200000.00,19,19,'Proyector Full HD, 3000 lúmenes, ideal cine en casa.','epson_proyector.jpg',1),(40,'Canon Pixma G6010',350000.00,20,9,'Impresora con tanque de tinta, alta capacidad.','pixma_g6010.jpg',1),(41,'Samsung Monitor 27\" Curvo',600000.00,1,10,'Monitor curvo Full HD, 75Hz, ideal para trabajo.','samsung_monitor.jpg',1),(42,'Apple Watch Series 10',800000.00,2,17,'Smartwatch con ECG, oxímetro, pantalla Retina.','apple_watch_10.jpg',1),(43,'LG Lavarropas 10kg',850000.00,3,12,'Lavarropas automático, 10kg, tecnología inverter.','lg_lavarropas.jpg',1),(44,'Sony Bravia 50\" 4K',1400000.00,4,2,'Televisor LED 4K, HDR, Google TV.','bravia_50.jpg',1),(45,'Philips Licuadora 700W',150000.00,5,15,'Licuadora con jarra de vidrio, 700W.','philips_licuadora.jpg',1),(46,'Lenovo Yoga 7',1900000.00,6,3,'Notebook convertible, Intel i7, 16GB RAM.','yoga_7.jpg',1),(47,'HP Envy x360',1700000.00,7,3,'Notebook convertible, Ryzen 7, 512GB SSD.','envy_x360.jpg',1),(48,'Dell UltraSharp 32\" 4K',1100000.00,8,10,'Monitor 4K para diseño gráfico y edición.','ultrasharp_32.jpg',1),(49,'Asus ZenBook 14',2000000.00,9,3,'Notebook ultraliviana, Intel i5, 16GB RAM.','zenbook_14.jpg',1),(50,'Acer Predator Helios 300',2400000.00,10,3,'Notebook gamer, RTX 3070, 1TB SSD.','predator_helios.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(100) NOT NULL,
  `cuit` bigint NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `razonsocial` (`razonsocial`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuidora Andina S.R.L',20345678901,'011-4567-1234','contacto@andina.com.ar','Av. Siempre Viva 742, CABA'),(2,'Proveedora Patagónica SRL',27234567892,'0299-445-6677','ventas@patagonica.com','Calle Mitre 456, Neuquén'),(3,'Tecnología del Sur',20301234567,'011-4000-1122','info@tecsur.com','Av. Belgrano 1120, CABA'),(4,'Servicios del Litoral SRL',27345678903,'0341-455-9988','contacto@litoral.com','San Martín 300, Rosario'),(5,'Comercial Norteña S.A.',20378945612,'0381-433-1122','ventas@nortena.com','Av. Sarmiento 600, Tucumán'),(6,'Alfa Logística Integral',20234512309,'011-4222-3344','info@alfalog.com','Juan B. Justo 1245, CABA'),(7,'Insumos del Centro',27333445566,'0351-488-7711','contacto@insumoscentro.com','Colón 900, Córdoba'),(8,'Global Connect SRL',27345678977,'011-4877-9900','ventas@globalconnect.com','Av. Cabildo 1500, CABA'),(9,'Innovación y Servicios S.A.',20333221155,'0261-441-2233','info@innovaserv.com','Las Heras 1340, Mendoza'),(10,'Redes Patagónicas',20398765432,'0297-440-8822','contacto@redespat.com','Av. Roca 870, Comodoro'),(11,'Distribuciones Tandil',27211233445,'0249-442-3311','ventas@tandil.com','España 245, Tandil'),(12,'Cordobesa de Insumos SRL',20229876543,'0351-447-9901','cordobesa@insumos.com','San Juan 540, Córdoba'),(13,'Sur Digital SRL',27321098765,'0291-456-7890','info@surdigital.com','Chiclana 700, Bahía Blanca'),(14,'Macroinsumos del NEA',27432109876,'0376-444-2211','contacto@macronea.com','Av. Uruguay 1800, Posadas'),(15,'Altos Servicios Técnicos',20376543210,'011-4650-7766','altos@servtec.com','Gaona 3100, CABA'),(16,'Capital Mayorista S.A.',20355667788,'011-4789-3344','ventas@capitalmay.com','Av. Libertador 5550, CABA'),(17,'NEU Distribuciones',27298765431,'0299-499-1122','info@neudist.com','La Pampa 1200, Neuquén'),(18,'LogiSur SRL',20333445566,'0291-455-8899','contacto@logisur.com','Ruta 3 km 10, Bahía Blanca'),(19,'Santa Fe Servicios',27222113344,'0342-456-2211','ventas@santafe.com','Bv. Gálvez 950, Santa Fe'),(20,'Delta Proveedores SRL',20387654321,'011-4666-7788','info@deltaprov.com','Maipú 890, CABA');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-03 16:58:24
