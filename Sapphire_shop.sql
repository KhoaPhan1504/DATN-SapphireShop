CREATE DATABASE  IF NOT EXISTS `Sapphire_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Sapphire_shop`;

--
-- Host: localhost    Database: Sapphire_shop
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'Vascara','Vascara@gmail.com','0915767465'),(3,'Sablanca','Sablanca@gmail.com','0915999999'),(4,'Juno','Juno@gmail.com','0915868565'),(5,'Sneakers','Sneakers@gamil.com','0496586526'),(6,'Rayban','Rayban@gmail.com','0915636598'),(7,'Prada','Prada@gmail.com','0945265869'),(8,'demo brand','demobrand@gmail.com','0915732659');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Túi xách'),(2,'Giày'),(3,'Kính'),(4,'Balo'),(6,'testCategory');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('admin123','admin@gmail.com',_binary '','Tôi là admin','$2a$10$k.G4fI0RgEhHJ/N..t2.aeG7x3j85dmlDbT.pWS2fxUGLSg1ddnkS','','1',NULL),('dong123','huudong297@gmail.com',_binary '','Trần Hữu Đồng','$2a$10$IDE4k.qiCIsG9VyuNOg6xuwbXhVgUWxmL/.SfTlJDAkr9255d77aS','','0',NULL),('user1','user@gmail.com',_binary '','user1','$2a$10$SPtdBxlm6KlezNspMl4CJ.oI//T8KezTFTrOy/bYV7cvsFm7tosbe','','0',NULL),('user2','user2@gmail.com',_binary '','user2','$2a$10$EZ6Gfb81tiM5NW3LCgcCyeZH88MHCj7KbDuYUqZhWXNPu07Nm1/Yq','','0',NULL),('user3','user3@gmail.com',_binary '','user3','$2a$10$/u.ChRiSn3mib4AO420qZubfV0.vIF0vI2L/bvlgAAYP6klZfd6qW','','0',NULL),('user4','user4@gmail.com',_binary '','Tôi là user4','$2a$10$Jf7UNOWOZQOscFf2rMcAN.jnZts.XEGh0pikVhjlP/Eo7qd2co/86','','0','2021-09-08 18:31:23.670000'),('user5','user5@gmail.com',_binary '','Tôi là user5','$2a$10$j3HPDFAdIYg7Hw8JGO0DFunCJ8L58rFZfCQ8Y6QFH4rXn44prmIoa','','0','2021-09-08 00:00:00.000000'),('user6','user6@gmail.com',_binary '','user6','$2a$10$rtMtZVWN6qCLQam0.jCZDe1Bm/lB5MRlXzsk0C2uHUgnebSt7NOQW','','0','2021-09-09 00:00:00.000000');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (2,NULL,460,1,'Đã Thanh Toán<3',368,2,2),(3,NULL,460,1,'Đang Giao Dịch^^!',368,3,2),(4,NULL,650,1,'Đang Giao Dịch^^!',650,4,19),(5,NULL,650,1,'Đã Thanh Toán<3',585,5,11),(6,NULL,750,1,'Đã Thanh Toán<3',675,6,10),(7,NULL,650,1,'Đã Thanh Toán<3',585,7,5),(8,NULL,750,1,'Đang Chờ Xử Lý',675,8,7),(9,NULL,300,1,'Đang Chờ Xử Lý',300,8,25),(10,NULL,750,1,'Đang Chờ Xử Lý',600,8,13),(11,NULL,650,1,'Đang Chờ Xử Lý',585,9,11),(12,NULL,650,1,'Đang Chờ Xử Lý',585,10,5),(23,NULL,460,1,'Đang Chờ Xử Lý',368,11,2),(24,NULL,550,1,'Đang Chờ Xử Lý',522.5,11,8),(25,NULL,750,1,'Đang Chờ Xử Lý',675,11,10),(26,NULL,300,1,'Đã Thanh Toán<3',300,12,25),(27,NULL,650,1,'Đã Thanh Toán<3',585,12,11),(28,NULL,550,1,'Đã Thanh Toán<3',522.5,13,8);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(2,'TP. Hà Tĩnh',0,'Túi Xách','2021-09-08','0915767465','Trần Hữu Đồng',NULL,368,NULL),(3,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,368,NULL),(4,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Ngọc Khánh',NULL,650,NULL),(5,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,585,'user5'),(6,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hoài Nam',NULL,675,'user5'),(7,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Trần Hữu Đồng',NULL,585,'dong123'),(8,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-08','0915999999','Nguyễn Văn Tú',NULL,1575,'user2'),(9,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915999999','Trần Hoài Nam',NULL,585,'user1'),(10,'Tp.Huế',0,'Demo mô tả','2021-09-09','0915999999','Nguyễn Thanh Lam',NULL,585,'user6'),(11,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915999999','Trần Hoài Nam',NULL,1565.5,'user2'),(12,'Tp.Huế',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Thanh Lam',NULL,885,'user3'),(13,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-10','0915767465','Nguyễn Văn Tú',NULL,522.5,'user4');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(455) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `brandId` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKh5l4pix4d0mc61aibdt3gj898` (`brandId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  CONSTRAINT `FKh5l4pix4d0mc61aibdt3gj898` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Nắp phối viền màu nổi bật, ấn tượng. Tặng kèm quai xích đeo chéo để phối đồ như ví đi tiệc\r\n\r\nChất liệu da tổng hợp cao cấp. Ví phù hợp dùng như ví tiền hoặc đi tiệc, dạo phố',20,'2021-09-15','xanh-nhat_vi159_1_b35061ac515949a3b18fd3175244404e_grande.jpg','Túi The Maze',460,300,2,1),(5,'Túi xách color block phối nhiều màu thanh lịch, thời thượng\r\n\r\nChi tiết khóa kim loại hiện đại. Phần quai phối màu hài hòa với thân túi. Bên trong có 1 ngăn rộng rãi kèm khóa kéo tiện dụng. Túi có 2 cách đeo: xách tay hoặc sử dụng quai đeo dài để đeo chéo\r\n\r\nChất liệu da tổng hợp cao cấp. Túi phù hợp để đi làm, dạo phố hay đi tiệc',10,'2021-09-06','hong_txn386_1_d0e41b29a09f443d8c0c809dff7e99d1_grande.jpg','Túi Xách Nhỏ Phối Color Block',650,300,2,1),(6,'Túi hộp hình học phối khóa vân đá lạ mắt, thanh lịch\r\n\r\nThiết kế tối giản nên rất dễ phối đồ. Bên trong gồm 01 ngăn lớn rộng rãi kèm khóa kéo tiện dụng\r\n\r\nĐi kèm với quai bản vừa duyên dáng, hiện đại để đeo chéo\r\n\r\nChất liệu da tổng hợp cao cấp. Túi phù hợp để đi làm, dạo phố hay đi tiệc',10,'2021-09-07','nau_txn384_1_e11bfdcc247e4e03a82214fccda38ef3_grande.jpg','Túi Xách Nhỏ Tay Cầm Cách Điệu',500,200,2,1),(7,'Túi xách nhỏ có đáy nắp gập cong nhẹ phối đậm nhạt cá tính\r\n\r\nCó 3 sự lựa chọn về màu sắc ở chiếc túi này. Những màu sắc vừa đơn giản nhưng không kém phần hiện đại rất dễ sử dụng và phối đồ.',10,'2021-09-07','cam_txn441_1_fc3ad7487fca4de9988475ebedf375e6_grande.jpg','Túi Xách Nhỏ Đeo Vai Có 2 Thiết Kế Dây Đeo',750,300,2,1),(8,'Túi xách trung phối viền màu và khóa trang trí kim loại nổi bật\r\n\r\nBên trong túi một ngăn lớn, kèm dây đeo tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp. Kiểu dáng phù hợp đi làm, đi chơi hay dự tiệc',5,'2021-09-03','hong_txt243_1_2135dfba7e7346309138ed3714bb238e_grande.jpg','Túi Xách Trung Buckle Flap',550,300,3,1),(9,'Túi đeo vai gắn charm túi mini nổi bật\r\n\r\nBên trong túi một ngăn lớn, kèm dây đeo tiện dụng\r\n\r\nChất liệu da tổng hợp cao cấp. Kiểu dáng phù hợp đi làm, đi chơi hay dự tiệc',0,'2021-09-15','hong_txt247_1_2b267e3872a3473dadb366864b085d34_grande.jpg','Túi Đeo Vai Gắn Charm Túi Mini',650,300,3,1),(10,'Túi xách nhỏ nắp gập, ngăn ngoài phối khóa kim loại hình maze nổi bật\r\n\r\nBên trong túi có nhiều ngăn nhỏ, kèm dây kim loại phối chi tiết da hiện đại\r\n\r\nChất liệu da tổng hợp cao cấp. Kiểu dáng phù hợp đi làm, đi chơi hay dự tiệc',10,'2020-09-06','xanh-luc-lam_txn484_1_50580c0a5af640a8972f2587f89e451b_grande.jpg',' Túi Xách Nhỏ Trang Trí Khóa The Maze',750,300,3,1),(11,'Túi xách trung trang trí khóa kim loại raw tạo nét hiện đại, nổi bật\r\n\r\nTúi có 2 ngăn cho bạn thoải mái mang nhiều vật dụng\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp với đi làm, đi chơi và đi dự tiệc.',10,'2021-09-23','xanh_txt245_1_830d9fd601b646918c77de2aa4a8569e_grande.jpg','Túi Xách Trung Trang Trí Khóa Kim Loại Raw',650,300,3,1),(13,'Túi xách nhỏ dáng hộp, khóa phối đan mây nổi bật, lạ mắt\r\n\r\nThiết kế túi nhỏ gọn, có 2 ngăn riêng biệt đựng được nhiều đồ dùng tiện dụng.\r\n\r\nChất liệu da tổng hợp cao cấp với 3 tông màu dễ chọn.\r\n',20,'2020-07-08','xanh_txn489_1_2ded522bd0e84f95ab7f7986f3269023_grande.jpg','Túi Xách Nhỏ Đeo Vai Khóa Mây',750,300,2,1),(14,'Túi xách nhỏ đan cạnh vền trẻ trung, hiện đại\r\n\r\nThiết kế túi kèm dây đeo tiện dụng\r\n\r\nCó nhiều sự lựa chọn về màu sắc để nàng thoải mái phối đồ và tạo phong cách mới',5,'2020-08-20','vang-nhat_txn490_1_d8758d550cf940b98c9afb105949ec70_grande.jpg','Túi Xách Nhỏ Đan Cạnh Vền',500,300,2,1),(15,'Ba lô có thể biến hóa thành túi xách phối màu color block thời thương, hiện đại\r\n\r\nQuai xích phối da có thể đeo nhiều kiểu: ba lô, cầm tay hoặc đeo chéo. Bên trong có 01 ngăn lớn rộng rãi kèm khóa kéo. Nắp gài lạ mắt\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp mang mọi dịp: đi làm, dạo phố, dự tiệc',0,'2020-08-13','nau_bl110_1_4dd15b50efc2426f9b87ddd8f46cacf4_grande.jpg','Balo Chần Bông 3 Tông Màu',800,300,4,4),(16,'Balo phong đứng với họa tiết dập nổi 3D lạ mắt, nổi bật\r\n\r\nChất liệu da tổng hợp sang trọng, dễ vệ sinh\r\n\r\nDây đeo chắc chắn, phối charm tinh tế',0,'2021-07-15','trang_bl063_1_5192ac91478942ceb44fbeab31fad069_grande.jpg','Balo Phom Đứng Hoạ Tiết 3D BL063',650,300,4,4),(17,'Balo kiểu dáng đơn giản, hiện đại gắn charm pixel nổi bật\r\n\r\nBên trong có ngăn đựng lớn, và ngăn đựng nhỏ bên ngoài. Ba lô có quai để xách hoặc đeo.\r\n\r\nChất liệu da tổng hợp cao cấp bền đẹp, dễ vệ sinh, sử dụng nhiều dịp: đi làm, dạo phố',10,'2021-09-15','xanh_bl116_1_ed76b384c2c94643ab6db440edc51260_grande.jpg','Balo Gắn Charm Pixel',850,300,4,4),(19,'Giày sneakers kiểu dáng năng động, trẻ trung\r\n\r\nCó nhiều tông màu được phối bắt mắt, cá tính \r\n\r\nPhù hợp mang nhiều dịp: đi làm, đi học hay dạo phố',0,'2021-10-01','hong_tt03034_1_6850b1bee75746c7882c9bd9b5e0eec1_grande.jpg','Giày Sneakers Rush Crush',650,300,5,2),(20,'Giày Classic Sneakers 2 sọc màu thời trang\r\n\r\nKiểu dáng thanh lịch và với tông màu chủ đạo đơn giản giúp việc phối đồ dễ dàng nhưng vẫn thời trang.\r\n\r\nĐôi giày được nhấn nhá bằng 2 sọc màu ở phần thân cực kì bắt mắt\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp mang nhiều dịp: đi làm, đi học hay dạo phố',5,'2021-03-18','do_tt03030_1_5d348938248e4df4b3018c67cf209833_grande.jpg','Giày Classic Side By Side',500,300,5,2),(21,'Giày Sneakers dòng Comfort siêu êm phối màu thời trang\r \r Với công nghệ không đường may, chất liệu đặc biệt giúp ôm gọn chân, mang lại cảm giác êm ái, thoải mái trong lúc hoạt động.\r \r Đặc biệt thoáng khí nhờ lỗ dệt chạy suốt thân giày, giúp chân dễ chịu, khử mùi tự nhiên. ',10,'2021-09-10','den_tt03029_1_3f3d996d8d69420a80823f793b46746a_grande.jpg','Giày Comfy Moon Walk',550,300,5,2),(22,'Giày oxford đế thể thao năng động, thanh lịch\r\n\r\nThân giày cắt lazer đục lỗ làm điểm nhấn thú vị. Đế cao 3cm siêu êm, siêu nhẹ\r\n\r\nChất liệu da tổng hợp cao cấp, phù hợp với nhiều dịp: đi làm, đi chơi',15,'2021-02-18','den_tt03028_1_2fa91ad69fef477495712f4ca301bdc0_grande.jpg','Giày Thể Thao Phong Cách Oxford',600,300,5,2),(23,'Mắt kính khung viền nhựa cao cấp\r\n\r\nTròng nâu, đen, đỏ chống tia UVA/UVB, TAC phân cực\r\n\r\nThích hợp phối với nhiều trang phục diện đi chơi, đi biển, ....',10,'2021-06-24','den_mk045_1_4f86b5d734434084a1178aa158684068_grande.jpg','Mắt Kính Mắt Mèo Nhựa Phối Kim Loại',300,300,6,3),(24,'Mắt kính dạng tròn viền nhựa lạ mắt\r\n\r\nChất liệu gọng kim loại cao cấp, thanh mảnh\r\n\r\nThích hợp diện nhiều dịp khác nhau như đi chơi, đi du dịch...',10,'2021-08-11','den_mk046_1_a81915dd1c25413e9af8df78f3b7956b_grande.jpg','Mắt Kính Tròn Kim Loại Phối Nhựa',460,300,6,3),(25,'Mắt kính vuông kim loại phối viền nhựa nổi bật\r\n\r\nTròng nâu đỏ, đen, hồng chống tia UVA/UVB, TAC phân cực\r\n\r\nHộp kính tam giác da PU chống nước, nắp nam châm và kèm khăn lau kính',0,'2021-09-24','den_mk048_2_2ecd969cffd94dfeaeac94f5e1e072c7_grande.jpg','Mắt Kính Vuông Kim Loại Phối Nhựa',300,300,6,3),(26,'Mắt kính ovan cá tính, sành điệu\r\n\r\nChất liệu gọng kim loại cao cấp, thanh mảnh\r\n\r\nChống tia UV cao và dễ dàng phối hợp với nhiều loại trang phục khác nhau',0,'2021-09-15','den_mk052_1_0ddcbcb5ca3d4d3e8bb6ac99fcb7c23f_grande.jpg','Mắt Kính Ovan Gọng Kim Loại Kép',350,300,7,3),(27,'Mắt kính vuông kim loại nổi bật\r\n\r\nĐệm mũi silicon mềm không in hằn\r\n\r\nHộp kính tam giác da PU chống nước, nắp nam châm và kèm khăn lau kính',5,'2021-09-10','den_mk053_1_a2f2eb28cdbc49f9bbe1329d3df2e85c_grande.jpg','Mắt Kính Vuông Kim Loại',320,200,7,3),(28,'Kính mát vuông hiện đại, trẻ trung\r\n\r\nMàu đen và hồng, phân cực chống tia UV và chống chói\r\n\r\nChất liệu gọng kim loại cao cấp',20,'2021-11-17','den_mk058_1_6384fb0f98bf409781be35c163228759_grande.jpg','Mắt Kính Vuông Kim Loại Phối Nhựa',455,300,7,3),(29,'Mắt kính tròn viền khung kim loại mảnh dập nổi\r\n\r\nTròng xanh, hồng (tráng gương) TAC phân cực, chống tia UVA/UVB\r\n\r\nĐệm mũi silicon mềm không in hằn\r\n\r\nHộp kính tam giác da PU chống nước, nắp nam châm và kèm khăn lau kính',10,'2021-09-04','xanh_mk022_1_096bc45c7eaa45b389bc78f872e2da34_grande.jpg','Mắt Kính Tròn Tràn Viền Kim Loại',350,300,3,3),(31,'Mắt kính tròn viền khung kim loại mảnh dập nổi\r\n\r\nTròng xanh, hồng (tráng gương) TAC phân cực, chống tia UVA/UVB\r\n\r\nĐệm mũi silicon mềm không in hằn\r\n\r\nHộp kính tam giác da PU chống nước, nắp nam châm và kèm khăn lau kính',10,'2021-09-04','den_mk048_2_2ecd969cffd94dfeaeac94f5e1e072c7_grande.jpg','Mắt Kính Tròn Tràn Viền Kim Loại',400,300,3,3),(35,'Mắt kính tròn viền khung kim loại mảnh dập nổi\r\n\r\nTròng xanh, hồng (tráng gương) TAC phân cực, chống tia UVA/UVB\r\n\r\nĐệm mũi silicon mềm không in hằn\r\n\r\nHộp kính tam giác da PU chống nước, nắp nam châm và kèm khăn lau kính',10,'2021-09-04','xanh_mk022_1_096bc45c7eaa45b389bc78f872e2da34_grande.jpg','Mắt Kính Tròn Tràn Viền Kim Loại',400,300,3,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin123');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-10 23:30:00
