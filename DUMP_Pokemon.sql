CREATE DATABASE  IF NOT EXISTS `pokemonworlddb2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pokemonworlddb2`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemonworlddb2
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `alocado`
--

DROP TABLE IF EXISTS `alocado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alocado` (
  `FK_GINASIO_IDGINASIO` int DEFAULT NULL,
  `FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR` int DEFAULT NULL,
  KEY `FK_ALOCADO_1` (`FK_GINASIO_IDGINASIO`),
  KEY `FK_ALOCADO_2` (`FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR`),
  CONSTRAINT `FK_ALOCADO_1` FOREIGN KEY (`FK_GINASIO_IDGINASIO`) REFERENCES `ginasio` (`IDGINASIO`) ON DELETE RESTRICT,
  CONSTRAINT `FK_ALOCADO_2` FOREIGN KEY (`FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR`) REFERENCES `lider_de_ginasio` (`FK_TREINADOR_IDTREINADOR`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alocado`
--

LOCK TABLES `alocado` WRITE;
/*!40000 ALTER TABLE `alocado` DISABLE KEYS */;
INSERT INTO `alocado` VALUES (3,5),(4,6),(8,8);
/*!40000 ALTER TABLE `alocado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aprende`
--

DROP TABLE IF EXISTS `aprende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aprende` (
  `FK_ID_TECNICA` int DEFAULT NULL,
  `FK_POKEMON_IDPOKEMON` varchar(30) DEFAULT NULL,
  KEY `FK_APRENDE_1` (`FK_ID_TECNICA`),
  KEY `FK_APRENDE_2` (`FK_POKEMON_IDPOKEMON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprende`
--

LOCK TABLES `aprende` WRITE;
/*!40000 ALTER TABLE `aprende` DISABLE KEYS */;
INSERT INTO `aprende` VALUES (6,'1'),(24,'1'),(25,'1'),(5,'2'),(17,'2'),(22,'2'),(8,'4'),(10,'25'),(11,'27');
/*!40000 ALTER TABLE `aprende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batalha`
--

DROP TABLE IF EXISTS `batalha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batalha` (
  `FK_TREINADOR_IDTREINADOR` int DEFAULT NULL,
  `FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR` int DEFAULT NULL,
  `INSIGNIA` varchar(30) DEFAULT NULL,
  KEY `FK_BATALHA_1` (`FK_TREINADOR_IDTREINADOR`),
  KEY `FK_BATALHA_2` (`FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR`),
  CONSTRAINT `FK_BATALHA_1` FOREIGN KEY (`FK_TREINADOR_IDTREINADOR`) REFERENCES `treinador` (`IDTREINADOR`) ON DELETE RESTRICT,
  CONSTRAINT `FK_BATALHA_2` FOREIGN KEY (`FK_LIDER_DE_GINASIO_FK_TREINADOR_IDTREINADOR`) REFERENCES `lider_de_ginasio` (`FK_TREINADOR_IDTREINADOR`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batalha`
--

LOCK TABLES `batalha` WRITE;
/*!40000 ALTER TABLE `batalha` DISABLE KEYS */;
INSERT INTO `batalha` VALUES (1,5,'Insígnia de Pedra');
/*!40000 ALTER TABLE `batalha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_pokemon`
--

DROP TABLE IF EXISTS `centro_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_pokemon` (
  `IDCENTRO` int NOT NULL AUTO_INCREMENT,
  `ENDERECO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDCENTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_pokemon`
--

LOCK TABLES `centro_pokemon` WRITE;
/*!40000 ALTER TABLE `centro_pokemon` DISABLE KEYS */;
INSERT INTO `centro_pokemon` VALUES (1,'Pallet'),(2,'Viridian'),(3,'Pewter'),(4,'Cerulean'),(5,'Vermillion'),(6,'Fuschia'),(7,'Safron'),(8,'Power Plant'),(9,'Indigo Plateu'),(10,'Safari Zone');
/*!40000 ALTER TABLE `centro_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprega`
--

DROP TABLE IF EXISTS `emprega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprega` (
  `FK_CENTRO_POKEMON_IDCENTRO` int DEFAULT NULL,
  `FK_ENFERMEIRA_JOY_IDENFERMEIRA` int DEFAULT NULL,
  KEY `FK_EMPREGA_1` (`FK_CENTRO_POKEMON_IDCENTRO`),
  KEY `FK_EMPREGA_2` (`FK_ENFERMEIRA_JOY_IDENFERMEIRA`),
  CONSTRAINT `FK_EMPREGA_1` FOREIGN KEY (`FK_CENTRO_POKEMON_IDCENTRO`) REFERENCES `centro_pokemon` (`IDCENTRO`) ON DELETE SET NULL,
  CONSTRAINT `FK_EMPREGA_2` FOREIGN KEY (`FK_ENFERMEIRA_JOY_IDENFERMEIRA`) REFERENCES `enfermeira_joy` (`IDENFERMEIRA`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprega`
--

LOCK TABLES `emprega` WRITE;
/*!40000 ALTER TABLE `emprega` DISABLE KEYS */;
INSERT INTO `emprega` VALUES (1,1),(8,5),(10,3),(6,4),(7,4),(7,5),(7,3),(2,6),(2,4),(3,1),(3,5),(3,6),(4,1),(4,5),(7,1),(8,3),(8,2);
/*!40000 ALTER TABLE `emprega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeira_joy`
--

DROP TABLE IF EXISTS `enfermeira_joy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeira_joy` (
  `IDENFERMEIRA` int NOT NULL AUTO_INCREMENT,
  `ESPECIALIZACAO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDENFERMEIRA`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeira_joy`
--

LOCK TABLES `enfermeira_joy` WRITE;
/*!40000 ALTER TABLE `enfermeira_joy` DISABLE KEYS */;
INSERT INTO `enfermeira_joy` VALUES (1,'ORTOPEDIA'),(2,'CLÍNICO GERAL'),(3,'ODONTOLOGIA'),(4,'DERMATOLOGIA'),(5,'CIRURGIÃ'),(6,'ANESTESISTA');
/*!40000 ALTER TABLE `enfermeira_joy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ginasio`
--

DROP TABLE IF EXISTS `ginasio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ginasio` (
  `ENDERECO` varchar(30) DEFAULT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `IDGINASIO` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDGINASIO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ginasio`
--

LOCK TABLES `ginasio` WRITE;
/*!40000 ALTER TABLE `ginasio` DISABLE KEYS */;
INSERT INTO `ginasio` VALUES ('Cinnabar','Ginásio de Fogo',1),('Viridian','Ginásio de Terra',2),('Pewter','Ginásio de Pedra',3),('Cerulean','Ginásio de água',4),('Vermillion','Ginásio do tipo elétrico',5),('Fuschia','Ginásio do tipo veneno',6),('Safron','Ginásio de tipo psíquico',7),('Celadon','Ginásio do tipo Planta',8);
/*!40000 ALTER TABLE `ginasio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lider_de_ginasio`
--

DROP TABLE IF EXISTS `lider_de_ginasio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lider_de_ginasio` (
  `TITULO` varchar(100) DEFAULT NULL,
  `FK_TREINADOR_IDTREINADOR` int NOT NULL,
  PRIMARY KEY (`FK_TREINADOR_IDTREINADOR`),
  CONSTRAINT `FK_LIDER_DE_GINASIO_2` FOREIGN KEY (`FK_TREINADOR_IDTREINADOR`) REFERENCES `treinador` (`IDTREINADOR`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lider_de_ginasio`
--

LOCK TABLES `lider_de_ginasio` WRITE;
/*!40000 ALTER TABLE `lider_de_ginasio` DISABLE KEYS */;
INSERT INTO `lider_de_ginasio` VALUES ('Líder do ginásio de Pedra',5),('Líder do ginásio de água',6),('Líder do ginásio psíquico',7),('Líder do ginásio de Planta',8),('Líder do ginásio de Veneno',9),('Líder do ginásio de fogo',10),('Líder do ginásio de Terra',11),('Líder do ginásio do tipo elétrico',13);
/*!40000 ALTER TABLE `lider_de_ginasio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokedex`
--

DROP TABLE IF EXISTS `pokedex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokedex` (
  `SERIAL_NUMBER` int NOT NULL AUTO_INCREMENT,
  `COR` varchar(30) DEFAULT NULL,
  `TAMANHO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SERIAL_NUMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokedex`
--

LOCK TABLES `pokedex` WRITE;
/*!40000 ALTER TABLE `pokedex` DISABLE KEYS */;
INSERT INTO `pokedex` VALUES (1,'VERMELHA','GRANDE'),(2,'VERMELHA','PEQUENA'),(3,'AZUL','PEQUENA'),(4,'AZUL','MÉDIA'),(5,'AZUL','GRANDE'),(6,'AMARELA','GRANDE'),(7,'AMARELA','PEQUENA'),(8,'AMARELA','MÉDIA');
/*!40000 ALTER TABLE `pokedex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `NOME` varchar(30) DEFAULT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `NIVEL` int DEFAULT NULL,
  `IDPOKEMON` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO` text,
  PRIMARY KEY (`IDPOKEMON`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES ('Pikachu','Elétrico',50,1,'Rato Elétrico'),('Bulbassauro','Grama/Veneno',5,2,'Pokemon que gosta de luz solar'),('Ivisaur','Grama/veneno',20,3,'Pokemon que gosta de luz solar'),('Venosaur','Grama/veneno',40,4,'Pokemon que gosta de luz solar'),('Charmander','Fogo',5,5,'Lagarto de fogo'),('Charmeleon','Fogo',20,6,'Lagarto de fogo'),('Charizard','Fogo/Voador',50,7,'Lagarto de fogo que voa'),('Squirtle','Água',5,8,'Pokemon tartaruga'),('Wartortle','Água',25,9,'Pokemon tartaruga'),('Blastoise','Água',5,10,'Pokemon tartaruga na sua evolução final'),('Pidgey','Normal/Voador',10,11,'Pokemon pombo'),('Pidgeotto','Normal/Voador',30,12,'Pokemon pombo em sua segunda forma'),('Pidgeot','Normal/Voador',60,13,'Pokemon pombo em sua última forma'),('Pidgeot','Normal/Voador',60,14,'Pokemon pombo em sua última forma'),('Raichu','Elétrico',90,15,'Forma final do pikachu após ser exposto a pedra do trovão'),('Growlithe','Fogo',35,16,'Pokemon cão de guarda'),('Arcanine','Fogo',55,17,'Pokemon cão de guarda em sua forma final'),('Abra','Psíquico',2,18,'pokemon do tipo psíquico'),('kadabra','Psíquico',22,19,'pokemon do tipo psíquico,segura uma colher e vive dobrando ela com o poder da mente para se divertir'),('Alakazam','Psíquico',43,20,'pokemon do tipo psíquico,agora segura duas colheres e vive dobrando elas com o poder da mente para se divertir'),('Gastly','Fantasma/Veneno',12,21,'pokemon fantasma ,adora pregar peças em treinadores e outros pokemons'),('Haunter','Fantasma/Veneno',27,22,'forma evoluída do Gastly ,adora pregar peças em treinadores e outros pokemons'),('Gengar','Fantasma/Veneno',54,23,'forma final do Gastly ,adora pregar peças em treinadores e outros pokemons'),('Magikarp','Água',1,24,'faz tudo que um peixe faz... nada '),('Gyarados','Água/Voador',95,25,'forma evoluída do Magikarp,pokemon extremamente poderoso e bravo'),('Eevee','Normal',20,26,'Pokemon com múltiplas evoluções diferentes'),('Vaporeon','Água',50,27,'evolução do Eevee do tipo água'),('Jolteon','Elétrico',50,28,'evolução do Eevee do tipo elétrico'),('Flareon','Fogo',50,29,'evolução do Eevee do tipo fogo'),('Snorlax','Normal',50,30,'pokemon dorminhoco'),('Articuno','Gelo/Voador',50,31,'Ave lendária da região de Kanto'),('Zapdos','Elétrico/Voador',50,32,'Ave lendária da região de Kanto'),('Moltres','Fogo/Voador',50,33,'Ave lendária da região de Kanto'),('Dratini','Dragão',15,34,'pokemon do tipo dragão em sua forma inicial'),('Dragonair','Dragão',35,35,'evolução do Dratini'),('Dragonite','Dragão/Voador',65,36,'Evolução final do Dratini'),('Mewtwo','Psíquico',75,37,'Pokemon psíquico criado em laboratório a partir das células do Mew'),('Mew','Psíquico',75,38,'Pokemon lendário');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possui_pokemon`
--

DROP TABLE IF EXISTS `possui_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `possui_pokemon` (
  `FK_TREINADOR_IDTREINADOR` int DEFAULT NULL,
  `FK_POKEMON_IDPOKEMON` int DEFAULT NULL,
  KEY `FK_POSSUI_POKEMON_1` (`FK_TREINADOR_IDTREINADOR`),
  KEY `FK_POSSUI_POKEMON_2` (`FK_POKEMON_IDPOKEMON`),
  CONSTRAINT `FK_POSSUI_POKEMON_1` FOREIGN KEY (`FK_TREINADOR_IDTREINADOR`) REFERENCES `treinador` (`IDTREINADOR`) ON DELETE SET NULL,
  CONSTRAINT `FK_POSSUI_POKEMON_2` FOREIGN KEY (`FK_POKEMON_IDPOKEMON`) REFERENCES `pokemon` (`IDPOKEMON`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possui_pokemon`
--

LOCK TABLES `possui_pokemon` WRITE;
/*!40000 ALTER TABLE `possui_pokemon` DISABLE KEYS */;
INSERT INTO `possui_pokemon` VALUES (1,1),(3,2),(4,3),(5,4),(14,15),(8,16),(10,17),(2,25),(2,5);
/*!40000 ALTER TABLE `possui_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pokemon`
--

DROP TABLE IF EXISTS `registro_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pokemon` (
  `FK_POKEMON_IDPOKEMON` int DEFAULT NULL,
  `FK_POKEDEX_SERIAL_NUMBER` int DEFAULT NULL,
  `DATAREGISTRO_POKEMON` date DEFAULT NULL,
  KEY `FK_REGISTRO_POKEMON_1` (`FK_POKEMON_IDPOKEMON`),
  KEY `FK_REGISTRO_POKEMON_2` (`FK_POKEDEX_SERIAL_NUMBER`),
  CONSTRAINT `FK_REGISTRO_POKEMON_1` FOREIGN KEY (`FK_POKEMON_IDPOKEMON`) REFERENCES `pokemon` (`IDPOKEMON`) ON DELETE SET NULL,
  CONSTRAINT `FK_REGISTRO_POKEMON_2` FOREIGN KEY (`FK_POKEDEX_SERIAL_NUMBER`) REFERENCES `pokedex` (`SERIAL_NUMBER`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pokemon`
--

LOCK TABLES `registro_pokemon` WRITE;
/*!40000 ALTER TABLE `registro_pokemon` DISABLE KEYS */;
INSERT INTO `registro_pokemon` VALUES (1,1,'2021-01-10'),(10,1,'2020-09-10'),(38,1,'2020-10-10'),(7,1,'2021-01-17'),(12,1,'2021-01-01'),(20,1,'2020-12-31'),(15,1,'2021-01-15');
/*!40000 ALTER TABLE `registro_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicas`
--

DROP TABLE IF EXISTS `tecnicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnicas` (
  `VELOCIDADE` int DEFAULT NULL,
  `FORCA` int DEFAULT NULL,
  `NOME_TECNICA` varchar(30) DEFAULT NULL,
  `ID_TECNICA` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_TECNICA`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicas`
--

LOCK TABLES `tecnicas` WRITE;
/*!40000 ALTER TABLE `tecnicas` DISABLE KEYS */;
INSERT INTO `tecnicas` VALUES (1,50,'Aqua Jet',1),(2,75,'Dive',2),(2,100,'Dreameater',3),(2,100,'Earthquake',4),(2,50,'Ember',5),(1,50,'Fast Attack',6),(2,120,'Flamethrower',7),(2,70,'Fly',8),(2,85,'Hurricane',9),(2,120,'Hydropump',10),(3,50,'Hyper Beam',11),(2,0,'Hypnosis',12),(2,10,'Poison Powder',13),(2,50,'Rage',14),(2,0,'Rest',15),(2,0,'Sand-Attack',16),(2,20,'Scratch',17),(2,80,'Shadow-ball',18),(1,50,'Shadow-Sneak',19),(3,50,'Solar Beam',20),(2,80,'Strength',21),(2,80,'Surf',22),(2,20,'Tackle',23),(2,120,'Thunder',24),(2,80,'Thundershock',25),(2,50,'Vine whip',26),(2,50,'Water-gun',27);
/*!40000 ALTER TABLE `tecnicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tem_pokedex`
--

DROP TABLE IF EXISTS `tem_pokedex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tem_pokedex` (
  `FK_POKEDEX_SERIAL_NUMBER` int DEFAULT NULL,
  `FK_TREINADOR_IDTREINADOR` int DEFAULT NULL,
  KEY `FK_TEM_POKEDEX_1` (`FK_POKEDEX_SERIAL_NUMBER`),
  KEY `FK_TEM_POKEDEX_2` (`FK_TREINADOR_IDTREINADOR`),
  CONSTRAINT `FK_TEM_POKEDEX_1` FOREIGN KEY (`FK_POKEDEX_SERIAL_NUMBER`) REFERENCES `pokedex` (`SERIAL_NUMBER`) ON DELETE SET NULL,
  CONSTRAINT `FK_TEM_POKEDEX_2` FOREIGN KEY (`FK_TREINADOR_IDTREINADOR`) REFERENCES `treinador` (`IDTREINADOR`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tem_pokedex`
--

LOCK TABLES `tem_pokedex` WRITE;
/*!40000 ALTER TABLE `tem_pokedex` DISABLE KEYS */;
INSERT INTO `tem_pokedex` VALUES (1,1);
/*!40000 ALTER TABLE `tem_pokedex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tratamento`
--

DROP TABLE IF EXISTS `tratamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamento` (
  `FK_CENTRO_POKEMON_IDCENTRO` int DEFAULT NULL,
  `FK_POKEMON_IDPOKEMON` int DEFAULT NULL,
  `DT_SAIDA` date DEFAULT NULL,
  `DT_ENTRADA` date DEFAULT NULL,
  KEY `FK_TRATAMENTO_1` (`FK_CENTRO_POKEMON_IDCENTRO`),
  KEY `FK_TRATAMENTO_2` (`FK_POKEMON_IDPOKEMON`),
  CONSTRAINT `FK_TRATAMENTO_1` FOREIGN KEY (`FK_CENTRO_POKEMON_IDCENTRO`) REFERENCES `centro_pokemon` (`IDCENTRO`) ON DELETE SET NULL,
  CONSTRAINT `FK_TRATAMENTO_2` FOREIGN KEY (`FK_POKEMON_IDPOKEMON`) REFERENCES `pokemon` (`IDPOKEMON`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamento`
--

LOCK TABLES `tratamento` WRITE;
/*!40000 ALTER TABLE `tratamento` DISABLE KEYS */;
INSERT INTO `tratamento` VALUES (3,9,'2021-01-16','2021-01-10'),(10,22,'2021-01-10','2021-01-01'),(6,13,'2021-01-13','2021-01-12'),(8,2,'2021-01-07','2021-01-03'),(1,32,'2021-01-11','2021-01-08');
/*!40000 ALTER TABLE `tratamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinador`
--

DROP TABLE IF EXISTS `treinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinador` (
  `NOME` varchar(30) DEFAULT NULL,
  `CIDADEORIGEM` varchar(30) DEFAULT NULL,
  `IDADE` int DEFAULT NULL,
  `IDTREINADOR` int NOT NULL AUTO_INCREMENT,
  `QTDE_POKEBOLA` int DEFAULT NULL,
  PRIMARY KEY (`IDTREINADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinador`
--

LOCK TABLES `treinador` WRITE;
/*!40000 ALTER TABLE `treinador` DISABLE KEYS */;
INSERT INTO `treinador` VALUES ('Leandro Coelho','Rio de Janeiro',29,1,12),('Mariana Massine','Rio de Janeiro',25,2,15),('Allanis Cunha','Rio de Janeiro',23,3,15),('Jéssica Lira','Rio de Janeiro',27,4,20),('Brock','Pewter',14,5,3),('Misty','Cerulean',11,6,4),('Sabrina','Safron',15,7,6),('Erika','Celadon',14,8,3),('Koga','Fuschia',14,9,3),('Blaine','Cinnabar',65,10,6),('Giovanni','Viridian',45,11,6),('ASH KETCHUM','Pallet',10,12,5),('LT Surge','Vermillion',27,13,5),('Marcos Mentzingen','Rio de Janeiro',22,14,8);
/*!40000 ALTER TABLE `treinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pokemonworlddb2'
--

--
-- Dumping routines for database 'pokemonworlddb2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 17:50:56
