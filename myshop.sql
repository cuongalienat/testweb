-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: myshop
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shippingAdr` text COLLATE utf8mb4_general_ci,
  `userId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (5,'nhungContact22','+8489932938','Xã Bành Trạch','Huyện Ba Bể','Tỉnh Bắc Kạn','123, street 30/4',27,'2023-04-09 22:18:17','2023-05-05 17:08:38'),(6,'nhungContact1','+8489932938','Thị trấn Pác Miầu','Huyện Bảo Lâm','Tỉnh Cao Bằng','ABC, d123',27,'2023-04-09 22:35:04','2023-05-07 01:42:16'),(7,'CuongNguyen','09876543213','Thị trấn Tây Đằng','Huyện Ba Vì','Thành phố Hà Nội','sadasds',29,'2024-11-27 18:31:15','2024-11-27 18:31:15');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_general_ci,
  `writer` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_general_ci,
  `hidden` tinyint(1) DEFAULT NULL,
  `newBlog` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Mẹo bảo quản & vệ sinh các đồ nội thất','photo-1732873809130-ARMCHAIRDON-CABO3.jpg','Home\'s team 1','meo-bao-quan-&-ve-sinh-cac-do-noi-that','Chỉ với những mẹo đơn giản là bạn đã có thể dễ dàng làm sạch các vết bẩn trên đồ nội thất của gia đình luôn bền đẹp.','<ol><li>Đối với nội thất bằng kim loại</li><li class=\"ql-indent-1\">Khi xử lý các vết bẩn thông thường, bạn chỉ cần xịt một chút dung dịch vệ sinh kính và dùng khăn mềm để lau qua.</li><li class=\"ql-indent-1\">Đối với các vết ố vàng, hãy xử lý chúng bằng khăn thấm ít chanh loãng hoặc giấm. Đừng quên lau khô sản phẩm sau khi vệ sinh (để tránh axit trong dung dịch làm kim loại bị hoan gỉ). Phương pháp này cũng có thể sử dụng cho vết gỉ nhưng sử dụng dung dịch đậm đặc hơn, thời gian dùng trên sản phẩm lâu hơn (5-10 phút). Ngoài ra, khoai tây cắt lát cũng có thể thay thế chanh hay giấm.</li><li class=\"ql-indent-1\">Để đánh bóng các vật dụng bằng sắt không gỉ hoặc crom, phủ một ít bột mì lên bề mặt, chà xát, rửa lại với nước và lau thật khô.</li><li class=\"ql-indent-1\">Nếu không sử dụng những chất tẩy tự nhiên (như chanh, giấm, bột mì,...) thì hãy mua những loại dung dịch vệ sinh chuyên dụng cho từng chất liệu bạn nhé. Tuyệt đối không sử dụng giấy nhám hay các sản phẩm có mức độ tẩy rửa quá cao làm hư bề mặt sản phẩm.</li><li>Đối với nội thất có sử dụng chất hiệu da</li><li class=\"ql-indent-1\">Bạn nên tránh để các vật dụng da tiếp xúc trực tiếp với ánh sáng mặt trời làm giảm sắc tố và độ đàn hồi.</li><li class=\"ql-indent-1\">Không sử dụng chất tẩy mạnh, nhiều thành phần xút trong dung dịch.</li><li class=\"ql-indent-1\">Không sử dụng bàn chải để chà các vết bẩn trên bề mặt sản phẩm da. Vì chất liệu này cực kì nhạy cảm nên bạn hãy sử dụng những dụng cụ và chất tẩy rửa chuyên dụng để an tâm hơn bạn nhé.</li><li>Đối với mặt gương, kính</li></ol><p>Để vệ sinh gương thật sạch và sáng, trước tiên bạn hãy cố gắng loại bỏ các vết nước đọng trên gương bằng khăn ướt và khăn khô. Sau đó sử dụng các dung dịch chuyên dụng để lau gương sạch và sáng hơn, lưu ý bạn chỉ nên lau theo một chiều và cố gắng lau hết chiều dài (hoặc ngang) một lượt để hạn chế các vệt nước còn sót lại.</p>',0,1,'2023-05-04 23:01:32','2024-11-29 16:50:09');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ghế','Ghế','2023-04-06 18:09:37','2023-04-06 18:09:37'),(2,'Sofa','Sofa','2023-04-06 18:09:46','2024-11-29 17:32:31'),(4,'Bàn ','Bàn','2024-11-29 21:15:14','2024-11-29 21:15:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Xanh đậm','#050e33','2023-04-06 18:10:03','2023-04-06 18:10:03'),(2,'Cam nâu','#b33e00','2023-04-06 18:10:23','2023-04-06 18:10:23'),(3,'Trắng sữa','#cfbebe','2023-04-06 18:10:39','2023-04-06 18:10:39'),(4,'Chàm','#939c16','2023-04-06 20:45:14','2023-04-06 20:45:14'),(5,'Hồng Phấn','#e189b8','2023-04-06 20:45:38','2023-04-06 20:45:38'),(6,'Xanh sáng','#364e87','2023-05-07 00:39:08','2023-05-07 00:39:08'),(7,'Xám','#ababa6','2023-05-07 00:43:39','2023-05-07 00:43:39'),(8,'Đen','#000000','2023-05-07 00:49:25','2023-05-07 00:49:25'),(9,'Cam gỗ','#ab5f07','2023-05-07 00:49:48','2023-05-07 00:49:48'),(10,'Xanh biển','#49adc1','2023-05-07 00:54:57','2023-05-07 00:54:57'),(11,'Xám đậm','#555558','2023-05-07 00:59:47','2023-05-07 00:59:47'),(12,'Cam','#c97b0d','2023-05-07 01:21:01','2023-05-07 01:21:01'),(14,'Xanh lục đậm ','#56e16d','2024-11-29 16:23:42','2024-11-29 16:23:42');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_general_ci,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `blogId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogId` (`blogId`),
  KEY `userId` (`userId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (5,'tuyet voi',0,'2023-05-06 21:20:11','2023-05-06 21:20:11',1,28),(6,'hay qua',0,'2023-05-07 01:47:51','2023-05-07 01:49:12',1,27),(7,'that bo ich',0,'2023-05-07 01:48:29','2023-05-07 13:46:59',1,27),(8,'thật tuyệt',1,'2023-05-07 12:47:30','2023-05-07 13:59:23',1,27);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailorders`
--

DROP TABLE IF EXISTS `detailorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`),
  CONSTRAINT `detailorders_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detailorders_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailorders`
