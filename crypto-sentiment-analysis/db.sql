-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nlp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `algorand`
--

DROP TABLE IF EXISTS `algorand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `algorand` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  `palabraspositivas` varchar(500) NOT NULL,
  `palabrasnegativas` varchar(500) NOT NULL,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algorand`
--

LOCK TABLES `algorand` WRITE;
/*!40000 ALTER TABLE `algorand` DISABLE KEYS */;
INSERT INTO `algorand` VALUES (1,1.92418,'203',46.798,4.92611,48.2759,0.280661,0,'',''),(2,1.9027,'223',43.0493,5.38117,51.5695,0.284901,0,'',''),(3,1.79087,'221',61.5385,2.71493,35.7466,0.427854,0,'',''),(4,1.93657,'212',54.2453,2.35849,43.3962,0.357718,0,'',''),(5,1.87734,'185',48.1081,5.40541,46.4865,0.297848,0,'',''),(6,1.86293,'226',52.6549,5.75221,41.5929,0.336956,0,'',''),(7,1.85272,'193',50.7772,6.73575,42.487,0.316041,-0.548204,'',''),(8,1.86953,'204',50.4902,3.92157,45.5882,0.290797,-0.907221,'','');
/*!40000 ALTER TABLE `algorand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitcoin`
--

DROP TABLE IF EXISTS `bitcoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitcoin` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitcoin`
--

LOCK TABLES `bitcoin` WRITE;
/*!40000 ALTER TABLE `bitcoin` DISABLE KEYS */;
INSERT INTO `bitcoin` VALUES (1,60090.9,'218',42.2018,11.4679,46.3303,0.204084,0),(2,59015.9,'212',33.9623,16.0377,50,0.0983014,0),(3,59325.9,'203',38.9163,11.33,49.7537,0.167884,0),(4,58583.2,'226',32.3009,12.3894,55.3097,0.104903,0),(5,57808.1,'201',32.3383,12.9353,54.7264,0.112807,0),(6,57937.2,'178',30.8989,10.1124,58.9888,0.123704,0),(7,57196.1,'188',37.234,16.4894,46.2766,0.129813,0),(8,58003.5,'208',31.7308,12.0192,56.25,0.132387,1.4117),(9,57789.8,'209',26.3158,13.3971,60.2871,0.0757234,0.368371),(10,58010,'166',37.3494,15.0602,47.5904,0.139254,0.381108);
/*!40000 ALTER TABLE `bitcoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardano`
--

DROP TABLE IF EXISTS `cardano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardano` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardano`
--

LOCK TABLES `cardano` WRITE;
/*!40000 ALTER TABLE `cardano` DISABLE KEYS */;
INSERT INTO `cardano` VALUES (1,1.81114,'200',51.5,7.5,41,0.276049,0),(2,1.82113,'202',47.5248,7.92079,44.5545,0.245938,0),(3,1.79916,'209',49.2823,7.6555,43.0622,0.267214,0),(4,1.81258,'206',42.233,11.165,46.6019,0.179931,0),(5,1.80182,'202',47.5248,9.40594,43.0693,0.221035,0),(6,1.80611,'211',48.3412,4.73934,46.9194,0.251559,0),(7,1.87104,'214',36.9159,7.47664,55.6075,0.165707,-3.59513),(8,1.85962,'223',45.2915,4.4843,50.2242,0.242682,0.610378);
/*!40000 ALTER TABLE `cardano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chainlink`
--

DROP TABLE IF EXISTS `chainlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chainlink` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chainlink`
--

LOCK TABLES `chainlink` WRITE;
/*!40000 ALTER TABLE `chainlink` DISABLE KEYS */;
INSERT INTO `chainlink` VALUES (1,27.9466,'178',43.2584,10.1124,46.6292,0.166005,0),(2,28.039,'167',56.8862,7.78443,35.3293,0.262825,0),(3,27.4234,'128',48.4375,7.8125,43.75,0.20827,0),(4,27.0224,'188',40.9574,9.04255,50,0.165058,0),(5,26.809,'187',47.5936,8.02139,44.385,0.194335,0),(6,27.0618,'188',48.9362,5.31915,45.7447,0.246705,0),(7,28.3266,'177',45.1977,7.9096,46.8927,0.186329,4.67388),(8,28.328,'180',38.8889,7.77778,53.3333,0.166116,-0.00479688);
/*!40000 ALTER TABLE `chainlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cryptodata`
--

DROP TABLE IF EXISTS `cryptodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cryptodata` (
  `idcrypto` int(11) NOT NULL AUTO_INCREMENT,
  `idcoinmarketcap` int(11) NOT NULL,
  `crypto` varchar(45) NOT NULL DEFAULT 'CRYPTO',
  `symbol` varchar(4) NOT NULL DEFAULT '$AAA',
  `lastvalue` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idcrypto`,`idcoinmarketcap`,`crypto`,`symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cryptodata`
--

LOCK TABLES `cryptodata` WRITE;
/*!40000 ALTER TABLE `cryptodata` DISABLE KEYS */;
INSERT INTO `cryptodata` VALUES (4,1,'bitcoin','$BTC',58010),(5,1027,'ethereum','$ETH',4269.96),(6,328,'monero','$XMR',237.426),(7,2011,'tezos','$XTZ',5.21609),(8,7186,'pancakeswap','$CAK',16.0107),(9,10791,'ecash','$XEC',0.000169662),(10,4030,'algorand','$ALG',1.86953),(11,825,'tether','$USD',1.00012),(12,5426,'solana','$SOL',214.295),(13,2010,'cardano','$ADA',1.85962),(14,52,'xrp','$XRP',1.0846),(15,6636,'polkadot','$DOT',41.3468),(16,74,'dogecoin','$DOG',0.231782),(17,4172,'terra','$LUN',42.5313),(18,2,'litecoin','$LTC',216.729),(19,1975,'chainlink','$LIN',28.328),(20,7083,'uniswap','$UNI',21.1447),(21,1958,'tron','$TRX',0.103759),(22,1966,'decentraland','$MAN',4.19914),(23,2577,'ravencoin','$RVN',0.12305);
/*!40000 ALTER TABLE `cryptodata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decentraland`
--

DROP TABLE IF EXISTS `decentraland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decentraland` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decentraland`
--

LOCK TABLES `decentraland` WRITE;
/*!40000 ALTER TABLE `decentraland` DISABLE KEYS */;
INSERT INTO `decentraland` VALUES (1,3.68367,'140',44.2857,6.42857,49.2857,0.203291,0),(2,3.68814,'128',40.625,4.6875,54.6875,0.220045,0),(3,3.55802,'197',51.7766,4.06091,44.1624,0.264667,0),(4,3.53242,'207',53.1401,5.7971,41.0628,0.246684,0),(5,3.83766,'203',43.8424,5.41872,50.7389,0.213389,0),(6,4.13522,'226',51.3274,7.52212,41.1504,0.24322,0),(7,4.12303,'224',42.4107,2.23214,55.3571,0.248172,-0.294702),(8,4.19914,'193',38.8601,2.59067,58.5492,0.22226,-1.8459);
/*!40000 ALTER TABLE `decentraland` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogecoin`
--

DROP TABLE IF EXISTS `dogecoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogecoin` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogecoin`
--

LOCK TABLES `dogecoin` WRITE;
/*!40000 ALTER TABLE `dogecoin` DISABLE KEYS */;
INSERT INTO `dogecoin` VALUES (1,0.228386,'195',28.2051,8.20513,63.5897,0.11314,0),(2,0.228956,'158',40.5063,6.32911,53.1646,0.21745,0),(3,0.226286,'176',31.25,6.25,62.5,0.138028,0),(4,0.225958,'230',46.9565,7.3913,45.6522,0.183507,0),(5,0.223342,'205',34.6341,4.87805,60.4878,0.169271,0),(6,0.223831,'191',35.0785,9.94764,54.9738,0.140224,0),(7,0.232643,'187',36.3636,6.41711,57.2192,0.18204,3.93701),(8,0.231782,'190',38.4211,6.31579,55.2632,0.188373,0.370069);
/*!40000 ALTER TABLE `dogecoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecash`
--

DROP TABLE IF EXISTS `ecash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecash` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecash`
--

LOCK TABLES `ecash` WRITE;
/*!40000 ALTER TABLE `ecash` DISABLE KEYS */;
INSERT INTO `ecash` VALUES (1,0.000167111,'190',45.7895,8.94737,45.2632,0.221958,0),(2,0.000168457,'196',44.3878,10.2041,45.4082,0.203724,0),(3,0.000165181,'183',48.0874,4.91803,46.9945,0.260393,0),(4,0.000165625,'166',50.6024,7.22892,42.1687,0.270839,0),(5,0.000166322,'164',50.6098,5.4878,43.9024,0.244207,0),(6,0.000165483,'161',52.1739,6.8323,40.9938,0.266442,0),(7,0.000170509,'188',53.7234,4.25532,42.0213,0.262268,3.03737),(8,0.000169662,'190',58.9474,4.73684,36.3158,0.246489,0.496696);
/*!40000 ALTER TABLE `ecash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ethereum`
--

DROP TABLE IF EXISTS `ethereum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ethereum` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ethereum`
--

LOCK TABLES `ethereum` WRITE;
/*!40000 ALTER TABLE `ethereum` DISABLE KEYS */;
INSERT INTO `ethereum` VALUES (1,4165.42,'195',39.4872,6.66667,53.8462,0.18416,0),(2,4180.01,'193',36.2694,9.32642,54.4041,0.13656,0),(3,4096.19,'194',42.268,10.3093,47.4227,0.186302,0),(4,4053.29,'231',38.5281,10.8225,50.6493,0.142152,0),(5,4057.27,'205',41.4634,12.6829,45.8537,0.152413,0),(6,4077.08,'228',38.5965,14.9123,46.4912,0.134442,0),(7,4283.46,'213',36.6197,12.2066,51.1737,0.149343,5.06204),(8,4269.96,'206',38.835,8.73786,52.4272,0.175778,0.315125);
/*!40000 ALTER TABLE `ethereum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `litecoin`
--

DROP TABLE IF EXISTS `litecoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `litecoin` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litecoin`
--

LOCK TABLES `litecoin` WRITE;
/*!40000 ALTER TABLE `litecoin` DISABLE KEYS */;
INSERT INTO `litecoin` VALUES (1,216.296,'177',32.2034,10.1695,57.6271,0.131538,0),(2,216.034,'191',34.555,8.37696,57.0681,0.131508,0),(3,213.917,'215',38.6047,11.6279,49.7674,0.142094,0),(4,208.178,'192',31.25,11.9792,56.7708,0.105818,0),(5,205.239,'228',37.7193,12.2807,50,0.151798,0),(6,208.389,'198',34.3434,10.6061,55.0505,0.11181,0),(7,216.835,'201',27.8607,8.95522,63.1841,0.104604,4.05318),(8,216.729,'210',28.0952,10.4762,61.4286,0.09511,0.0490054);
/*!40000 ALTER TABLE `litecoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monero`
--

DROP TABLE IF EXISTS `monero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monero` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monero`
--

LOCK TABLES `monero` WRITE;
/*!40000 ALTER TABLE `monero` DISABLE KEYS */;
INSERT INTO `monero` VALUES (1,239.057,'224',31.25,20.9821,47.7679,0.0529741,0),(2,239.123,'228',30.7018,21.0526,48.2456,0.0550114,0),(3,234.721,'189',31.2169,20.1058,48.6772,0.0640831,0),(4,228.705,'202',29.703,20.297,50,0.0724228,0),(5,229.304,'196',30.6122,22.449,46.9388,0.0711556,0),(6,229.557,'208',31.7308,21.6346,46.6346,0.0628413,0),(7,239.281,'196',47.449,12.2449,40.3061,0.186384,4.23598),(8,237.426,'212',41.5094,10.3774,48.1132,0.170503,0.775083);
/*!40000 ALTER TABLE `monero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pancakeswap`
--

DROP TABLE IF EXISTS `pancakeswap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pancakeswap` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pancakeswap`
--

LOCK TABLES `pancakeswap` WRITE;
/*!40000 ALTER TABLE `pancakeswap` DISABLE KEYS */;
INSERT INTO `pancakeswap` VALUES (1,15.5782,'139',35.2518,8.63309,56.1151,0.155777,0),(2,15.6388,'132',28.7879,10.6061,60.6061,0.109403,0),(3,15.0941,'148',29.0541,7.43243,63.5135,0.120403,0),(4,15.1249,'177',32.7684,11.2994,55.9322,0.126048,0),(5,15.2959,'174',36.7816,17.8161,45.4023,0.114761,0),(6,15.0324,'136',29.4118,9.55882,61.0294,0.117977,0),(7,16.0843,'177',44.0678,12.9944,42.9379,0.173546,6.99736),(8,16.0107,'136',40.4412,11.0294,48.5294,0.158529,0.45732);
/*!40000 ALTER TABLE `pancakeswap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polkadot`
--

DROP TABLE IF EXISTS `polkadot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polkadot` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polkadot`
--

LOCK TABLES `polkadot` WRITE;
/*!40000 ALTER TABLE `polkadot` DISABLE KEYS */;
INSERT INTO `polkadot` VALUES (1,40.0718,'181',41.9889,7.18232,50.8287,0.193116,0),(2,40.0424,'177',37.8531,7.9096,54.2373,0.15742,0),(3,39.3117,'128',46.875,9.375,43.75,0.232145,0),(4,39.7445,'176',44.3182,9.65909,46.0227,0.214554,0),(5,39.3617,'189',38.0952,10.0529,51.8519,0.171067,0),(6,39.997,'186',41.3979,8.60215,50,0.206778,0),(7,41.3955,'150',41.3333,7.33333,51.3333,0.190533,3.49639),(8,41.3468,'178',39.3258,7.30337,53.3708,0.178357,0.117646);
/*!40000 ALTER TABLE `polkadot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ravencoin`
--

DROP TABLE IF EXISTS `ravencoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ravencoin` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ravencoin`
--

LOCK TABLES `ravencoin` WRITE;
/*!40000 ALTER TABLE `ravencoin` DISABLE KEYS */;
INSERT INTO `ravencoin` VALUES (1,0.117816,'204',45.098,7.35294,47.549,0.21561,0),(2,0.118652,'205',46.3415,7.31707,46.3415,0.221515,0),(3,0.115462,'165',44.2424,8.48485,47.2727,0.218933,0),(4,0.116151,'160',35,10,55,0.169895,0),(5,0.118712,'174',37.931,6.89655,55.1724,0.196314,0),(6,0.118663,'169',42.0118,9.46746,48.5207,0.204228,0),(7,0.123194,'167',37.7246,13.7725,48.503,0.146847,3.81857),(8,0.12305,'157',37.5796,14.0127,48.4076,0.140973,0.116635);
/*!40000 ALTER TABLE `ravencoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solana`
--

DROP TABLE IF EXISTS `solana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solana` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solana`
--

LOCK TABLES `solana` WRITE;
/*!40000 ALTER TABLE `solana` DISABLE KEYS */;
INSERT INTO `solana` VALUES (1,205.96,'199',56.2814,6.03015,37.6884,0.336443,0),(2,205.205,'186',48.9247,5.91398,45.1613,0.310173,0),(3,198.52,'189',52.9101,7.93651,39.1534,0.31967,0),(4,199.056,'200',48.5,6.5,45,0.291982,0),(5,196.542,'184',40.2174,8.69565,51.087,0.215602,0),(6,200.591,'172',50.5814,8.72093,40.6977,0.266855,0),(7,216.642,'224',54.9107,4.46429,40.625,0.310394,8.00192),(8,214.295,'221',53.3937,3.61991,42.9864,0.326656,1.08331);
/*!40000 ALTER TABLE `solana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terra`
--

DROP TABLE IF EXISTS `terra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terra` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terra`
--

LOCK TABLES `terra` WRITE;
/*!40000 ALTER TABLE `terra` DISABLE KEYS */;
INSERT INTO `terra` VALUES (1,42.0735,'186',37.0968,10.7527,52.1505,0.136975,0),(2,42.3377,'188',43.617,10.6383,45.7447,0.199059,0),(3,41.1678,'198',40.9091,13.1313,45.9596,0.154597,0),(4,41.4401,'176',32.3864,11.9318,55.6818,0.0992699,0),(5,41.3091,'175',36,12.5714,51.4286,0.145621,0),(6,42.0284,'154',34.4156,14.2857,51.2987,0.124999,0),(7,42.6402,'232',31.8966,21.9828,46.1207,0.0556022,1.45573),(8,42.5313,'220',34.5455,18.1818,47.2727,0.100261,0.255457);
/*!40000 ALTER TABLE `terra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tether`
--

DROP TABLE IF EXISTS `tether`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tether` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tether`
--

LOCK TABLES `tether` WRITE;
/*!40000 ALTER TABLE `tether` DISABLE KEYS */;
INSERT INTO `tether` VALUES (1,1.00079,'203',31.5271,9.35961,59.1133,0.117352,0),(2,1.00057,'213',31.4554,9.38967,59.1549,0.107795,0),(3,1.0008,'230',30.4348,17.8261,51.7391,0.0537339,0),(4,1.00071,'228',29.8246,14.4737,55.7018,0.0744004,0),(5,1.00039,'234',26.9231,17.094,55.9829,0.0436325,0),(6,0.9999,'239',35.9833,9.20502,54.8117,0.13849,0),(7,1.00084,'177',34.4633,11.8644,53.6723,0.155042,0.0938619),(8,1.00012,'205',39.5122,8.29268,52.1951,0.208679,0.0720325);
/*!40000 ALTER TABLE `tether` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tezos`
--

DROP TABLE IF EXISTS `tezos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tezos` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tezos`
--

LOCK TABLES `tezos` WRITE;
/*!40000 ALTER TABLE `tezos` DISABLE KEYS */;
INSERT INTO `tezos` VALUES (1,4.97491,'195',30.7692,11.2821,57.9487,0.107836,0),(2,5.00748,'193',34.1969,19.6891,46.114,0.101251,0),(3,4.88775,'212',32.5472,11.3208,56.1321,0.117463,0),(4,4.9259,'174',26.4368,8.04598,65.5172,0.0952402,0),(5,4.92205,'206',29.6117,14.5631,55.8252,0.0820291,0),(6,4.86163,'217',35.9447,12.4424,51.6129,0.134438,0),(7,5.22535,'218',32.1101,16.5138,51.3761,0.114502,7.48134),(8,5.21609,'197',37.0558,11.1675,51.7766,0.145135,0.177149);
/*!40000 ALTER TABLE `tezos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tron`
--

DROP TABLE IF EXISTS `tron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tron` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tron`
--

LOCK TABLES `tron` WRITE;
/*!40000 ALTER TABLE `tron` DISABLE KEYS */;
INSERT INTO `tron` VALUES (1,0.105335,'160',37.5,6.25,56.25,0.198116,0),(2,0.105419,'163',44.7853,6.13497,49.0798,0.225571,0),(3,0.103444,'197',45.1777,5.58376,49.2386,0.250201,0),(4,0.101783,'206',33.4951,8.25243,58.2524,0.150684,0),(5,0.101315,'212',41.5094,6.60377,51.8868,0.216026,0),(6,0.101751,'198',40.9091,7.07071,52.0202,0.191628,0),(7,0.10375,'189',47.619,5.82011,46.5608,0.251434,1.96424),(8,0.103759,'180',43.8889,6.11111,50,0.235695,-0.00854672);
/*!40000 ALTER TABLE `tron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniswap`
--

DROP TABLE IF EXISTS `uniswap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uniswap` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniswap`
--

LOCK TABLES `uniswap` WRITE;
/*!40000 ALTER TABLE `uniswap` DISABLE KEYS */;
INSERT INTO `uniswap` VALUES (1,21.0179,'165',35.7576,20,44.2424,0.0612515,0),(2,21.1299,'175',37.1429,15.4286,47.4286,0.125621,0),(3,20.697,'169',42.0118,15.9763,42.0118,0.171663,0),(4,20.4198,'204',42.1569,13.2353,44.6078,0.152828,0),(5,20.2729,'147',39.4558,13.6054,46.9388,0.142742,0),(6,20.4995,'203',39.9015,11.8227,48.2759,0.16699,0),(7,21.1361,'193',46.6321,13.9896,39.3782,0.205012,3.10558),(8,21.1447,'192',40.1042,18.2292,41.6667,0.159026,-0.0405657);
/*!40000 ALTER TABLE `uniswap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xrp`
--

DROP TABLE IF EXISTS `xrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xrp` (
  `idsentimiento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL DEFAULT 0,
  `qnoticias` varchar(45) NOT NULL DEFAULT '0',
  `pos` float NOT NULL DEFAULT 0,
  `neg` float NOT NULL DEFAULT 0,
  `neu` float NOT NULL DEFAULT 0,
  `compound` float NOT NULL DEFAULT 0,
  `variacion` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsentimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xrp`
--

LOCK TABLES `xrp` WRITE;
/*!40000 ALTER TABLE `xrp` DISABLE KEYS */;
INSERT INTO `xrp` VALUES (1,1.07627,'202',37.6238,4.9505,57.4257,0.186727,0),(2,1.0804,'186',40.3226,5.37634,54.3011,0.200411,0),(3,1.06748,'224',35.7143,8.03571,56.25,0.134476,0),(4,1.0536,'195',31.2821,9.23077,59.4872,0.12568,0),(5,1.04597,'205',32.6829,5.36585,61.9512,0.153487,0),(6,1.05148,'202',34.6535,10.396,54.9505,0.154158,0),(7,1.08673,'213',39.4366,8.92019,51.6432,0.174036,3.35255),(8,1.0846,'210',36.6667,8.09524,55.2381,0.148919,0.195996);
/*!40000 ALTER TABLE `xrp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 11:45:57
