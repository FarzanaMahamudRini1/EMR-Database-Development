-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: viewsemr4
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `api_access_information`
--

DROP TABLE IF EXISTS `api_access_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_access_information` (carb_intakecarb_intakeblood_sugar_measurementapi_access_information
  `API_ID` int NOT NULL,
  `Device_ID` int NOT NULL,
  `Monitoring_Agreement_ID` int NOT NULL,
  `Date_Accessed` date NOT NULL,
  PRIMARY KEY (`API_ID`),
  KEY `Device_ID_api_idx` (`Device_ID`),
  KEY `Monitoring_Agreement_ID_api_idx` (`Monitoring_Agreement_ID`),
  CONSTRAINT `Device_ID_api` FOREIGN KEY (`Device_ID`) REFERENCES `monitoring_device` (`Device_ID`),
  CONSTRAINT `Monitoring_Agreement_ID_api` FOREIGN KEY (`Monitoring_Agreement_ID`) REFERENCES `monitoring_agreement` (`Monitoring_Agreement_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_access_information`
--

LOCK TABLES `api_access_information` WRITE;
/*!40000 ALTER TABLE `api_access_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_access_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_sugar_measurement`
--

DROP TABLE IF EXISTS `blood_sugar_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_sugar_measurement` (
  `Blood_Sugar_Record_ID` int NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Blood_Sugar_Level` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `Measurement_Method` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Blood_Sugar_Record_ID`),
  CONSTRAINT `Blood_Sugar_Record_ID_bsm` FOREIGN KEY (`Blood_Sugar_Record_ID`) REFERENCES `medical_record` (`Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_sugar_measurement`
--

LOCK TABLES `blood_sugar_measurement` WRITE;
/*!40000 ALTER TABLE `blood_sugar_measurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_sugar_measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camp` (
  `CFacility_ID` int NOT NULL,
  `Camp_Name` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Location` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  `Access_Hours` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `Contact_Info` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`CFacility_ID`),
  CONSTRAINT `CFacility_ID` FOREIGN KEY (`CFacility_ID`) REFERENCES `facility` (`Facility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp`
--

LOCK TABLES `camp` WRITE;
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carb_intake`
--

DROP TABLE IF EXISTS `carb_intake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carb_intake` (
  `Carb_Record_ID` int NOT NULL,
  `Food` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Carbs` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Carb_Record_ID`),
  CONSTRAINT `Carb_Record_ID_ci` FOREIGN KEY (`Carb_Record_ID`) REFERENCES `medical_record` (`Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carb_intake`
--

LOCK TABLES `carb_intake` WRITE;
/*!40000 ALTER TABLE `carb_intake` DISABLE KEYS */;
/*!40000 ALTER TABLE `carb_intake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elderly_care_center`
--

DROP TABLE IF EXISTS `elderly_care_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elderly_care_center` (
  `EFacility_ID` int NOT NULL,
  `Care_Center_Name` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Location` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  `Access_Hours` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `Contact_Info` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`EFacility_ID`),
  CONSTRAINT `EFacility_ID` FOREIGN KEY (`EFacility_ID`) REFERENCES `facility` (`Facility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elderly_care_center`
--

LOCK TABLES `elderly_care_center` WRITE;
/*!40000 ALTER TABLE `elderly_care_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `elderly_care_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `Facility_ID` int NOT NULL,
  `Facility_Type` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Facility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_chart`
--

DROP TABLE IF EXISTS `medical_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_chart` (
  `Chart_ID` int NOT NULL,
  `Monitoring_Agreement_ID` int NOT NULL,
  `Date_of_Entry` date NOT NULL,
  `Current_Diagnoses` varchar(500) COLLATE utf8mb3_bin NOT NULL,
  `Medical_Conditions` varchar(500) COLLATE utf8mb3_bin NOT NULL,
  `Allergies` varchar(500) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Chart_ID`),
  KEY `Monitoring_Agreement_ID_mc_idx` (`Monitoring_Agreement_ID`),
  CONSTRAINT `Monitoring_Agreement_ID_mc` FOREIGN KEY (`Monitoring_Agreement_ID`) REFERENCES `monitoring_agreement` (`Monitoring_Agreement_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_chart`
--

LOCK TABLES `medical_chart` WRITE;
/*!40000 ALTER TABLE `medical_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_device_company`
--

DROP TABLE IF EXISTS `medical_device_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_device_company` (
  `Device_Company_ID` int NOT NULL,
  `Type` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `Manufacturer` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Firmware` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Device_Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_device_company`
--

LOCK TABLES `medical_device_company` WRITE;
/*!40000 ALTER TABLE `medical_device_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_device_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_record`
--

DROP TABLE IF EXISTS `medical_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_record` (
  `Record_ID` int NOT NULL,
  `Monitoring_Agreement_ID` int NOT NULL,
  `Time_Stamp` datetime NOT NULL,
  `Patient_Status` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Record_ID`),
  KEY `Monitoring_Agreement_ID_mr_idx` (`Monitoring_Agreement_ID`),
  CONSTRAINT `Monitoring_Agreement_ID_mr` FOREIGN KEY (`Monitoring_Agreement_ID`) REFERENCES `monitoring_agreement` (`Monitoring_Agreement_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_record`
--

LOCK TABLES `medical_record` WRITE;
/*!40000 ALTER TABLE `medical_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_administration`
--

DROP TABLE IF EXISTS `medication_administration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication_administration` (
  `Medication_Record_ID` int NOT NULL,
  `Medication_Type` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Dosage` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Medication_Record_ID`),
  CONSTRAINT `Medication_Record_ID_ma` FOREIGN KEY (`Medication_Record_ID`) REFERENCES `medical_record` (`Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_administration`
--

LOCK TABLES `medication_administration` WRITE;
/*!40000 ALTER TABLE `medication_administration` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication_administration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoring_agreement`
--

DROP TABLE IF EXISTS `monitoring_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitoring_agreement` (
  `Monitoring_Agreement_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Facility_ID` int NOT NULL,
  `Relative_ID` int NOT NULL,
  `Terms_&_Conditions` varchar(2000) COLLATE utf8mb3_bin NOT NULL,
  `Consent_Date` date NOT NULL,
  PRIMARY KEY (`Monitoring_Agreement_ID`),
  KEY `Patient_ID_idx` (`Patient_ID`),
  KEY `Facility_ID_idx` (`Facility_ID`),
  KEY `Relative_ID_idx` (`Relative_ID`),
  CONSTRAINT `Facility_ID_ma` FOREIGN KEY (`Facility_ID`) REFERENCES `facility` (`Facility_ID`),
  CONSTRAINT `Patient_ID_ma` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  CONSTRAINT `Relative_ID_ma` FOREIGN KEY (`Relative_ID`) REFERENCES `relative` (`Relative_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoring_agreement`
--

LOCK TABLES `monitoring_agreement` WRITE;
/*!40000 ALTER TABLE `monitoring_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitoring_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoring_device`
--

DROP TABLE IF EXISTS `monitoring_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitoring_device` (
  `Device_ID` int NOT NULL,
  `Device_Company_ID` int NOT NULL,
  `Type` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `Manufacturer` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Firmware` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Device_ID`),
  KEY `Device_Company_ID_idx` (`Device_Company_ID`),
  CONSTRAINT `Device_Company_ID` FOREIGN KEY (`Device_Company_ID`) REFERENCES `medical_device_company` (`Device_Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoring_device`
--

LOCK TABLES `monitoring_device` WRITE;
/*!40000 ALTER TABLE `monitoring_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitoring_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Contact_Info` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `Medical_History` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationship` (
  `Patient_ID` int NOT NULL,
  `Relative_ID` int NOT NULL,
  `Relationship` varchar(60) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`,`Relative_ID`),
  KEY `Relative_ID_idx` (`Relative_ID`),
  CONSTRAINT `Patient_ID_r` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  CONSTRAINT `Relative_ID_r` FOREIGN KEY (`Relative_ID`) REFERENCES `relative` (`Relative_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relative`
--

DROP TABLE IF EXISTS `relative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relative` (
  `Relative_ID` int NOT NULL,
  `Name` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Contact_Info` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `Medical_History` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`Relative_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relative`
--

LOCK TABLES `relative` WRITE;
/*!40000 ALTER TABLE `relative` DISABLE KEYS */;
/*!40000 ALTER TABLE `relative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `SFacility_ID` int NOT NULL,
  `School_Name` varchar(200) COLLATE utf8mb3_bin NOT NULL,
  `Location` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  `Access_Hours` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `Contact_Info` varchar(400) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`SFacility_ID`),
  CONSTRAINT `SFacility_ID` FOREIGN KEY (`SFacility_ID`) REFERENCES `facility` (`Facility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL,
  `Facility_ID` int NOT NULL,
  `User_Name` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Role` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Date_of_Birth` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `Contact_Info` varchar(60) COLLATE utf8mb3_bin NOT NULL,
  `Email_Address` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `Time_Restrictions` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `Access_Privileges` tinyint DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `Facility_ID_u_idx` (`Facility_ID`),
  CONSTRAINT `Facility_ID_u` FOREIGN KEY (`Facility_ID`) REFERENCES `facility` (`Facility_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2024-05-03 19:13:17

# Medical device company prefix (10000)

INSERT INTO `medical_device_company` (`Device_Company_ID`, `Type`, `Manufacturer`, `Firmware`) VALUES
('100001', 'Insulin Pump', 'Metronic', 'v1.2'),
('100002', 'Insulin Pump', 'Insulet', 'v2.9'),
('100003', 'Insulin Pump', 'Animas ', 'v3.5'),
('100004', 'Insulin Inhaler', 'Aerogen ', 'v4.5'),
('100005', 'Insulin Inhaler', 'Sanofi ', 'v5.5');

######—-patient ID include a prefix like (1111..)

INSERT INTO `patient` (`Patient_ID`, `Name`, `Date_of_Birth`, `Contact_Info`, `Medical_History`) VALUES
(111122, 'Tom Hanks', '1956-12-19', '626-662-1235', 'Type 1 Diabetes'),
(111102, 'Jennifer BB', '1947-04-11', '702-628-1323', NULL),
(111112, 'Leonardo Diddi', '1974-11-11', '626-662-1234', NULL), 
(111124, 'Amy Bing', '2010-07-26', '702-321-1313', 'Type 1 Diabetes'),
(111131, 'Jack Washington', '2009-12-28', '626-662-1245', NULL), 
(111106, 'Angelina Jolie', '2008-12-05', '702-321-7901', 'Type 2 Diabetes'),
(111123, 'Brad Pitt', '1949-02-20', '818-263-9985', 'Type 1 Diabetes'),
(111108, 'Julia Roe', '1951-06-20', '702-123-9992', 'Type 1 Diabetes, Hypertension'),
(111109, 'Will Smith', '1950-12-25', '702-168-1315', 'Type 2 Diabetes'),
(111110, 'Scarlett Johansson', '2011-01-22', '818-263-9982', NULL);

#######—relative  ID prefix (1211) 

INSERT INTO `relative` (`Relative_ID`, `Name`, `Date_of_Birth`, `Contact_Info`, `Medical_History`) VALUES
(1211001, 'Sarah Connor', '1983-06-01', '702-120-1101', NULL),
(1211012, 'John Doe', '1975-05-12', '818-120-1202', 'High Cholesterol'),
(1211034, 'Jane Smith', '1990-03-23', '626-120-1303', NULL),
(1211204, 'Mike Mika', '1980-07-17', '702-120-1404', 'Asthma'),
(1211415, 'Rachel Zane', '1988-09-15', '818-120-1505', 'Coronary artery Disease'),
(1211006, 'Donny Paulsen', '1982-12-06', '626-120-1606', NULL),
(1211127, 'Huilong Hu', '1972-01-22', '702-120-1707', 'Asthma'),
(1211218, 'Jessica Pearson', '1965-04-14', '818-120-1808', NULL),
(1211119, 'Louis Li', '1978-08-19', '626-120-1909', 'NULL'),
(1211018, 'Robert Zane', '1960-11-13', '702-120-2010', 'Back pain');
# —------ Facility—prefix 555

INSERT INTO `facility` (`Facility_ID`, `Facility_Type`) VALUES
(5551, 'School'),
(5552, 'School'),
(5553, 'School'),
(5554, 'School'),
(5555, 'School'),
(5556, 'School'),
(5557, 'School'),
(5558, 'School'),
(5559, 'School'),
(55510, 'School'),
(55511, 'Camp'),
(55512, 'Camp'),
(55513, 'Camp'),
(55514, 'Camp'),
(55515, 'Camp'),
(55516, 'Camp'),
(55517, 'Camp'),
(55518, 'Camp'),
(55519, 'Camp'),
(55520, 'Camp'),
(55521, 'Elderly Care Center'),
(55522, 'Elderly Care Center'),
(55523, 'Elderly Care Center'),
(55524, 'Elderly Care Center'),
(55525, 'Elderly Care Center'),
(55526, 'Elderly Care Center'),
(55527, 'Elderly Care Center'),
(55528, 'Elderly Care Center'),
(55529, 'Elderly Care Center'),
(55530, 'Elderly Care Center');


# Group B [DONE]


# —---- Relationship 
 
INSERT INTO `relationship` (`Patient_ID`, `Relative_ID`, `Relationship`) VALUES
(111122, 1211001, 'Spouse'),            
(111102, 1211012, 'Sibling'),          
(111112, 1211034, 'Cousin'),           
(111124, 1211204, 'Parent'),          
(111131, 1211415, 'Parent'),            
(111106, 1211006, 'Parent'),      
(111123, 1211127, 'Uncle'),             
(111108, 1211218, 'Aunt'),           
(111109, 1211119, 'Sibling'),            
(111110, 1211018, 'Grandparent');


# —-Monitoring agreement 

INSERT INTO `monitoring_agreement` (`Monitoring_Agreement_ID`, `Patient_ID`, `Facility_ID`, `Relative_ID`, `Terms_&_Conditions`, `Consent_Date`) VALUES
(909001, 111122, 55525, 1211001, 'TOC', '2023-01-10'),
(909002, 111102, 55526, 1211012, 'TOC', '2023-01-15'),
(909003, 111112, 5553, 1211034, 'TOC', '2023-02-20'),
(909004, 111124, 5554, 1211204, 'TOC', '2023-03-05'),
(909005, 111131, 55515, 1211415, 'TOC', '2023-04-10'),
(909006, 111106, 55516, 1211006, 'TOC', '2023-05-01'),
(909007, 111123, 55527, 1211127, 'TOC', '2023-06-11'),
(909008, 111108, 55528, 1211218, 'TOC', '2023-07-20'),
(909009, 111109, 55529, 1211119, 'TOC', '2023-08-15'),
(909010, 111110, 55520, 1211018, 'TOC', '2023-09-01');





#  school
INSERT INTO `school` (`SFacility_ID`, `School_Name`, `Location`, `Access_Hours`, `Contact_Info`) VALUES
(5551, 'Green Valley High School', '123 Main St, Henderson, NV', 'Monday-Friday, 7:00 AM - 4:00 PM', 'Phone: (702) 555-1234, Email: gvhs@example.com'),
(5552, 'Desert Pines High School', '4505 Maryland Pkwy, Las Vegas, NV', 'Monday-Friday, 7:30 AM - 3:30 PM', 'Phone: (702) 555-5678, Email: dphs@example.com'),
(5553, 'Centennial High School', '10200 Centennial Pkwy, Las Vegas, NV', 'Monday-Friday, 8:00 AM - 3:00 PM', 'Phone: (702) 555-9876, Email: chs@example.com'),
(5554, 'Clark High School', '4291 Pennwood Ave, Las Vegas, NV', 'Monday-Friday, 7:00 AM - 3:30 PM', 'Phone: (702) 555-3456, Email: clarkhs@example.com'),
(5555, 'Bishop Gorman High School', '5959 S Hualapai Way, Las Vegas, NV', 'Monday-Friday, 7:30 AM - 3:00 PM', 'Phone: (702) 555-7890, Email: bghs@example.com'),
(5556, 'Rancho High School', '1900 Searles Ave, Las Vegas, NV', 'Monday-Friday, 8:00 AM - 3:30 PM', 'Phone: (702) 555-2345, Email: ranchohs@example.com'),
(5557, 'Durango High School', '7100 W Dewey Dr, Las Vegas, NV', 'Monday-Friday, 7:15 AM - 2:45 PM', 'Phone: (702) 555-6789, Email: durangohs@example.com'),
(5558, 'Sierra Vista High School', '8100 W Robindale Rd, Las Vegas, NV', 'Monday-Friday, 7:30 AM - 3:00 PM', 'Phone: (702) 555-4321, Email: sierravistahs@example.com'),
(5559, 'Palo Verde High School', '333 S Pavilion Center Dr, Las Vegas, NV', 'Monday-Friday, 7:00 AM - 2:30 PM', 'Phone: (702) 555-8765, Email: paloverdehs@example.com'),
(55510, 'Legacy High School', '150 W Deer Springs Way, North Las Vegas, NV', 'Monday-Friday, 8:00 AM - 3:30 PM', 'Phone: (702) 555-3210, Email: legacyhs@example.com');

#– Monitoring Device

INSERT INTO monitoring_device VALUES 
(101, 100001, 'CGM','Metronic', 'v1.2'),
(102, 100002, 'CGM','Insulet', 'v2.9'),
(103, 100003, 'CGM','Animas', 'v3.5'),
(104, 100004, 'CGM','Aerogen', 'v4.5'),
(105, '100005', 'CGM', 'Sanofi', 'v5.5');

#Camp
INSERT INTO `camp` (`CFacility_ID`, `Camp_Name`, `Location`, `Access_Hours`, `Contact_Info`) VALUES
(55511, 'Sunset Valley Camp', '123 Nevada Ave, Las Vegas, Nevada, USA', '9:00 AM - 7:00 PM', 'info@sunsetvalleycamp.com'),
(55512, 'Lakefront Retreat', '555 Lakeview Dr, Reno, Nevada, USA', '10:00 AM - 6:00 PM', 'contact@lakefrontretreat.com'),
(55513, 'Pine Grove Camp', '789 Forest Rd, Carson City, Nevada, USA', '8:00 AM - 5:00 PM', 'pinegrovecamp@example.com'),
(55514, 'Adventure Pines', '456 Adventure Ave, Boulder City, Nevada, USA', '9:00 AM - 8:00 PM', 'adventurepines@gmail.com'),
(55515, 'Tranquil Trails Camp', '101 Nature Way, Henderson, Nevada, USA', '10:00 AM - 4:00 PM', 'info@tranquiltrails.com'),
(55516, 'Wilderness Haven', '777 Wilderness Trail, Mesquite, Nevada, USA', '8:00 AM - 6:00 PM', 'wildernesshaven@example.com'),
(55517, 'River''s Edge Camp', '888 Riverside Dr, Laughlin, Nevada, USA', '9:00 AM - 7:00 PM', 'riversedgecamp@gmail.com'),
(55518, 'Mountain Retreat', '999 Mountain Rd, Elko, Nevada, USA', '10:00 AM - 5:00 PM', 'info@mountainretreat.com'),
(55519, 'Sunny Valley Campground', '111 Sunny St, Fallon, Nevada, USA', '8:00 AM - 6:00 PM', 'sunnyvalleycamp@example.com'),
(55520, 'Happy Trails Camp', '222 Trail Ave, Sparks, Nevada, USA', '9:00 AM - 5:00 PM', 'happytrails@example.com');

###..Elderly Care

INSERT INTO `elderly_care_center` (`EFacility_ID`, `Care_Center_Name`, `Location`, `Access_Hours`, `Contact_Info`) VALUES
(55521, 'Silver Oaks Elderly Care', '123 Oak Street, Henderson, Nevada, USA', '9:00 AM - 5:00 PM', 'info@silveroaks.com'),
(55522, 'Golden Years Retirement Home', '456 Maple Avenue, Reno, Nevada, USA', '8:00 AM - 6:00 PM', 'goldenyears@example.com'),
(55523, 'Serenity Gardens Assisted Living', '789 Garden Lane, Las Vegas, Nevada, USA', '24/7', 'serenitygardens@example.com'),
(55524, 'Maplewood Senior Living', '101 Elm Drive, Carson City, Nevada, USA', '9:00 AM - 7:00 PM', 'maplewoodseniorliving@example.com'),
(55525, 'Whispering Pines Nursing Home', '555 Pine Street, Boulder City, Nevada, USA', '10:00 AM - 4:00 PM', 'whisperingpines@example.com'),
(55526, 'Evergreen Senior Care Center', '777 Cedar Avenue, Mesquite, Nevada, USA', '8:00 AM - 6:00 PM', 'evergreenseniorcare@example.com'),
(55527, 'Harmony Assisted Living', '888 Harmony Court, Laughlin, Nevada, USA', '9:00 AM - 5:00 PM', 'info@harmonyassistedliving.com'),
(55528, 'Rosewood Retirement Community', '999 Rose Drive, Elko, Nevada, USA', '8:00 AM - 6:00 PM', 'rosewoodretirement@example.com'),
(55529, 'Cypress Manor Senior Residence', '111 Cypress Lane, Fallon, Nevada, USA', '10:00 AM - 4:00 PM', 'cypressmanor@example.com'),
(55530, 'Oakcrest Senior Apartments', '222 Oak Avenue, Sparks, Nevada, USA', '8:00 AM - 5:00 PM', 'oakcrestsenior@example.com');

##..User
INSERT INTO user VALUES
('12345', '55521', 'jbb', 'Patient', '1999-06-22', '702-536-5221', 'jbb@yahoo.com', '1 hour', 1),
('67891', '55511', 'ldavis', 'Nurse', '1990-05-11', '702-555-3636', 'davey455@gmail.com', '45 minutes', 1),
('78945', '5554', 'wharry', 'Patient', '1969-08-22', '702-785-3120', 'wheresharry@hotmail.com', '1 hour', 1),
('32165', '55529', 'bblue', 'Patient', '1980-08-23', '702-522-6478', 'bb64738@aol.com', '1 hour', 1),
('49873', '5554', 'ghernandez', 'Patient', '1997-06-11', '702-433-3652', 'racecares45@gmail.com', '1 hour', 1),
('56432', '5554', 'fyoung', 'Nurse', '1996-03-14', '702-528-7896', 'young_at_heart32@gmail.com', '45 minutes', 1),
('14785', '55510', 'pbillings', 'Nurse', '1992-10-14', '702-163-6113', 'pbillings@gmail.com', '45 minutes', 1),
('96325', '5553', 'jlaw', 'Third Party', '1975-06-13', '702-653-6676', 'judelaw@yahoo.com', '30 minutes', 1),
('85236', '55525', 'sgomez', 'Third Party', '1995-07-22', '702-471-6385', 'itz_sel_gomez@yahoo.com', '30 minutes', 1);


#Group C:


# API Access info:
INSERT INTO `api_access_information` (`API_ID`, `Device_ID`, `Monitoring_Agreement_ID`, `Date_Accessed`)
VALUES
	(9991, 101, 909001, '2021-09-05'),
	(9992, 101, 909002, '2010-01-07'),
	(9993, 102, 909003, '2013-02-01'),
	(9994, 103, 909004, '2002-03-08'),
	(9995, 105, 909005, '2023-04-09');
#medical_chart
INSERT INTO `medical_chart` (`Chart_ID`, `Monitoring_Agreement_ID`, `Date_of_Entry`, `Current_Diagnoses`, `Medical_Conditions`, `Allergies`)
VALUES
	(7771, 909001, '2024-05-05', 'Hypertension', 'None', 'peanut'),
	(7772, 909002, '2024-05-05', 'Type 2 Diabetes', 'None', 'dust'),
	(7773, 909003, '2024-05-05', 'Asthma', 'None', 'shellfish'),
	(7774, 909004, '2024-05-05', 'Depression', 'None', 'sulfa drugs'),
	(7775, 909005, '2024-05-05', 'Osteoarthritis', 'None', 'peanut'),
	(7776, 909006, '2024-05-05', 'Anxiety Disorder', 'None', 'codeine'),
	(7777, 909007, '2024-05-05', 'Hyperthyroidism', 'None', 'iodine'),
	(7778, 909008, '2024-05-05', 'Migraine', 'None', 'NSAIDs'),
	(7779, 909009, '2024-05-05', 'Gastritis', 'None', 'aspartame'),
	(77710, 909010, '2024-05-05', 'Fibromyalgia', 'None', 'morphine');

#Medical Record
INSERT INTO `medical_record` (`Record_ID`, `Monitoring_Agreement_ID`, `Time_Stamp`, `Patient_Status`)
VALUES
(88801, 909002, '2024-05-05 08:15:00', 'Carb Intake'),
	(88802, 909003, '2024-05-05 08:30:00', 'Carb Intake'),
	(88803, 909008, '2024-05-05 09:45:00', 'Carb Intake'),
	(88804, 909009, '2024-05-05 10:00:00', 'Carb Intake'),
	(88805, 909010, '2024-05-05 10:15:00', 'Carb Intake'),
	(88806, 909002, '2024-05-06 08:00:00', 'Carb Intake'),
	(88807, 909003, '2024-05-06 08:15:00', 'Carb Intake'),
	(88808, 909008, '2024-05-06 08:30:00', 'Carb Intake'),
	(88810, 909009, '2024-05-06 08:45:00', 'Carb Intake'),
	(88811, 909010, '2024-05-06 09:00:00', 'Carb Intake'),
	(88812, 909001, '2024-05-05 08:45:00', 'Medication Administration'),
	(88813, 909002, '2024-05-05 09:00:00', 'Medication Administration'),
	(88814, 909003, '2024-05-05 09:30:00', 'Medication Administration'),
	(88815, 909004, '2024-05-06 09:15:00', 'Medication Administration'),
	(88816, 909005, '2024-05-06 09:30:00', 'Medication Administration'),
	(88817, 909006, '2024-05-06 09:45:00', 'Medication Administration'),
	(88827, 909007, '2024-05-06 10:00:00', 'Medication Administration'),
	(88828, 909008, '2024-05-06 10:15:00', 'Medication Administration'),
	(88829, 909009, '2024-05-06 10:30:00', 'Medication Administration'),
	(88830, 909010, '2024-05-06 10:45:00', 'Medication Administration'),
(88818, 909001, '2024-05-05 08:00:00', 'Blood Sugar Measurement'),
	(88819, 909002, '2024-05-05 09:15:00', 'Blood Sugar Measurement'),
	(88833, 909003, '2024-05-06 08:00:00', 'Blood Sugar Measurement'),
	(88832, 909004, '2024-05-06 08:15:00', 'Blood Sugar Measurement'),
	(88839, 909005, '2024-05-06 08:30:00', 'Blood Sugar Measurement'),
	(88834, 909006, '2024-05-06 08:45:00', 'Blood Sugar Measurement'),
	(88835, 909007, '2024-05-06 09:00:00', 'Blood Sugar Measurement'),
	(88836, 909008, '2024-05-06 09:15:00', 'Blood Sugar Measurement'),
	(88837, 909009, '2024-05-06 09:30:00', 'Blood Sugar Measurement'),
	(88838, 909010, '2024-05-06 09:45:00', 'Blood Sugar Measurement');

#Carb Intake: 
INSERT INTO `carb_intake` (`Carb_Record_ID`, `Food`, `Carbs`) VALUES
(88801, 'Oatmeal', '30g'),
(88802, 'Whole wheat bread', '10g'),
(88803, 'Banana', '25g'),
(88804, 'Apple', '40g'),
(88805, 'Yogurt', '70g'),
(88806, 'Pasta', '80g'),
(88807, 'Rice', '30g'),
(88808, 'Potato', '40g'),
(88810, 'Corn', '40g'),
(88811, 'Baked beans', '30g');


#Medication Administration

INSERT INTO `medication_administration` (`Medication_Record_ID`, `Medication_Type`, `Dosage`) VALUES
(88812, 'Insulin', '10 units'),
(88813, 'Metformin', '500 mg'),
(88814, 'Insulin', '15 units'),
(88815, 'Metformin', '500 mg'),
(88816, 'Insulin', '10 units'),
(88817, 'Metformin', '1000 mg'),
(88827, 'Insulin', '20 units'),
(88828, 'Metformin', '850 mg'),
(88829, 'Insulin', '15 units'),
(88830, 'Metformin', '500 mg');

INSERT INTO `blood_sugar_measurement` (`Blood_Sugar_Record_ID`, `Date`, `Time`, `Blood_Sugar_Level`, `Measurement_Method`) VALUES
(88818, '2024-05-05', '08:00:00', '120 mg/dL', 'Fingerstick'),
(88819, '2024-05-05', '09:15:00', '135 mg/dL', 'Continuous Monitor'),
(88833, '2024-05-06', '08:00:00', '110 mg/dL', 'Fingerstick'),
(88832, '2024-05-06', '08:15:00', '140 mg/dL', 'Continuous Monitor'),
(88839, '2024-05-06', '08:30:00', '115 mg/dL', 'Fingerstick'),
(88834, '2024-05-06', '08:45:00', '130 mg/dL', 'Continuous Monitor'),
(88835, '2024-05-06', '09:00:00', '118 mg/dL', 'Fingerstick'),
(88836, '2024-05-06', '09:15:00', '145 mg/dL', 'Continuous Monitor'),
(88837, '2024-05-06', '09:30:00', '122 mg/dL', 'Fingerstick'),
(88838, '2024-05-06', '09:45:00', '150 mg/dL', 'Continuous Monitor');