--

LOCK TABLES `detailorders` WRITE;
/*!40000 ALTER TABLE `detailorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailproducts`
--

DROP TABLE IF EXISTS `detailproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailproducts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qtyProduct` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int DEFAULT NULL,
  `colorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `colorId` (`colorId`),
  CONSTRAINT `detailproducts_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detailproducts_ibfk_2` FOREIGN KEY (`colorId`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailproducts`
--

LOCK TABLES `detailproducts` WRITE;
/*!40000 ALTER TABLE `detailproducts` DISABLE KEYS */;
INSERT INTO `detailproducts` VALUES (47,5,'2024-11-29 21:59:56','2024-11-29 21:59:56',29,4),(48,10,'2024-11-29 21:59:56','2024-11-29 21:59:56',29,14),(49,3,'2024-11-29 22:04:16','2024-11-29 22:04:16',30,2);
/*!40000 ALTER TABLE `detailproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `userId` (`userId`),
  CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedbacks_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grandtotal` int DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci,
  `status` enum('processing','shipping','delivered','cancel') COLLATE utf8mb4_general_ci DEFAULT 'processing',
  `deliveryDate` datetime DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,'886949097393',577652812,NULL,'processing',NULL,27,5,'2023-05-07 01:43:48','2023-05-07 01:43:48'),(5,'135887690108',375820000,NULL,'delivered',NULL,27,5,'2023-05-07 01:44:10','2023-05-07 01:44:26'),(6,'463344529778',329045624,NULL,'delivered','2023-05-13 07:00:00',27,5,'2023-05-07 12:11:59','2023-05-07 16:32:59'),(7,'40610397061',51734810,NULL,'processing',NULL,29,7,'2024-11-27 21:02:06','2024-11-27 21:02:06'),(8,'36900972626',18800000,NULL,'shipping','2024-12-02 07:00:00',29,7,'2024-11-29 17:33:24','2024-11-29 17:37:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productphotos`
--

DROP TABLE IF EXISTS `productphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productphotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `productphotos_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productphotos`
--

LOCK TABLES `productphotos` WRITE;
/*!40000 ALTER TABLE `productphotos` DISABLE KEYS */;
INSERT INTO `productphotos` VALUES (108,'productphoto-1732892396097-ARMCHAIRDON-CABO-PMA42005-KD1092-12-1-768x511.jpg','2024-11-29 21:59:56','2024-11-29 21:59:56',29),(109,'productphoto-1732892396097-ARMCHAIRDON-CABO-PMA42005-KD1092-12-2-768x511.jpg','2024-11-29 21:59:56','2024-11-29 21:59:56',29),(110,'productphoto-1732892656028-102437-sofa-penny-3-cho-dacognac-1-1-768x511.jpg','2024-11-29 22:04:16','2024-11-29 22:04:16',30),(111,'productphoto-1732892656028-102437-sofa-penny-3-cho-dacognac-2-1-768x511.jpg','2024-11-29 22:04:16','2024-11-29 22:04:16',30),(112,'productphoto-1732892656029-102437-sofa-penny-3-cho-dacognac-4-1-768x511.jpg','2024-11-29 22:04:16','2024-11-29 22:04:16',30),(113,'productphoto-1732892656030-102437-sofa-penny-3-cho-dacognac-5-1-768x511.jpg','2024-11-29 22:04:16','2024-11-29 22:04:16',30);
/*!40000 ALTER TABLE `productphotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_general_ci,
  `price` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `discountPer` int DEFAULT NULL,
  `totalQty` int DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_general_ci,
  `hidden` tinyint(1) DEFAULT NULL,
  `newArrival` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (29,'Armchair + Đôn Cabo','photo-1732892396002-ARMCHAIRDON-CABO-PMA42005-KD1092-12-768x511.jpg',23500000,18800000,20,15,'Chair','<p><span style=\"color: rgb(10, 10, 11);\">Vật liệu: </span>Khung gỗ Walnut, nệm bọc vải</p><p><span style=\"color: rgb(10, 10, 11);\">Kích thước: </span>D745 - R850 - C745 / D500 - R400 - C400 mm</p><p>Mô tả: <span style=\"color: rgb(48, 48, 54);\">Armchair Cabo được thiết kế nhỏ gọn nhằm tiết kiệm diện tích. Phần khung được làm từ gỗ walnut bền bỉ và nệm ghế được bọc vải mềm mại tạo nên tổng thể thiết kế sang trọng. Armchair Cabo sử dụng kết hợp với Đôn Cabo càng làm tăng cảm giác dễ chịu khi ngồi khi đọc sách hoặc làm việc.</span></p>',0,1,'2024-11-29 21:59:56','2024-11-29 21:59:56',1),(30,'Sofa 3 chỗ PENNY da cognac','photo-1732892655987-102437-sofa-penny-3-cho-dacognac-768x511.jpg',66000000,59400000,10,3,'Sofa','<p><span style=\"color: rgb(10, 10, 11);\">Kích thước: </span>D2400 - R880 - C850</p><p><span style=\"color: rgb(10, 10, 11);\">Vật liệu: </span>Chân kim loại sơn, nệm bọc da tự nhiên, nệm ngồi &amp; lưng rời</p><p><span style=\"color: rgb(48, 48, 54);\">Sự đơn giản, tinh tế, sang trọng và không kém phần nổi bật của chiếc sofa mang âm hưởng Scandinavian này với lần lượt các phiên bản màu từ tối tới sáng sẽ mang đến ấn tượng đặc sắc cho từng không gian. Thiết kế vuông vức, thanh mảnh nhẹ nhàng là tất cả những yếu tố thiết yếu hội tụ ở chiếc sofa này.</span></p>',0,1,'2024-11-29 22:04:16','2024-11-29 22:04:49',2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user','2023-04-08 10:47:25','2023-04-08 10:47:25'),(2,'admin','2023-04-08 10:47:25','2023-04-08 10:47:25');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('migration-create-address.js'),('migration-create-blog.js'),('migration-create-cart.js'),('migration-create-category.js'),('migration-create-color.js'),('migration-create-comment.js'),('migration-create-detailorder.js'),('migration-create-detailproduct.js'),('migration-create-feedback.js'),('migration-create-order.js'),('migration-create-product.js'),('migration-create-productphoto.js'),('migration-create-role.js'),('migration-create-user.js'),('migration-create-userrole.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (2,27,2,'2023-04-08 15:51:51','2023-04-08 15:51:51'),(3,28,1,'2023-05-06 21:19:49','2023-05-06 21:19:49'),(4,29,1,'2024-11-27 18:29:33','2024-11-27 18:29:33');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (27,'admin','admin@gmail.com','$2a$10$2kUD3F.bL4TaztvOCzpSfeXCGQyX85oGF68t1mtsqRGUhOeKcs7de','+8412345678','2023-04-08 15:51:51','2023-05-07 01:35:30'),(28,'yennhung','nhung1@gmail.com','$2a$10$gkXBjc4dL3zCn3FYa73pVek8w02bAP.50HN15B9PAFO.7ivKHA7d6','+8489932937','2023-05-06 21:19:48','2023-05-06 21:19:48'),(29,'cuong123','cuongalienat@gmail.com','$2a$10$fo3mwfvpJfKM/q0RyIcgL.5rIPKNDTqwIH6KI3BuFe35179H7SGMS','09867236424','2024-11-27 18:29:33','2024-11-28 21:52:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 22:23:23
