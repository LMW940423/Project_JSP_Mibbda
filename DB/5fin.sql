CREATE DATABASE  IF NOT EXISTS `team_five` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_five`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 192.168.0.148    Database: team_five
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminId` varchar(15) NOT NULL,
  `adminPw` varchar(15) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartdetail`
--

DROP TABLE IF EXISTS `cartdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartdetail` (
  `cartQty` int(11) DEFAULT NULL,
  `goods_prdNo` int(11) NOT NULL,
  `user_userId` varchar(15) NOT NULL,
  `DcartNo` int(11) NOT NULL AUTO_INCREMENT,
  `cartinfo_cartNo` int(11) NOT NULL,
  PRIMARY KEY (`DcartNo`),
  KEY `goods_prdNo` (`goods_prdNo`),
  KEY `user_userId` (`user_userId`),
  KEY `fk_orderdetail_copy1_cartinfo1_idx` (`cartinfo_cartNo`),
  CONSTRAINT `fk_orderdetail_copy1_cartinfo1` FOREIGN KEY (`cartinfo_cartNo`) REFERENCES `cartinfo` (`cartNo`),
  CONSTRAINT `orderdetail_ibfk_20` FOREIGN KEY (`goods_prdNo`) REFERENCES `product` (`prdNo`),
  CONSTRAINT `orderdetail_ibfk_30` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartdetail`
--

