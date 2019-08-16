-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: emr
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergies` (
  `allergy_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `allergy_details` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  `cost` decimal(20,2) NOT NULL,
  PRIMARY KEY (`allergy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
INSERT INTO `allergies` VALUES (1,'Balsam of Peru','\"Redness, swelling, itching, allergic contact dermatitis reactions, stomatitis (inflammation and soreness of the mouth or tongue), cheilitis (inflammation, rash, or painful erosion of the lips, oropharyngeal mucosa, or angles of their mouth), pruritus, ha','Food\r','Y',3199.73),(2,'Egg','\"Anaphylaxis, sometimes flatulence and vomiting\"','Food\r','Y',4986.15),(3,'Fish or shellfish','\"Anaphylaxis, sometimes vomiting\"','Food\r','Y',331.56),(4,'Fruit','\"Mild itching, rash, blisters at point of oral contact\"','Food\r','Y',1699.36),(5,'Garlic','\"Dermatitis, asymmetrical pattern of fissure, thickening/shedding of the outer skin layers, anaphylaxis\"','Food\r','Y',2502.12),(6,'Hot peppers','\"Skin rash, hives, throat tightness, tongue swelling, possible vomiting\"','Food\r','Y',2412.53),(7,'Oats','\"Dermatitis, respiratory problems, anaphylaxis\"','Food\r','Y',4556.26),(8,'Meat','\"Dermatitis, rarely anaphylaxis\"','Food\r','Y',543.75),(9,'Milk','\"Skin rash, hives, vomiting, diarrhea, constipation, stomach pain, flatulence, nasal congestion, dermatitis, blisters, anaphylaxis\"','Food\r','Y',4049.94),(10,'Peanut','\"Anaphylaxis and swelling, sometimes vomiting\"','Food\r','Y',3618.44),(11,'Rice','\"Sneezing, runny nose, itching, stomachache, eczema.\"','Food\r','Y',942.41),(12,'Sesame','\"Possible respiratory, skin, and gastrointestinal reactions which can trigger serious systemic anaphylactic responses.\"','Food\r','Y',3856.71),(13,'Soy','\"Anaphylaxis, sometimes vomiting\"','Food\r','Y',1456.33),(14,'Sulfites','\"Hives, rash, redness of skin, headache (particular frontal), burning behind eyes, breathing difficulties (anaphylaxis)\"','Food\r','Y',711.53),(15,'Tartrazine','\"Skin irritation, hives, rash\"','Food\r','Y',4188.63),(16,'Tree nut','\"Anaphylaxis, swelling, rash, hives, sometimes vomiting\"','Food\r','Y',3808.59),(17,'Wheat','\"Eczema (atopic dermatitis), Hives, asthma, hay fever, angioedema, abdominal cramps, Celiac disease, diarrhea, temporary (3 or 4 day) mental incompetence, anemia, nausea, and vomiting\"','Food\r','Y',1477.05),(18,'Balsam of Peru','\"Redness, swelling, itching, allergic contact dermatitis reactions, stomatitis (inflammation and soreness of the mouth or tongue), cheilitis (inflammation, rash, or painful erosion of the lips, oropharyngeal mucosa, or angles of their mouth), pruritus, ha','Drug\r','Y',959.46),(19,'Tetracycline','\"Many, including: severe headache, dizziness, blurred vision, fever, chills, body aches, flu symptoms, severe blistering, peeling, dark colored urine\"','Drug\r','Y',366.16),(20,'Dilantin','\"Many, including: swollen glands, easy bruising or bleeding, fever, sore throat\"','Drug\r','Y',3952.42),(21,'Tegretol (carbamazepine)','\"Shortness of breath, wheezing or difficulty breathing, swelling of the face, lips, tongue etc., hives\"','Drug\r','Y',3663.62),(22,'Penicillin','\"Diarrhea, hypersensitivity, nausea, rash, neurotoxicity, urticaria\"','Drug\r','Y',1460.83),(23,'Cephalosporins','\"Maculopapular or morbilliform skin eruption, and less commonly urticaria, eosinophilia, serum-sickness?like reactions, and anaphylaxis.\"','Drug\r','Y',1313.29),(24,'Sulfonamides','\"Urinary tract disorders, haemopoietic disorders, porphyria and hypersensitivity reactions, Stevens?Johnson syndrome toxic epidermal necrolysis\"','Drug\r','Y',2183.98),(25,'\"Non-steroidal anti-inflammatories (cromolyn sodium, nedocromil sodium, etc.)\"','\"Many, including: swollen eyes, lips, or tongue, difficulty swallowing, shortness of breath, rapid heart rate[24]\"','Drug\r','Y',1980.00),(26,'Intravenous contrast dye','Anaphylactoid reactions and contrast-induced nephropathy','Drug\r','Y',3348.09),(27,'Local anesthetics','\"Urticaria and rash, dyspnea, wheezing, flushing, cyanosis, tachycardia\"','Drug\r','Y',800.43),(28,'Balsam of Peru','\"Redness, swelling, itching, allergic contact dermatitis reactions, stomatitis (inflammation and soreness of the mouth or tongue), cheilitis (inflammation, rash, or painful erosion of the lips, oropharyngeal mucosa, or angles of their mouth), pruritus, ha','Enviromental\r','Y',3957.87),(29,'Pollen','\"Sneezing, body ache, headache (in rare cases, extremely painful cluster headaches may occur due to allergic sinusitis; these may leave a temporary time period of 1 and a half to 2 days with eye sensitivity), allergic conjunctivitis (includes watery, red,','Enviromental\r','Y',2388.09),(30,'Cat','\"Sneezing, itchy swollen eyes, rash, congestion, wheezing\"','Enviromental\r','Y',66.83),(31,'Dog','\"Rash, sneezing, congestion, wheezing, vomiting from coughing, Sometimes itchy welts.\"','Enviromental\r','Y',3169.88),(32,'Insect sting','\"Hives, wheezing, possible anaphylaxis\"','Enviromental\r','Y',648.93),(33,'Mold','\"Sneeze, coughing, itchy, discharge from the nose, respiratory irritation, congested feeling, joint aches, headaches, fatigue\"','Enviromental\r','Y',3734.99),(34,'Perfume','\"Itchy eyes, runny nose, sore throat, headaches, muscle/joint pain, asthma attack, wheezing, chest pain, blisters\"','Enviromental\r','Y',1728.17),(35,'Cosmetics','\"Contact dermatitis, irritant contact dermatitis, inflammation, redness, conjunctivitis\"','Enviromental\r','Y',2435.90),(36,'Semen','\"Burning, pain and swelling, possibly for days, swelling or blisters, vaginal redness, fever, runny nose, extreme fatigue\"','Enviromental\r','Y',1994.96),(37,'Latex','\"Contact dermatitis, hypersensitivity\"','Enviromental\r','Y',2667.10),(38,'Water','Epidermal itching','Enviromental\r','Y',2350.64),(39,'House dust mite','Asthma','Enviromental\r','Y',3751.88),(40,'Nickel (nickel sulfate hexahydrate)','\"Allergic contact dermatitis, dyshidrotic eczema\"','Enviromental\r','Y',1707.48),(41,'Gold (gold sodium thiosulfate)','Allergic contact dermatitis','Enviromental\r','Y',2281.76),(42,'Chromium','Allergic contact dermatitis','Enviromental\r','Y',1286.37),(43,'Cobalt chloride','Allergic contact dermatitis','Enviromental\r','Y',4586.57),(44,'Formaldehyde','Allergic contact dermatitis','Enviromental\r','Y',4073.73),(45,'Photographic developers','Allergic contact dermatitis','Enviromental\r','Y',1608.95),(46,'Fungicide','\"Allergic contact dermatitis, fever, anaphylaxis\"','Enviromental','Y',823.55);
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `care_provider`
--

DROP TABLE IF EXISTS `care_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care_provider` (
  `care_provider_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`care_provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care_provider`
--

LOCK TABLES `care_provider` WRITE;
/*!40000 ALTER TABLE `care_provider` DISABLE KEYS */;
INSERT INTO `care_provider` VALUES (1,'Dr','Mel','Luchetti','2003-05-13','Female','48547','Sunbrook Junction','Wisconsin','53716','608-311-0387','mluchetti0@ezinearticles.com','University of Swaziland\r'),(2,'Dr','Free','Drummer','1933-06-01','Male','2','Grayhawk Lane','Colorado','81005','719-112-0366','fdrummer1@gizmodo.com','Technological University (West Yangon)\r'),(3,'Dr','Che','Hincham','1943-11-21','Male','7','Armistice Road','California','93150','805-138-4863','chincham2@ameblo.jp','Ecole Nationale Supérieure d\'Electrochimie et d\'Electrométallurgie de Gernoble\r'),(4,'Dr','Beryl','Burlingame','1965-12-30','Female','9889','Grasskamp Plaza','Iowa','52804','563-813-0525','bburlingame3@howstuffworks.com','Private Universität Witten/Herdecke');
/*!40000 ALTER TABLE `care_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immunization`
--

DROP TABLE IF EXISTS `immunization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immunization` (
  `immunization_id` int(5) NOT NULL AUTO_INCREMENT,
  `disease` varchar(255) DEFAULT NULL,
  `vaccine` varchar(255) NOT NULL,
  `disease_spred_by` varchar(255) NOT NULL,
  `disease_symptons` varchar(255) NOT NULL,
  `disease_complications` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  `cost` decimal(20,2) NOT NULL,
  PRIMARY KEY (`immunization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunization`
--

LOCK TABLES `immunization` WRITE;
/*!40000 ALTER TABLE `immunization` DISABLE KEYS */;
INSERT INTO `immunization` VALUES (1,'Chickenpox','Varicella vaccine protects against chickenpox.','\"Air, direct contact\"','\"Rash, tiredness, headache, fever\"','\"Infected blisters, bleeding disorders, encephalitis (brain swelling), pneumonia (infection in the lungs)\"\r','Y',4290.89),(2,'Diphtheria','DTaP* vaccine protects against diphtheria.','\"Air, direct contact\"','\"Sore throat, mild fever, weakness, swollen glands in neck\"','\"Swelling of the heart muscle, heart failure, coma, paralysis, death\"\r','Y',3983.83),(3,'Hib','Hib vaccine protects against Haemophilus influenzae type b.','\"Air, direct contact\"','May be no symptoms unless bacteria enter the blood','\"Meningitis (infection of the covering around the brain and spinal cord), intellectual disability, epiglottitis (life-threatening infection that can block the windpipe and lead to serious breathing problems), pneumonia (infection in the lungs), death\"\r','Y',2046.48),(4,'Hepatitis A','HepA vaccine protects against hepatitis A.','\"Direct contact, contaminated food or water\"','\"May be no symptoms, fever, stomach pain, loss of appetite, fatigue, vomiting, jaundice (yellowing of skin and eyes), dark urine\"','\"Liver failure, arthralgia (joint pain), kidney, pancreatic, and blood disorders\"\r','Y',3280.88),(5,'Hepatitis B','HepB vaccine protects against hepatitis B.','Contact with blood or body fluids','\"May be no symptoms, fever, headache, weakness, vomiting, jaundice (yellowing of skin and eyes), joint pain\"','\"Chronic liver infection, liver failure, liver cancer\"\r','Y',264.98),(6,'Influenza (Flu)','Flu vaccine protects against influenza.','\"Air, direct contact\"','\"Fever, muscle pain, sore throat, cough, extreme fatigue\"','Pneumonia (infection in the lungs)\r','Y',1482.25),(7,'Measles','MMR** vaccine protects against measles.','\"Air, direct contact\"','\"Rash, fever, cough, runny nose, pink eye\"','\"Encephalitis (brain swelling), pneumonia (infection in the lungs), death\"\r','Y',1616.33),(8,'Mumps','MMR**vaccine protects against mumps.','\"Air, direct contact\"','\"Swollen salivary glands (under the jaw), fever, headache, tiredness, muscle pain\"','\"Meningitis (infection of the covering around the brain and spinal cord), encephalitis (brain swelling), inflammation of testicles or ovaries, deafness\"\r','Y',3634.89),(9,'Pertussis','DTaP* vaccine protects against pertussis (whooping cough).','\"Air, direct contact\"','\"Severe cough, runny nose, apnea (a pause in breathing in infants)\"','\"Pneumonia (infection in the lungs), death\"\r','Y',3325.48),(10,'Polio','IPV vaccine protects against polio.','\"Air, direct contact, through the mouth\"','\"May be no symptoms, sore throat, fever, nausea, headache\"','\"Paralysis, death\"\r','Y',722.70),(11,'Pneumococcal','PCV13 vaccine protects against pneumococcus.','\"Air, direct contact\"','\"May be no symptoms, pneumonia (infection in the lungs)\"','\"Bacteremia (blood infection), meningitis (infection of the covering around the brain and spinal cord), death\"\r','Y',3637.06),(12,'Rotavirus','RV vaccine protects against rotavirus.','Through the mouth','\"Diarrhea, fever, vomiting\"','\"Severe diarrhea, dehydration\"\r','Y',1017.20),(13,'Rubella','MMR** vaccine protects against rubella.','\"Air, direct contact\"','\"Sometimes rash, fever, swollen lymph nodes\"','\"Very serious in pregnant women?can lead to miscarriage, stillbirth, premature delivery, birth defects\"\r','Y',4174.83),(14,'Tetanus','DTaP* vaccine protects against tetanus.','Exposure through cuts in skin','\"Stiffness in neck and abdominal muscles, difficulty swallowing, muscle spasms, fever\"','\"Broken bones, breathing difficulty, death\"','Y',2822.53);
/*!40000 ALTER TABLE `immunization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_test`
--

DROP TABLE IF EXISTS `lab_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_test` (
  `lab_id` int(5) NOT NULL AUTO_INCREMENT,
  `lab_code` varchar(255) DEFAULT NULL,
  `lab_short_desc` varchar(255) NOT NULL,
  `lab_long_desc` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  `cost` decimal(20,2) NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_test`
--

LOCK TABLES `lab_test` WRITE;
/*!40000 ALTER TABLE `lab_test` DISABLE KEYS */;
INSERT INTO `lab_test` VALUES (1,'05U83KZ','\"Supplement Left Axillary Vein with Nonaut Sub, Perc Approach\"','\"Supplement Left Axillary Vein with Nonautologous Tissue Substitute, Percutaneous Approach\"\r','Y',3018.92),(2,'0RQV4ZZ','\"Repair Left Metacarpophalangeal Joint, Perc Endo Approach\"','\"Repair Left Metacarpophalangeal Joint, Percutaneous Endoscopic Approach\"\r','Y',4795.80),(3,'0SGJ47Z','\"Fusion of L Tarsal Jt with Autol Sub, Perc Endo Approach\"','\"Fusion of Left Tarsal Joint with Autologous Tissue Substitute, Percutaneous Endoscopic Approach\"\r','Y',4922.26),(4,'027S0ZZ','\"Dilation of Right Pulmonary Vein, Open Approach\"','\"Dilation of Right Pulmonary Vein, Open Approach\"\r','Y',223.90),(5,'3E0F3SD','\"Introduce of Nitric Oxide Gas into Resp Tract, Perc Approach\"','\"Introduction of Nitric Oxide Gas into Respiratory Tract, Percutaneous Approach\"\r','Y',1352.73),(6,'0BNM0ZZ','\"Release Bilateral Lungs, Open Approach\"','\"Release Bilateral Lungs, Open Approach\"\r','Y',1091.95),(7,'03V80DZ','\"Restriction of L Brach Art with Intralum Dev, Open Approach\"','\"Restriction of Left Brachial Artery with Intraluminal Device, Open Approach\"\r','Y',1401.53),(8,'0UN14ZZ','\"Release Left Ovary, Percutaneous Endoscopic Approach\"','\"Release Left Ovary, Percutaneous Endoscopic Approach\"\r','Y',3731.83),(9,'03HG33Z','\"Insertion of Infusion Dev into Intracran Art, Perc Approach\"','\"Insertion of Infusion Device into Intracranial Artery, Percutaneous Approach\"\r','Y',4454.53),(10,'079G0ZZ','\"Drainage of Left Lower Extremity Lymphatic, Open Approach\"','\"Drainage of Left Lower Extremity Lymphatic, Open Approach\"\r','Y',1077.18),(11,'037V3G6','\"Dilate L Thyroid Art, Bifurc, w 4+ Intralum Dev, Perc\"','\"Dilation of Left Thyroid Artery, Bifurcation, with Four or More Intraluminal Devices, Percutaneous Approach\"\r','Y',2022.28),(12,'02894ZZ','\"Division of Chordae Tendineae, Perc Endo Approach\"','\"Division of Chordae Tendineae, Percutaneous Endoscopic Approach\"\r','Y',1879.90),(13,'BT29YZZ','CT Scan of Kidney Transplant using Oth Contrast','Computerized Tomography (CT Scan) of Kidney Transplant using Other Contrast\r','Y',3332.64),(14,'04HS3DZ','\"Insertion of Intralum Dev into L Post Tib Art, Perc Approach\"','\"Insertion of Intraluminal Device into Left Posterior Tibial Artery, Percutaneous Approach\"\r','Y',1023.52),(15,'2W0QX5Z','Change Packing Material on Right Lower Leg','Change Packing Material on Right Lower Leg\r','Y',119.68),(16,'0F1G0DB','\"Bypass Pancreas to Sm Int with Intralum Dev, Open Approach\"','\"Bypass Pancreas to Small Intestine with Intraluminal Device, Open Approach\"\r','Y',2527.84),(17,'0PHD35Z','\"Insertion of Ext Fix into L Humeral Head, Perc Approach\"','\"Insertion of External Fixation Device into Left Humeral Head, Percutaneous Approach\"\r','Y',2280.15),(18,'0LR54KZ','\"Replace R Low Arm & Wrist Tendon w Nonaut Sub, Perc Endo\"','\"Replacement of Right Lower Arm and Wrist Tendon with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach\"\r','Y',3817.25),(19,'02114K9','\"Bypass 2 Cor Art from L Int Mammary w Nonaut Sub, Perc Endo\"','\"Bypass Coronary Artery, Two Arteries from Left Internal Mammary with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach\"\r','Y',2245.81),(20,'0D1K07P','\"Bypass Asc Colon to Rectum with Autol Sub, Open Approach\"','\"Bypass Ascending Colon to Rectum with Autologous Tissue Substitute, Open Approach\"\r','Y',4777.28),(21,'01DK4ZZ','\"Extraction of Head Neck Symp Nrv, Perc Endo Approach\"','\"Extraction of Head and Neck Sympathetic Nerve, Percutaneous Endoscopic Approach\"\r','Y',2148.97),(22,'0JPS30Z','\"Remove Drain Dev from Head & Neck Subcu/Fascia, Perc\"','\"Removal of Drainage Device from Head and Neck Subcutaneous Tissue and Fascia, Percutaneous Approach\"\r','Y',1413.03),(23,'06140JY','\"Bypass Hepatic Vein to Low Vein w Synth Sub, Open\"','\"Bypass Hepatic Vein to Lower Vein with Synthetic Substitute, Open Approach\"\r','Y',618.22),(24,'0F9F0ZZ','\"Drainage of Accessory Pancreatic Duct, Open Approach\"','\"Drainage of Accessory Pancreatic Duct, Open Approach\"\r','Y',3852.03),(25,'04C94ZZ','\"Extirpation of Matter from R Renal Art, Perc Endo Approach\"','\"Extirpation of Matter from Right Renal Artery, Percutaneous Endoscopic Approach\"\r','Y',2405.48),(26,'0SG30AJ','\"Fusion Lumsac Jt w Intbd Fus Dev, Post Appr A Col, Open\"','\"Fusion of Lumbosacral Joint with Interbody Fusion Device, Posterior Approach, Anterior Column, Open Approach\"\r','Y',471.32),(27,'08C6XZZ','\"Extirpation of Matter from Right Sclera, External Approach\"','\"Extirpation of Matter from Right Sclera, External Approach\"\r','Y',140.14),(28,'051P0AY','\"Bypass R Ext Jugular Vein to Up Vein w Autol Art, Open\"','\"Bypass Right External Jugular Vein to Upper Vein with Autologous Arterial Tissue, Open Approach\"\r','Y',4286.73),(29,'0Q950ZX','\"Drainage of Left Acetabulum, Open Approach, Diagnostic\"','\"Drainage of Left Acetabulum, Open Approach, Diagnostic\"\r','Y',1013.24),(30,'0FH432Z','\"Insertion of Monitor Dev into Gallbladder, Perc Approach\"','\"Insertion of Monitoring Device into Gallbladder, Percutaneous Approach\"\r','Y',2206.01),(31,'0M914ZZ','\"Drainage of R Shoulder Bursa/Lig, Perc Endo Approach\"','\"Drainage of Right Shoulder Bursa and Ligament, Percutaneous Endoscopic Approach\"\r','Y',2990.33),(32,'0B793DZ','\"Dilation of Lingula Bronc with Intralum Dev, Perc Approach\"','\"Dilation of Lingula Bronchus with Intraluminal Device, Percutaneous Approach\"\r','Y',3333.61),(33,'0Q9530Z','\"Drainage of Left Acetabulum with Drain Dev, Perc Approach\"','\"Drainage of Left Acetabulum with Drainage Device, Percutaneous Approach\"\r','Y',2697.08),(34,'0SWB0KZ','\"Revision of Nonaut Sub in L Hip Jt, Open Approach\"','\"Revision of Nonautologous Tissue Substitute in Left Hip Joint, Open Approach\"\r','Y',3484.57),(35,'D910BBZ','Low Dose Rate (LDR) Brachytherapy of Ear using Palladium 103','Low Dose Rate (LDR) Brachytherapy of Ear using Palladium 103 (Pd-103)\r','Y',4331.59),(36,'04SA0ZZ','\"Reposition Left Renal Artery, Open Approach\"','\"Reposition Left Renal Artery, Open Approach\"\r','Y',1204.27),(37,'DG020ZZ','Beam Radiation of Adrenal Glands using Photons <1 MeV','Beam Radiation of Adrenal Glands using Photons <1 MeV\r','Y',3026.56),(38,'03140JM','\"Bypass L Subclav Art to R Pulm Art w Synth Sub, Open\"','\"Bypass Left Subclavian Artery to Right Pulmonary Artery with Synthetic Substitute, Open Approach\"\r','Y',1519.98),(39,'0LB74ZX','\"Excision of Right Hand Tendon, Perc Endo Approach, Diagn\"','\"Excision of Right Hand Tendon, Percutaneous Endoscopic Approach, Diagnostic\"\r','Y',3520.21),(40,'0DRS47Z','\"Replace of Great Omentum with Autol Sub, Perc Endo Approach\"','\"Replacement of Greater Omentum with Autologous Tissue Substitute, Percutaneous Endoscopic Approach\"\r','Y',3041.13),(41,'02733D6','\"Dilate 4+ Cor Art, Bifurc, w Intralum Dev, Perc\"','\"Dilation of Coronary Artery, Four or More Arteries, Bifurcation, with Intraluminal Device, Percutaneous Approach\"\r','Y',4645.01),(42,'03QG4ZZ','\"Repair Intracranial Artery, Percutaneous Endoscopic Approach\"','\"Repair Intracranial Artery, Percutaneous Endoscopic Approach\"\r','Y',4101.67),(43,'06U54KZ','\"Supplement Sup Mesent Vein w Nonaut Sub, Perc Endo\"','\"Supplement Superior Mesenteric Vein with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach\"\r','Y',1573.30),(44,'0D9S3ZZ','\"Drainage of Greater Omentum, Percutaneous Approach\"','\"Drainage of Greater Omentum, Percutaneous Approach\"\r','Y',561.52),(45,'021V0ZR','\"Bypass Superior Vena Cava to L Pulm Art, Open Approach\"','\"Bypass Superior Vena Cava to Left Pulmonary Artery, Open Approach\"\r','Y',3087.68),(46,'0RWX30Z','\"Revision of Drain Dev in L Finger Phalanx Jt, Perc Approach\"','\"Revision of Drainage Device in Left Finger Phalangeal Joint, Percutaneous Approach\"\r','Y',3753.86),(47,'04703D6','\"Dilate Abd Aorta, Bifurc, w Intralum Dev, Perc\"','\"Dilation of Abdominal Aorta, Bifurcation, with Intraluminal Device, Percutaneous Approach\"\r','Y',4506.23),(48,'BP2F1ZZ','CT Scan of L Up Arm using L Osm Contrast','Computerized Tomography (CT Scan) of Left Upper Arm using Low Osmolar Contrast\r','Y',1269.59),(49,'099G8ZZ','\"Drainage of Left Eustachian Tube, Endo\"','\"Drainage of Left Eustachian Tube, Via Natural or Artificial Opening Endoscopic\"\r','Y',2829.25),(50,'06LT3DZ','\"Occlusion of R Foot Vein with Intralum Dev, Perc Approach\"','\"Occlusion of Right Foot Vein with Intraluminal Device, Percutaneous Approach\"','Y',337.50);
/*!40000 ALTER TABLE `lab_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_allergies`
--

DROP TABLE IF EXISTS `patient_allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_allergies` (
  `patient_id` int(5) NOT NULL,
  `allergy_id` int(5) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  KEY `patient_id` (`patient_id`),
  KEY `allergy_id` (`allergy_id`),
  CONSTRAINT `patient_allergies_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `patient_allergies_ibfk_2` FOREIGN KEY (`allergy_id`) REFERENCES `allergies` (`allergy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_allergies`
--

LOCK TABLES `patient_allergies` WRITE;
/*!40000 ALTER TABLE `patient_allergies` DISABLE KEYS */;
INSERT INTO `patient_allergies` VALUES (90,26,'Donec vitae nisi.','2019-04-19','Y'),(71,45,'In hac habitasse platea dictumst.','2015-10-23','Y'),(67,4,'Nulla justo.','2019-05-06','Y'),(16,37,'Nulla tellus.','2015-01-03','Y'),(25,14,'Sed sagittis.','2016-04-17','Y'),(17,17,'Proin interdum mauris non ligula pellentesque ultrices.','2019-03-07','Y'),(81,8,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.','2018-08-09','Y'),(81,35,'Pellentesque ultrices mattis odio.','2017-06-09','Y'),(12,15,'Morbi non quam nec dui luctus rutrum.','2016-11-25','Y'),(37,15,'Etiam vel augue.','2019-02-21','Y'),(7,26,'\"Donec odio justo','2015-01-01','Y'),(76,25,'Nam dui.','2015-03-01','Y'),(39,3,'Cras in purus eu magna vulputate luctus.','2016-03-11','Y'),(22,19,'Aliquam erat volutpat.','2018-12-22','Y'),(69,30,'Sed vel enim sit amet nunc viverra dapibus.','2015-08-27','Y'),(51,10,'Nam nulla.','2016-12-13','Y'),(83,29,'Ut tellus.','2016-04-25','Y'),(28,5,'\"Fusce congue','2015-01-01','Y'),(51,4,'Etiam vel augue.','2018-01-04','Y'),(44,23,'Sed accumsan felis.','2018-04-03','Y'),(13,41,'Integer non velit.','2017-10-24','Y'),(34,17,'Integer ac neque.','2016-02-27','Y'),(21,46,'\"Nullam orci pede','2015-01-01','Y'),(21,6,'Duis at velit eu est congue elementum.','2018-08-20','Y'),(41,24,'Maecenas tincidunt lacus at velit.','2019-05-31','Y'),(13,17,'In congue.','2017-08-07','Y'),(66,32,'In congue.','2015-04-25','Y'),(68,40,'Etiam justo.','2015-06-20','Y'),(47,14,'\"Fusce congue','2015-01-01','Y'),(66,28,'Proin at turpis a pede posuere nonummy.','2018-10-31','Y'),(42,25,'\"Nam congue','2015-01-01','Y'),(12,22,'Nullam porttitor lacus at turpis.','2018-05-28','Y'),(45,27,'Duis at velit eu est congue elementum.','2017-05-18','Y'),(43,25,'Aenean lectus.','2018-03-05','Y'),(38,35,'\"Donec diam neque','2015-01-01','Y'),(32,3,'\"Duis bibendum','2015-01-01','Y'),(99,20,'Sed ante.','2015-08-31','Y'),(19,2,'Nulla ut erat id mauris vulputate elementum.','2016-08-01','Y'),(33,31,'Nam dui.','2019-01-07','Y'),(83,26,'Vivamus tortor.','2017-07-23','Y'),(59,23,'Cras pellentesque volutpat dui.','2015-08-28','Y'),(6,15,'Proin eu mi.','2017-12-07','Y'),(66,17,'Etiam faucibus cursus urna.','2018-12-09','Y'),(27,38,'Praesent blandit.','2019-02-15','Y'),(34,9,'\"Integer aliquet','2015-01-01','Y'),(57,15,'Donec ut mauris eget massa tempor convallis.','2016-08-24','Y'),(96,13,'Morbi vel lectus in quam fringilla rhoncus.','2016-01-13','Y'),(91,6,'\"Vivamus metus arcu','2015-01-01','Y'),(62,42,'Nulla mollis molestie lorem.','2019-03-21','Y'),(83,10,'Integer a nibh.','2016-02-28','Y'),(95,21,'Nunc purus.','2016-10-13','Y'),(3,18,'Donec semper sapien a libero.','2019-01-07','Y'),(20,28,'\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra','2015-01-01','Y'),(54,6,'Integer a nibh.','2016-12-27','Y'),(7,8,'Morbi a ipsum.','2016-01-20','Y'),(19,30,'Aenean fermentum.','2017-01-01','Y'),(15,13,'Ut tellus.','2015-03-14','Y'),(51,20,'Etiam pretium iaculis justo.','2016-07-29','Y'),(90,29,'In hac habitasse platea dictumst.','2016-06-02','Y'),(91,35,'\"Nulla neque libero','2015-01-01','Y'),(70,46,'Suspendisse accumsan tortor quis turpis.','2018-07-15','Y'),(100,39,'Curabitur at ipsum ac tellus semper interdum.','2015-11-15','Y'),(86,31,'\"Donec diam neque','2015-01-01','Y'),(69,43,'Donec vitae nisi.','2017-04-29','Y'),(43,15,'Suspendisse ornare consequat lectus.','2019-07-17','Y'),(53,30,'Ut tellus.','2015-05-02','Y'),(93,33,'Aliquam sit amet diam in magna bibendum imperdiet.','2017-02-14','Y'),(95,1,'Nulla ut erat id mauris vulputate elementum.','2017-10-21','Y'),(41,13,'Maecenas pulvinar lobortis est.','2019-01-05','Y'),(68,17,'\"Lorem ipsum dolor sit amet','2015-01-01','Y'),(3,18,'\"Integer aliquet','2015-01-01','Y'),(37,4,'\"Proin leo odio','2015-01-01','Y'),(92,4,'Aenean sit amet justo.','2016-10-23','Y'),(49,22,'Nam dui.','2018-05-17','Y'),(22,43,'Morbi a ipsum.','2015-12-09','Y'),(25,33,'Aliquam erat volutpat.','2015-10-10','Y'),(6,39,'Aenean sit amet justo.','2018-11-27','Y'),(59,5,'Donec dapibus.','2019-02-16','Y'),(15,8,'\"Morbi vestibulum','2015-01-01','Y'),(35,20,'Nam dui.','2015-11-02','Y'),(46,33,'Proin interdum mauris non ligula pellentesque ultrices.','2018-02-15','Y'),(8,43,'Curabitur gravida nisi at nibh.','2016-11-28','Y'),(48,10,'\"Cras mi pede','2015-01-01','Y'),(25,17,'Sed accumsan felis.','2017-04-19','Y'),(21,23,'\"Integer pede justo','2015-01-01','Y'),(88,37,'Nulla tempus.','2017-08-17','Y'),(96,23,'Suspendisse potenti.','2018-07-13','Y'),(74,20,'Nullam molestie nibh in lectus.','2017-08-15','Y'),(97,39,'Etiam faucibus cursus urna.','2018-10-20','Y'),(9,1,'Praesent blandit lacinia erat.','2017-10-17','Y'),(35,43,'Nullam sit amet turpis elementum ligula vehicula consequat.','2015-02-28','Y'),(81,3,'Duis consequat dui nec nisi volutpat eleifend.','2016-04-30','Y'),(61,22,'Etiam vel augue.','2015-03-26','Y'),(58,20,'Vivamus vel nulla eget eros elementum pellentesque.','2016-10-30','Y'),(45,22,'Nulla facilisi.','2018-03-31','Y'),(59,34,'Donec ut mauris eget massa tempor convallis.','2018-07-26','Y'),(41,30,'Aenean fermentum.','2018-05-27','Y'),(71,44,'Aenean auctor gravida sem.','2019-05-09','Y'),(99,9,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','2018-09-23','Y'),(13,1,'\"Integer aliquet','2015-01-01','Y'),(79,29,'Vivamus tortor.','2019-02-12','Y'),(40,20,'\"Nam congue','2015-01-01','Y'),(54,40,'Etiam faucibus cursus urna.','2015-10-01','Y'),(96,5,'Morbi non quam nec dui luctus rutrum.','2019-05-31','Y'),(66,31,'Nullam varius.','2017-03-11','Y'),(73,6,'Integer non velit.','2017-09-02','Y'),(27,23,'Curabitur convallis.','2018-08-08','Y'),(63,38,'Cras non velit nec nisi vulputate nonummy.','2018-07-07','Y'),(41,16,'Nulla mollis molestie lorem.','2019-06-23','Y'),(35,45,'Pellentesque viverra pede ac diam.','2018-01-25','Y'),(82,2,'Quisque ut erat.','2015-03-13','Y'),(31,32,'Suspendisse potenti.','2016-01-08','Y'),(24,16,'Aliquam quis turpis eget elit sodales scelerisque.','2018-08-26','Y'),(29,33,'Maecenas pulvinar lobortis est.','2016-04-09','Y'),(28,7,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','2015-02-18','Y'),(74,20,'\"Lorem ipsum dolor sit amet','2015-01-01','Y'),(47,34,'Nullam varius.','2018-12-28','Y'),(90,30,'\"Fusce lacus purus','2015-01-01','Y'),(72,40,'\"Morbi sem mauris','2015-01-01','Y'),(6,31,'Duis at velit eu est congue elementum.','2015-09-28','Y'),(60,30,'Nunc rhoncus dui vel sem.','2018-07-08','Y'),(81,39,'\"Morbi sem mauris','2015-01-01','Y'),(65,33,'Aenean fermentum.','2015-11-25','Y'),(24,8,'Nulla ac enim.','2016-06-25','Y'),(44,7,'Aenean sit amet justo.','2018-01-03','Y'),(8,38,'In congue.','2018-12-24','Y'),(7,43,'Donec semper sapien a libero.','2017-05-21','Y'),(50,25,'\"Duis bibendum','2015-01-01','Y'),(69,38,'Nullam sit amet turpis elementum ligula vehicula consequat.','2017-02-04','Y'),(58,21,'Vestibulum ac est lacinia nisi venenatis tristique.','2016-03-01','Y'),(71,28,'\"Nam congue','2015-01-01','Y'),(44,5,'Sed accumsan felis.','2017-11-02','Y'),(60,42,'\"Nullam orci pede','2015-01-01','Y'),(54,15,'Curabitur gravida nisi at nibh.','2015-07-11','Y'),(27,41,'Etiam pretium iaculis justo.','2019-05-27','Y'),(29,34,'\"Maecenas tristique','2015-01-01','Y'),(72,17,'Integer ac neque.','2015-10-03','Y'),(27,19,'Praesent blandit.','2015-01-05','Y'),(37,4,'Vivamus in felis eu sapien cursus vestibulum.','2016-05-23','Y'),(29,24,'Morbi a ipsum.','2016-09-30','Y'),(32,3,'In congue.','2018-06-28','Y'),(94,11,'Suspendisse potenti.','2015-09-12','Y'),(37,12,'\"Morbi vestibulum','2015-01-01','Y'),(74,2,'Curabitur at ipsum ac tellus semper interdum.','2019-07-25','Y'),(78,10,'In blandit ultrices enim.','2019-07-23','Y'),(17,40,'\"Aliquam augue quam','2015-01-01','Y'),(46,25,'Phasellus sit amet erat.','2015-03-28','Y'),(55,8,'Duis aliquam convallis nunc.','2018-12-01','Y'),(62,20,'In congue.','2019-07-17','Y'),(40,11,'Donec ut mauris eget massa tempor convallis.','2016-12-10','Y');
/*!40000 ALTER TABLE `patient_allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_care_provider`
--

DROP TABLE IF EXISTS `patient_care_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_care_provider` (
  `patient_id` int(5) NOT NULL,
  `care_provider_id` int(5) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  KEY `patient_id` (`patient_id`),
  KEY `care_provider_id` (`care_provider_id`),
  CONSTRAINT `patient_care_provider_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `patient_care_provider_ibfk_2` FOREIGN KEY (`care_provider_id`) REFERENCES `care_provider` (`care_provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_care_provider`
--

LOCK TABLES `patient_care_provider` WRITE;
/*!40000 ALTER TABLE `patient_care_provider` DISABLE KEYS */;
INSERT INTO `patient_care_provider` VALUES (1,1,'Y'),(2,1,'Y'),(3,1,'Y'),(4,1,'Y'),(5,1,'Y'),(6,1,'Y'),(7,1,'Y'),(8,1,'Y'),(9,1,'Y'),(10,1,'Y'),(11,1,'Y'),(12,1,'Y'),(13,1,'Y'),(14,1,'Y'),(15,1,'Y'),(16,1,'Y'),(17,1,'Y'),(18,1,'Y'),(19,1,'Y'),(20,1,'Y'),(21,1,'Y'),(22,1,'Y'),(23,1,'Y'),(24,1,'Y'),(25,1,'Y'),(26,2,'Y'),(27,2,'Y'),(28,2,'Y'),(29,2,'Y'),(30,2,'Y'),(31,2,'Y'),(32,2,'Y'),(33,2,'Y'),(34,2,'Y'),(35,2,'Y'),(36,2,'Y'),(37,2,'Y'),(38,2,'Y'),(39,2,'Y'),(40,2,'Y'),(41,2,'Y'),(42,2,'Y'),(43,2,'Y'),(44,2,'Y'),(45,2,'Y'),(46,2,'Y'),(47,2,'Y'),(48,2,'Y'),(49,2,'Y'),(50,2,'Y'),(51,3,'Y'),(52,3,'Y'),(53,3,'Y'),(54,3,'Y'),(55,3,'Y'),(56,3,'Y'),(57,3,'Y'),(58,3,'Y'),(59,3,'Y'),(60,3,'Y'),(61,3,'Y'),(62,3,'Y'),(63,3,'Y'),(64,3,'Y'),(65,3,'Y'),(66,3,'Y'),(67,3,'Y'),(68,3,'Y'),(69,3,'Y'),(70,3,'Y'),(71,3,'Y'),(72,3,'Y'),(73,3,'Y'),(74,3,'Y'),(75,3,'Y'),(76,4,'Y'),(77,4,'Y'),(78,4,'Y'),(79,4,'Y'),(80,4,'Y'),(81,4,'Y'),(82,4,'Y'),(83,4,'Y'),(84,4,'Y'),(85,4,'Y'),(86,4,'Y'),(87,4,'Y'),(88,4,'Y'),(89,4,'Y'),(90,4,'Y'),(91,4,'Y'),(92,4,'Y'),(93,4,'Y'),(94,4,'Y'),(95,4,'Y'),(96,4,'Y'),(97,4,'Y'),(98,4,'Y'),(99,4,'Y'),(100,4,'Y');
/*!40000 ALTER TABLE `patient_care_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_immunization`
--

DROP TABLE IF EXISTS `patient_immunization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_immunization` (
  `patient_id` int(5) NOT NULL,
  `immunization_id` int(5) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  KEY `patient_id` (`patient_id`),
  KEY `immunization_id` (`immunization_id`),
  CONSTRAINT `patient_immunization_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `patient_immunization_ibfk_2` FOREIGN KEY (`immunization_id`) REFERENCES `immunization` (`immunization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_immunization`
--

LOCK TABLES `patient_immunization` WRITE;
/*!40000 ALTER TABLE `patient_immunization` DISABLE KEYS */;
INSERT INTO `patient_immunization` VALUES (47,5,'\"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\"','2016-04-23','Y'),(38,11,'Phasellus in felis. Donec semper sapien a libero. Nam dui.','2016-03-25','Y'),(84,7,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2017-03-10','Y'),(9,2,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','2015-02-05','Y'),(9,9,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','2015-12-10','Y'),(7,14,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','2016-07-10','Y'),(58,12,'Phasellus in felis. Donec semper sapien a libero. Nam dui.','2017-10-21','Y'),(59,10,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','2019-06-02','Y'),(11,3,'\"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\"','2018-05-26','Y'),(36,7,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2016-09-17','Y'),(29,4,'\"Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\"','2016-07-18','Y'),(61,2,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2017-04-29','Y'),(12,14,'\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"','2018-08-31','Y'),(28,1,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','2017-05-18','Y'),(92,6,'\"Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\"','2015-09-08','Y'),(57,6,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','2018-03-21','Y'),(87,12,'\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"','2015-07-14','Y'),(19,3,'\"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\"','2017-11-08','Y'),(18,5,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2015-11-07','Y'),(49,3,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','2015-07-18','Y'),(64,5,'\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"','2016-04-11','Y'),(30,14,'\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"','2018-02-22','Y'),(18,1,'\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"','2018-11-21','Y'),(32,6,'\"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\"','2019-01-16','Y'),(34,5,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2017-12-09','Y'),(89,14,'\"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\"','2018-09-03','Y'),(55,9,'\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"','2018-04-03','Y'),(90,8,'\"Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\"','2018-05-24','Y'),(66,13,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','2018-09-15','Y'),(84,1,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','2017-03-21','Y'),(87,13,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2016-06-09','Y'),(61,4,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2018-08-19','Y'),(46,7,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','2019-05-13','Y'),(72,7,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','2016-05-18','Y'),(24,9,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2015-09-18','Y'),(64,11,'Sed ante. Vivamus tortor. Duis mattis egestas metus.','2019-03-01','Y'),(94,10,'\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"','2018-09-05','Y'),(53,2,'\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"','2015-04-24','Y'),(40,14,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','2016-07-27','Y'),(41,1,'\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"','2019-07-01','Y'),(61,11,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','2016-01-21','Y'),(71,4,'Phasellus in felis. Donec semper sapien a libero. Nam dui.','2017-01-09','Y'),(49,7,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2015-01-13','Y'),(92,3,'\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"','2015-10-28','Y'),(18,6,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','2018-04-11','Y'),(52,6,'\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"','2015-03-27','Y'),(37,6,'\"Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\"','2019-02-28','Y'),(18,6,'Phasellus in felis. Donec semper sapien a libero. Nam dui.','2015-08-24','Y'),(3,9,'\"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\"','2016-03-31','Y'),(10,8,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2018-03-14','Y');
/*!40000 ALTER TABLE `patient_immunization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_lab_test`
--

DROP TABLE IF EXISTS `patient_lab_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_lab_test` (
  `patient_id` int(5) NOT NULL,
  `lab_id` int(5) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  KEY `patient_id` (`patient_id`),
  KEY `lab_id` (`lab_id`),
  CONSTRAINT `patient_lab_test_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `patient_lab_test_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `lab_test` (`lab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_lab_test`
--

LOCK TABLES `patient_lab_test` WRITE;
/*!40000 ALTER TABLE `patient_lab_test` DISABLE KEYS */;
INSERT INTO `patient_lab_test` VALUES (8,48,'\"Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\"','2017-10-30','Y'),(32,33,'\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"','2019-04-10','Y'),(93,5,'\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"','2016-02-11','Y'),(99,37,'\"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\"','2019-01-20','Y'),(80,35,'\"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\"','2016-03-25','Y'),(26,9,'\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"','2015-02-17','Y'),(25,20,'\"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\"','2015-10-23','Y'),(66,48,'Fusce consequat. Nulla nisl. Nunc nisl.','2016-09-22','Y'),(63,31,'\"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\"','2018-08-11','Y'),(27,27,'\"Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\"','2017-08-05','Y'),(96,37,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','2017-10-27','Y'),(94,28,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2016-04-19','Y'),(47,35,'\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"','2017-09-09','Y'),(67,3,'\"Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\"','2017-02-11','Y'),(87,50,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2017-10-26','Y'),(39,13,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2015-09-19','Y'),(96,10,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','2017-11-25','Y'),(10,9,'In congue. Etiam justo. Etiam pretium iaculis justo.','2017-05-25','Y'),(50,11,'\"Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\"','2016-08-02','Y'),(85,27,'\"Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\"','2015-01-05','Y');
/*!40000 ALTER TABLE `patient_lab_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_radiology_image`
--

DROP TABLE IF EXISTS `patient_radiology_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_radiology_image` (
  `patient_id` int(5) NOT NULL,
  `radiology_image_id` int(5) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Y',
  KEY `patient_id` (`patient_id`),
  KEY `radiology_image_id` (`radiology_image_id`),
  CONSTRAINT `patient_radiology_image_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `patient_radiology_image_ibfk_2` FOREIGN KEY (`radiology_image_id`) REFERENCES `radiology_image` (`radiology_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_radiology_image`
--

LOCK TABLES `patient_radiology_image` WRITE;
/*!40000 ALTER TABLE `patient_radiology_image` DISABLE KEYS */;
INSERT INTO `patient_radiology_image` VALUES (70,5,'\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\"','2015-02-06','Y'),(57,9,'Phasellus in felis. Donec semper sapien a libero. Nam dui.','2017-04-17','Y'),(40,1,'In congue. Etiam justo. Etiam pretium iaculis justo.','2017-06-30','Y'),(42,18,'In congue. Etiam justo. Etiam pretium iaculis justo.','2015-07-18','Y'),(27,18,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2016-05-23','Y'),(57,10,'\"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\"','2018-10-14','Y'),(85,2,'\"Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\"','2018-04-17','Y'),(60,1,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','2016-01-04','Y'),(95,13,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','2015-02-06','Y'),(57,10,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','2018-01-29','Y'),(95,11,'\"Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\"','2016-12-17','Y'),(92,14,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','2017-11-23','Y'),(1,10,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2018-09-20','Y'),(1,7,'\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\"','2019-07-01','Y'),(20,3,'\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\"','2018-06-10','Y'),(70,14,'\"Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\"','2015-02-25','Y'),(69,2,'\"Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\"','2017-02-20','Y'),(89,4,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2019-07-03','Y'),(76,6,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2015-08-17','Y'),(53,19,'Sed ante. Vivamus tortor. Duis mattis egestas metus.','2016-11-13','Y'),(6,5,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','2017-01-03','Y'),(85,10,'\"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\"','2017-03-18','Y'),(12,1,'\"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\"','2017-11-24','Y'),(45,6,'\"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\"','2016-07-25','Y'),(10,11,'\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"','2016-01-14','Y'),(47,10,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','2015-03-13','Y'),(84,1,'\"Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\"','2016-01-20','Y'),(62,20,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2016-12-10','Y'),(5,10,'\"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\"','2019-07-28','Y'),(52,15,'In congue. Etiam justo. Etiam pretium iaculis justo.','2017-10-29','Y'),(62,1,'\"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\"','2019-07-14','Y'),(97,5,'\"Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\"','2015-08-07','Y'),(51,3,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','2016-01-20','Y'),(39,2,'\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"','2015-09-14','Y'),(6,5,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2018-11-05','Y'),(3,7,'\"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\"','2015-05-19','Y'),(4,4,'\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"','2019-05-16','Y'),(30,5,'\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"','2019-06-22','Y'),(13,9,'\"Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\"','2018-04-06','Y'),(5,16,'\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"','2017-10-05','Y');
/*!40000 ALTER TABLE `patient_radiology_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int(5) NOT NULL AUTO_INCREMENT,
  `health_card_number` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `insert_date` date NOT NULL,
  `last_update_date` date NOT NULL DEFAULT '2017-01-01',
  PRIMARY KEY (`patient_id`),
  KEY `health_card_number` (`health_card_number`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'710-32-7421','Everett','Caltera','1998-04-30','Male','363','Golf Place','Iowa','50369','515-543-2216','ecaltera0@mayoclinic.com','2016-07-26','0000-00-00'),(2,'425-29-3865','Jo','Buffin','1959-04-04','Male','11','Petterle Junction','Connecticut','6533','203-860-9469','jbuffin1@independent.co.uk','2018-10-22','0000-00-00'),(3,'604-42-0586','Bart','Morville','2013-06-14','Male','0','David Junction','Mississippi','39296','601-391-4124','bmorville2@printfriendly.com','2017-03-01','0000-00-00'),(4,'789-54-1732','Augustin','Beattie','1943-07-28','Male','7476','Swallow Alley','California','92640','559-359-2250','abeattie3@dmoz.org','2018-05-22','0000-00-00'),(5,'380-11-0959','Brien','Lomond','1953-04-16','Male','87','Dayton Street','California','95894','916-969-8875','blomond4@nasa.gov','2016-08-26','0000-00-00'),(6,'814-42-8218','Skylar','Harrowell','1935-03-21','Male','27','Daystar Center','Indiana','46867','260-261-5199','sharrowell5@mail.ru','2017-12-04','0000-00-00'),(7,'607-71-7734','Rory','Christofe','1967-06-12','Female','4','Atwood Point','Michigan','48335','248-534-5273','rchristofe6@usgs.gov','2015-02-17','0000-00-00'),(8,'862-04-8873','Lawry','Sappell','1940-07-27','Male','92','Logan Point','Iowa','50310','515-507-8871','lsappell7@hexun.com','2019-05-17','0000-00-00'),(9,'316-76-2085','Ula','Bollam','1943-08-23','Female','926','Heffernan Parkway','Florida','33462','561-992-8303','ubollam8@issuu.com','2018-04-17','0000-00-00'),(10,'393-67-2599','Elton','Fearnill','1943-06-03','Male','927','Vermont Center','Michigan','49444','231-364-0741','efearnill9@epa.gov','2017-05-15','0000-00-00'),(11,'545-09-4950','Arabela','Voules','1951-03-20','Female','33146','Cody Place','Nebraska','68179','402-535-1758','avoulesa@prweb.com','2018-07-23','0000-00-00'),(12,'153-07-1485','Mathilde','Bernhardi','1963-08-31','Female','95','Clarendon Alley','Texas','76210','817-919-1989','mbernhardib@timesonline.co.uk','2015-09-13','0000-00-00'),(13,'475-93-3805','Cecilio','Feather','1931-12-05','Male','737','Pepper Wood Place','Michigan','48912','517-910-6079','cfeatherc@chron.com','2016-05-04','0000-00-00'),(14,'819-16-8296','Weber','Goldstraw','1977-07-04','Male','352','Eagan Pass','Washington','98411','253-115-0192','wgoldstrawd@naver.com','2016-10-02','0000-00-00'),(15,'589-98-3655','Aleen','Rodmell','1941-03-19','Female','2692','Jenifer Place','District of Columbia','20260','202-137-2339','arodmelle@printfriendly.com','2018-01-22','0000-00-00'),(16,'300-41-6583','Brittani','Landre','2014-04-15','Female','7','Graedel Park','Texas','78759','512-938-5189','blandref@globo.com','2018-03-13','0000-00-00'),(17,'458-72-2910','Marya','Dyer','2010-06-22','Female','95129','Elgar Court','South Carolina','29203','803-409-3863','mdyerg@hibu.com','2015-01-11','0000-00-00'),(18,'317-71-4460','Normand','Teese','1992-07-25','Male','9','Hagan Place','West Virginia','25770','304-968-8029','nteeseh@acquirethisname.com','2015-04-10','0000-00-00'),(19,'404-82-5351','Marina','Ausiello','1980-01-10','Female','2','Canary Avenue','Massachusetts','2745','508-456-6129','mausielloi@tamu.edu','2016-09-06','0000-00-00'),(20,'700-54-5068','Hasheem','Hesse','1977-05-06','Male','852','Pankratz Circle','California','94164','415-452-0227','hhessej@over-blog.com','2015-06-22','0000-00-00'),(21,'180-28-3419','Tulley','Duguid','1995-12-15','Male','5102','Sheridan Crossing','Florida','32610','352-208-0518','tduguidk@pinterest.com','2017-03-11','0000-00-00'),(22,'558-12-7806','Cherri','Balthasar','1933-09-15','Female','39','Corscot Avenue','Missouri','64054','816-211-0428','cbalthasarl@usatoday.com','2016-09-26','0000-00-00'),(23,'878-75-0780','Norton','De Maine','1985-09-02','Male','3880','Hanson Place','Texas','79984','915-891-4016','ndemainem@blog.com','2018-11-14','0000-00-00'),(24,'437-49-5915','Oralla','Kyne','1991-08-23','Female','212','Aberg Street','Kansas','67215','316-156-0550','okynen@cdc.gov','2018-01-28','0000-00-00'),(25,'472-23-6719','Vlad','Wintle','1976-06-26','Male','2501','Randy Place','Alabama','35295','205-520-3770','vwintleo@domainmarket.com','2018-11-12','0000-00-00'),(26,'147-23-3893','Cash','Goodlip','2005-02-10','Male','857','Randy Trail','New York','10305','718-919-1423','cgoodlipp@jiathis.com','2018-02-22','0000-00-00'),(27,'147-22-4775','Desdemona','MacPhaden','1955-05-27','Female','4','Claremont Terrace','California','92145','619-263-9312','dmacphadenq@examiner.com','2019-04-21','0000-00-00'),(28,'899-95-5711','Zaria','Grube','1967-03-09','Female','19','Delaware Court','California','94660','510-402-6165','zgruber@indiegogo.com','2015-06-25','0000-00-00'),(29,'194-82-5021','Hagen','Cometti','1960-01-02','Male','62039','Mitchell Point','District of Columbia','20057','202-506-3022','hcomettis@bravesites.com','2017-06-07','0000-00-00'),(30,'831-07-3365','Nealson','Jaskowicz','1941-03-10','Male','868','Bluestem Junction','Alabama','35290','205-653-1902','njaskowiczt@360.cn','2017-10-29','0000-00-00'),(31,'720-72-6053','Zorana','Jozefczak','1994-02-04','Female','2215','Loomis Circle','North Carolina','28263','704-438-8312','zjozefczaku@zdnet.com','2018-12-07','0000-00-00'),(32,'396-99-8630','Dominique','Iacovino','1965-09-21','Female','8','Kinsman Place','Nevada','89115','702-248-9014','diacovinov@google.co.jp','2015-07-05','0000-00-00'),(33,'376-04-2468','Ermanno','Alyoshin','2002-06-02','Male','55540','Warrior Road','California','95118','408-409-1292','ealyoshinw@pbs.org','2018-08-26','0000-00-00'),(34,'268-47-0488','Wernher','Giacomoni','1965-07-10','Male','3366','Dwight Circle','Virginia','22093','571-876-8741','wgiacomonix@jugem.jp','2015-07-02','0000-00-00'),(35,'109-62-3505','Leanor','Garratty','2011-04-30','Female','8','Jana Center','Nevada','89550','775-857-7144','lgarrattyy@tiny.cc','2015-05-31','0000-00-00'),(36,'374-20-3103','Ulrica','Crotch','2001-06-04','Female','4','Manley Pass','Alabama','35905','256-521-7294','ucrotchz@shinystat.com','2018-09-26','0000-00-00'),(37,'328-15-1184','Brucie','Shimoni','1930-11-04','Male','36906','Acker Lane','Ohio','44555','330-531-7861','bshimoni10@miitbeian.gov.cn','2019-06-17','0000-00-00'),(38,'176-88-0911','Pat','Utridge','2005-03-21','Female','9203','Hovde Trail','North Dakota','58505','701-682-8690','putridge11@yellowbook.com','2017-03-17','0000-00-00'),(39,'367-03-8635','Waylen','Fitzsymonds','1947-12-07','Male','5269','Hanover Drive','New York','12247','518-804-8815','wfitzsymonds12@cbslocal.com','2017-11-04','0000-00-00'),(40,'613-65-0129','Alfred','Hakonsen','1945-05-05','Male','2','Sloan Alley','Illinois','60609','312-786-9043','ahakonsen13@lycos.com','2015-01-24','0000-00-00'),(41,'139-93-7183','Bernadine','Dawkes','1976-10-11','Female','76','Twin Pines Parkway','California','95852','916-524-9791','bdawkes14@chronoengine.com','2016-06-13','0000-00-00'),(42,'229-87-3641','Domini','Kierans','1939-12-17','Female','74736','Kensington Parkway','South Carolina','29424','843-442-8364','dkierans15@g.co','2016-05-10','0000-00-00'),(43,'762-51-8995','Pincus','Letts','1984-05-23','Male','8751','Sunfield Pass','Louisiana','70154','504-298-8114','pletts16@illinois.edu','2018-05-23','0000-00-00'),(44,'216-61-2010','Riki','Pawle','2007-06-21','Female','71','Green Road','Kansas','66220','913-518-7395','rpawle17@theatlantic.com','2018-09-10','0000-00-00'),(45,'567-17-4454','Rochester','Sherringham','2004-06-18','Male','618','Namekagon Point','Kentucky','40250','502-576-7148','rsherringham18@yellowpages.com','2016-12-04','0000-00-00'),(46,'180-19-0051','Ethel','Cavanaugh','2017-04-28','Female','1704','Oak Alley','Pennsylvania','17105','717-629-6052','ecavanaugh19@angelfire.com','2018-02-03','0000-00-00'),(47,'525-37-0595','Cherice','Grocock','1945-09-24','Female','16','Manitowish Plaza','Virginia','23225','540-882-9973','cgrocock1a@yellowbook.com','2016-03-29','0000-00-00'),(48,'218-85-1765','Gal','Screaton','1974-04-27','Male','5493','Valley Edge Circle','California','93709','559-332-9793','gscreaton1b@1und1.de','2017-08-17','0000-00-00'),(49,'860-02-3594','Rory','Fevier','2013-09-03','Male','74','Village Green Lane','Missouri','64136','816-864-6263','rfevier1c@webnode.com','2017-03-02','0000-00-00'),(50,'381-03-9502','Horacio','Kornes','1971-07-27','Male','2','Memorial Hill','Georgia','30351','404-799-0581','hkornes1d@nih.gov','2015-05-19','0000-00-00'),(51,'280-85-4196','Trumaine','Gabriel','1986-09-13','Male','13','Shopko Hill','Massachusetts','1114','413-829-6519','tgabriel1e@is.gd','2018-06-10','0000-00-00'),(52,'619-55-1061','Drucill','Berthouloume','1996-08-03','Female','6','Loomis Park','Texas','75705','903-139-8466','dberthouloume1f@google.nl','2015-05-15','0000-00-00'),(53,'333-51-7640','Minni','Makinson','1997-10-09','Female','41','Petterle Alley','Florida','33147','305-244-0833','mmakinson1g@vkontakte.ru','2016-03-03','0000-00-00'),(54,'697-32-1229','Cassaundra','Sabbin','1992-07-11','Female','76234','Beilfuss Lane','Pennsylvania','15215','412-867-6352','csabbin1h@addthis.com','2017-01-23','0000-00-00'),(55,'304-15-9930','Rheta','Eaves','1947-04-16','Female','3832','Heath Drive','Kansas','66205','816-577-6971','reaves1i@last.fm','2018-10-10','0000-00-00'),(56,'240-78-6748','Krispin','Crickett','1954-04-09','Male','6','Lukken Court','Florida','32236','904-973-1562','kcrickett1j@alexa.com','2019-02-02','0000-00-00'),(57,'564-61-4351','Kalil','Swedeland','1934-09-29','Male','3','Eastwood Circle','Illinois','60614','773-535-6652','kswedeland1k@taobao.com','2019-06-09','0000-00-00'),(58,'192-15-6284','Wilhelm','Jacop','1989-10-25','Male','243','Elgar Circle','Texas','79911','915-860-3671','wjacop1l@cloudflare.com','2015-10-17','0000-00-00'),(59,'126-13-6360','Noellyn','Sabbatier','1979-04-05','Female','78868','American Alley','California','94263','916-774-7100','nsabbatier1m@drupal.org','2017-07-02','0000-00-00'),(60,'102-04-3320','Noellyn','Josephson','2006-09-11','Female','5421','Fairview Junction','Nevada','89150','702-310-5021','njosephson1n@dot.gov','2015-05-14','0000-00-00'),(61,'261-17-7728','Cal','Yakob','1986-05-16','Male','6746','Brentwood Court','Rhode Island','2912','401-683-0150','cyakob1o@cam.ac.uk','2017-08-30','0000-00-00'),(62,'629-95-0613','Magda','Colebourn','2015-06-06','Female','67','Kipling Drive','Florida','32220','904-733-5491','mcolebourn1p@nih.gov','2015-09-07','0000-00-00'),(63,'382-25-4691','Chelsea','Kubicki','1932-02-27','Female','26004','Carberry Point','Ohio','44125','216-527-5891','ckubicki1q@baidu.com','2017-02-09','0000-00-00'),(64,'106-46-1886','Emylee','Selburn','1951-04-27','Female','76596','Londonderry Place','Washington','98133','425-326-4962','eselburn1r@wix.com','2017-11-17','0000-00-00'),(65,'462-48-0980','Deanna','Harburtson','1963-12-24','Female','3491','Oriole Alley','Tennessee','37924','865-547-3528','dharburtson1s@cmu.edu','2017-02-15','0000-00-00'),(66,'277-76-9110','Frannie','O\'Criane','1958-09-25','Male','6471','Claremont Road','Oklahoma','73152','405-396-1392','focriane1t@4shared.com','2018-09-16','0000-00-00'),(67,'504-19-8016','Jodi','Ogg','1979-05-12','Female','3351','Rutledge Junction','Pennsylvania','15205','724-957-0047','jogg1u@plala.or.jp','2017-06-09','0000-00-00'),(68,'408-92-1938','Fernando','Chart','2019-01-04','Male','7812','Pierstorff Place','Wisconsin','53225','414-611-2396','fchart1v@infoseek.co.jp','2015-03-27','0000-00-00'),(69,'544-38-1678','Gayleen','Iglesiaz','1983-09-30','Female','25873','American Ash Park','California','91125','626-549-8291','giglesiaz1w@slashdot.org','2016-01-12','0000-00-00'),(70,'781-65-7191','Travis','Brum','2012-06-10','Male','5','Dottie Point','Massachusetts','2472','781-931-6162','tbrum1x@statcounter.com','2016-11-24','0000-00-00'),(71,'411-14-2319','Rhetta','Teek','1932-10-11','Female','63','Packers Lane','District of Columbia','20099','202-559-2566','rteek1y@usnews.com','2017-12-22','0000-00-00'),(72,'396-21-3870','Byram','Seleway','1974-10-26','Male','441','Hanover Park','Arizona','85260','480-469-0132','bseleway1z@youtube.com','2017-08-15','0000-00-00'),(73,'274-76-1358','Kamillah','Foskett','2000-01-16','Female','56','Helena Hill','California','94164','415-743-7925','kfoskett20@w3.org','2017-08-03','0000-00-00'),(74,'304-36-9940','Renee','Hrinchishin','1985-04-20','Female','39682','Spohn Drive','Tennessee','37914','865-241-8151','rhrinchishin21@adobe.com','2019-05-26','0000-00-00'),(75,'733-16-7633','Nickie','Bridges','2012-02-07','Male','527','Thierer Lane','Nevada','89115','702-115-8283','nbridges22@state.tx.us','2015-04-10','0000-00-00'),(76,'602-98-2471','Pattie','Bisterfeld','1993-03-20','Female','216','Homewood Plaza','Illinois','62705','217-619-7553','pbisterfeld23@amazon.co.jp','2018-07-19','0000-00-00'),(77,'733-68-8268','Lesly','Kearton','2000-09-17','Female','8','Dryden Crossing','Florida','33954','941-354-4991','lkearton24@huffingtonpost.com','2016-07-03','0000-00-00'),(78,'290-88-1104','Amandi','Cousans','1936-05-27','Female','14772','Clarendon Parkway','New York','10474','718-905-4363','acousans25@typepad.com','2019-05-05','0000-00-00'),(79,'344-90-7813','Iosep','Anstice','2017-02-26','Male','0','Corben Alley','South Carolina','29220','803-544-2221','ianstice26@clickbank.net','2016-04-09','0000-00-00'),(80,'510-30-5850','Louella','Lemmers','1943-10-13','Female','7','Grayhawk Pass','Alabama','36610','251-739-9633','llemmers27@soup.io','2015-02-07','0000-00-00'),(81,'504-01-8618','Cathrine','Doughartie','1980-08-25','Female','784','Loomis Circle','New York','11231','917-405-7320','cdoughartie28@cnn.com','2016-06-26','0000-00-00'),(82,'759-11-3922','Tarah','Chaters','1990-10-15','Female','9','Kennedy Lane','New Hampshire','3105','603-438-5533','tchaters29@tumblr.com','2018-10-28','0000-00-00'),(83,'702-53-9845','Huberto','Brugden','1938-07-26','Male','4888','Mccormick Trail','Utah','84125','801-642-5286','hbrugden2a@g.co','2018-11-03','0000-00-00'),(84,'336-60-0472','Gordy','Gagg','1961-01-16','Male','2','Burrows Road','California','90610','562-399-1126','ggagg2b@businessinsider.com','2017-06-09','0000-00-00'),(85,'233-08-6028','Osbourn','Baton','1944-03-22','Male','2624','Doe Crossing Plaza','Nevada','89074','702-520-0489','obaton2c@ocn.ne.jp','2017-06-27','0000-00-00'),(86,'329-12-8638','Cristy','Smallpeace','1957-01-01','Female','296','Susan Hill','Washington','99260','509-252-6948','csmallpeace2d@shareasale.com','2016-10-08','0000-00-00'),(87,'812-43-9550','Pierson','Pallent','1956-03-01','Male','5','Donald Terrace','California','92110','619-704-9470','ppallent2e@admin.ch','2016-05-20','0000-00-00'),(88,'395-23-6639','Alyssa','Mance','2015-11-24','Female','4367','Browning Terrace','New Mexico','87140','505-389-6920','amance2f@state.gov','2018-05-02','0000-00-00'),(89,'820-37-9951','Damon','Jelfs','1952-08-06','Male','32574','Havey Pass','Florida','33715','727-637-3182','djelfs2g@printfriendly.com','2015-04-07','0000-00-00'),(90,'878-21-0070','Correna','Lebbon','1937-02-01','Female','4','Stoughton Road','California','93786','559-489-9651','clebbon2h@vkontakte.ru','2018-07-12','0000-00-00'),(91,'207-82-6283','Libby','Cust','2012-08-28','Female','16013','Prairieview Court','Illinois','61640','309-988-5236','lcust2i@ebay.com','2015-05-07','0000-00-00'),(92,'769-28-9951','Ryley','Hazeldene','1937-08-09','Male','52','Caliangt Court','California','91913','619-719-4715','rhazeldene2j@about.me','2016-04-30','0000-00-00'),(93,'791-51-9410','Edeline','McPaike','1989-10-06','Female','3698','Bluestem Avenue','California','95150','408-991-1349','emcpaike2k@theglobeandmail.com','2016-12-09','0000-00-00'),(94,'462-93-4368','Fanchon','Rylance','1957-10-23','Female','61145','Talmadge Trail','District of Columbia','20088','202-135-1862','frylance2l@prnewswire.com','2018-06-28','0000-00-00'),(95,'101-59-1665','Berny','Harland','1996-02-23','Female','21','Norway Maple Crossing','Colorado','80930','719-101-5016','bharland2m@nih.gov','2017-02-05','0000-00-00'),(96,'414-16-9630','Salmon','Niccols','1941-12-03','Male','4','Jackson Road','Florida','33615','813-369-8155','sniccols2n@infoseek.co.jp','2019-05-12','0000-00-00'),(97,'223-80-4510','Delphinia','Hoston','2017-11-06','Female','9','Logan Drive','California','94522','925-906-2945','dhoston2o@plala.or.jp','2015-03-30','0000-00-00'),(98,'830-79-6044','Callie','Masserel','1976-07-10','Female','38','Cody Avenue','California','95823','916-425-9751','cmasserel2p@google.com.au','2015-03-08','0000-00-00'),(99,'236-16-8472','Leanna','Shurman','1977-11-17','Female','1585','Towne Street','Iowa','50369','515-807-7436','lshurman2q@google.cn','2016-02-10','0000-00-00'),(100,'561-46-2765','Andy','Izakovitz','2016-09-02','Female','88979','Columbus Center','Kansas','66210','816-324-7148','aizakovitz2r@ehow.com','2018-01-17','0000-00-00');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radiology_image`
--

DROP TABLE IF EXISTS `radiology_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiology_image` (
  `radiology_image_id` int(5) NOT NULL AUTO_INCREMENT,
  `procedure_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `cost` decimal(20,2) NOT NULL,
  PRIMARY KEY (`radiology_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiology_image`
--

LOCK TABLES `radiology_image` WRITE;
/*!40000 ALTER TABLE `radiology_image` DISABLE KEYS */;
INSERT INTO `radiology_image` VALUES (1,'Scleral buckling with implant','IM-0001-0004.jpg',2630.49),(2,'Lysis of adhesions of conjunctiva and eyelid','IM-0001-0011.jpg',1521.40),(3,'Other injection of locally-acting therapeutic substance into soft tissue of hand','IM-0001-0003.jpg',4398.81),(4,'Intra-operative coronary fluorescence vascular angiography','IM-0001-0002.jpg',3263.22),(5,'Biopsy of urethra','IM-0001-0016.jpg',3490.63),(6,'Postoperative revision of scleral fistulization procedure','IM-0001-0005.jpg',4572.87),(7,'Fusion or refusion of 4-8 vertebrae','IM-0001-0019.jpg',1536.88),(8,'Insertion of gastric bubble (balloon)','IM-0001-0015.jpg',2183.98),(9,'Delayed opening of other enterostomy','IM-0001-0004.jpg',1244.86),(10,'Low cervical cesarean section','IM-0001-0013.jpg',888.57),(11,'\"Consultation, described as limited\"','IM-0001-0015.jpg',2097.30),(12,'Open reduction of alveolar fracture','IM-0001-0002.jpg',3814.41),(13,'Other fasciectomy of hand','IM-0001-0002.jpg',2315.20),(14,'\"Microscopic examination of specimen from ear, nose, throat, and larynx, bacterial smear\"','IM-0001-0012.jpg',689.26),(15,'Closure of cystostomy','IM-0001-0018.jpg',917.05),(16,'\"Microscopic examination of specimen from ear, nose, throat, and larynx, culture and sensitivity\"','IM-0001-0018.jpg',4130.27),(17,'Closed [transurethral] biopsy of bladder','IM-0001-0007.jpg',1534.02),(18,'\"Biopsy of bone, humerus\"','IM-0001-0014.jpg',3321.86),(19,'Other insertion of colonic stent(s)','IM-0001-0016.jpg',3806.89),(20,'Fitting of external prosthesis of penis','IM-0001-0012.jpg',1071.67),(21,'\"Closed heart valvotomy, tricuspid valve\"','IM-0001-0002.jpg',1015.84),(22,'Repair of mallet finger','IM-0001-0019.jpg',1571.20),(23,'Extracapsular extraction of lens by linear extraction technique','IM-0001-0006.jpg',4532.15),(24,'\"Microscopic examination of specimen from unspecified site, bacterial smear\"','IM-0001-0011.jpg',3257.58),(25,'Total dacryoadenectomy','IM-0001-0020.jpg',3395.30),(26,'Exteriorization of small intestine','IM-0001-0018.jpg',1606.91),(27,'Graft of muscle or fascia','IM-0001-0012.jpg',1572.03),(28,'Removal of extratubal ectopic pregnancy','IM-0001-0017.jpg',3280.57),(29,'Low forceps operation with episiotomy','IM-0001-0008.jpg',2835.68),(30,'\"Other and open bilateral repair of inguinal hernia, one direct and one indirect\"','IM-0001-0012.jpg',2057.45);
/*!40000 ALTER TABLE `radiology_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int(5) NOT NULL,
  `role_description` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','1234'),(2,'fs1030','1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_care_provider_num_of_patients`
--

DROP TABLE IF EXISTS `v_care_provider_num_of_patients`;
/*!50001 DROP VIEW IF EXISTS `v_care_provider_num_of_patients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_care_provider_num_of_patients` AS SELECT 
 1 AS `care_provider`,
 1 AS `number_of_patients`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_allergy_cost`
--

DROP TABLE IF EXISTS `v_patient_allergy_cost`;
/*!50001 DROP VIEW IF EXISTS `v_patient_allergy_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_allergy_cost` AS SELECT 
 1 AS `patient_id`,
 1 AS `allergy_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_allergy_revisions`
--

DROP TABLE IF EXISTS `v_patient_allergy_revisions`;
/*!50001 DROP VIEW IF EXISTS `v_patient_allergy_revisions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_allergy_revisions` AS SELECT 
 1 AS `health_card_number`,
 1 AS `patient_name`,
 1 AS `allergy_name`,
 1 AS `insert_date`,
 1 AS `status`,
 1 AS `notes`,
 1 AS `revision_history`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_billing_details`
--

DROP TABLE IF EXISTS `v_patient_billing_details`;
/*!50001 DROP VIEW IF EXISTS `v_patient_billing_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_billing_details` AS SELECT 
 1 AS `patient_id`,
 1 AS `health_card_number`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `gender`,
 1 AS `date_of_birth`,
 1 AS `age`,
 1 AS `address`,
 1 AS `phone`,
 1 AS `email`,
 1 AS `allergy_cost`,
 1 AS `immunization_cost`,
 1 AS `lab_test_cost`,
 1 AS `radiology_image_cost`,
 1 AS `total_owed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_care_provider`
--

DROP TABLE IF EXISTS `v_patient_care_provider`;
/*!50001 DROP VIEW IF EXISTS `v_patient_care_provider`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_care_provider` AS SELECT 
 1 AS `patient_name`,
 1 AS `patient_care_provider`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_details`
--

DROP TABLE IF EXISTS `v_patient_details`;
/*!50001 DROP VIEW IF EXISTS `v_patient_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_details` AS SELECT 
 1 AS `patient_id`,
 1 AS `health_card_number`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `gender`,
 1 AS `date_of_birth`,
 1 AS `age`,
 1 AS `address`,
 1 AS `phone`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_immunization_cost`
--

DROP TABLE IF EXISTS `v_patient_immunization_cost`;
/*!50001 DROP VIEW IF EXISTS `v_patient_immunization_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_immunization_cost` AS SELECT 
 1 AS `patient_id`,
 1 AS `immunization_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_immunization_revisions`
--

DROP TABLE IF EXISTS `v_patient_immunization_revisions`;
/*!50001 DROP VIEW IF EXISTS `v_patient_immunization_revisions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_immunization_revisions` AS SELECT 
 1 AS `health_card_number`,
 1 AS `patient_name`,
 1 AS `immunization_name`,
 1 AS `insert_date`,
 1 AS `status`,
 1 AS `notes`,
 1 AS `revision_history`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_lab_test_cost`
--

DROP TABLE IF EXISTS `v_patient_lab_test_cost`;
/*!50001 DROP VIEW IF EXISTS `v_patient_lab_test_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_lab_test_cost` AS SELECT 
 1 AS `patient_id`,
 1 AS `lab_test_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_lab_test_revisions`
--

DROP TABLE IF EXISTS `v_patient_lab_test_revisions`;
/*!50001 DROP VIEW IF EXISTS `v_patient_lab_test_revisions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_lab_test_revisions` AS SELECT 
 1 AS `health_card_number`,
 1 AS `patient_name`,
 1 AS `lab_test_name`,
 1 AS `insert_date`,
 1 AS `status`,
 1 AS `notes`,
 1 AS `revision_history`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_radiology_image_cost`
--

DROP TABLE IF EXISTS `v_patient_radiology_image_cost`;
/*!50001 DROP VIEW IF EXISTS `v_patient_radiology_image_cost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_radiology_image_cost` AS SELECT 
 1 AS `patient_id`,
 1 AS `radiology_image_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_patient_radiology_image_revisions`
--

DROP TABLE IF EXISTS `v_patient_radiology_image_revisions`;
/*!50001 DROP VIEW IF EXISTS `v_patient_radiology_image_revisions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_patient_radiology_image_revisions` AS SELECT 
 1 AS `health_card_number`,
 1 AS `patient_name`,
 1 AS `procedure_type`,
 1 AS `insert_date`,
 1 AS `status`,
 1 AS `notes`,
 1 AS `revision_history`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_care_provider_num_of_patients`
--

/*!50001 DROP VIEW IF EXISTS `v_care_provider_num_of_patients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_care_provider_num_of_patients` AS select concat(`cp`.`title`,' ',`cp`.`first_name`,' ',`cp`.`last_name`) AS `care_provider`,count(`pcp`.`patient_id`) AS `number_of_patients` from (`patient_care_provider` `pcp` join `care_provider` `cp` on((`cp`.`care_provider_id` = `pcp`.`care_provider_id`))) group by `cp`.`care_provider_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_allergy_cost`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_allergy_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_allergy_cost` AS select `p`.`patient_id` AS `patient_id`,sum(`a`.`cost`) AS `allergy_cost` from ((`patients` `p` join `patient_allergies` `pa` on((`pa`.`patient_id` = `p`.`patient_id`))) join `allergies` `a` on((`pa`.`allergy_id` = `a`.`allergy_id`))) group by `p`.`patient_id` order by `p`.`patient_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_allergy_revisions`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_allergy_revisions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_allergy_revisions` AS select `p`.`health_card_number` AS `health_card_number`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`a`.`name` AS `allergy_name`,`pa`.`date` AS `insert_date`,`pa`.`status` AS `status`,`pa`.`notes` AS `notes`,row_number() OVER (PARTITION BY `p`.`patient_id` ORDER BY `pa`.`date` )  AS `revision_history` from ((`patients` `p` join `patient_allergies` `pa` on((`p`.`patient_id` = `pa`.`patient_id`))) join `allergies` `a` on((`a`.`allergy_id` = `pa`.`allergy_id`))) order by `p`.`patient_id`,`pa`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_billing_details`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_billing_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_billing_details` AS with `patient_details` as (select `p`.`patient_id` AS `patient_id`,`p`.`health_card_number` AS `health_card_number`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`p`.`gender` AS `gender`,`p`.`date_of_birth` AS `date_of_birth`,(year(curdate()) - year(`p`.`date_of_birth`)) AS `age`,concat(`p`.`street_number`,' ',`p`.`street_name`,', ',`p`.`state`,', ',`p`.`zip_code`) AS `address`,`p`.`phone` AS `phone`,`p`.`email` AS `email` from `patients` `p`), `patient_costs` as (select `pd`.`patient_id` AS `patient_id`,`pd`.`health_card_number` AS `health_card_number`,`pd`.`first_name` AS `first_name`,`pd`.`last_name` AS `last_name`,`pd`.`gender` AS `gender`,`pd`.`date_of_birth` AS `date_of_birth`,`pd`.`age` AS `age`,`pd`.`address` AS `address`,`pd`.`phone` AS `phone`,`pd`.`email` AS `email`,`a`.`allergy_cost` AS `allergy_cost`,`i`.`immunization_cost` AS `immunization_cost`,`l`.`lab_test_cost` AS `lab_test_cost`,`r`.`radiology_image_cost` AS `radiology_image_cost`,(((ifnull(`a`.`allergy_cost`,0) + ifnull(`i`.`immunization_cost`,0)) + ifnull(`l`.`lab_test_cost`,0)) + ifnull(`r`.`radiology_image_cost`,0)) AS `total_owed` from ((((`patient_details` `pd` left join `v_patient_allergy_cost` `a` on((`a`.`patient_id` = `pd`.`patient_id`))) left join `v_patient_immunization_cost` `i` on((`i`.`patient_id` = `pd`.`patient_id`))) left join `v_patient_lab_test_cost` `l` on((`l`.`patient_id` = `pd`.`patient_id`))) left join `v_patient_radiology_image_cost` `r` on((`r`.`patient_id` = `pd`.`patient_id`)))) select `patient_costs`.`patient_id` AS `patient_id`,`patient_costs`.`health_card_number` AS `health_card_number`,`patient_costs`.`first_name` AS `first_name`,`patient_costs`.`last_name` AS `last_name`,`patient_costs`.`gender` AS `gender`,`patient_costs`.`date_of_birth` AS `date_of_birth`,`patient_costs`.`age` AS `age`,`patient_costs`.`address` AS `address`,`patient_costs`.`phone` AS `phone`,`patient_costs`.`email` AS `email`,`patient_costs`.`allergy_cost` AS `allergy_cost`,`patient_costs`.`immunization_cost` AS `immunization_cost`,`patient_costs`.`lab_test_cost` AS `lab_test_cost`,`patient_costs`.`radiology_image_cost` AS `radiology_image_cost`,`patient_costs`.`total_owed` AS `total_owed` from `patient_costs` where (`patient_costs`.`total_owed` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_care_provider`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_care_provider`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_care_provider` AS select concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,concat(`cp`.`title`,' ',`cp`.`first_name`,' ',`cp`.`last_name`) AS `patient_care_provider` from ((`patients` `p` left join `patient_care_provider` `pcp` on((`pcp`.`patient_id` = `p`.`patient_id`))) left join `care_provider` `cp` on((`cp`.`care_provider_id` = `pcp`.`care_provider_id`))) order by concat(`cp`.`title`,' ',`cp`.`first_name`,' ',`cp`.`last_name`),concat(`p`.`first_name`,' ',`p`.`last_name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_details`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_details` AS select `p`.`patient_id` AS `patient_id`,`p`.`health_card_number` AS `health_card_number`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`p`.`gender` AS `gender`,`p`.`date_of_birth` AS `date_of_birth`,(year(curdate()) - year(`p`.`date_of_birth`)) AS `age`,concat(`p`.`street_number`,' ',`p`.`street_name`,', ',`p`.`state`,', ',`p`.`zip_code`) AS `address`,`p`.`phone` AS `phone`,`p`.`email` AS `email` from `patients` `p` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_immunization_cost`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_immunization_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_immunization_cost` AS select `p`.`patient_id` AS `patient_id`,sum(`im`.`cost`) AS `immunization_cost` from ((`patients` `p` join `patient_immunization` `pim` on((`pim`.`patient_id` = `p`.`patient_id`))) join `immunization` `im` on((`im`.`immunization_id` = `pim`.`immunization_id`))) group by `p`.`patient_id` order by `p`.`patient_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_immunization_revisions`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_immunization_revisions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_immunization_revisions` AS select `p`.`health_card_number` AS `health_card_number`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`i`.`disease` AS `immunization_name`,`pim`.`date` AS `insert_date`,`pim`.`status` AS `status`,`pim`.`notes` AS `notes`,row_number() OVER (PARTITION BY `p`.`patient_id` ORDER BY `pim`.`date` )  AS `revision_history` from ((`patients` `p` join `patient_immunization` `pim` on((`p`.`patient_id` = `pim`.`patient_id`))) join `immunization` `i` on((`i`.`immunization_id` = `pim`.`immunization_id`))) order by `p`.`patient_id`,`pim`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_lab_test_cost`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_lab_test_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_lab_test_cost` AS select `p`.`patient_id` AS `patient_id`,sum(`lt`.`cost`) AS `lab_test_cost` from ((`patients` `p` join `patient_lab_test` `plt` on((`plt`.`patient_id` = `p`.`patient_id`))) join `lab_test` `lt` on((`lt`.`lab_id` = `plt`.`lab_id`))) group by `p`.`patient_id` order by `p`.`patient_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_lab_test_revisions`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_lab_test_revisions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_lab_test_revisions` AS select `p`.`health_card_number` AS `health_card_number`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`lt`.`lab_short_desc` AS `lab_test_name`,`plt`.`date` AS `insert_date`,`plt`.`status` AS `status`,`plt`.`notes` AS `notes`,row_number() OVER (PARTITION BY `p`.`patient_id` ORDER BY `plt`.`date` )  AS `revision_history` from ((`patients` `p` join `patient_lab_test` `plt` on((`p`.`patient_id` = `plt`.`patient_id`))) join `lab_test` `lt` on((`lt`.`lab_id` = `plt`.`lab_id`))) order by `p`.`patient_id`,`plt`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_radiology_image_cost`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_radiology_image_cost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_radiology_image_cost` AS select `p`.`patient_id` AS `patient_id`,sum(`rm`.`cost`) AS `radiology_image_cost` from ((`patients` `p` join `patient_radiology_image` `pri` on((`pri`.`patient_id` = `p`.`patient_id`))) join `radiology_image` `rm` on((`rm`.`radiology_image_id` = `pri`.`radiology_image_id`))) group by `p`.`patient_id` order by `p`.`patient_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_patient_radiology_image_revisions`
--

/*!50001 DROP VIEW IF EXISTS `v_patient_radiology_image_revisions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_patient_radiology_image_revisions` AS select `p`.`health_card_number` AS `health_card_number`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`ri`.`procedure_type` AS `procedure_type`,`pri`.`date` AS `insert_date`,`pri`.`status` AS `status`,`pri`.`notes` AS `notes`,row_number() OVER (PARTITION BY `p`.`patient_id` ORDER BY `pri`.`date` )  AS `revision_history` from ((`patients` `p` join `patient_radiology_image` `pri` on((`p`.`patient_id` = `pri`.`patient_id`))) join `radiology_image` `ri` on((`ri`.`radiology_image_id` = `pri`.`radiology_image_id`))) order by `p`.`patient_id`,`pri`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-13 19:37:26