LOCK TABLES `cartdetail` WRITE;
/*!40000 ALTER TABLE `cartdetail` DISABLE KEYS */;
INSERT INTO `cartdetail` VALUES (4,8,'asraseast',47,40),(1,8,'fenwew',51,44),(1,8,'wqeksnewe',53,46),(3,9,'mendi',65,54),(1,8,'mendi',66,54),(1,9,'aekslkdw',67,45),(1,9,'qetasrast',181,38),(4,14,'qetasrast',182,38),(3,22,'qetasrast',183,38),(6,9,'testid',192,60);
/*!40000 ALTER TABLE `cartdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartinfo`
--

DROP TABLE IF EXISTS `cartinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartinfo` (
  `cartNo` int(11) NOT NULL AUTO_INCREMENT,
  `user_userId` varchar(15) NOT NULL,
  `cartDate` datetime DEFAULT NULL,
  `cartTotalPrice` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cartNo`,`user_userId`),
  KEY `fk_orderinfo_user2_idx` (`user_userId`),
  CONSTRAINT `fk_orderinfo_user20` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartinfo`
--

LOCK TABLES `cartinfo` WRITE;
/*!40000 ALTER TABLE `cartinfo` DISABLE KEYS */;
INSERT INTO `cartinfo` VALUES (38,'qetasrast','2020-12-07 17:01:36','136690'),(39,'etarat','2020-12-07 17:49:27','0'),(40,'asraseast','2020-12-07 18:02:54','36000'),(41,'aetater','2020-12-07 18:10:09','0'),(42,'wldms','2020-12-07 19:09:40','0'),(43,'araradwe','2020-12-08 10:16:07','0'),(44,'fenwew','2020-12-08 10:17:56','9000'),(45,'aekslkdw','2020-12-08 10:33:55','15000'),(46,'wqeksnewe','2020-12-08 10:37:05','9000'),(47,'maskme','2020-12-08 10:38:09','0'),(48,'asenjqwesa','2020-12-08 10:39:15','0'),(49,'asodwnzx','2020-12-08 10:40:00','-8000'),(50,'ekrene','2020-12-08 10:40:52','-8000'),(51,'sonny','2020-12-08 10:42:06','0'),(52,'kante','2020-12-08 10:43:14','0'),(53,'hazard','2020-12-08 10:44:07','0'),(54,'mendi','2020-12-08 10:44:58','54000'),(55,'dsqwenas','2020-12-08 10:45:51','0'),(56,'dwqsieqw','2020-12-08 10:46:56','0'),(57,'wghwniwe','2020-12-08 10:47:44','0'),(58,'asdqwhat','2020-12-08 10:53:03','0'),(60,'testid','2020-12-08 16:20:06','90000');
/*!40000 ALTER TABLE `cartinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `admin_adminId` varchar(15) NOT NULL,
  `qComment` text,
  `qna_qSeqno` int(11) NOT NULL,
  PRIMARY KEY (`admin_adminId`,`qna_qSeqno`),
  KEY `comment_ibfk_1` (`qna_qSeqno`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`qna_qSeqno`) REFERENCES `qna` (`qSeqno`),
  CONSTRAINT `fk_comment_admin1` FOREIGN KEY (`admin_adminId`) REFERENCES `admin` (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('admin','문의해주셔서 감사합니다.\r\n\r\n마이페이지 - 프로필 수정을 들어가서 회원탈퇴 버튼을 눌러주시면 정상적으로 탈퇴가 진행됩니다. 만약 탈퇴 버튼을 눌렀음에도 탈퇴가 되지 않을 경우 다시 문의주시면 탈퇴 처리 도와드리겠습니다.\r\n\r\n오늘도 저희 미쁘다를 사랑해주셔서 감사합니다.',1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eSeqno` int(11) NOT NULL AUTO_INCREMENT,
  `eTitle` varchar(45) DEFAULT NULL,
  `eContent` varchar(45) DEFAULT NULL,
  `eFilename` varchar(45) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`eSeqno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'회원이기만 하면 누구나 참여 가능한 이벤트입니다.','저희 미쁘다 회원님들에 한해 이벤트를 진행합니다.','2020120814274569.png','2020-07-30','2020-09-10'),(2,'인스타그램 참여 이벤트','인스타그램 참여 이벤트','20201208151110666.png','2020-10-30','2020-11-30'),(3,'미쁘다 상품 구매 후 참여 가능한 리뷰 이벤트!!','리뷰를 등록해주시고 참여하기 버튼을 클릭해주시면 추첨을 통해 당첨자를 뽑습니다.','2020120815945386.png','2020-11-10','2020-12-31');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management` (
  `goods_prdNo` int(11) NOT NULL,
  `admin_adminId` varchar(15) NOT NULL,
  PRIMARY KEY (`goods_prdNo`,`admin_adminId`),
  KEY `fk_management_admin1_idx` (`admin_adminId`),
  CONSTRAINT `fk_management_admin1` FOREIGN KEY (`admin_adminId`) REFERENCES `admin` (`adminId`),
  CONSTRAINT `fk_management_goods1` FOREIGN KEY (`goods_prdNo`) REFERENCES `product` (`prdNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management`
--

LOCK TABLES `management` WRITE;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
/*!40000 ALTER TABLE `management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nSeqno` int(11) NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(45) NOT NULL,
  `nContent` text NOT NULL,
  `nDate` date DEFAULT NULL,
  `admin_adminId` varchar(15) NOT NULL,
  PRIMARY KEY (`nSeqno`,`admin_adminId`),
  UNIQUE KEY `seqno_UNIQUE` (`nSeqno`),
  KEY `fk_notice_admin_idx` (`admin_adminId`),
  CONSTRAINT `fk_notice_admin` FOREIGN KEY (`admin_adminId`) REFERENCES `admin` (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (20,'삼성페이 쇼핑 종료','안녕하세요. 미쁘다입니다.\r\n\r\n\r\n삼성페이앱을 통해 이용하셨던 삼성페이쇼핑이 아래와 같이 종료되어 안내 드립니다.\r\n\r\n■종료일자 : 2020년 10월 26일(월)\r\n■종료내용 : 삼성페이앱 내 미쁘다 쇼핑 서비스\r\n■유의사항 : 삼성페이 리워드 관련문의는 삼성페이 고객센터로 부탁드립니다.(삼성페이 고객센터 : 1588-7456)\r\n\r\n감사합니다.','2020-12-08','admin'),(21,'관세청, 지식재산권 침해물품 반입 예방 홍보 안내','안녕하세요. 미쁘다 입니다.\r\n\r\n관세청에서는 최근 해외직구 등 개인직거래가 증가하면서 탁송품을 통한 지식재산권 침해물품의 반입이 증가하고 있어 국민의 피해가 속출되고 있음에 우려하며, 지식재산권 침해물품 반입 예방을 위한 대국민 홍보 영상 및 웹툰을 제작하였습니다.\r\n\r\n\r\n\r\n해외직구를 통하여 구매하는 짝퉁(지식재산권 침해물품)은 용도나 수량에 관계없이 국내 반입할 수 없기 때문에 상표권 등 지식재산권 침해가 명백하다면 통관보류됩니다.\r\n\r\n안전성이 검증되지 않은 불법복제품을 사용하였을 때 발생할 수 있는 소비자 피해를 예방하기 위하여 이베이코리아와 관세청은 앞으로도 지식재산권 침해물품 반입 차단에 최선의 노력을 다하겠습니다.\r\n\r\n※관세법에서 보호하는 지적재산권:\r\n상표권, 저작권 등, 품종보호권, 지리적표시권 등, 특허권, 디자인권\r\n\r\n감사합니다.^^','2020-12-08','admin'),(22,'국표원, 코로나19 관련 소비증가 품목 40개 제품 리콜 명령','안녕하세요. 미쁘다입니다.\r\n\r\n산업통상자원부 국가기술표준원은 코로나19의 장기화로 개인 취미활동이 많아짐에 따라, 실내 놀이 여가용품 등 언택트시대 관련 502개 제품에 대해 9∼10월간 집중적으로 안전성조사를 실시한 결과, 어린이 완구, 실내용 텐트, 트램펄린 등 적발된 213개 제품의 제조·수입업자에 대해 위반정도에 따라 수거 등을 명령(40개) 또는 권고(173개)하였다고 밝혔습니다.\r\n\r\n안전조사 결과에 대한 자세한 정보는 아래 링크에서 확인하실 수 있습니다.\r\n\r\n향후에도 관련 내용을 신속하게 공지할 예정이오니 관련 제품을 판/구매하시는 분들은 지속적인 관심을 가져 주시기 바랍니다.\r\n\r\nG마켓은 항상 건전한 인터넷 상거래 문화를 선도하기 위하여 노력하겠습니다.\r\n\r\n감사합니다.\r\n\r\n※ 안전조사 결과에 대한 자세한 정보는 아래 링크에서 확인하실 수 있습니다.','2020-12-08','admin'),(23,'한국소비자원, OECD 글로벌 인식 개선 캠페인(완구)','안녕하세요. G마켓입니다.\r\n\r\n한국소비자원에서는 온라인에서의 안전한 완구 구매/판매 환경을 위해 소비자/사업자 대상으로 OECD에서 마련한 권고사항을 바탕으로 인포그래픽으로 제작해 배포하였습니다.\r\n완구 구매 시, 아래 내용을 참고하여 주시기 바랍니다.\r\n\r\nG마켓은 안전한 인터넷 상거래 문화를 선도하기 위해 노력하겠습니다.\r\n\r\n감사합니다.','2020-12-08','admin'),(24,'추석연휴 기간 고객센터 휴무 일정 및 배송/반품/교환 일정','안녕하세요. 미쁘다입니다.\r\n\r\n \r\n\r\n옥션을 사랑해주시는 모든 고객님들께 추석 연휴를 맞이하여 감사의 마음을 전하며\r\n추석연휴 기간 고객센터 휴무 일정 및 배송/반품/교환 관련하여 안내 드립니다.\r\n\r\n \r\n\r\n- 고객센터 휴무 일정 : 9/30(수) ~ 10/4(일)\r\n※ 스마일클럽/스마일페이 등 일부 고객센터는 운영합니다.\r\n\r\n \r\n\r\n- 배송관련\r\n-> 일반상품 : 추석연휴 이전 배송여부는 주문 시 상품 상세설명을 참고하시거나 판매자에게 문의해 주시기 바랍니다.\r\n-> 스마일배송상품 : 9/27(일) 오후 8시 이전 구매하신 건은 구매 당일 배송되며 이후 구매건은 10월 5일(월)부터 순차 배송됩니다.\r\n\r\n \r\n\r\n- 반품/교환관련\r\n-> 추석연휴 택배사 영업일정으로 인해 해 반품/교환 상품의 회수가 지연될 수 있는 점 양해 부탁드리며 10월 5일(월) 이후 순차적으로 회수를 진행할 예정입니다.\r\n\r\n행복한 추석 연휴 보내시기 바랍니다.\r\n\r\n감사합니다.','2020-12-08','admin'),(25,'미쁘다 사이트 이용 일시 중단','안녕하세요. 옥션입니다.\r\n\r\n \r\n\r\n고객님들께 보다 나은 서비스를 제공하기 위해 시스템 정기 점검을 진행할 예정입니다.\r\n\r\n시스템을 점검하는 동안 일시적으로 사이트 이용이 불가하오니 아래 일정을 참고하여 주시기 바랍니다.\r\n\r\n \r\n\r\n■ 옥션 : 2020. 10. 16 (금) 03:00 ~ 06:30\r\n■ ESM+ : 2020. 10. 16 (금) 03:00 ~ 07:00\r\n\r\n \r\n\r\n사이트 이용에 불편을 드린 점 널리 양해 부탁드리며, 앞으로 더 나은 서비스를 제공하기 위해 최선을 다하겠습니다.\r\n\r\n감사합니다.','2020-12-08','admin'),(26,'미쁘절 리본카 \'그랜저\' 경품 이벤트','미쁘절 리본카  \'그랜저\' 경품 이벤트 당첨자를 발표합니다. \r\n당첨을 축하 드리며, 아래 내용 확인 부탁 드립니다.  \r\n\r\n■ 이벤트 내용 : 미쁘절 기간동안 리본카 가입하고 응모 이벤트\r\n■ 이벤트 기간 :  2020년 11월 1일 ~ 11월 10일\r\n■ 당첨 경품 : 그랜저 1대\r\n■ 당첨자수: 총 1명 \r\n* 제세공과금은 리본카 부담이며 당첨관련 리본카에서 개별 안내 예정\r\n\r\n■ 유의사항\r\n타인 계정으로 응모 시, 당첨 취소될 수 있습니다.\r\n불확실한 개인정보를 제공하거나 고객 귀책 사유 발생 시 당첨이 취소될 수 있습니다.\r\n부정한 방법으로 이벤트에 참여한 경우 당첨이 취소되며, 법에 따른 처벌 대상이 될 수 있습니다.\r\n당첨 고객이 당첨 포기하는 경우 당첨자에서 제외되며 추가로 당첨자를 추점 하지 않습니다.\r\n본 이벤트는 당사 사정으로 인해 별도 고지 없이 변경 또는 종료될 수 있습니다.\r\n당첨 관련한 문의는 11번가 고객센터(1599-0110)로 문의 주시기 바랍니다.','2020-12-08','admin'),(27,'직거래 피해 주의 안내','안녕하세요. 미쁘다 입니다.\r\n \r\n최근 고가의 가전제품을 빠른 배송, 할인해준다며 사기사이트로 유도하고 현금을 입금하면 잠적하는 인터넷 사기로 인해 소비자들의 피해가 발생하고 있어 고객님들의 각별한 주의가 필요해 안내 드립니다.\r\n \r\n안전한 거래를 위하여 판매자가 자신이 운영하는 쇼핑몰 등 직거래를 유도하는 경우 거래에 응하지 마시고, 11번가에서 거래하여 사기 피해 없으시길 바랍니다.\r\n \r\n \r\n■ 직거래 사기 유형\r\n  - 판매자의 별도 계좌로 현금 입금할 경우 할인해주겠다고 유인\r\n  - 상품페이지 내 재고확인을 위해 먼저 연락을 달라고 유인\r\n  - 안전결제 상품이라며 가짜 구매 링크 URL을 통해 결제 유도\r\n  - 이메일, 문자, SNS 메신저, 전화 등을 통해 직거래 의사를 묻는 경우\r\n\r\n \r\n\r\n■  직거래 유도 사기 피해 발생 시 경찰 신고 방법\r\n<인터넷>\r\n  - 경찰청 사이트(www.police.go.kr) → 신고/지원→ 사이버안전지킴이 → 사이버범죄 신고/상담\r\n\r\n  - 검색창 활용 시「사이버범죄 신고」검색\r\n\r\n<모바일>\r\n  - Google Play 스토어, 애플 App Store 「사이버캅」어플리케이션 다운로드 “사이버범죄 신고/상담”\r\n\r\n<경찰서>\r\n  - 민원실 또는 사이버수사팀에서 신고/상담\r\n \r\n■ 직거래 사기피해 방지 Tip\r\n  -  11번가 결제서비스가 아닌 판매자가 요청하는 결제서비스 및 일반계좌로 거래에 응하지 마시기 바랍니다.\r\n  -  11번가 결제서비스가 아닌 현금유도를 하는 경우 위 경찰신고 채널 및 11번가 안전거래센터/고객센터로 신고바랍니다.\r\n \r\n※ TV, 냉장고, 세탁기등 대형가전에서 많이 발생하고 있으니 직거래 사기에 주의 하시기 바랍니다.\r\n \r\n \r\n앞으로도 더욱 안전하고 믿을 수 있는 11번가가 되도록 노력하겠습니다\r\n \r\n감사합니다.\r\n\r\n','2020-12-08','admin'),(28,'AllPRIME 제휴 혜택 및 멤버십 서비스 종료 안내','안녕하세요. 미쁘다 입니다.\r\n새로운 멤버십 서비스 준비를 위해 이용하고 계시는 AllPRIME 서비스가 종료되어 안내 드립니다.\r\n서비스 종료 및 제휴 혜택 중단 일정은 아래 일자 별 주요 변경 내용 확인 부탁드립니다.\r\n그동안 올프라임을 이용해주신 고객님께 깊이 감사 드리며,\r\n2021년, 더 나아진 새로운 서비스로 보답하겠습니다.\r\n\r\n \r\n\r\n \r\n\r\n1) 2020년 10월 31일(토) 라이프/여행 할인 쿠폰 혜택이 종료됩니다.\r\n    (요기요, 롯데시네마, 세포라, 마티니 라운지 혜택 종료/콘텐츠&쇼핑 혜택은 유지)\r\n    * 2020년 11월 1일(일)~11월 30일(월) 제휴 혜택 중단에 따른 별도 혜택 추가 지급 예정\r\n\r\n\r\n2) 2020년 11월 1일(일) AllPRIME 신규가입과 정기 결제가 중단됩니다.\r\n    예) 매달 5일이 정기 결제인 경우\r\n     - 10월 5일: 마지막 정기 결제일\r\n     - 11월 4일: 서비스 이용 종료일(30일 이용 기간)\r\n\r\n\r\n3) 2020년 11월 30일(월) AllPRIME 서비스가 종료됩니다.\r\n    2021년 초 새로운 멤버십 서비스가 출시될 예정입니다.\r\n\r\n\r\n4) AllPRIME을 이용하고 계신 고객님께 감사한 마음을 담아\r\n   제휴 혜택 중단에 따른 11월 한달간 별도 추가 혜택을 드릴 예정입니다.\r\n\r\n \r\n\r\n\r\nAllPRIME 서비스를 이용해 주셔서 감사합니다.\r\n2021년 새로운 서비스로 다시 인사 드리겠습니다.\r\n\r\n \r\n\r\n \r\n\r\n☎ 문의: AllPRIME 고객센터(1599-1199)','2020-12-08','admin'),(29,'정기점검으로 인한 서비스 일시중지','안녕하세요. 미쁘다 입니다.\r\n\r\n항상 11번가를 이용해 주시고 사랑해 주시는 회원님께\r\n감사의 말씀을 드립니다.\r\n\r\n2013년 1월 4일(금), 미쁘다 전체 사이트(셀러오피스 포함) 정기점검이 진행될 예정입니다.\r\n\r\n■ 점검 시간 :\r\n2013년 1월 4일(금), 03:00 ~ 04:00 (1시간)\r\n\r\n \r\n\r\n■ 셀러오피스 점검 시간 : \r\n\r\n2013년 1월 4일(금), 03:00 ~ 04:00 (1시간)\r\n\r\n \r\n\r\n \r\n\r\n해당 점검시간에는 사이트의 접속이 불가하오니,\r\n회원님의 깊은 양해바랍니다.\r\n\r\n ','2020-12-08','admin'),(30,'제안하기 이벤트 선정자 안내','안녕하세요, 고객님. 티몬입니다.\r\n티몬 9월 제안하기 이벤트에 참여해주셔서 감사합니다.\r\n \r\n9월 제안하기 이벤트 선정자 안내 드립니다. 선정 되신 모든 분들께 축하의 인사를 전합니다.\r\n앞으로도 고객님들의 소중한 의견에 귀 기울여 보다 나은 서비스를 제공할 수 있도록 노력하겠습니다.\r\n \r\n* 해당 적립금은 10월 14일 수요일 지급 됩니다.\r\n* 적립금 유효기간 : ~2020년 11월 12일\r\n \r\n[이벤트 결과 발표]\r\n우수제안 적립금 10,000원 - 5명\r\n','2020-12-08','admin'),(31,'미쁘다 앱 정보 검색이 새로운 모습을 선보입니다.','앱(애플리케이션)을 검색할 때 효과적으로 볼 수 있도록, 더 많은 앱이 검색될 수 있도록 \r\n12월17일 앱 검색이 개편됩니다.\r\n\r\n\r\n| 앱을 더 효과적으로 서핑할 수 있는 화면 디자인\r\n\r\n기존에는 한 화면에서 최대 4개 정도의 앱을 살펴볼 수 있었다면,\r\n보다 다양한 앱을 한눈에 비교할 수 있도록 제공합니다.\r\n​\r\n앱 다운로드 시 고려할 수 있는 별점 정보도 잘 보이도록 구성하였습니다.\r\n\r\n| 더 많은 앱이 검색될 수 있는 똑똑한 수집 기술\r\n\r\n네이버 앱 검색이 보다 똑똑한 수집 기술로 검색을 제공해줍니다.\r\n\r\n검색하고자 하는 앱을 더 똑똑하게 찾아주도록 검색 키워드를 자동 확장하고,​\r\n과거 앱 검색의 경우 원스토어에 등록된 앱과 일부 인기 Google Play 앱을 대상으로 제공했다면, \r\n이번 개선을 통해 좀 더 많은 앱이 검색 결과로 제공됩니다. \r\n​※ 원스토어, Google Play, Apple App Store의 앱을 대상으로 서비스 제공되며 연결 프로그램 (앱 제공처) 선택 가능.\r\n\r\n사용자가 필요할 앱을 더 빠르고 쉽게 찾을 수 있도록 노력했습니다.\r\n앞으로도 당신을 위한 네이버 검색 기대해주세요.\r\n\r\n감사합니다. ','2020-12-08','admin'),(32,'미쁘다페이 DB점검으로 인한 서비스 일시 중단 안내','안녕하세요. 네이버페이입니다.\r\n \r\n보다 안정적인 서비스 제공을 위해 네이버페이 DB 점검을 진행할 예정입니다.\r\n아래 일정을 참고하시어 서비스 이용에 불편이 없으시기를 바랍니다.\r\n\r\n- 점검 일정 : 2020년 12월 19일(토), 04시 00분 ~ 05시 30분 (약 1시간 30분)\r\n- 서비스 중단 사유 : 안정적인 서비스 제공을 위한 네이버페이 DB 점검\r\n- 서비스 중단 영향 : 네이버페이 전체 서비스 중단 (주문, 결제, 포인트 적립/사용 등 페이 전체 서비스 이용 불가)\r\n\r\n* 해당 시간대에 무통장 입금을 진행하시는 경우 입금 처리가 되지 않으며, 네이버페이 체크카드를 이용 중이신 경우 ATM 출금은 불가능합니다.\r\n(네이버페이 체크카드 및 네이버페이 신용카드 결제 서비스 이용은 가능)\r\n \r\n또한, 점검 시간 동안 제휴카드로 결제한 내역은 네이버페이 결제 내역에서 확인이 불가한 점 참고 부탁드리겠습니다.\r\n배송관련 알림(네이버 알림, SMS 알림) 또한 해당 시간대 발송되지 않으므로, 점검 후 발생하는 알림부터 받으실 수 있는 점 참고 부탁드립니다.\r\n \r\n※ 서비스 재개는 시스템 점검 상황에 따라 변경될 수 있습니다.\r\n관련 문의사항은 고객센터(https://talk.naver.com/ct/wcarl0)로 접수 부탁드립니다.\r\n\r\n\r\n감사합니다.','2020-12-08','admin'),(33,'미쁘다알림 설정 변경사항 안내','안녕하세요.\r\n미쁘다 알림서비스팀입니다.\r\n​\r\n미쁘다알림의 알림 설정 기능이 일부 변경되어 안내드립니다.\r\n​\r\n기존에는 \'알림 개수 표시\'만 별도로 제어할 수 있는 설정이 없었는데요.\r\n알림이 쌓여도, 알림 개수 표시가 노출되지 않도록 설정할 수 있는 \r\n\'새로 받은 알림 개수\' 설정 기능이 제공됩니다. \r\n​\r\n• 기존에 \'배지알림 모두 받기\' 설정이 \'새로 받은 알림 개수\' 설정으로 변경됩니다.\r\n• 기존에 \'배지알림 모두 받기\' 설정이 OFF인 사용자는 \'새로 받은 알림 개수\' 설정도 그대로 OFF로 유지됩니다.\r\n• 이 외 개별 서비스의  알림수신여부 설정은 기존과 동일하게 사용하실 수 있습니다. \r\n\r\n※ 사용방법 ※ \r\n\r\n\r\n1. 모바일 네이버 홈에서 내 서랍 버튼을 선택합니다.\r\n2. 알림서랍의 알림설정 버튼을 선택합니다.\r\n3. 알림 수신 설정의 배지알림 탭을 선택합니다. \r\n4. 배지알림 탭에서 \'새로 받은 알림 개수\' 설정을 ON/OFF 합니다. \r\n\r\n* PC - 새로 받은 알림 개수 숨김 설정 위치 : PC 네이버 홈 -> 로그인 -> MY영역 알림탭 -> 알림설정\r\n  \r\n\r\n\r\n \r\n더욱 나은 서비스로 보답할 수 있도록 최선의 노력을 다하겠습니다.\r\n감사합니다.\r\n​\r\n미쁘다 알림서비스 드림','2020-12-08','admin'),(34,'안녕하세요','항상 저희 미쁘다를 사랑해주셔서 감사합니다.','2020-12-08','admin');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open`
--

DROP TABLE IF EXISTS `open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `open` (
  `admin_adminId` varchar(15) NOT NULL,
  `event_eSeqno` int(11) NOT NULL,
  PRIMARY KEY (`admin_adminId`,`event_eSeqno`),
  KEY `fk_open_admin1_idx` (`admin_adminId`),
  KEY `open_ibfk_1` (`event_eSeqno`),
  CONSTRAINT `fk_open_admin1` FOREIGN KEY (`admin_adminId`) REFERENCES `admin` (`adminId`),
  CONSTRAINT `open_ibfk_1` FOREIGN KEY (`event_eSeqno`) REFERENCES `event` (`eSeqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open`
--

LOCK TABLES `open` WRITE;
/*!40000 ALTER TABLE `open` DISABLE KEYS */;
/*!40000 ALTER TABLE `open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `ordQty` int(11) DEFAULT NULL,
  `ordReview` text,
  `ordStar` varchar(45) DEFAULT NULL,
  `orderinfo_ordNo` int(11) NOT NULL,
  `goods_prdNo` int(11) NOT NULL,
  `user_userId` varchar(15) NOT NULL,
  `ordRefund` datetime DEFAULT NULL,
  `orddeNo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`orddeNo`),
  KEY `fk_orderdetail_orderinfo1_idx` (`orderinfo_ordNo`),
  KEY `goods_prdNo` (`goods_prdNo`),
  KEY `user_userId` (`user_userId`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderinfo_ordNo`) REFERENCES `orderinfo` (`ordNo`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`goods_prdNo`) REFERENCES `product` (`prdNo`),
  CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (2,'아직 써보질 못해서 일단 3점드립니다..','★★★',21,8,'wldms',NULL,17),(3,'맘에 듭니다.','★★★★★',57,8,'qetasrast',NULL,18),(10,'언제나 만족스러운 제품! 이번엔 지인들에게도 나눠주기 위해 대량구매했네요ㅋㅋ','★★★★★',58,8,'qetasrast',NULL,19),(1,'너무 좋아서 재주문했습니다~','★★★★★',59,8,'qetasrast',NULL,20),(1,NULL,NULL,60,8,'etarat',NULL,21),(4,'후기가 좋길래 한번 주문해봤는데 후기 그대로네요ㅎ 배송도 빠르고 좋습니다~','★★★★★',61,8,'asraseast',NULL,22),(2,NULL,NULL,62,8,'wldms',NULL,23),(3,NULL,NULL,63,8,'araradwe',NULL,24),(5,'상품은 매우 만족스럽습니다! 다만, 배송이 조금 느린 점이 아쉽네요ㅠㅠ 그래도 강추입니다!\r\n','★★★★',64,8,'fenwew',NULL,25),(1,'리뷰 좋아서 주문했는데 너무 실망스럽습니다.. 각질 제거 효과 하나도 없네요..','★',65,8,'maskme',NULL,27),(3,'후기가 좋은 이유가 있네요 진짜ㅋㅋ 오늘도 믿고 사는 미쁘다 제품!','★★★★★',75,8,'whdcks',NULL,29),(3,'리뷰가 좋아서 써봤는데 저는 잘 모르겠네요..','★★★',77,8,'hazard',NULL,30),(1,NULL,NULL,77,9,'hazard',NULL,31),(1,NULL,NULL,78,8,'sonny',NULL,32),(4,NULL,NULL,78,9,'sonny',NULL,33),(1,NULL,NULL,79,8,'kante',NULL,34),(1,NULL,NULL,79,9,'kante',NULL,35),(1,'각질 제거에 탁월합니다! 또 구매 예정!','★★★★',80,8,'mendi',NULL,36),(1,NULL,NULL,80,9,'mendi',NULL,37),(1,NULL,NULL,81,8,'dsqwenas',NULL,38),(1,NULL,NULL,81,9,'dsqwenas',NULL,39),(2,NULL,NULL,82,10,'aetater',NULL,40),(1,NULL,NULL,82,9,'aetater',NULL,41),(1,NULL,NULL,82,8,'aetater',NULL,42),(1,NULL,NULL,83,12,'asodwnzx',NULL,43),(1,NULL,NULL,83,8,'asodwnzx',NULL,44),(1,NULL,NULL,83,10,'asodwnzx',NULL,45),(1,NULL,NULL,83,11,'asodwnzx',NULL,46),(1,NULL,NULL,83,13,'asodwnzx',NULL,47),(1,NULL,NULL,83,9,'asodwnzx',NULL,48),(1,NULL,NULL,84,13,'ekrene',NULL,49),(1,NULL,NULL,84,9,'ekrene',NULL,50),(1,NULL,NULL,84,10,'ekrene',NULL,51),(1,NULL,NULL,84,11,'ekrene',NULL,52),(1,NULL,NULL,84,12,'ekrene',NULL,53),(1,NULL,NULL,84,8,'ekrene',NULL,54),(1,'배송이 많이 느리네요.. 일주일만에 받았습니다.. 물건에 이상은 없었습니다!','★★★',85,13,'sonny',NULL,55),(1,NULL,NULL,85,9,'sonny',NULL,56),(1,NULL,NULL,85,8,'sonny',NULL,57),(1,NULL,NULL,85,10,'sonny',NULL,58),(1,NULL,NULL,85,12,'sonny',NULL,59),(1,NULL,NULL,85,14,'sonny',NULL,60),(1,NULL,NULL,85,11,'sonny',NULL,61),(1,NULL,NULL,86,15,'kante',NULL,62),(1,NULL,NULL,86,9,'kante',NULL,63),(1,'It\'s amazing! I love it!!','★★★★★',86,8,'kante',NULL,64),(1,NULL,NULL,86,10,'kante',NULL,65),(1,NULL,NULL,86,11,'kante',NULL,66),(1,NULL,NULL,86,12,'kante',NULL,67),(1,NULL,NULL,86,13,'kante',NULL,68),(1,NULL,NULL,86,14,'kante',NULL,69),(1,NULL,NULL,86,16,'kante',NULL,70),(1,NULL,NULL,87,16,'hazard',NULL,71),(1,NULL,NULL,87,9,'hazard',NULL,72),(1,NULL,NULL,87,8,'hazard',NULL,73),(1,NULL,NULL,87,10,'hazard',NULL,74),(1,NULL,NULL,87,11,'hazard',NULL,75),(1,'피부가 시원해지는 느낌이에요~','★★★★★',87,12,'hazard',NULL,76),(1,NULL,NULL,87,13,'hazard',NULL,77),(1,NULL,NULL,87,14,'hazard',NULL,78),(1,NULL,NULL,87,15,'hazard',NULL,79),(1,NULL,NULL,87,17,'hazard',NULL,80),(1,NULL,NULL,88,19,'dsqwenas',NULL,81),(1,'나쁘지 않네요~! 배송이 빨라서 5점 드립니다!','★★★★★',88,8,'dsqwenas',NULL,82),(1,NULL,NULL,88,9,'dsqwenas',NULL,83),(1,NULL,NULL,88,10,'dsqwenas',NULL,84),(1,NULL,NULL,88,11,'dsqwenas',NULL,85),(1,NULL,NULL,88,12,'dsqwenas',NULL,86),(1,NULL,NULL,88,13,'dsqwenas',NULL,87),(1,NULL,NULL,88,14,'dsqwenas',NULL,88),(1,NULL,NULL,88,15,'dsqwenas',NULL,89),(1,NULL,NULL,88,16,'dsqwenas',NULL,90),(1,NULL,NULL,88,18,'dsqwenas',NULL,91),(1,NULL,NULL,89,21,'dwqsieqw',NULL,92),(1,'각질제거에 아주 효과적이네요~!','★★★★★',89,8,'dwqsieqw',NULL,93),(1,NULL,NULL,89,10,'dwqsieqw',NULL,94),(1,NULL,NULL,89,9,'dwqsieqw',NULL,95),(1,NULL,NULL,89,11,'dwqsieqw',NULL,96),(1,NULL,NULL,89,12,'dwqsieqw',NULL,97),(1,NULL,NULL,89,13,'dwqsieqw',NULL,98),(1,NULL,NULL,89,14,'dwqsieqw',NULL,99),(1,NULL,NULL,89,15,'dwqsieqw',NULL,100),(1,NULL,NULL,89,17,'dwqsieqw',NULL,101),(1,NULL,NULL,89,16,'dwqsieqw',NULL,102),(1,NULL,NULL,89,18,'dwqsieqw',NULL,103),(1,NULL,NULL,89,19,'dwqsieqw',NULL,104),(1,NULL,NULL,90,22,'wghwniwe',NULL,105),(1,'리뷰가 좋은 이유가 있군요ㅋㅋ 만족스럽습니다!','★★★★★',90,8,'wghwniwe',NULL,106),(1,NULL,NULL,90,9,'wghwniwe',NULL,107),(1,NULL,NULL,90,10,'wghwniwe',NULL,108),(1,NULL,NULL,90,11,'wghwniwe',NULL,109),(1,NULL,NULL,90,12,'wghwniwe',NULL,110),(1,NULL,NULL,90,13,'wghwniwe',NULL,111),(1,NULL,NULL,90,14,'wghwniwe',NULL,112),(1,NULL,NULL,90,15,'wghwniwe',NULL,113),(1,NULL,NULL,90,16,'wghwniwe',NULL,114),(1,NULL,NULL,90,17,'wghwniwe',NULL,115),(1,NULL,NULL,90,18,'wghwniwe',NULL,116),(1,NULL,NULL,90,19,'wghwniwe',NULL,117),(1,NULL,NULL,90,21,'wghwniwe',NULL,118),(1,NULL,NULL,90,20,'wghwniwe',NULL,119),(1,NULL,NULL,90,23,'wghwniwe',NULL,120),(1,NULL,NULL,91,24,'asdqwhat',NULL,121),(1,NULL,NULL,91,8,'asdqwhat',NULL,122),(1,NULL,NULL,91,10,'asdqwhat',NULL,123),(1,NULL,NULL,91,11,'asdqwhat',NULL,124),(1,NULL,NULL,91,19,'asdqwhat',NULL,125),(1,NULL,NULL,91,22,'asdqwhat',NULL,126),(1,NULL,NULL,91,20,'asdqwhat',NULL,127),(1,NULL,NULL,91,16,'asdqwhat',NULL,128),(1,NULL,NULL,91,15,'asdqwhat',NULL,129),(1,NULL,NULL,91,23,'asdqwhat',NULL,130),(1,'이번 제품 또한 역시 만족스럽네요!','★★★★',92,8,'sonny',NULL,131),(1,'애용하는 제품입니다. 많이 파세요~','★★★★★',93,9,'sonny',NULL,132),(1,'처음 주문했을 때 박스를 열어보니 다 터져서 왔습니다. 연락드렸더니 빠른 조치 취해주셔서 바로 다음날 정상제품 받을 수 있었습니다. 많이 파세요~','★★★★★',94,10,'sonny',NULL,133),(1,'다른 향의 제품들도 사용해봤는데 이 제품은 조금 향이 세네요.. 너무 향이 세서 제가 사용하기엔 무리가 있었습니다.','★',95,11,'sonny',NULL,134),(1,NULL,NULL,96,12,'sonny',NULL,135),(1,'상품은 좋지만 조금 비싼감이 있네요ㅠ','★★★',97,19,'sonny',NULL,136),(10,NULL,NULL,98,22,'sonny',NULL,137),(1,'항상 주문하는 상품입니다.\r\n','★★★★★',99,26,'sonny',NULL,138),(1,'아이들과 요리할 때 자주 애용합니다. 아이들도 편하다고 하네요.','★★★★',100,28,'sonny',NULL,139),(1,NULL,NULL,101,35,'hazard',NULL,140),(1,NULL,NULL,102,38,'hazard',NULL,141),(21,NULL,NULL,103,38,'hazard',NULL,142),(13,NULL,NULL,104,39,'hazard',NULL,143),(2,NULL,NULL,105,37,'hazard',NULL,144),(8,NULL,NULL,106,36,'hazard',NULL,145),(2,NULL,NULL,110,8,'aekslkdw',NULL,146);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderinfo` (
  `ordNo` int(11) NOT NULL AUTO_INCREMENT,
  `user_userId` varchar(15) NOT NULL,
  `ordDate` datetime DEFAULT NULL,
  `ordReceiver` varchar(15) DEFAULT NULL,
  `ordRcvAddress` varchar(45) DEFAULT NULL,
  `ordRcvPhone` varchar(45) DEFAULT NULL,
  `ordPay` varchar(45) DEFAULT NULL,
  `ordBank` varchar(25) DEFAULT NULL,
  `ordCardNo` varchar(20) DEFAULT NULL,
  `ordCardPass` varchar(10) DEFAULT NULL,
  `ordDelivery` varchar(45) DEFAULT '상품 준비중',
  `ordDeliveryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ordNo`,`user_userId`),
  KEY `fk_orderinfo_user2_idx` (`user_userId`),
  CONSTRAINT `fk_orderinfo_user2` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` VALUES (21,'wldms','2020-12-08 10:30:39','지은','17760, 경기도 평택시 밀월로43번길 6, 힐탑','010-5802-0496','18000','기업은행','1233-3333-2211-1132','1231','상품 준비중',NULL),(57,'qetasrast','2020-12-08 10:54:05','qweast','10861, 경기도 파주시 탄현면 법흥로 82, 135','456-5655-5615','27000','농협회원조합','1115-4768-6515-4564','1256','배송 완료',NULL),(58,'qetasrast','2020-12-08 10:54:28','qweast','10861, 경기도 파주시 탄현면 법흥로 82, 135','456-5655-5615','90000','상호저축은행','4668-1556-1561-5676','1651','배송 완료',NULL),(59,'qetasrast','2020-12-08 10:54:46','qweast','10861, 경기도 파주시 탄현면 법흥로 82, 135','456-5655-5615','9000','광주은행','9989-1212-5645-5615','2134','리뷰 작성 완료',NULL),(60,'etarat','2020-12-08 10:55:27','asd','13618, 경기도 성남시 분당구 돌마로 75, 23','645-8795-6515','9000','국민은행','4567-6156-3234-7567','5656','배송 완료',NULL),(61,'asraseast','2020-12-08 10:56:48','이민우','30026, 세종특별자치시 조치원읍 터미널안길 22, 23215','010-7711-3345','36000','농협회원조합','0156-7771-2342-8956','6545','리뷰 작성 완료',NULL),(62,'wldms','2020-12-08 10:59:35','지은','17760, 경기도 평택시 밀월로43번길 6, 힐탑','010-5802-0496','18000','대구은행','4567-1561-1561-7561','5645','결제 완료',NULL),(63,'araradwe','2020-12-08 11:00:30','김보람','46634, 부산광역시 북구 낙동북로681번길 40-6, 1동','010-7654-1874','27000','농협회원조합','4111-2346-4564-8948','3212','배송중',NULL),(64,'fenwew','2020-12-08 11:06:13','김진수','63604, 제주특별자치도 서귀포시 516로 49, 빨간색 지붕','010-1648-8892','45000','대구은행','1334-6515-5645-7698','1234','리뷰 작성 완료',NULL),(65,'maskme','2020-12-08 11:16:12','John','06134, 서울특별시 강남구 테헤란로 107-2, 1-6','010-7112-4497','9000','농협회원조합','4556-6515-5674-1561','5615','리뷰 작성 완료',NULL),(66,'maskme','2020-12-08 11:17:09','John','06134, 서울특별시 강남구 테헤란로 107-2, 1-6','010-7112-4497','9000','농협회원조합','4545-1561-7657-6515','1234','배송 완료',NULL),(67,'asenjqwesa','2020-12-08 11:28:09','Messi','06615, 서울특별시 서초구 서초대로77길 9, 아르헨티나','010-3324-7771','9000','기업은행','4565-1513-7651-1564','1887','배송 완료',NULL),(68,'whdcks','2020-12-08 11:38:53','고종찬','9213, 울산시, 미래동 11','432-432-4322','27000','경남은행','1234-1234-1234-1234','1234','배송 완료',NULL),(69,'whdcks','2020-12-08 11:40:19','고종찬','9213, 울산시, 미래동 11','432-432-4322','27000','경남은행','1234-1234-1234-1234','1234','배송 완료',NULL),(70,'whdcks','2020-12-08 11:42:24','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','배송 완료',NULL),(71,'whdcks','2020-12-08 11:43:10','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','배송중',NULL),(72,'whdcks','2020-12-08 11:43:30','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','결제 완료',NULL),(73,'whdcks','2020-12-08 11:46:30','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','배송 완료',NULL),(74,'whdcks','2020-12-08 11:47:26','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','배송 완료',NULL),(75,'whdcks','2020-12-08 11:48:30','고종찬','9213, 울산시, 미래동 11','432-432-4322','36000','광주은행','1234-1234-1234-1234','1234','리뷰 작성 완료',NULL),(76,'whdcks','2020-12-08 11:50:28','고종찬','9213, 울산시, 미래동 11','432-432-4322','27000','광주은행','1234-1234-1234-1234','1234','결제 완료',NULL),(77,'hazard','2020-12-08 12:25:31','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','42000','대구은행','4716-3243-1564-5675','5151','리뷰 작성 완료',NULL),(78,'sonny','2020-12-08 12:26:49','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','69000','농협회원조합','1234-1575-1262-3275','1135','상품 준비중',NULL),(79,'kante','2020-12-08 12:27:37','Kante','06719, 서울특별시 서초구 반포대로 4, 프랑스','011-478-2124','24000','국민은행','4676-2345-7567-5616','4567','상품 준비중',NULL),(80,'mendi','2020-12-08 12:28:19','Mendi','63600, 제주특별자치도 서귀포시 쇠소깍로 151-7, Mendi','010-7722-4711','24000','경남은행','5516-6766-6487-1864','1231','리뷰 작성 완료',NULL),(81,'dsqwenas','2020-12-08 12:33:17','이광수','08821, 서울특별시 관악구 호암로16길 36, 런닝맨 촬영지','010-7722-1149','24000','기업은행','4645-7894-5456-6876','1564','배송 완료',NULL),(82,'aetater','2020-12-08 12:46:08','qetastat','13634, 경기도 성남시 분당구 미금일로 5, 135qe5','564-5616-5456','54000','농협회원조합','5646-0564-7771-4561','5676','상품 준비중',NULL),(83,'asodwnzx','2020-12-08 13:55:34','Ronaldo','06725, 서울특별시 서초구 남부순환로333길 31, 포르투갈','010-3321-4778','91000','농협회원조합','4487-2347-4648-1231','5645','배송 완료',NULL),(84,'ekrene','2020-12-08 13:56:54','Kane','59569, 전라남도 고흥군 봉래면 신금길 30-10, 영국','010-9971-2243','99000','산업은행','4587-1234-7773-4564','5456','상품 준비중',NULL),(85,'sonny','2020-12-08 13:57:54','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','119000','국민은행','4873-4876-1118-8786','5456','리뷰 작성 완료',NULL),(86,'kante','2020-12-08 13:58:46','Kante','06719, 서울특별시 서초구 반포대로 4, 프랑스','011-478-2124','139900','경남은행','4784-1234-7774-3213','6467','리뷰 작성 완료',NULL),(87,'hazard','2020-12-08 14:00:39','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','174900','기업은행','5566-1561-7879-1324','5645','리뷰 작성 완료',NULL),(88,'dsqwenas','2020-12-08 14:02:36','이광수','08821, 서울특별시 관악구 호암로16길 36, 런닝맨 촬영지','010-7722-1149','187400','광주은행','5655-1561-6556-6123','4712','리뷰 작성 완료',NULL),(89,'dwqsieqw','2020-12-08 14:03:48','유재석','17760, 경기도 평택시 밀월로 11-1, 101','010-3121-1147','234900','광주은행','5675-3221-4715-3277','1565','리뷰 작성 완료',NULL),(90,'wghwniwe','2020-12-08 14:05:26','김종국','13634, 경기도 성남시 분당구 미금일로 21, 103호','010-7714-2237','266300','국민은행','4456-1234-4676-6518','5671','리뷰 작성 완료',NULL),(91,'asdqwhat','2020-12-08 14:07:37','dwqdase','17760, 경기도 평택시 밀월로 9, 진고빌딩 10층 프론트데스크','010-7123-4471','109790','국민은행','2161-1561-7615-7984','5656','배송 완료',NULL),(92,'sonny','2020-12-08 14:09:18','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','9000','기업은행','5665-7774-6513-4897','1567','배송 완료',NULL),(93,'sonny','2020-12-08 14:09:41','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','15000','농협중앙회','5156-2343-7118-3277','6577','리뷰 작성 완료',NULL),(94,'sonny','2020-12-08 14:09:56','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','15000','농협회원조합','3123-7784-2345-1897','1867','리뷰 작성 완료',NULL),(95,'sonny','2020-12-08 14:10:10','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','20000','기업은행','4589-2646-7848-6246','4898','리뷰 작성 완료',NULL),(96,'sonny','2020-12-08 14:10:25','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','20000','카카오뱅크','8488-2334-7898-4545','5668','상품 준비중',NULL),(97,'sonny','2020-12-08 14:10:42','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','12500','카카오뱅크','2123-7879-3246-6871','8959','리뷰 작성 완료',NULL),(98,'sonny','2020-12-08 14:11:04','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','39000','상호저축은행','2133-3467-5677-2313','1276','상품 준비중',NULL),(99,'sonny','2020-12-08 14:11:26','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','175000','대구은행','1237-5654-2123-7654','5646','리뷰 작성 완료',NULL),(100,'sonny','2020-12-08 14:11:42','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','1200','농협중앙회','0123-1147-3267-6577','5186','배송 완료',NULL),(101,'hazard','2020-12-08 14:58:05','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','10900','농협중앙회','1237-2467-1564-7564','7894','상품 준비중',NULL),(102,'hazard','2020-12-08 14:58:30','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','44900','수협중앙회','4479-6165-7564-4564','1561','배송 완료',NULL),(103,'hazard','2020-12-08 14:58:53','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','942900','농협회원조합','4561-5676-1818-8891','1889','상품 준비중',NULL),(104,'hazard','2020-12-08 14:59:25','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','1181700','기업은행','5156-5615-6515-4648','6165','상품 준비중',NULL),(105,'hazard','2020-12-08 15:01:07','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','92000','기업은행','5616-4561-5647-1561','5645','상품 준비중',NULL),(106,'hazard','2020-12-08 15:02:20','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','552000','기업은행','2315-6475-7561-1566','4567','상품 준비중',NULL),(107,'aekslkdw','2020-12-08 15:26:24','David','13616, 경기도 성남시 분당구 정자일로 15, 103동 107호','010-4646-2313','9000','광주은행','1234-2134-1234-1234','1234','상품 준비중',NULL),(108,'boram','2020-12-08 15:54:24','김보람','10293, 경기도 동탄, 백궁로 11','654-324-5432','9000','새마을금고','2415-1216-1516-1234','1234','상품 준비중',NULL),(109,'aekslkdw','2020-12-08 15:55:01','David','13616, 경기도 성남시 분당구 정자일로 15, 103동 107호','010-4646-2313','9000','기업은행','6448-7894-5645-4894','6549','상품 준비중',NULL),(110,'aekslkdw','2020-12-08 15:55:55','David','13616, 경기도 성남시 분당구 정자일로 15, 103동 107호','010-4646-2313','18000','국민은행','1212-1212-1212-1212','1212','상품 준비중',NULL),(111,'testid','2020-12-08 16:50:29','테스트이름','04901, 서울특별시 광진구 답십리로 364, 1234','010-1234-1234','90000','경남은행','1234-1234-1234-1234','1234','상품 준비중',NULL);
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participate`
--

DROP TABLE IF EXISTS `participate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participate` (
  `user_userId` varchar(15) NOT NULL,
  `win` varchar(45) DEFAULT 'X',
  `event_eSeqno` int(11) NOT NULL,
  PRIMARY KEY (`user_userId`,`event_eSeqno`),
  KEY `participate_ibfk_1` (`event_eSeqno`),
  CONSTRAINT `fk_participate_user1` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`event_eSeqno`) REFERENCES `event` (`eSeqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participate`
--

LOCK TABLES `participate` WRITE;
/*!40000 ALTER TABLE `participate` DISABLE KEYS */;
INSERT INTO `participate` VALUES ('123','X',1),('123','X',2),('123','X',3),('321','X',2),('321','X',3),('aekslkdw','X',2),('aekslkdw','X',3),('aetater','X',2),('aetater','X',3),('araradwe','X',2),('araradwe','X',3),('asdqwhat','X',2),('asdqwhat','X',3),('asenjqwesa','X',2),('asenjqwesa','X',3),('asodwnzx','X',2),('asodwnzx','X',3),('asraseast','X',2),('asraseast','X',3),('boram','X',2),('boram','X',3),('dlsdn','X',2),('dlsdn','X',3),('dsqwenas','X',2),('dsqwenas','X',3),('dwqsieqw','X',2),('dwqsieqw','X',3),('ekrene','X',2),('ekrene','X',3),('eoghks','X',2),('eoghks','X',3),('etarat','X',2),('etarat','X',3),('fenwew','X',2),('fenwew','X',3),('hazard','X',2),('hazard','X',3),('kante','X',2),('kante','X',3),('maskme','X',2),('maskme','X',3),('mendi','X',2),('mendi','X',3),('minwoo','X',2),('minwoo','X',3),('qetasrast','x',1),('qetasrast','X',2),('qetasrast','X',3),('qwer123','X',2),('qwer123','X',3),('sonny','X',2),('sonny','X',3),('tpal','X',2),('tpal','X',3),('vip','X',2),('vip','X',3),('wghwniwe','X',2),('wghwniwe','X',3),('whdcks','X',2),('whdcks','X',3),('whdgks','X',2),('whdgks','X',3),('wldms','X',2),('wldms','X',3),('wqeksnewe','X',2),('wqeksnewe','X',3);
/*!40000 ALTER TABLE `participate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ctgType` varchar(25) NOT NULL,
  `prdNo` int(11) NOT NULL AUTO_INCREMENT,
  `prdName` varchar(45) NOT NULL,
  `prdPrice` varchar(45) NOT NULL,
  `prdStock` varchar(45) NOT NULL,
  `prdContent` text,
  `prdFilename` varchar(45) DEFAULT NULL,
  `prdDFilename` varchar(45) DEFAULT NULL,
  `prdAFilename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prdNo`),
  UNIQUE KEY `prdNo_UNIQUE` (`prdNo`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('생활/주방',8,'아몬드 퓨어 캐스틸 솝','9000','100','유기농 성분 함유 클렌저 입니다.^^','20201208165122860.png','20201208165122860Detail.png','20201208165122860Done.png'),('화장품',9,'시어테라 100% 오가닉 닐로틱 시어버터','15000','123','찢어지는듯한 속당김과 불타는 홍조, 푸석한 피부, 지금 필요한건 보습 크림 20통 분량의 항산화, 영양성분만으로만 가득 채운\r 지금 필요한건, 보습크림 20통 분량의 항산화, \r 영양성분만으로만 가득 채움','20201208121258638.png','20201208121258638Detail.png','20201208121258638Done.png'),('화장품',10,'일하는 손 바를거리','15000','123','종이 패키지로 만들어진 핸드크림','2020120812373277.png','2020120812373277Detail.png','2020120812373277Done.png'),('생활/주방',11,'라벤더 슈가솝 360ml','20000','123','','20201208135625838.png','20201208135625838Detail.png','20201208135625838Done.png'),('생활/주방',12,'페퍼민트 슈가솝 360ml','20000','123','','20201208135530910.png','20201208135530910Detail.png','20201208135530910Done.png'),('화장품',13,'티트리 슈가솝 360ml','20000','123','','20201208135311206.png','20201208135311206Detail.png','20201208135311206Done.png'),('화장품',14,'레몬그라스 라임 슈가솝 360ml','20000','123','','2020120813570447.png','2020120813570447Detail.png','2020120813570447Done.png'),('생활/주방',15,'로즈 오가닉 립밤 4g','5900','123','','20201208135733734.png','20201208135733734Detail.png','20201208135733734Done.png'),('생활/주방',16,'유기농 100% 유기농 코튼 반지','15000','123','','202012081358938.png','202012081358938Detail.png','202012081358938Done.png'),('화장품',17,'AHA BHA PHA 세럼 30ml','35000','123','','20201208135846118.png','20201208135846118Detail.png','20201208135846118Done.png'),('생활/주방',18,'프로폴리스 비타민C, B3, B5, B6 세럼 30ml','35000','123','','20201208135931134.png','20201208135931134Detail.png','20201208135931134Done.png'),('화장품',19,'베이비 언센티드 퓨어 캐스틸 솝 240ml','12500','123','','202012081402942.png','202012081402942Detail.png','202012081402942Done.png'),('화장품',20,'시트러스 오렌지 퓨어 캐스틸 솝 240ml','12500','123','','202012081410134.png','202012081410134Detail.png','202012081410134Done.png'),('화장품',21,'유칼립투스 퓨어 캐스틸 솝 240ml','12500','123','','2020120814132894.png','2020120814132894Detail.png','2020120814132894Done.png'),('생활/주방',22,'조르단 그린클린','3900','123','','2020120814235278.png','2020120814235278Detail.png','2020120814235278Done.png'),('생활/주방',23,'쓰봉','15000','123','','2020120814338462.png','2020120814338462Detail.png','2020120814338462Done.png'),('생활/주방',24,'밤부 나무 우드 천연 생분해 제로웨이스트 칫솔','990','123','','2020120814435879.png','2020120814435879Detail.png','2020120814435879Done.png'),('생활/주방',25,'오픈팩 썩는 위생백 롤형 35x45 [대] 200매','12700','123','','2020120814557911.png','2020120814557911Detail.png','2020120814557911Done.png'),('생활/주방',26,'아임에코 산수 30ml x 40병','17500','123','','202012081471486.png','202012081471486Detail.png','202012081471486Done.png'),('생활/주방',27,'옥수수전분 생분해 배변봉투 풉백 240매(16롤)','19800','123','애완견을 위한 친환경소재의 배변봉투입니다.\r\n옥수수전분 생분해성!!','2020120814916135.png','2020120814916135Detail.png','2020120814916135Done.png'),('생활/주방',28,'슈가랩 사탕수수 친환경 어린이용 위생장갑','1200','123','','2020120814104788.png','2020120814104788Detail.png','2020120814104788Done.png'),('생활/주방',29,'세이플래닛 거품잘나는 생분해 일회용 수세미','9700','123','','2020120814115956.png','2020120814115956Detail.png','2020120814115956Done.png'),('생활/주방',30,'지구를살릴 옥수수 빨대 국산(개별포장','5200','123','','20201208141247614.png','20201208141247614Detail.png','20201208141247614Done.png'),('유아/완구',31,'ts 우리아이순한물티슈 캡형(72매) 10팩','19900','123','소중한 우리 아이를 위한 물티슈\r\n안전한 순한 물티슈 입니다.','20201208141358743.png','20201208141358743Detail.png','20201208141358743Done.png'),('유아/완구',32,'데일리라이크 밤부키즈 유아식기 디너세트','19800','123','우리아이를 위한 유아식기 디너세트\r\n','20201208141514390.png','20201208141514390Detail.png','20201208141514390Done.png'),('유아/완구',33,'그린핑거 어니스트 물티슈 캡형','29660','123','','20201208141629182.png','20201208141629182Detail.png','20201208141629182Done.png'),('유아/완구',34,'대나무 어린 이용 식기 세트 5 개','49200','123','','20201208141714886.png','20201208141714886Detail.png','20201208141714886Done.png'),('유아/완구',35,'MS PLA 유아용 치실 1.3cm','10900','123','','20201208141813230.png','20201208141813230Detail.png','20201208141813230Done.png'),('태블릿/휴대폰',36,'퇴비화 및 생분해 성-친환경-식물성','69000','123','','2020120814193294.png','2020120814193294Detail.png','2020120814193294Done.png'),('태블릿/휴대폰',37,'생분해 성 재료로 만든 보호 케이스 바이오 케이스','46000','123','','20201208142021765.png','20201208142021765Detail.png','20201208142021765Done.png'),('태블릿/휴대폰',38,'Moment Thin iPhone 11 Pro 케이스','44900','123','','20201208142118630.png','20201208142118630Detail.png','20201208142118630Done.png'),('태블릿/휴대폰',39,'플라스틱 없는 비건 전화 커버 – 고래','90900','123','','20201208142217692.png','20201208142217692Detail.png','20201208142217692Done.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qSeqno` int(11) NOT NULL AUTO_INCREMENT,
  `qTitle` varchar(45) DEFAULT NULL,
  `qContent` text,
  `qFile` varchar(35) DEFAULT NULL,
  `qUserDate` datetime DEFAULT NULL,
  `user_userId` varchar(15) NOT NULL,
  `qChapter` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`qSeqno`,`user_userId`),
  KEY `fk_qna_user1_idx` (`user_userId`),
  CONSTRAINT `fk_qna_user1` FOREIGN KEY (`user_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'회원 탈퇴는 어떻게 하나요?','회원 탈퇴를 하고 싶은데 어디서 해야하는지 모르겠어요. 알려주세요~',NULL,'2020-08-30 12:11:50','aekslkdw','회원정보 관련'),(2,'언제 쯤 배송 시작하나요?','주문하면 언제 배송 시작되나요?',NULL,'2020-09-01 13:10:30','aetater','배송 관련'),(3,'결제 취소를 하면 언제 환불이 되나요?','사려고 했는데 이번 달 용돈이 부족해서 취소하고 싶습니다. 되도록 빠르면 좋을 것 같은데 언제 환불 되나요?',NULL,'2020-09-05 00:10:15','whdcks','결제 관련'),(4,'로그인이 안되요.','왜 그런건가요?ㅠㅠ',NULL,'2020-09-05 12:11:50','qwer123','회원정보 관련'),(5,'주문, 배송조회는 어떻게 할 수 있나요.','어디서 해야하는지 모르겠어요ㅠㅠ',NULL,'2020-09-05 13:10:30','aetater','배송 관련'),(6,'결제 취소를 하면 언제 환불이 되나요?','사려고 했는데 이번 달 용돈이 부족해서 취소하고 싶습니다. 되도록 빠르면 좋을 것 같은데 언제 환불 되나요?',NULL,'2020-09-05 00:00:00','asodwnzx','결제 관련'),(7,'비밀번호 찾고싶어요...','비밀번호 찾으려는데 없다는데 어떻게 해야하나요?',NULL,'2020-09-06 12:11:50','asodwnzx','회원정보 관련'),(8,'구매확정이란 무엇인가요.','궁금합니다.',NULL,'2020-09-07 10:10:30','aetater','배송 관련'),(9,'안심클릭 서비스란 무엇인가요.','자세하게 알고 싶습니다.',NULL,'2020-09-07 09:10:15','araradwe','결제 관련'),(10,'회원 탈퇴는 어떻게 하나요?','회원 탈퇴를 하고 싶은데 어디서 해야하는지 모르겠어요. 알려주세요~',NULL,'2020-09-08 12:11:50','aekslkdw','회원정보 관련'),(11,'실수로 구매확정을 눌렀어요.','환불하고 싶은데 구매확정을 눌러서 환불이 안되요... 어떻게 해야하나요?',NULL,'2020-09-10 13:10:30','aetater','배송 관련'),(12,'결제 취소를 하면 언제 환불이 되나요?','사려고 했는데 이번 달 용돈이 부족해서 취소하고 싶습니다. 되도록 빠르면 좋을 것 같은데 언제 환불 되나요?',NULL,'2020-09-05 00:00:00','asodwnzx','결제 관련'),(13,'아이핀이란, 무엇인가요.','아이핀에 관해 궁금합니다.',NULL,'2020-09-11 15:10:15','etarat','회원정보 관련'),(14,'최근 배송지를 삭제하고 싶어요.','여친이랑 헤어져서 최근 배송지를 삭제하고 싶습니다. 어떻게 해야하나요?',NULL,'2020-09-13 15:10:10','aetater','배송 관련'),(15,'결제 취소를 하면 언제 환불이 되나요?','사려고 했는데 이번 달 용돈이 부족해서 취소하고 싶습니다. 되도록 빠르면 좋을 것 같은데 언제 환불 되나요?',NULL,'2020-09-05 00:00:00','fenwew','결제 관련'),(16,'인증을 하지 않으면 회원가입할 수 없나요.','인증 귀찮....',NULL,'2020-09-14 12:11:50','hazard','회원정보 관련'),(17,'주문한 상품을 직접 방문해서 받을 수 있나요.','빨리 받고 싶어서 가까우면 직접 수령하고 싶은데 어떻게 해야하나요?',NULL,'2020-09-15 13:10:30','aetater','배송 관련'),(18,'결제 취소를 하면 언제 환불이 되나요?','사려고 했는데 이번 달 용돈이 부족해서 취소하고 싶습니다. 되도록 빠르면 좋을 것 같은데 언제 환불 되나요?',NULL,'2020-09-05 00:00:00','eoghks','결제 관련'),(29,'배송은 얼마나 걸리나요?','12월 3일에 주문했는데 아직 받지 못했습니다.\r\n언제쯤 받을 수 있을까요?',NULL,'2020-12-08 11:18:38','123','상품 관련'),(30,'상품을 받았는데 다른 색상이 왔어요','실버로 주문했는데 골드가 왔습니다.',NULL,'2020-12-08 11:31:49','123','배송 관련'),(31,'교환바랍니다','잘못된 제품이 왔습니다.',NULL,'2020-12-08 16:12:28','123','배송 관련'),(32,'2개를 주문했는데 1개만 왔습니다','칫솔 2개 주문했는데 1개만 왔네요.. 다시 배송바랍니다.',NULL,'2020-12-08 16:14:23','qetasrast','배송 관련'),(33,'대량 구매 가능한가요?','칫솔 1000개정도 구매하려고합니다. 혹시 대량 구매 가능한가요?',NULL,'2020-12-08 16:15:12','qetasrast','결제 관련');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` varchar(15) NOT NULL,
  `userPw` varchar(25) NOT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `userAddress` varchar(45) DEFAULT NULL,
  `userTel` varchar(45) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  `userBirth` varchar(45) DEFAULT NULL,
  `insertDate` date DEFAULT NULL,
  `deleteDate` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123','123','123','10392, 경기도 안산 백일로 55, 벽산아파트 102동 1301호','010-2223-4323','123@naver.com','1999-11-21','2020-11-10','2020-12-08'),('321','qwer1234','321','19283, 경기도 안산시, 진해로 55, 청일아파트 301동 1203호','123-2111-321','321@naver.com','1991-12-12','2020-01-01','2020-12-08'),('aekslkdw','461561ze','David','13616, 경기도 성남시 분당구 정자일로 15, 103동 107호','010-4646-2313','wesjew@gmail.com','1970-10-15','2020-12-08',NULL),('aetater','461561ze','qetastat','13634, 경기도 성남시 분당구 미금일로 5, 135qe5','564-5616-5456','eqtet@gmail.com','2020-12-09','2020-12-07','2020-12-08'),('araradwe','461561ze','김보람','46634, 부산광역시 북구 낙동북로681번길 40-6, 1동','010-7654-1874','wwwdjin@hanmail.net','1984-10-31','2020-12-08','2020-12-08'),('asdqwhat','44784478','dwqdase','17760, 경기도 평택시 밀월로 9, 진고빌딩 10층 프론트데스크','010-7123-4471','erwwtewe@daum.net','2001-02-28','2020-12-08',NULL),('asenjqwesa','461561ze','Messi','06615, 서울특별시 서초구 서초대로77길 9, 아르헨티나','010-3324-7771','dsgjwese@daum.net','1987-12-19','2020-12-08',NULL),('asodwnzx','461561ze','Ronaldo','06725, 서울특별시 서초구 남부순환로333길 31, 포르투갈','010-3321-4778','snekwse@hotmail.com','1983-10-13','2020-12-08',NULL),('asraseast','461561ze','dqwdasta','30026, 세종특별자치시 조치원읍 터미널안길 22, 23215','464-6886-6816','qwrastast@daum.net','2020-12-09','2020-12-07',NULL),('boram','qwer1234','김보람','10293, 경기도 동탄, 백궁로 11, 대박아파트 501동 302호','654-324-5432','qhfka@naver.com','1994-01-21','2020-12-07',NULL),('dlsdn','qwer1234','박인우','29391, 서울 강남로 9,  우리오피스텔 405호','123-1233-1233','dlsdn@naver.com','1982-03-21','2020-12-11',NULL),('dsqwenas','461561ze','이광수','08821, 서울특별시 관악구 호암로16길 36, 런닝맨 촬영지','010-7722-1149','ataett@nate.com','1994-12-22','2020-12-08',NULL),('dwqsieqw','461561ze','유재석','17760, 경기도 평택시 밀월로 11-1, 101','010-3121-1147','sdageq@hotmail.com','1980-02-06','2020-12-08',NULL),('ekrene','461561ze','Kane','59569, 전라남도 고흥군 봉래면 신금길 30-10, 영국','010-9971-2243','sgdwewes@nate.com','1990-12-14','2020-12-08',NULL),('eoghks','qwer1234','김대환','38152, 서울 광화문로 32, 세화빌딩 3층 미래에셋 영업팀','123-321-5432','eoghks@naver.com','1991-01-21','2020-12-02','2020-11-11'),('etarat','461561ze','asd','13618, 경기도 성남시 분당구 돌마로 75, 23','645-8795-6515','sdztdaraer@hotmail.com','1996-12-11','2020-12-07',NULL),('fenwew','461561ze','김진수','63604, 제주특별자치도 서귀포시 516로 49, 빨간색 지붕','010-1648-8892','rjenrwse@gmail.com','1999-12-04','2020-12-08',NULL),('hazard','461561ze','Hazard','06711, 서울특별시 서초구 반포대로 7, 벨기에','010-7723-6697','hazard@nate.com','1999-12-22','2020-12-08',NULL),('kante','461561ze','Kante','06719, 서울특별시 서초구 반포대로 4, 프랑스','011-478-2124','kante@nate.com','1991-12-12','2020-12-08',NULL),('maskme','461561ze','John','06134, 서울특별시 강남구 테헤란로 107-2, 1-6','010-7112-4497','wenksew@gmail.com','1993-12-17','2020-12-08',NULL),('mendi','461561ze','Mendi','63600, 제주특별자치도 서귀포시 쇠소깍로 151-7, Mendi','010-7722-4711','mendi@hanmail.net','1982-12-09','2020-12-08',NULL),('minwoo','qwer1234','이민우','49232, 제주특별자치도 서귀포시 516로 49, 파란색 지붕','432-5432-5432','minwoo@naver.com','1932-12-23','2020-12-01',NULL),('qetasrast','461561ze','홍길동','10861, 경기도 파주시 탄현면 법흥로 82, 135','456-5655-5615','aastat@232we.com','2020-12-03','2020-12-07',NULL),('qwer123','qwer1234','박지은','13821, 경기도 평택, 진로아파트 20, 11-1','010-2232-4321','qwe12@naver.com','2019-12-21','2020-11-21',NULL),('sonny','461561ze','손흥민','07011, 서울특별시 동작구 사당로20마길 3, 토트넘 7번','010-7722-1349','sonny@daum.net','1992-05-07','2020-12-08',NULL),('testid','qwer1234','테스트이름','04901, 서울특별시 광진구 답십리로 364, 1234','010-1234-1234','test@naver.com','2010-06-09','2020-12-08',NULL),('tpal','qwer1234','박세미','9213, 울산시, 미래동 11, 광오오피스텔 103호','010-2221-2121','tpal@naver.com','1992-01-21','2002-12-11',NULL),('vip','qwer1234','송예진','9213, 울산시, 미래동 11, 광오오피스텔 104호','010-1111-3211','vip@naver.com','1992-01-24','2020-12-07',NULL),('wghwniwe','461561ze','김종국','13634, 경기도 성남시 분당구 미금일로 21, 103호','010-7714-2237','taqwes@hanmail.net','1975-12-16','2020-12-08',NULL),('whdcks','qwer1234','고종찬','9213, 울산시, 미래동 11, 광오오피스텔 105호','432-432-4322','whdcks@naver.com','1932-11-21','2020-12-21',NULL),('whdgks','qwer1234','차종한','9213, 울산시, 미래동 11, 광오오피스텔 106호','321-3211-3211','whdgks@naver.com','1982-05-21','2020-12-12',NULL),('wldms','qwer1234','지은','17760, 경기도 평택시 밀월로43번길 6, 힐탑','010-5802-0496','qkrwldms011@naver.com','1999-01-02','2020-12-07',NULL),('wqeksnewe','461561ze','Max','06711, 서울특별시 서초구 반포대로 5, 청오오피스텔 102호','010-8874-3269','ejteqnse@gmail.com','1991-07-03','2020-12-08',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 16:52:00
