-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.0.26-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

use flagco_flagcodev;


INSERT INTO `attribute` (`attribute_cd`,`attribute_desc`,`create_ts`) VALUES 
 (1,'Width',20070512103335),
 (2,'Length',20070512103339),
 (3,'Weight',20070512103343),
 (4,'Material',20070512103409),
 (5,'',20070514104707),
 (6,'size',20070514105856),
 (7,'state',20070518155645),
 (8,'image',20070518155654);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010076','IND-V-202','\"Valley Forge Indoor Flag Set  3\'x5\'  nylon, 8\' pole, ornament, stand\"','115.00','17.000',1,300,1,7,20070512102759),
 ('010077','IND-V-203','\"Valley Forge Indoor Flag Set 3\'x5\' nylon, 9\' pole, ornament, stand\"','237.93','20.000',1,300,1,7,20070512102759),
 ('010078','REL-C','\"Valley Forge Christian Indoor Flag Set, 3\'x5\' nylon flag, 8\' pole, stand\"','110.00','17.000',1,300,1,7,20070512102759),
 ('010079','REL-P','\"Valley Forge Papal Indoor Flag Set, 3\'x5\' nylon flag, 8\' pole, stand\"','184.39','17.000',1,300,1,7,20070512102759),
 ('010080','REL-E','\"Valley Forge Episcopal Indoor Flag Set, 3\'x5\' nylon flag, 8\' pole, stand\"','193.91','17.000',1,300,1,7,20070512102759),
 ('010081','REL-I','\"Valley Forge Israel Indoor Flag Set, 3\'x5\' nylon flag, 8\' pole, stand\"','178.45','17.000',1,300,1,7,20070512102759),
 ('010082','VF Christian','Valley Forge 3\'x5\' indoor Christian Flag.  Nylon with fringe','49.75','4.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010083','VF Christian','Valley Forge 4\'x6\' indoor Christian Flag  Nylon with fringe','66.07','5.000',2,100,1,NULL,20070512102759),
 ('010084','VF Papal','Valley Forge 3\'x5\' indoor Papal Flag.  Nylon with fringe','66.83','4.000',2,100,1,NULL,20070512102759),
 ('010085','VF Papal','Valley Forge 4\'x6\' indoor Papal Flag  Nylon with fringe','73.26','5.000',2,100,1,NULL,20070512102759),
 ('010086','VF Episcopal','Valley Forge 3\'x5\' indoor Episcopal Flag.  Nylon with fringe','71.97','4.000',2,100,1,NULL,20070512102759),
 ('010087','VF Episcopal','Valley Forge 4\'x6\' indoor Episcopal Flag  Nylon with fringe','92.90','5.000',2,100,1,NULL,20070512102759),
 ('010088','VF Israel','Valley Forge 3\'x5\' indoor Israel Flag.  Nylon with fringe','56.24','4.000',2,100,1,NULL,20070512102759),
 ('010089','VF Israell','Valley Forge 4\'x6\' indoor Israel Flag  Nylon with fringe','73.26','5.000',2,100,1,NULL,20070512102759),
 ('021854','NF-1','Package of 6 -  4 in. x 6 in. Endura-Gloss World Miniflags  (6 Pack)','15.00','2.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021853','NF-1','Package of 12  - 4 in. x 6 in. Endura-Gloss World Miniflags  (12 Pack)','30.00','3.000',2,100,1,NULL,20070512102759),
 ('021855','NF-1','4 in. x 6 in. Endura-Gloss Am Somoa flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('021856','NF-1','3 ft. x 5 ft. Endura-Poly Am Samoa O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('021857','NF-1','3 ft. x 5 ft. Nylon Am Samoa O/D Flag','47.30','0.450',2,100,1,NULL,20070512102759),
 ('021871','NF-1','3 ft. x 5 ft. Endura-Poly Am Samoa Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('021872','NF-1','3 ft. x 5 ft. Nylon Am Samoa Flag w/Ph & Fr','78.30','0.600',2,100,1,NULL,20070512102759),
 ('021878','NF-1','4 in. x 6 in. Endura-Gloss Mtd District of Columbia Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('021885','NF-1','3 ft. x 5 ft. Nylon District of Columbia O/D Flag','32.00','0.450',2,100,1,NULL,20070512102759),
 ('021887','NF-1','4 ft. x 6 ft. Nylon District of Columbia O/D Flag','64.90','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021906','NF-1','3 ft. x 5 ft. Endura-Poly District of Columbia Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('021907','NF-1','3 ft. x 5 ft. Nylon District of Columbia Flag w/Ph & Fr','62.00','0.600',2,100,1,NULL,20070512102759),
 ('021914','NF-1','4 in. x 6 in. Endura-Gloss Guam Flag','3.00','0.024',2,20,1,NULL,20070512102759),
 ('021920','NF-1','3\' x 5\' Endura-Poly Guam O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('021919','NF-1','2\' x 3\' Nylon Guam O/D Flag','44.10','0.300',2,100,1,NULL,20070512102759),
 ('021921','NF-1','3\' x 5\' Nylon Guam O/D Flag','59.10','0.300',2,100,1,NULL,20070512102759),
 ('021923','NF-1','4\' x 6\' Nylon Guam O/D Flag','83.50','0.700',2,100,1,NULL,20070512102759),
 ('021925','NF-1','5\' x 8\' Nylon Guam O/D Flag','122.00','1.000',2,100,1,NULL,20070512102759),
 ('021927','NF-1','6\' x 10\' Nylon Guam O/D Flag','160.00','1.500',2,100,1,NULL,20070512102759),
 ('021928','NF-1','8\' x 12\' Nylon Guam O/D Flag','439.00','2.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021950','NF-1','4 in. x 6 in. Endura-Gloss Mtd Puerto Rico Flag','3.00','0.024',2,20,1,NULL,20070512102759),
 ('021952','NF-1','12 in. x 18 in. Endura-Poly Puerto Rico Flag','3.40','0.200',2,100,1,NULL,20070512102759),
 ('021955','NF-1','2 ft. x 3 ft. Nylon Puerto Rico Flag','22.60','0.400',2,100,1,NULL,20070512102759),
 ('021956','NF-1','3 ft. x 5 ft. Endura-Poly Puerto Rico O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('021957','NF-1','3 ft. x 5 ft. Nylon Puerto Rico O/D Flag','36.90','0.450',2,100,1,NULL,20070512102759),
 ('021959','NF-1','4 ft. x 6 ft. Nylon Puerto Rico O/D Flag','52.90','0.700',2,100,1,NULL,20070512102759),
 ('021961','NF-1','5 ft. x 8 ft. Nylon Puerto Rico O/D Flag','82.90','1.000',2,100,1,NULL,20070512102759),
 ('021963','NF-1','6 ft. x 10 ft. Nylon Puerto Rico O/D Flag','145.90','1.500',2,100,1,NULL,20070512102759),
 ('021969','NF-1','3 ft. x 5 ft. Endura-Poly Puerto Rico Flag w/Ph','50.00','0.317',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021970','NF-1','3 ft. x 5 ft. Nylon Puerto Rico Flag w/Ph','50.90','0.400',2,100,1,NULL,20070512102759),
 ('021986','NF-1','4 in. x 6 in. Endura-Gloss Mtd Virgin Islands Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('021992','NF-1','3 ft. x 5 ft. Endura-Poly Virgin Islands O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('021993','NF-1','3 ft. x 5 ft. Nylon Virgin Islands O/D Flag','47.40','0.450',2,100,1,NULL,20070512102759),
 ('022014','NF-1','3 ft. x 5 ft. Endura-Poly Virgin Islands Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('022015','NF-1','3 ft. x 5 ft. Nylon Virgin Islands Flag w/Ph & Fr','75.40','0.600',2,100,1,NULL,20070512102759),
 ('030022','NF-1','4 in. x 6 in. Endura-Gloss Mtd Afghanistan Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030025','NF-1','3 ft. x 5 ft. Endura-Poly Afghanistan O/D Flag','20.00','0.300',2,100,1,NULL,20070512102759),
 ('030024','NF-1','2 ft. x 3 ft. Nylon Afghanistan O/D Flag','43.80','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030026','NF-1','3 ft. x 5 ft. Nylon Afghanistan O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030027','NF-1','4 ft. x 6 ft. Nylon Afghanistan O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030028','NF-1','5 ft. x 8 ft. Nylon Afghanistan O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030043','NF-1','3 ft. x 5 ft. Endura-Poly Afro-American O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030044','NF-1','3 ft. x 5 ft. Nylon Afro-American O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030345','NF-1','4 in. x 6 in. Endura-Gloss Azores Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030346','NF-1','3 ft. x 5 ft. Endura-Poly Azores O/D flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030054','NF-1','3 ft. x 5 ft. Endura-Poly Afro-American Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030055','NF-1','3 ft. x 5 ft. Nylon Afro-American Flag w/Ph & Fr','60.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030061','NF-1','4 in x 6 in Endura-Gloss Albania Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030063','NF-1','3 ft x 5 ft Endura-Poly Albania Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030062','NF-1','2 ft x 3 ft Nylon Albania Flag','29.40','0.400',2,100,1,NULL,20070512102759),
 ('030064','NF-1','3 ft x 5 ft Nylon Albania Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030065','NF-1','4 ft x 6 ft Nylon Albania Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('030066','NF-1','5 ft. x 8 ft. Nylon Albania O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('035004','NF-1','6 ft. x 10 ft. Nylon Albania O/D Flag','168.00','2.000',2,100,1,NULL,20070512102759),
 ('030097','NF-1','3 ft. x 5 ft. Endura-Poly Andorra w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030098','NF-1','3 ft. x 5 ft. Nylon Andorra w/Seal O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030099','NF-1','4 ft. x 6 ft. Nylon Andorra w/Seal O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030100','NF-1','5 ft. x 8 ft. Nylon Andorra w/Seal O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030108','NF-1','3 ft. x 5 ft. Endura-Poly Andorra w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030109','NF-1','3 ft. x 5 ft. Nylon Andorra w/Seal Flag w/Ph & Fr','96.20','0.600',2,100,1,NULL,20070512102759),
 ('030114','NF-1','3 ft. x 5 ft. Nylon Andorra (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030142','NF-1','4 in. x 6 in. Endura-Gloss Mtd Anguilla Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030144','NF-1','3 ft. x 5 ft. Endura-Poly Anguilla O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030145','NF-1','3 ft. x 5 ft. Nylon Anguilla O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030146','NF-1','4 ft. x 6 ft. Nylon Anguilla O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030147','NF-1','5 ft. x 8 ft. Nylon Anguilla O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030155','NF-1','3 ft. x 5 ft. Endura-Poly Anguilla Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030156','NF-1','3 ft. x 5 ft. Nylon Anguilla Flag w/Ph & Fr','96.20','0.600',2,100,1,NULL,20070512102759),
 ('030162','NF-1','4 in. x 6 in. Endura-Gloss Mtd Antigua & Barbuda Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030164','NF-1','2 ft. x 3 ft. Nylon Antigua flag','43.80','0.400',2,100,1,NULL,20070512102759),
 ('030165','NF-1','3 ft. x 5 ft. Endura-Poly Antigua & Barbuda O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030166','NF-1','3 ft. x 5 ft. Nylon Antigua & Barbuda O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030167','NF-1','4 ft. x 6 ft. Nylon Antigua & Barbuda O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030168','NF-1','5 ft. x 8 ft. Nylon Antigua & Barbuda O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030177','NF-1','3 ft. x 5 ft. Endura-Poly Antigua & Barbuda Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030178','NF-1','3 ft. x 5 ft. Nylon Antigua & Barbuda Flag w/Ph & Fr','96.20','0.600',2,100,1,NULL,20070512102759),
 ('030184','NF-1','4 in. x 6 in. Endura-Gloss Mtd Argentina w/Seal Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030186','NF-1','12 in. x 18 in. Endura-Poly Mtd Argentina w/Seal Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759),
 ('030189','NF-1','3 ft. x 5 ft. Endura-Poly Argentina w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030190','NF-1','3 ft. x 5 ft. Nylon Argentina w/Seal O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030191','NF-1','4 ft. x 6 ft. Nylon Argentina w/Seal O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('030192','NF-1','5 ft. x 8 ft. Nylon Argentina w/Seal O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('035012','NF-1','6 ft. x 10 ft. Nylon Argentina w/seal O/D Flag','174.00','2.000',2,100,1,NULL,20070512102759),
 ('030202','NF-1','3 ft. x 5 ft. Endura-Poly Argentina w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030203','NF-1','3 ft. x 5 ft. Nylon Argentina w/Seal Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('030208','NF-1','3 ft. x 5 ft. Nylon Argentina (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030209','NF-1','4 ft. x 6 ft. Nylon Argentina (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030210','NF-1','5 ft. x 8 ft. Nylon Argentina (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('030211','NF-1','6 ft. x 10 ft. Nylon Argentina O/D Flag','78.00','2.000',2,100,1,NULL,20070512102759),
 ('030216','NF-1','3 ft. x 5 ft. Nylon Argentina (No Seal) Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('030217','NF-1','4 ft. x 6 ft. Nylon Argentina (No Seal) Flag w/Ph & Fr','64.20','0.950',2,100,1,NULL,20070512102759),
 ('030219','NF-1','\"4\"\"x6\"\" Endura-Gloss Armenia Flag\"','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030221','NF-1','\"12\"\" x 18\"\" Endura-Poly Armenia Flag\"','12.20','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030224','NF-1','3\' x 5\' Endura-Poly Armenia Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030223','NF-1','2\' x 3\' Nylon Armenia Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('030225','NF-1','3\' x 5\' Nylon Armenia Flag','35.20','0.600',2,100,1,NULL,20070512102759),
 ('030226','NF-1','4\' x 6\' Nylon Armenia Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('030227','NF-1','5\' x 8\' Nylon Armenia Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('035013','NF-1','6 ft. x 10 ft. Nylon Armenia Flag','78.00','3.000',2,100,1,NULL,20070512102759),
 ('030243','NF-1','4 in. x 6 in. Endura-Gloss Mtd Aruba Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030246','NF-1','3 ft. x 5 ft. Endura-Poly Aruba O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030247','NF-1','3 ft. x 5 ft. Nylon Aruba O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030248','NF-1','4 ft. x 6 ft. Nylon Aruba O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030249','NF-1','5 ft. x 8 ft. Nylon Aruba O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030257','NF-1','3 ft. x 5 ft. Endura-Poly Aruba Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030258','NF-1','3 ft. x 5 ft. Nylon Aruba Flag w/Ph & Fr','96.20','0.600',2,100,1,NULL,20070512102759),
 ('030261','NF-1','4 in. x 6 in. Endura-Gloss Mtd Australia Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030263','NF-1','12 in. x 18 in. Endura-Poly Mtd Australia Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('030267','NF-1','3 ft. x 5 ft. Endura-Poly Australia O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030268','NF-1','3 ft. x 5 ft. Nylon Australia O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030269','NF-1','4 ft. x 6 ft. Nylon Australia O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('030270','NF-1','5 ft. x 8 ft. Nylon Australia O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030280','NF-1','3 ft. x 5 ft. Endura-Poly Australia Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030281','NF-1','3 ft. x 5 ft. Nylon Australia Flag w/Ph & Fr','84.00','0.600',2,100,1,NULL,20070512102759),
 ('030290','NF-1','4 in. x 6 in. Endura-Gloss Mtd Austria (No Eagle) Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030296','NF-1','3 ft. x 5 ft. Endura-Poly Austria (No Eagle) O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030297','NF-1','3 ft. x 5 ft. Nylon Austria (No Eagle) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030298','NF-1','4 ft. x 6 ft. Nylon Austria (No Eagle) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030299','NF-1','5 ft. x 8 ft. Nylon Austria (No Eagle) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('030302','NF-1','12 in. x 18 in. Endura-Poly Mtd Austria (No Eagle) Flag w/Fr','5.00','0.088',2,100,1,NULL,20070512102759),
 ('030309','NF-1','3 ft. x 5 ft. Endura-Poly Austria (No Eagle) Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030310','NF-1','3 ft. x 5 ft. Nylon Austria (No Eagle) Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('030314','NF-1','3 ft. x 5 ft. Endura-Poly Austria w/Eagle O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030315','NF-1','3 ft. x 5 ft. Nylon Austria w/Eagle O/D Flag','47.70','0.450',2,100,1,NULL,20070512102759),
 ('030316','NF-1','4 ft. x 6 ft. Nylon Austria w/Eagle O/D Flag','62.00','0.700',2,100,1,NULL,20070512102759),
 ('030317','NF-1','5 ft. x 8 ft. Nylon Austria w/Eagle O/D Flag','95.50','1.000',2,100,1,NULL,20070512102759),
 ('030324','NF-1','3 ft. x 5 ft. Endura-Poly Austria w/Eagle Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030325','NF-1','3 ft. x 5 ft. Nylon Austria w/Eagle Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('030350','NF-1','4 in. x 6 in. Endura-Gloss Mtd Bahamas Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030352','NF-1','12 in. x 18 in. Endura-Poly Mtd Bahamas Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030356','NF-1','3 ft. x 5 ft. Endura-Poly Bahamas O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030357','NF-1','3 ft. x 5 ft. Nylon Bahamas O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030358','NF-1','4 ft. x 6 ft. Nylon Bahamas O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('030359','NF-1','5 ft. x 8 ft. Nylon Bahamas O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('030369','NF-1','3 ft. x 5 ft. Endura-Poly Bahamas Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030370','NF-1','3 ft. x 5 ft. Nylon Bahamas Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('030373','NF-1','\"4\"\" x 6\"\" Endura-Gloss Bahrain Flag\"','3.00','0.300',2,100,1,NULL,20070512102759),
 ('030375','NF-1','3\' x 5\' Endura-Poly Bahrain Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030374','NF-1','2\' x 3\' Nylon Bahrain Flag','39.10','0.300',2,100,1,NULL,20070512102759),
 ('030376','NF-1','3\' x 5\' Nylon Bahrain Flag','57.40','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030377','NF-1','4\' x 6\' Nylon Bahrain Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('030378','NF-1','5\' x 8\' Nylon Bahrain Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('030407','NF-1','4 in. x 6 in. Endura-Gloss Mtd Barbados Flag No Fr','3.00','0.024',2,20,1,NULL,20070512102759),
 ('030409','NF-1','2 ft. x 3 ft. Nylon Barbados flag','39.10','0.400',2,100,1,NULL,20070512102759),
 ('030410','NF-1','3 ft. x 5 ft. Endura-Poly Barbados O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030411','NF-1','3 ft. x 5 ft. Nylon Barbados O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('030412','NF-1','4 ft. x 6 ft. Nylon Barbados O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('030413','NF-1','5 ft. x 8 ft. Nylon Barbados O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('030422','NF-1','3 ft. x 5 ft. Endura-Poly Barbados Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030423','NF-1','3 ft. x 5 ft. Nylon Barbados Flag w/Ph & Fr','85.40','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030426','NF-1','4 in. x 6 in. Endura-Gloss Basque Lands flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030427','NF-1','3 ft. x 5 ft. Endura-Poly Basque Lands O/D flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030445','NF-1','4 in. x 6 in. Endura-Gloss Mtd Belgium Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030447','NF-1','12 in. x 18 in. Endura-Poly Mtd Belgium Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759),
 ('030451','NF-1','3 ft. x 5 ft. Endura-Poly Belgium O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030452','NF-1','3 ft. x 5 ft. Nylon Belgium O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030453','NF-1','4 ft. x 6 ft. Nylon Belgium O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030454','NF-1','5 ft. x 8 ft. Nylon Belgium O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('030464','NF-1','3 ft. x 5 ft. Endura-Poly Belgium Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030465','NF-1','3 ft. x 5 ft. Nylon Belgium Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('030502','NF-1','4 in. x 6 in. Endura-Gloss Mtd Bermuda Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030506','NF-1','3 ft. x 5 ft. Endura-Poly Bermuda O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030507','NF-1','3 ft. x 5 ft. Nylon Bermuda O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030508','NF-1','4 ft. x 6 ft. Nylon Bermuda O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030509','NF-1','5 ft. x 8 ft. Nylon Bermuda O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030518','NF-1','3 ft. x 5 ft. Endura-Poly Bermuda Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030519','NF-1','3 ft. x 5 ft. Nylon Bermuda Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('030539','NF-1','4 in. x 6 in. Endura-Gloss Mtd Bolivia w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030542','NF-1','3 ft. x 5 ft. Endura-Poly Bolivia w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030543','NF-1','3 ft. x 5 ft. Nylon Bolivia w/Seal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('030544','NF-1','4 ft. x 6 ft. Nylon Bolivia w/Seal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('030545','NF-1','5 ft. x 8 ft. Nylon Bolivia w/Seal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('030554','NF-1','3 ft. x 5 ft. Endura-Poly Bolivia w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030555','NF-1','3 ft. x 5 ft. Nylon Bolivia w/Seal Flag w/Ph & Fr','91.00','0.600',2,100,1,NULL,20070512102759),
 ('030560','NF-1','3 ft. x 5 ft. Nylon Bolivia (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030561','NF-1','4 ft. x 6 ft. Nylon Bolivia (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030562','NF-1','5 ft. x 8 ft. Nylon Bolivia (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030568','NF-1','3 ft. x 5 ft. Nylon Bolivia (No Seal) Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('030569','NF-1','4 ft. x 6 ft. Nylon Bolivia (No Seal) Flag w/Ph & Fr','98.00','0.950',2,100,1,NULL,20070512102759),
 ('030571','NF-1','4 in. x 6 in. Endura-Gloss Bosnia-Herzegovina  Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030572','NF-1','2 ft. x 3 ft. Nylon Bosnia-Herzegovina O/D Flag','33.40','0.400',2,100,1,NULL,20070512102759),
 ('030573','NF-1','3 ft. x 5 ft. Nylon Bosnia-Herzegovina O/D flag','51.50','0.500',2,100,1,NULL,20070512102759),
 ('030574','NF-1','4 ft. x 6 ft. Nylon Bosnia-Herzegovina O/D flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('030575','NF-1','5 ft. x 8 ft. Nylon Bosnia-Herzegovina O/D flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('030593','NF-1','3 ft. x 5 ft. Nylon Bougainville O/D flag','252.00','0.500',2,100,1,NULL,20070512102759),
 ('030596','NF-1','4 in. x 6 in. Endura-Gloss Mtd Brazil Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030598','NF-1','12 in. x 18 in. Endura-Poly Mtd Brazil Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759),
 ('030602','NF-1','3 ft. x 5 ft. Endura-Poly Brazil O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030603','NF-1','3 ft. x 5 ft. Nylon Brazil O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('030604','NF-1','4 ft. x 6 ft. Nylon Brazil O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759),
 ('030605','NF-1','5 ft. x 8 ft. Nylon Brazil O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('030615','NF-1','3 ft. x 5 ft. Endura-Poly Brazil Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030616','NF-1','3 ft. x 5 ft. Nylon Brazil Flag w/Ph & Fr','74.10','0.600',2,100,1,NULL,20070512102759),
 ('030619','NF-1','3 ft. x 5 ft. Endura-Poly British Indian Ocean Territory O/D flag','30.00','0.500',2,100,1,NULL,20070512102759),
 ('030623','NF-1','3 ft. x 5 ft. Nylon British Navy O/D Flag','39.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030624','NF-1','4 ft. x 6 ft. Nylon British Navy O/D Flag','54.00','0.700',2,100,1,NULL,20070512102759),
 ('030625','NF-1','5 ft. x 8 ft. Nylon British Navy O/D Flag','79.00','1.000',2,100,1,NULL,20070512102759),
 ('030631','NF-1','3 ft. x 5 ft. Nylon British Navy Flag w/Ph & Fr','130.00','0.600',2,100,1,NULL,20070512102759),
 ('030634','NF-1','4 in. x 6 in. Endura-Gloss Mtd British Vir Islands Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030636','NF-1','3 ft. x 5 ft. Endura-Poly British Vir Islands O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030637','NF-1','3 ft. x 5 ft. Nylon British Vir Islands O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030638','NF-1','4 ft. x 6 ft. Nylon British Vir Islands O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030639','NF-1','5 ft. x 8 ft. Nylon British Vir Islands O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030647','NF-1','3 ft. x 5 ft. Endura-Poly British Vir Islands Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030648','NF-1','3 ft. x 5 ft. Nylon British Vir Islands Flag w/Ph & Fr','120.00','0.600',2,100,1,NULL,20070512102759),
 ('030749','NF-1','4 in. x 6 in. Endura-Gloss Mtd Canada Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030750','NF-1','8 in. x 12 in. Endura-Gloss Mtd Canada Flag No Fr','7.60','0.050',2,100,1,NULL,20070512102759),
 ('030755','NF-1','3 ft. x 5 ft. Endura-Poly Canada O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030756','NF-1','3 ft. x 5 ft. Nylon Canada O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('030757','NF-1','4 ft. x 6 ft. Nylon Canada O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('030758','NF-1','5 ft. x 8 ft. Nylon Canada O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('030768','NF-1','3 ft. x 5 ft. Endura-Poly Canada Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030769','NF-1','3 ft. x 5 ft. Nylon Canada Flag w/Ph & Fr','63.20','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030770','NF-1','4 ft. x 6 ft. Nylon Canada Flag w/Ph & Fr','76.50','0.950',2,100,1,NULL,20070512102759),
 ('030772','NF-1','3 ft. x 5 ft. Endura-Poly Canadian Forces O/D flag','30.00','0.500',2,100,1,NULL,20070512102759),
 ('030775','NF-1','3 ft. x 5 ft. Endura-Poly Canadian Royal Standard O/D flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('030778','NF-1','4 in. x 6 in. Endura-Gloss Mtd Canary Islands Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030781','NF-1','3 ft. x 5 ft. Nylon Canary Islands O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030782','NF-1','4 ft. x 6 ft. Nylon Canary Islands O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030783','NF-1','5 ft. x 8 ft. Nylon Canary Islands O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('030790','NF-1','3 ft. x 5 ft. Nylon Canary Islands Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('030793','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cape Verde Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030795','NF-1','3 ft. x 5 ft. Endura-Poly Cape Verde O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030796','NF-1','3 ft. x 5 ft. Nylon Cape Verde O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('030797','NF-1','4 ft. x 6 ft. Nylon Cape Verde O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('030798','NF-1','5 ft. x 8 ft. Nylon Cape Verde O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('030806','NF-1','3 ft. x 5 ft. Endura-Poly Cape Verde Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030807','NF-1','3 ft. x 5 ft. Nylon Cape Verde Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('030812','NF-1','3 ft. x 5 ft. Endura-Poly Catalonia O/D Flag','30.00','0.267',2,100,1,NULL,20070512102759),
 ('030813','NF-1','3 ft. x 5 ft. Nylon Catalonia O/D Flag','32.90','0.450',2,100,1,NULL,20070512102759),
 ('030814','NF-1','4 ft. x 6 ft. Nylon Catalonia O/D Flag','51.00','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030815','NF-1','5 ft. x 8 ft. Nylon Catalonia O/D Flag','102.00','1.000',2,100,1,NULL,20070512102759),
 ('030822','NF-1','3 ft. x 5 ft. Endura-Poly Catalonia Flag w/Ph & Fr','60.00','0.417',2,100,1,NULL,20070512102759),
 ('030823','NF-1','3 ft. x 5 ft. Nylon Catalonia Flag w/Ph & Fr','69.00','0.600',2,100,1,NULL,20070512102759),
 ('030826','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cayman Islands Blue Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030828','NF-1','3 ft. x 5 ft. Endura-Poly Cayman Islands Blue O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030829','NF-1','3 ft. x 5 ft. Nylon Cayman Islands Blue O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030830','NF-1','4 ft. x 6 ft. Nylon Cayman Islands Blue O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030831','NF-1','5 ft. x 8 ft. Nylon Cayman Islands Blue O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030839','NF-1','3 ft. x 5 ft. Endura-Poly Cayman Islands Blue Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030840','NF-1','3 ft. x 5 ft. Nylon Cayman Islands Blue Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('030845','NF-1','3 ft. x 5 ft. Nylon Cayman Islands Red O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('030846','NF-1','4 ft. x 6 ft. Nylon Cayman Islands Red O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('030847','NF-1','5 ft. x 8 ft. Nylon Cayman Islands Red O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('030853','NF-1','3 ft. x 5 ft. Nylon Cayman Islands Red Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('030888','NF-1','4 in. x 6 in. Endura-Gloss Mtd Chile Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030891','NF-1','3 ft. x 5 ft. Endura-Poly Chile O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030892','NF-1','3 ft. x 5 ft. Nylon Chile O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030893','NF-1','4 ft. x 6 ft. Nylon Chile O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030894','NF-1','5 ft. x 8 ft. Nylon Chile O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('030903','NF-1','3 ft. x 5 ft. Endura-Poly Chile Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030904','NF-1','3 ft. x 5 ft. Nylon Chile Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('030907','NF-1','4 in. x 6 in. Endura-Gloss Mtd China Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030909','NF-1','12 in. x 18 in. Endura-Poly Mtd China Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('030912','NF-1','3 ft. x 5 ft. Endura-Poly China O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030913','NF-1','3 ft. x 5 ft. Nylon China O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('030914','NF-1','4 ft. x 6 ft. Nylon China O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('030915','NF-1','5 ft. x 8 ft. Nylon China O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('030925','NF-1','3 ft. x 5 ft. Endura-Poly China Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030926','NF-1','3 ft. x 5 ft. Nylon China Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('030929','NF-1','3 ft. x 5 ft. Endura-Poly Chinese Empire O/D flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('030932','NF-1','4 in. x 6 in. Endura-Gloss Mtd Colombia Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('030938','NF-1','3 ft. x 5 ft. Endura-Poly Colombia O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030939','NF-1','3 ft. x 5 ft. Nylon Colombia O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('030940','NF-1','4 ft. x 6 ft. Nylon Colombia O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('030941','NF-1','5 ft. x 8 ft. Nylon Colombia O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('030951','NF-1','3 ft. x 5 ft. Endura-Poly Colombia Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('030952','NF-1','3 ft. x 5 ft. Nylon Colombia Flag w/Ph & Fr','53.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030975','NF-1','3 ft. x 5 ft. Endura-Poly Conch Republic O/D flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('030978','NF-1','4 in. x 6 in. Endura-Gloss Democratic Republic of Congo flag','3.00','0.024',2,25,1,NULL,20070512102759),
 ('030979','NF-1','2 ft. x 3 ft. Nylon Democratic Republic of Congo O/D flag','37.50','0.300',2,100,1,NULL,20070512102759),
 ('030980','NF-1','3 ft. x 5 ft. Nylon Democratic Republic of Congo O/D flag','54.50','0.400',2,100,1,NULL,20070512102759),
 ('030981','NF-1','4 ft. x 6 ft. Nylon Democratic Republic of Congo O/D flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('030982','NF-1','5 ft. x 8 ft. Nylon Democratic Republic of Congo O/D flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('030992','NF-1','4 in. x 6 in. Endura-Gloss  Republic of Congo flag','3.00','0.024',2,25,1,NULL,20070512102759),
 ('030994','NF-1','2 ft. x 3 ft. Nylon Republic of Congo O/D flag','33.40','0.400',2,100,1,NULL,20070512102759),
 ('030995','NF-1','3 ft. x 5 ft. Nylon  Republic of Congo O/D flag','51.50','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030996','NF-1','4 ft. x 6 ft. Nylon Republic of Congo O/D flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('030997','NF-1','5 ft. x 8 ft. Nylon Republic of Congo O/D flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('031007','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cook Islands Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031008','NF-1','3 ft. x 5 ft. Endura-Poly Cook Islands O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031011','NF-1','3 ft. x 5 ft. Endura-Poly Cook Islands Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031012','NF-1','4 in. x 6 in. Endura-Gloss Mtd Costa Rica w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031014','NF-1','12 in. x 18 in. Endura-Poly Mtd Costa Rica w/Seal Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('031017','NF-1','3 ft. x 5 ft. Endura-Poly Costa Rica w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031018','NF-1','3 ft. x 5 ft. Nylon Costa Rica w/Seal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031019','NF-1','4 ft. x 6 ft. Nylon Costa Rica w/Seal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('031020','NF-1','5 ft. x 8 ft. Nylon Costa Rica w/Seal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('031030','NF-1','3 ft. x 5 ft. Endura-Poly Costa Rica w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031031','NF-1','3 ft. x 5 ft. Nylon Costa Rica w/Seal Flag w/Ph & Fr','91.00','0.600',2,100,1,NULL,20070512102759),
 ('031036','NF-1','3 ft. x 5 ft. Nylon Costa Rica (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031037','NF-1','4 ft. x 6 ft. Nylon Costa Rica (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031038','NF-1','5 ft. x 8 ft. Nylon Costa Rica (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031044','NF-1','3 ft. x 5 ft. Nylon Costa Rica (No Seal) Flag w/Ph & Fr','68.00','0.600',2,100,1,NULL,20070512102759),
 ('031062','NF-1','\"4\"\" x 6\"\" Endura-Gloss Croatia Flag\"','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031065','NF-1','2\' x 3\' ft. Nylon Croatia O/D flag','43.80','0.300',2,100,1,NULL,20070512102759),
 ('031066','NF-1','3\' x 5\' ft. Endura-Poly Croatia O/D flag','20.00','0.300',2,100,1,NULL,20070512102759),
 ('031067','NF-1','3\' x 5\' ft. Nylon Croatia O/D flag','68.20','0.600',2,100,1,NULL,20070512102759),
 ('031068','NF-1','4\' x 6\' ft. Nylon Croatia O/D flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('031069','NF-1','5\' x 8\' ft. Nylon Croatia O/D flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('031082','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cuba Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031084','NF-1','12 in. x 18 in. Endura-Poly Mtd Cuba Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('031088','NF-1','3 ft. x 5 ft. Endura-Poly Cuba O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031089','NF-1','3 ft. x 5 ft. Nylon Cuba O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031090','NF-1','4 ft. x 6 ft. Nylon Cuba O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031091','NF-1','5 ft. x 8 ft. Nylon Cuba O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('031101','NF-1','3 ft. x 5 ft. Endura-Poly Cuba Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031102','NF-1','3 ft. x 5 ft. Nylon Cuba Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('031105','NF-1','4 in. x 6 in. Endura-Gloss Mtd Curacao Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031106','NF-1','3 ft. x 5 ft. Endura-Poly Curacao O/D Flag','30.00','0.267',2,100,1,NULL,20070512102759),
 ('031109','NF-1','3 ft. x 5 ft. Endura-Poly Curacao Flag w/Ph & Fr','60.00','0.417',2,100,1,NULL,20070512102759),
 ('031110','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cyprus Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031112','NF-1','3 ft. x 5 ft. Endura-Poly Cyprus O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031113','NF-1','3 ft. x 5 ft. Nylon Cyprus O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031114','NF-1','4 ft. x 6 ft. Nylon Cyprus O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('031115','NF-1','5 ft. x 8 ft. Nylon Cyprus O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('031116','NF-1','4 in. x 6 in. Endura-Gloss Mtd Cyprus Flag w/Fr','3.00','0.030',2,100,1,NULL,20070512102759),
 ('031118','NF-1','3 ft. x 5 ft. Endura-Poly Cyprus Flag w/Ph','28.00','0.317',2,100,1,NULL,20070512102759),
 ('031119','NF-1','3 ft. x 5 ft. Nylon Cyprus Flag w/Ph','67.50','0.400',2,100,1,NULL,20070512102759),
 ('031120','NF-1','4 ft. x 6 ft. Nylon Cyprus Flag w/Ph','88.50','0.650',2,100,1,NULL,20070512102759),
 ('031121','NF-1','5 ft. x 8 ft. Nylon Cyprus Flag w/Ph','140.00','0.900',2,100,1,NULL,20070512102759),
 ('031123','NF-1','3 ft. x 5 ft. Endura-Poly Cyprus Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031124','NF-1','3 ft. x 5 ft. Nylon Cyprus Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('031127','NF-1','4 in. x 6 in. Endura-Gloss Mtd Czech Rep Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031129','NF-1','12 in. x 18 in. Endura-Poly Mtd Czech Rep Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('031132','NF-1','3 ft. x 5 ft. Endura-Poly Czech Rep O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031133','NF-1','3 ft. x 5 ft. Nylon Czech Rep O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('031134','NF-1','4 ft. x 6 ft. Nylon Czech Rep O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('031135','NF-1','5 ft. x 8 ft. Nylon Czech Rep O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('031145','NF-1','3 ft. x 5 ft. Endura-Poly Czech Rep Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031146','NF-1','3 ft. x 5 ft. Nylon Czech Rep Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('031149','NF-1','4 in. x 6 in. Endura-Gloss Mtd Denmark Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031151','NF-1','12 in. x 18 in. Endura-Poly Mtd Denmark Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031155','NF-1','3 ft. x 5 ft. Endura-Poly Denmark O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031156','NF-1','3 ft. x 5 ft. Nylon Denmark O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031157','NF-1','4 ft. x 6 ft. Nylon Denmark O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('031158','NF-1','5 ft. x 8 ft. Nylon Denmark O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('031168','NF-1','3 ft. x 5 ft. Endura-Poly Denmark Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031169','NF-1','3 ft. x 5 ft. Nylon Denmark Flag w/Ph & Fr','64.00','0.600',2,100,1,NULL,20070512102759),
 ('031189','NF-1','4 in. x 6 in. Endura-Gloss Mtd Dominica Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031192','NF-1','3 ft. x 5 ft. Endura-Poly Dominica O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031193','NF-1','3 ft. x 5 ft. Nylon Dominica O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031194','NF-1','4 ft. x 6 ft. Nylon Dominica O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('031195','NF-1','5 ft. x 8 ft. Nylon Dominica O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('031204','NF-1','3 ft. x 5 ft. Endura-Poly Dominica Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031205','NF-1','3 ft. x 5 ft. Nylon Dominica Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('031208','NF-1','4 in. x 6 in. Endura-Gloss Mtd Dominican Rep w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031210','NF-1','12 in. x 18 in. Endura-Poly Mtd Dominican Rep w/Seal Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('031213','NF-1','3 ft. x 5 ft. Endura-Poly Dominican Rep w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031214','NF-1','3 ft. x 5 ft. Nylon Dominican Rep w/Seal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('031215','NF-1','4 ft. x 6 ft. Nylon Dominican Rep w/Seal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031216','NF-1','5 ft. x 8 ft. Nylon Dominican Rep w/Seal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('031226','NF-1','3 ft. x 5 ft. Endura-Poly Dominican Rep w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031227','NF-1','3 ft. x 5 ft. Nylon Dominican Rep w/Seal Flag w/Ph & Fr','91.00','0.600',2,100,1,NULL,20070512102759),
 ('031232','NF-1','3 ft. x 5 ft. Nylon Dominican Rep (No Seal) O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031233','NF-1','4 ft. x 6 ft. Nylon Dominican Rep (No Seal) O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759),
 ('031234','NF-1','5 ft. x 8 ft. Nylon Dominican Rep (No Seal) O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('031240','NF-1','3 ft. x 5 ft. Nylon Dominican Rep (No Seal) Flag w/Ph & Fr','84.00','0.600',2,100,1,NULL,20070512102759),
 ('031249','NF-1','4 in. x 6 in. Endura-Gloss Mtd Ecology Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031251','NF-1','3 ft. x 5 ft. Nylon Ecology O/D Flag','38.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031252','NF-1','4 ft. x 6 ft. Nylon Ecology O/D Flag','53.00','0.700',2,100,1,NULL,20070512102759),
 ('031253','NF-1','5 ft. x 8 ft. Nylon Ecology O/D Flag','76.30','1.000',2,100,1,NULL,20070512102759),
 ('031254','NF-1','6 ft. x 10 ft. Nylon Ecology O/D Flag','192.00','2.000',2,100,1,NULL,20070512102759),
 ('031262','NF-1','3 ft. x 5 ft. Nylon Ecology Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('031266','NF-1','4 in. x 6 in. Endura-Gloss Mtd Ecuador w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031271','NF-1','3 ft. x 5 ft. Endura-Poly Ecuador w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031272','NF-1','3 ft. x 5 ft. Nylon Ecuador w/Seal O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('031273','NF-1','4 ft. x 6 ft. Nylon Ecuador w/Seal O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('031274','NF-1','5 ft. x 8 ft. Nylon Ecuador w/Seal O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031284','NF-1','3 ft. x 5 ft. Endura-Poly Ecuador w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031285','NF-1','3 ft. x 5 ft. Nylon Ecuador w/Seal Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('031290','NF-1','3 ft. x 5 ft. Nylon Ecuador (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031291','NF-1','4 ft. x 6 ft. Nylon Ecuador (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031292','NF-1','5 ft. x 8 ft. Nylon Ecuador (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031301','NF-1','3 ft. x 5 ft. Nylon Ecuador (No Seal) Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('031321','NF-1','4 in. x 6 in. Endura-Gloss Mtd El Salvador w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031322','NF-1','8 in. x 12 in. Endura-Gloss Mtd El Salvador w/Seal Flag No Fr','5.00','0.050',2,100,1,NULL,20070512102759),
 ('031324','NF-1','3 ft. x 5 ft. Endura-Poly El Salvador w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031325','NF-1','3 ft. x 5 ft. Nylon El Salvador w/Seal O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('031326','NF-1','4 ft. x 6 ft. Nylon El Salvador w/Seal O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('031327','NF-1','5 ft. x 8 ft. Nylon El Salvador w/Seal O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('031336','NF-1','3 ft. x 5 ft. Endura-Poly El Salvador w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031337','NF-1','3 ft. x 5 ft. Nylon El Salvador w/Seal Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('031342','NF-1','3 ft. x 5 ft. Nylon El Salvador (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031343','NF-1','4 ft. x 6 ft. Nylon El Salvador (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031344','NF-1','5 ft. x 8 ft. Nylon El Salvador (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031350','NF-1','3 ft. x 5 ft. Nylon El Salvador (No Seal) Flag w/Ph & Fr','50.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031355','NF-1','3 ft. x 5 ft. Endura-Poly England O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031356','NF-1','3 ft. x 5 ft. Nylon England O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031357','NF-1','4 ft. x 6 ft. Nylon England O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('031358','NF-1','5 ft. x 8 ft. Nylon England O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('031365','NF-1','3 ft. x 5 ft. Endura-Poly England Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031366','NF-1','3 ft. x 5 ft. Nylon England Flag w/Ph & Fr','68.50','0.600',2,100,1,NULL,20070512102759),
 ('031451','NF-1','4 in. x 6 in. Endura-Gloss Mtd Europe Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031453','NF-1','3 ft. x 5 ft. Endura-Poly Europe O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031454','NF-1','3 ft. x 5 ft. Nylon Europe O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('031455','NF-1','4 ft. x 6 ft. Nylon Europe O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031456','NF-1','5 ft. x 8 ft. Nylon Europe O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('031464','NF-1','3 ft. x 5 ft. Endura-Poly Europe Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031465','NF-1','3 ft. x 5 ft. Nylon Europe Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('031468','NF-1','4 in. x 6 in. Endura-Gloss Mtd Falkland Islands Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031470','NF-1','3 ft. x 5 ft. Endura-Poly Falkland Islands O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031471','NF-1','3 ft. x 5 ft. Nylon Falkland Islands O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('031472','NF-1','4 ft. x 6 ft. Nylon Falkland Islands O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('031473','NF-1','5 ft. x 8 ft. Nylon Falkland Islands O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('031481','NF-1','3 ft. x 5 ft. Endura-Poly Falkland Islands Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031482','NF-1','3 ft. x 5 ft. Nylon Falkland Islands Flag w/Ph & Fr','126.00','0.600',2,100,1,NULL,20070512102759),
 ('031503','NF-1','4 in. x 6 in. Endura-Gloss Mtd Fiji Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031505','NF-1','3 ft. x 5 ft. Endura-Poly Fiji O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031506','NF-1','3 ft. x 5 ft. Nylon Fiji O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('031507','NF-1','4 ft. x 6 ft. Nylon Fiji O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('031508','NF-1','5 ft. x 8 ft. Nylon Fiji O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('031516','NF-1','3 ft. x 5 ft. Endura-Poly Fiji Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031517','NF-1','3 ft. x 5 ft. Nylon Fiji Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('031520','NF-1','4 in. x 6 in. Endura-Gloss Mtd Finland Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031522','NF-1','12 in. x 18 in. Endura-Poly Mtd Finland (No Seal) Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031526','NF-1','3 ft. x 5 ft. Endura-Poly Finland (No Seal) O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031527','NF-1','3 ft. x 5 ft. Nylon Finland (No Seal) O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031528','NF-1','4 ft. x 6 ft. Nylon Finland (No Seal) O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('031529','NF-1','5 ft. x 8 ft. Nylon Finland (No Seal) O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('031539','NF-1','3 ft. x 5 ft. Endura-Poly Finland (No Seal) Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031540','NF-1','3 ft. x 5 ft. Nylon Finland (No Seal) Flag w/Ph & Fr','64.00','0.600',2,100,1,NULL,20070512102759),
 ('031546','NF-1','4 in. x 6 in. Endura-Gloss Mtd France Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031552','NF-1','3 ft. x 5 ft. Endura-Poly France O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031553','NF-1','3 ft. x 5 ft. Nylon France O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031554','NF-1','4 ft. x 6 ft. Nylon France O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031555','NF-1','5 ft. x 8 ft. Nylon France O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031565','NF-1','3 ft. x 5 ft. Endura-Poly France Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031566','NF-1','3 ft. x 5 ft. Nylon France Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('031570','NF-1','3 ft. x 5 ft. Endura-Poly French Polynesia O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031571','NF-1','3 ft. x 5 ft. Nylon French Polynesia O/D Flag','65.10','0.450',2,100,1,NULL,20070512102759),
 ('031572','NF-1','4 ft. x 6 ft. Nylon French Polynesia O/D Flag','83.50','0.700',2,100,1,NULL,20070512102759),
 ('031573','NF-1','5 ft. x 8 ft. Nylon French Polynesia O/D Flag','140.00','1.000',2,100,1,NULL,20070512102759),
 ('031580','NF-1','3 ft. x 5 ft. Endura-Poly French Polynesia Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031581','NF-1','3 ft. x 5 ft. Nylon French Polynesia Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('031639','NF-1','3 ft. x 5 ft. Endura-Poly Germany w/Eagle O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031640','NF-1','3 ft. x 5 ft. Nylon Germany w/Eagle O/D Flag','54.50','0.450',2,100,1,NULL,20070512102759),
 ('031641','NF-1','4 ft. x 6 ft. Nylon Germany w/Eagle O/D Flag','68.30','0.700',2,100,1,NULL,20070512102759),
 ('031642','NF-1','5 ft. x 8 ft. Nylon Germany w/Eagle O/D Flag','122.00','1.000',2,100,1,NULL,20070512102759),
 ('031649','NF-1','3 ft. x 5 ft. Endura-Poly Germany w/Eagle Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031650','NF-1','3 ft. x 5 ft. Nylon Germany w/Eagle Flag w/Ph & Fr','82.50','0.600',2,100,1,NULL,20070512102759),
 ('031665','NF-1','4 in. x 6 in. Endura-Gloss Mtd Germany Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031667','NF-1','12 in. x 18 in. Endura-Poly Mtd Germany Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031671','NF-1','3 ft. x 5 ft. Endura-Poly Germany O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031672','NF-1','3 ft. x 5 ft. Nylon Germany O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031673','NF-1','4 ft. x 6 ft. Nylon Germany O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031674','NF-1','5 ft. x 8 ft. Nylon Germany O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031684','NF-1','3 ft. x 5 ft. Endura-Poly Germany Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031685','NF-1','3 ft. x 5 ft. Nylon Germany Flag w/Ph & Fr','50.00','0.600',2,100,1,NULL,20070512102759),
 ('031719','NF-1','4 in. x 6 in. Endura-Gloss Mtd Greece Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031725','NF-1','3 ft. x 5 ft. Endura-Poly Greece O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031726','NF-1','3 ft. x 5 ft. Nylon Greece O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031727','NF-1','4 ft. x 6 ft. Nylon Greece O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031728','NF-1','5 ft. x 8 ft. Nylon Greece O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('031738','NF-1','3 ft. x 5 ft. Endura-Poly Greece Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031739','NF-1','3 ft. x 5 ft. Nylon Greece Flag w/Ph & Fr','74.10','0.600',2,100,1,NULL,20070512102759),
 ('031742','NF-1','4 in. x 6 in. Endura-Gloss Mtd Greenland Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031743','NF-1','3 ft. x 5 ft. Endura-Poly Greenland O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031744','NF-1','3 ft. x 5 ft. Nylon Greenland O/D Flag','35.70','0.450',2,100,1,NULL,20070512102759),
 ('031748','NF-1','3 ft. x 5 ft. Endura-Poly Greenland Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031749','NF-1','3 ft. x 5 ft. Nylon Greenland Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('031750','NF-1','4 in. x 6 in. Endura-Gloss Mtd Grenada Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031753','NF-1','3 ft. x 5 ft. Endura-Poly Grenada O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031754','NF-1','3 ft. x 5 ft. Nylon Grenada O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('031755','NF-1','4 ft. x 6 ft. Nylon Grenada O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('031756','NF-1','5 ft. x 8 ft. Nylon Grenada O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('031765','NF-1','3 ft. x 5 ft. Endura-Poly Grenada Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031766','NF-1','3 ft. x 5 ft. Nylon Grenada Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('031769','NF-1','4 in. x 6 in. Endura-Gloss Mtd Guatemala w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031770','NF-1','8 in. x 12 in. Endura-Gloss Mtd Guatemala w/Seal Flag No Fr','7.60','0.050',2,100,1,NULL,20070512102759),
 ('031772','NF-1','3 ft. x 5 ft. Endura-Poly Guatemala w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031773','NF-1','3 ft. x 5 ft. Nylon Guatemala w/Seal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('031774','NF-1','4 ft. x 6 ft. Nylon Guatemala w/Seal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('031775','NF-1','5 ft. x 8 ft. Nylon Guatemala w/Seal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('031784','NF-1','3 ft. x 5 ft. Endura-Poly Guatemala w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031785','NF-1','3 ft. x 5 ft. Nylon Guatemala w/Seal Flag w/Ph & Fr','79.50','0.600',2,100,1,NULL,20070512102759),
 ('031790','NF-1','3 ft. x 5 ft. Nylon Guatemala (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031791','NF-1','4 ft. x 6 ft. Nylon Guatemala (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031792','NF-1','5 ft. x 8 ft. Nylon Guatemala (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031798','NF-1','3 ft. x 5 ft. Nylon Guatemala (No Seal) Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031892','NF-1','4 in. x 6 in. Endura-Gloss Mtd Honduras Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031893','NF-1','8 in. x 12 in. Endura-Gloss Mtd Honduras Flag No Fr','5.00','0.050',2,100,1,NULL,20070512102759),
 ('031895','NF-1','3 ft. x 5 ft. Endura-Poly Honduras O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031896','NF-1','3 ft. x 5 ft. Nylon Honduras O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031897','NF-1','4 ft. x 6 ft. Nylon Honduras O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759),
 ('031898','NF-1','5 ft. x 8 ft. Nylon Honduras O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('031907','NF-1','3 ft. x 5 ft. Endura-Poly Honduras Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031908','NF-1','3 ft. x 5 ft. Nylon Honduras Flag w/Ph & Fr','84.50','0.600',2,100,1,NULL,20070512102759),
 ('031911','NF-1','4 in. x 6 in. Endura-Gloss Mtd Hong Kong Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031922','NF-1','3 ft. x 5 ft. Nylon Hong Kong Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('031925','NF-1','4 in. x 6 in. Endura-Gloss Mtd Hungary Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031926','NF-1','8 in. x 12 in. Endura-Gloss Mtd Hungary Flag No Fr','5.00','0.050',2,100,1,NULL,20070512102759),
 ('031929','NF-1','3 ft. x 5 ft. Endura-Poly Hungary O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031930','NF-1','3 ft. x 5 ft. Nylon Hungary O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031931','NF-1','4 ft. x 6 ft. Nylon Hungary O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('031932','NF-1','5 ft. x 8 ft. Nylon Hungary O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('031941','NF-1','3 ft. x 5 ft. Endura-Poly Hungary Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031942','NF-1','3 ft. x 5 ft. Nylon Hungary Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031959','NF-1','4 in. x 6 in. Endura-Gloss Mtd Iceland Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031961','NF-1','3 ft. x 5 ft. Endura-Poly Iceland O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('031962','NF-1','3 ft. x 5 ft. Nylon Iceland O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031963','NF-1','4 ft. x 6 ft. Nylon Iceland O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759),
 ('031964','NF-1','5 ft. x 8 ft. Nylon Iceland O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('031972','NF-1','3 ft. x 5 ft. Endura-Poly Iceland Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031973','NF-1','3 ft. x 5 ft. Nylon Iceland Flag w/Ph & Fr','84.50','0.600',2,100,1,NULL,20070512102759),
 ('031979','NF-1','4 in. x 6 in. Endura-Gloss Mtd India Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('031984','NF-1','3 ft. x 5 ft. Endura-Poly India O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031985','NF-1','3 ft. x 5 ft. Nylon India O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('031986','NF-1','4 ft. x 6 ft. Nylon India O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('031987','NF-1','5 ft. x 8 ft. Nylon India O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('031997','NF-1','3 ft. x 5 ft. Endura-Poly India Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('031998','NF-1','3 ft. x 5 ft. Nylon India Flag w/Ph & Fr','70.00','0.600',2,100,1,NULL,20070512102759),
 ('032001','NF-1','\"4\"\" x 6\"\" Endura-Gloss Indonesia Flag\"','3.00','0.300',2,100,1,NULL,20070512102759),
 ('032004','NF-1','3\' x 5\' Endura Poly Indonesia Flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('032003','NF-1','2\' x 3\' Nylon Indonesia Flag','17.60','0.350',2,100,1,NULL,20070512102759),
 ('032005','NF-1','3\' x 5\' Nylon Indonesia Flag','25.80','0.500',2,100,1,NULL,20070512102759),
 ('032006','NF-1','4\' x 6\' Nylon Indonesia Flag','33.20','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032007','NF-1','5\' x 8\' Nylon Indonesia Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032019','NF-1','\"4\"\" x 6\"\" Endura-Gloss Iran Flag\"','3.00','0.300',2,100,1,NULL,20070512102759),
 ('032021','NF-1','3\' x 5\' Endura-Poly Iran Flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('032020','NF-1','2\' x 3\' Nylon Iran Flag','43.80','0.400',2,100,1,NULL,20070512102759),
 ('032022','NF-1','3\' x 5\' Nylon Iran Flag','68.20','0.500',2,100,1,NULL,20070512102759),
 ('032023','NF-1','4\' x 6\' Nylon Iran Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('032024','NF-1','5\' x 8\' Nylon Iran Flag','135.20','0.800',2,100,1,NULL,20070512102759),
 ('032036','NF-1','\"4\"\" x 6\"\" Endura-Gloss Iraq Flag\"','3.00','0.300',2,100,1,NULL,20070512102759),
 ('032038','NF-1','3\' x 5\' Endura Poly Iraq Flag','20.00','0.400',2,100,1,NULL,20070512102759),
 ('032037','NF-1','2\' x 3\' Nylon Iraq Flag','43.80','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032039','NF-1','3\' x 5\' Nylon Iraq Flag','68.20','0.500',2,100,1,NULL,20070512102759),
 ('032040','NF-1','4\' x 6\' Nylon Iraq Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('032041','NF-1','5\' x 8\' Nylon Iraq Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('032053','NF-1','4 in. x 6 in. Endura-Gloss Mtd Ireland Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032059','NF-1','3 ft. x 5 ft. Endura-Poly Ireland O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032060','NF-1','3 ft. x 5 ft. Nylon Ireland O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('032061','NF-1','4 ft. x 6 ft. Nylon Ireland O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('032062','NF-1','5 ft. x 8 ft. Nylon Ireland O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032072','NF-1','3 ft. x 5 ft. Endura-Poly Ireland Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032073','NF-1','3 ft. x 5 ft. Nylon Ireland Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032076','NF-1','4 in. x 6 in. Endura-Gloss Mtd Israel Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032082','NF-1','3 ft. x 5 ft. Endura-Poly Israel O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032083','NF-1','3 ft. x 5 ft. Nylon Israel O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('032084','NF-1','4 ft. x 6 ft. Nylon Israel O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('032085','NF-1','5 ft. x 8 ft. Nylon Israel O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('032095','NF-1','3 ft. x 5 ft. Endura-Poly Israel Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032096','NF-1','3 ft. x 5 ft. Nylon Israel Flag w/Ph & Fr','71.50','0.600',2,100,1,NULL,20070512102759),
 ('032114','NF-1','4 in. x 6 in. Endura-Gloss Mtd Italy Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032120','NF-1','3 ft. x 5 ft. Endura-Poly Italy O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032121','NF-1','3 ft. x 5 ft. Nylon Italy O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032122','NF-1','4 ft. x 6 ft. Nylon Italy O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('032123','NF-1','5 ft. x 8 ft. Nylon Italy O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032133','NF-1','3 ft. x 5 ft. Endura-Poly Italy Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032134','NF-1','3 ft. x 5 ft. Nylon Italy Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('032137','NF-1','4 in. x 6 in. Endura-Gloss Mtd Jamaica Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032139','NF-1','12 in. x 18 in. Endura-Poly Mtd Jamaica Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('032143','NF-1','3 ft. x 5 ft. Endura-Poly Jamaica O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032144','NF-1','3 ft. x 5 ft. Nylon Jamaica O/D Flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('032145','NF-1','4 ft. x 6 ft. Nylon Jamaica O/D Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('032146','NF-1','5 ft. x 8 ft. Nylon Jamaica O/D Flag','119.80','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032156','NF-1','3 ft. x 5 ft. Endura-Poly Jamaica Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032157','NF-1','3 ft. x 5 ft. Nylon Jamaica Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('032160','NF-1','3 ft. x 5 ft. Nylon Jammu & Kashmir O/D Flag','147.00','0.450',2,100,1,NULL,20070512102759),
 ('032162','NF-1','3 ft. x 5 ft. Nylon Jammu & Kashmir Flag w/Ph & Fr','150.00','0.600',2,100,1,NULL,20070512102759),
 ('032163','NF-1','4 in. x 6 in. Endura-Gloss Mtd Japan Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032166','NF-1','12 in. x 18 in. Endura-Poly Japan O/D Flag','5.00','0.071',2,100,1,NULL,20070512102759),
 ('032169','NF-1','3 ft. x 5 ft. Endura-Poly Japan O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032170','NF-1','3 ft. x 5 ft. Nylon Japan O/D Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('032171','NF-1','4 ft. x 6 ft. Nylon Japan O/D Flag','56.10','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032172','NF-1','5 ft. x 8 ft. Nylon Japan O/D Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('032182','NF-1','3 ft. x 5 ft. Endura-Poly Japan Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032183','NF-1','3 ft. x 5 ft. Nylon Japan Flag w/Ph & Fr','84.50','0.600',2,100,1,NULL,20070512102759),
 ('032190','NF-1','3 ft. x 5 ft. Endura-Poly Japanese Ensign O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032191','NF-1','3 ft. x 5 ft. Nylon Japanese Ensign O/D Flag','35.70','0.450',2,100,1,NULL,20070512102759),
 ('032192','NF-1','4 ft. x 6 ft. Nylon Japanese Ensign O/D Flag','48.30','0.700',2,100,1,NULL,20070512102759),
 ('032193','NF-1','5 ft. x 8 ft. Nylon Japanese Ensign O/D Flag','72.50','1.000',2,100,1,NULL,20070512102759),
 ('032201','NF-1','3 ft. x 5 ft. Endura-Poly Japanese Ensign Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032202','NF-1','3 ft. x 5 ft. Nylon Japanese Ensign Flag w/Ph & Fr','75.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032208','NF-1','3 ft. x 5 ft. Endura-Poly Jersey O/D Flag','30.00','0.267',2,100,1,NULL,20070512102759),
 ('032210','NF-1','3 ft. x 5 ft. Endura-Poly Jersey Flag w/Ph & Fr','60.00','0.417',2,100,1,NULL,20070512102759),
 ('032285','NF-1','4 in. x 6 in. Endura-Gloss Mtd North Korea Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032286','NF-1','2\' x 3\' Nylon North Korea Flag','39.10','0.400',2,100,1,NULL,20070512102759),
 ('032287','NF-1','3 ft. x 5 ft. Endura-Poly North Korea O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('032288','NF-1','3 ft. x 5 ft. Nylon North Korea Flag','57.40','0.600',2,100,1,NULL,20070512102759),
 ('032289','NF-1','4 ft. x 6 ft. Nylon North Korea Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('032290','NF-1','5 ft. x 8 ft. Nylon North Korea Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('032302','NF-1','4 in. x 6 in. Endura-Gloss Mtd South Korea Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032305','NF-1','2\' x 3\' Nylon South Korea Flag','29.40','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032306','NF-1','3 ft. x 5 ft. Endura-Poly South Korea O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('032307','NF-1','3 ft. x 5 ft. Nylon South Korea Flag','41.60','0.600',2,100,1,NULL,20070512102759),
 ('032308','NF-1','4 ft. x 6 ft. Nylon South Korea Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('032309','NF-1','5 ft. x 8 ft. Nylon South Korea Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('032322','NF-1','4 in. x 6 in. Endura-Gloss Mtd Kuwait Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032323','NF-1','2\' x 3\' Nylon Kuwait Flag','33.40','0.400',2,100,1,NULL,20070512102759),
 ('032324','NF-1','3 ft. x 5 ft. Endura-Poly Kuwait O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('032325','NF-1','3 ft. x 5 ft. Nylon Kuwait Flag','51.50','0.600',2,100,1,NULL,20070512102759),
 ('032326','NF-1','4 ft. x 6 ft. Nylon Kuwait Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('032327','NF-1','5 ft. x 8 ft. Nylon Kuwait Flag','114.70','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032391','NF-1','4 in. x 6 in. Endura-Gloss Mtd Lebanon Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032392','NF-1','2\' x 3\' Nylon Lebanon Flag','33.40','0.400',2,100,1,NULL,20070512102759),
 ('032393','NF-1','3 ft. x 5 ft. Endura-Poly Lebanon O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('032394','NF-1','3 ft. x 5 ft. Nylon Lebanon Flag','51.50','0.600',2,100,1,NULL,20070512102759),
 ('032395','NF-1','4 ft. x 6 ft. Nylon Lebanon Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('032396','NF-1','5 ft. x 8 ft. Nylon Lebanon Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033066','NF-1','3 ft. x 5 ft. Endura-Poly Northern Cyprus O/D Flag','30.00','0.417',2,100,1,NULL,20070512102759),
 ('033147','NF-1','4 in. x 6 in. Endura-Gloss Mtd Pakistan Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033148','NF-1','8 in. x 12 in. Endura-Gloss Mtd Pakistan Flag','8.40','0.084',2,100,1,NULL,20070512102759),
 ('033149','NF-1','2\' x 3\' Nylon Pakistan Flag','33.40','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033150','NF-1','3 ft. x 5 ft. Endura-Poly Pakistan O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033151','NF-1','3 ft. x 5 ft. Nylon Pakistan Flag','51.50','0.600',2,100,1,NULL,20070512102759),
 ('033152','NF-1','4 ft. x 6 ft. Nylon Pakistan Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('033153','NF-1','5 ft. x 8 ft. Nylon Pakistan Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033183','NF-1','4 in. x 6 in. Endura-Gloss Mtd Palestine Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033184','NF-1','2\' x 3\' Nylon Palestine Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('033185','NF-1','3 ft. x 5 ft. Endura-Poly Palestine O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033186','NF-1','3 ft. x 5 ft. Nylon Palestine Flag','35.20','0.600',2,100,1,NULL,20070512102759),
 ('033187','NF-1','4 ft. x 6 ft. Nylon Palestine Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('033188','NF-1','5 ft. x 8 ft. Nylon Palestine Flag','73.20','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033291','NF-1','4 in. x 6 in. Endura-Gloss Mtd Philippines Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033292','NF-1','8 in. x 12 in. Endura-Gloss Mtd Philippines Flag','7.60','0.084',2,100,1,NULL,20070512102759),
 ('033295','NF-1','2\' x 3\' Nylon Philippines Flag','31.80','0.400',2,100,1,NULL,20070512102759),
 ('033296','NF-1','3 ft. x 5 ft. Endura-Poly Philippines O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033297','NF-1','3 ft. x 5 ft. Nylon Philippines Flag','46.10','0.600',2,100,1,NULL,20070512102759),
 ('033298','NF-1','4 ft. x 6 ft. Nylon Philippines Flag','56.10','0.700',2,100,1,NULL,20070512102759),
 ('033299','NF-1','5 ft. x 8 ft. Nylon Philippines Flag','97.60','1.000',2,100,1,NULL,20070512102759),
 ('033385','NF-1','4 in. x 6 in. Endura-Gloss Mtd Qatar Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033386','NF-1','2\' x 3\' Nylon Qatar Flag','39.10','0.400',2,100,1,NULL,20070512102759),
 ('033387','NF-1','3 ft. x 5 ft. Endura-Poly Qatar O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033388','NF-1','3 ft. x 5 ft. Nylon Qatar Flag','57.40','0.600',2,100,1,NULL,20070512102759),
 ('033389','NF-1','4 ft. x 6 ft. Nylon Qatar Flag','75.10','0.700',2,100,1,NULL,20070512102759),
 ('033390','NF-1','5 ft. x 8 ft. Nylon Qatar Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('033601','NF-1','4 in. x 6 in. Endura-Gloss Mtd Saudia Arabia Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033604','NF-1','2\' x 3\' Nylon Saudia Arabia Flag','33.40','0.400',2,100,1,NULL,20070512102759),
 ('033605','NF-1','3 ft. x 5 ft. Endura-Poly Saudia Arabia O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033606','NF-1','3 ft. x 5 ft. Nylon Saudia Arabia Flag','51.50','0.600',2,100,1,NULL,20070512102759),
 ('033607','NF-1','4 ft. x 6 ft. Nylon Saudia Arabia Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('033608','NF-1','5 ft. x 8 ft. Nylon Saudia Arabia Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033810','NF-1','4 in. x 6 in. Endura-Gloss Mtd Somalia Flag','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033811','NF-1','2\' x 3\' Nylon Somalia Flag','37.50','0.400',2,100,1,NULL,20070512102759),
 ('033812','NF-1','3 ft. x 5 ft. Endura-Poly Somalia O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033813','NF-1','3 ft. x 5 ft. Nylon Somalia Flag','54.50','0.600',2,100,1,NULL,20070512102759),
 ('033814','NF-1','4 ft. x 6 ft. Nylon Somalia Flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('033815','NF-1','5 ft. x 8 ft. Nylon Somalia Flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('033830','NF-1','4 in. x 6 in. Endura-Gloss Mtd South Africa Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033833','NF-1','2\' x 3\' Nylon South Africa Flag','39.10','0.400',2,100,1,NULL,20070512102759),
 ('033834','NF-1','3 ft. x 5 ft. Endura-Poly South Africa O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033835','NF-1','3 ft. x 5 ft. Nylon South Africa Flag','57.40','0.600',2,100,1,NULL,20070512102759),
 ('033836','NF-1','4 ft. x 6 ft. Nylon South Africa Flag','75.10','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033837','NF-1','5 ft. x 8 ft. Nylon South Africa Flag','119.80','1.000',2,100,1,NULL,20070512102759),
 ('033902','NF-1','4 in. x 6 in. Endura-Gloss Mtd Sudan Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033903','NF-1','2\' x 3\' Nylon Sudan Flag','39.50','0.400',2,100,1,NULL,20070512102759),
 ('033904','NF-1','3 ft. x 5 ft. Endura-Poly Sudan O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('033905','NF-1','3 ft. x 5 ft. Nylon Sudan Flag','60.50','0.600',2,100,1,NULL,20070512102759),
 ('033906','NF-1','4 ft. x 6 ft. Nylon Sudan Flag','75.00','0.700',2,100,1,NULL,20070512102759),
 ('033907','NF-1','5 ft. x 8 ft. Nylon Sudan Flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('034004','NF-1','4 in. x 6 in. Endura-Gloss Mtd Syria Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034005','NF-1','2\' x 3\' Nylon Syria Flag','35.00','0.400',2,100,1,NULL,20070512102759),
 ('034006','NF-1','3 ft. x 5 ft. Endura-Poly Syria O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034007','NF-1','3 ft. x 5 ft. Nylon Syria Flag','49.00','0.600',2,100,1,NULL,20070512102759),
 ('034008','NF-1','4 ft. x 6 ft. Nylon Syria Flag','60.50','0.700',2,100,1,NULL,20070512102759),
 ('034009','NF-1','5 ft. x 8 ft. Nylon Syria Flag','107.00','1.000',2,100,1,NULL,20070512102759),
 ('034129','NF-1','4 in x 6 in Endura-Gloss Tonga Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034131','NF-1','3 ft x 5 ft Endura-Poly Tonga Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('034130','NF-1','2 ft x 3 ft Nylon Tonga Flag','37.50','0.400',2,100,1,NULL,20070512102759),
 ('034132','NF-1','3 ft x 5 ft Nylon Tonga Flag','54.50','0.600',2,100,1,NULL,20070512102759),
 ('034133','NF-1','4 ft x 6 ft Nylon Tonga Flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('034134','NF-1','5 ft x 8 ft Nylon Tonga Flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('034185','NF-1','4 in. x 6 in. Endura-Gloss Mtd Turkey Flag','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034187','NF-1','2\' x 3\' Nylon Turkey Flag','39.50','0.400',2,100,1,NULL,20070512102759),
 ('034188','NF-1','3 ft. x 5 ft. Endura-Poly Turkey O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('034189','NF-1','3 ft. x 5 ft. Nylon Turkey Flag','60.50','0.600',2,100,1,NULL,20070512102759),
 ('034190','NF-1','4 ft. x 6 ft. Nylon Turkey Flag','75.00','0.700',2,100,1,NULL,20070512102759),
 ('034191','NF-1','5 ft. x 8 ft. Nylon Turkey Flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('034278','NF-1','4 in. x 6 in. Endura-Gloss Mtd United Arab Emirates Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034279','NF-1','2\' x 3\' Nylon United Arab Emirates Flag','35.00','0.400',2,100,1,NULL,20070512102759),
 ('034280','NF-1','3 ft. x 5 ft. Endura-Poly United Arab Emirates O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('034281','NF-1','3 ft. x 5 ft. Nylon United Arab Emirates Flag','49.00','0.600',2,100,1,NULL,20070512102759),
 ('034282','NF-1','4 ft. x 6 ft. Nylon United Arab Emirates Flag','60.50','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034283','NF-1','5 ft. x 8 ft. Nylon United Arab Emirates Flag','107.00','1.000',2,100,1,NULL,20070512102759),
 ('034465','NF-1','4 in. x 6 in. Endura-Gloss Mtd Vietnam Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034466','NF-1','2\' x 3\' Nylon Vietnam Flag','37.50','0.400',2,100,1,NULL,20070512102759),
 ('034467','NF-1','3 ft. x 5 ft. Endura-Poly Vietnam O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759),
 ('034468','NF-1','3 ft. x 5 ft. Nylon Vietnam Flag','54.50','0.600',2,100,1,NULL,20070512102759),
 ('034469','NF-1','4 ft. x 6 ft. Nylon Vietnam Flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('034470','NF-1','5 ft. x 8 ft. Nylon Vietnam Flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('034482','NF-1','4 in. x 6 in. Endura-Gloss Mtd South Vietnam Flag','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034483','NF-1','2\' x 3\' Nylon South Vietnam Flag','37.50','0.400',2,100,1,NULL,20070512102759),
 ('034484','NF-1','3 ft. x 5 ft. Endura-Poly South Vietnam O/D Flag','20.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034485','NF-1','3 ft. x 5 ft. Nylon South Vietnam Flag','54.50','0.600',2,100,1,NULL,20070512102759),
 ('034486','NF-1','4 ft. x 6 ft. Nylon South Vietnam Flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('034487','NF-1','5 ft. x 8 ft. Nylon South Vietnam Flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('032460','NF-1','4 in. x 6 in. Endura-Gloss Mtd Liechtenstein Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032462','NF-1','3 ft. x 5 ft. Endura-Poly Liechtenstein O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032463','NF-1','3 ft. x 5 ft. Nylon Liechtenstein O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032464','NF-1','4 ft. x 6 ft. Nylon Liechtenstein O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('032465','NF-1','5 ft. x 8 ft. Nylon Liechtenstein O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('032473','NF-1','3 ft. x 5 ft. Endura-Poly Liechtenstein Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032474','NF-1','3 ft. x 5 ft. Nylon Liechtenstein Flag w/Ph & Fr','11.00','0.600',2,100,1,NULL,20070512102759),
 ('032495','NF-1','4 in. x 6 in. Endura-Gloss Mtd Luxembourg Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032496','NF-1','12 in. x 18 in. Endura-Poly Mtd Luxembourg Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('032500','NF-1','3 ft. x 5 ft. Endura-Poly Luxembourg O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032501','NF-1','3 ft. x 5 ft. Nylon Luxembourg O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('032502','NF-1','4 ft. x 6 ft. Nylon Luxembourg O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('032503','NF-1','5 ft. x 8 ft. Nylon Luxembourg O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032504','NF-1','4 in. x 6 in. Endura-Gloss Mtd Luxembourg Flag w/Fr','4.70','0.030',2,100,1,NULL,20070512102759),
 ('032512','NF-1','3 ft. x 5 ft. Endura-Poly Luxembourg Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032513','NF-1','3 ft. x 5 ft. Nylon Luxembourg Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('032619','NF-1','4 in. x 6 in. Endura-Gloss Mtd Malta Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032621','NF-1','3 ft. x 5 ft. Endura-Poly Malta O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032622','NF-1','3 ft. x 5 ft. Nylon Malta O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032623','NF-1','4 ft. x 6 ft. Nylon Malta O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('032624','NF-1','5 ft. x 8 ft. Nylon Malta O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('032632','NF-1','3 ft. x 5 ft. Endura-Poly Malta Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032633','NF-1','3 ft. x 5 ft. Nylon Malta Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('032696','NF-1','4 in. x 6 in. Endura-Gloss Mtd Mexico Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032698','NF-1','12 in. x 18 in. Endura-Poly Mtd Mexico Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032699','NF-1','12 in. x 18 in. Endura-Poly Mexico O/D Flag','6.90','0.071',2,100,1,NULL,20070512102759),
 ('032700','NF-1','12 in. x 18 in. Nylon Mexico O/D Flag','12.20','0.067',2,100,1,NULL,20070512102759),
 ('032701','NF-1','2 ft. x 3 ft. Nylon Mexico O/D Flag','22.80','0.250',2,100,1,NULL,20070512102759),
 ('032702','NF-1','3 ft. x 5 ft. Endura-Poly Mexico O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032703','NF-1','3 ft. x 5 ft. Nylon Mexico O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('032704','NF-1','4 ft. x 6 ft. Nylon Mexico O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('032705','NF-1','5 ft. x 8 ft. Nylon Mexico O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('032715','NF-1','3 ft. x 5 ft. Endura-Poly Mexico Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032716','NF-1','3 ft. x 5 ft. Nylon Mexico Flag w/Ph & Fr','63.20','0.600',2,100,1,NULL,20070512102759),
 ('032753','NF-1','4 in. x 6 in. Endura-Gloss Mtd Monaco Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032759','NF-1','3 ft. x 5 ft. Endura-Poly Monaco O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032760','NF-1','3 ft. x 5 ft. Nylon Monaco O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('032761','NF-1','4 ft. x 6 ft. Nylon Monaco O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('032762','NF-1','5 ft. x 8 ft. Nylon Monaco O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032772','NF-1','3 ft. x 5 ft. Endura-Poly Monaco Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032773','NF-1','3 ft. x 5 ft. Nylon Monaco Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('032884','NF-1','4 in. x 6 in. Endura-Gloss Mtd Nato Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032886','NF-1','3 ft. x 5 ft. Endura-Poly Nato O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032887','NF-1','3 ft. x 5 ft. Nylon Nato O/D Flag','35.70','0.450',2,100,1,NULL,20070512102759),
 ('032888','NF-1','4 ft. x 6 ft. Nylon Nato O/D Flag','48.30','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032889','NF-1','5 ft. x 8 ft. Nylon Nato O/D Flag','72.50','1.000',2,100,1,NULL,20070512102759),
 ('032897','NF-1','3 ft. x 5 ft. Endura-Poly Nato Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032898','NF-1','3 ft. x 5 ft. Nylon Nato Flag w/Ph & Fr','75.00','0.600',2,100,1,NULL,20070512102759),
 ('032935','NF-1','4 in. x 6 in. Endura-Gloss Mtd Netherlands Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032941','NF-1','3 ft. x 5 ft. Endura-Poly Netherlands O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032942','NF-1','3 ft. x 5 ft. Nylon Netherlands O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('032943','NF-1','4 ft. x 6 ft. Nylon Netherlands O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('032944','NF-1','5 ft. x 8 ft. Nylon Netherlands O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('032954','NF-1','3 ft. x 5 ft. Endura-Poly Netherlands Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032955','NF-1','3 ft. x 5 ft. Nylon Netherlands Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('032958','NF-1','4 in. x 6 in. Endura-Gloss Mtd Netherlands Antilles Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('032960','NF-1','3 ft. x 5 ft. Endura-Poly Netherlands Antilles O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032961','NF-1','3 ft. x 5 ft. Nylon Netherlands Antilles O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032962','NF-1','4 ft. x 6 ft. Nylon Netherlands Antilles O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('032963','NF-1','5 ft. x 8 ft. Nylon Netherlands Antilles O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('032971','NF-1','3 ft. x 5 ft. Endura-Poly Netherlands Antilles Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032972','NF-1','3 ft. x 5 ft. Nylon Netherlands Antilles Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('032975','NF-1','4 in. x 6 in. Endura-Gloss Mtd New Zealand Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032979','NF-1','3 ft. x 5 ft. Endura-Poly New Zealand O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('032980','NF-1','3 ft. x 5 ft. Nylon New Zealand O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('032981','NF-1','4 ft. x 6 ft. Nylon New Zealand O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('032982','NF-1','5 ft. x 8 ft. Nylon New Zealand O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('032991','NF-1','3 ft. x 5 ft. Endura-Poly New Zealand Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('032992','NF-1','3 ft. x 5 ft. Nylon New Zealand Flag w/Ph & Fr','79.50','0.600',2,100,1,NULL,20070512102759),
 ('033070','NF-1','3 ft. x 5 ft. Nylon Northern Ireland O/D Flag','48.00','0.450',2,100,1,NULL,20070512102759),
 ('033071','NF-1','3 ft. x 5 ft. Endura-Poly Northern Ireland Flag w/Ph','20.00','0.317',2,100,1,NULL,20070512102759),
 ('033072','NF-1','3 ft. x 5 ft. Nylon Northern Ireland Flag w/Ph','78.50','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033073','NF-1','3 ft. x 5 ft. Endura-Poly Northern Ireland Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033075','NF-1','3 ft. x 5 ft. Endura-Poly Northern Territories O/D Flag','30.00','0.267',2,100,1,NULL,20070512102759),
 ('033077','NF-1','3 ft. x 5 ft. Endura-Poly Northern Territories Flag w/Ph & Fr','60.00','0.417',2,100,1,NULL,20070512102759),
 ('033078','NF-1','4 in. x 6 in. Endura-Gloss Mtd Norway Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033084','NF-1','3 ft. x 5 ft. Endura-Poly Norway O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033085','NF-1','3 ft. x 5 ft. Nylon Norway O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('033086','NF-1','4 ft. x 6 ft. Nylon Norway O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('033087','NF-1','5 ft. x 8 ft. Nylon Norway O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('033097','NF-1','3 ft. x 5 ft. Endura-Poly Norway Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033098','NF-1','3 ft. x 5 ft. Nylon Norway Flag w/Ph & Fr','74.50','0.600',2,100,1,NULL,20070512102759),
 ('033200','NF-1','4 in. x 6 in. Endura-Gloss Mtd Panama Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033202','NF-1','12 in. x 18 in. Endura-Poly Mtd Panama Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('033206','NF-1','3 ft. x 5 ft. Endura-Poly Panama O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033207','NF-1','3 ft. x 5 ft. Nylon Panama O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('033208','NF-1','4 ft. x 6 ft. Nylon Panama O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('033209','NF-1','5 ft. x 8 ft. Nylon Panama O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033219','NF-1','3 ft. x 5 ft. Endura-Poly Panama Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033220','NF-1','3 ft. x 5 ft. Nylon Panama Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('033240','NF-1','4 in. x 6 in. Endura-Gloss Mtd Paraguay Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033241','NF-1','8 in. x 12 in. Endura-Gloss Mtd Paraguay Flag No Fr','5.00','0.050',2,100,1,NULL,20070512102759),
 ('033243','NF-1','3 ft. x 5 ft. Endura-Poly Paraguay O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033244','NF-1','3 ft. x 5 ft. Nylon Paraguay O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033245','NF-1','4 ft. x 6 ft. Nylon Paraguay O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('033246','NF-1','5 ft. x 8 ft. Nylon Paraguay O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('033255','NF-1','3 ft. x 5 ft. Endura-Poly Paraguay Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033256','NF-1','3 ft. x 5 ft. Nylon Paraguay Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('033259','NF-1','4 in. x 6 in. Endura-Gloss Mtd Peru w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033262','NF-1','3 ft. x 5 ft. Endura-Poly Peru w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033263','NF-1','3 ft. x 5 ft. Nylon Peru w/Seal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('033264','NF-1','4 ft. x 6 ft. Nylon Peru w/Seal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('033265','NF-1','5 ft. x 8 ft. Nylon Peru w/Seal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033274','NF-1','3 ft. x 5 ft. Endura-Poly Peru w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033275','NF-1','3 ft. x 5 ft. Nylon Peru w/Seal Flag w/Ph & Fr','91.00','0.600',2,100,1,NULL,20070512102759),
 ('033280','NF-1','3 ft. x 5 ft. Nylon Peru (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('033281','NF-1','4 ft. x 6 ft. Nylon Peru (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('033282','NF-1','5 ft. x 8 ft. Nylon Peru (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('033288','NF-1','3 ft. x 5 ft. Nylon Peru (No Seal) Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033317','NF-1','4 in. x 6 in. Endura-Gloss Mtd Poland (No Eagle) Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033319','NF-1','12 in. x 18 in. Endura-Poly Mtd Poland (No Eagle) Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('033323','NF-1','3 ft. x 5 ft. Endura-Poly Poland (No Eagle) O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033324','NF-1','3 ft. x 5 ft. Nylon Poland (No Eagle) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('033325','NF-1','4 ft. x 6 ft. Nylon Poland (No Eagle) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('033326','NF-1','5 ft. x 8 ft. Nylon Poland (No Eagle) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('033336','NF-1','3 ft. x 5 ft. Endura-Poly Poland (No Eagle) Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033337','NF-1','3 ft. x 5 ft. Nylon Poland (No Eagle) Flag w/Ph & Fr','51.00','0.600',2,100,1,NULL,20070512102759),
 ('033363','NF-1','4 in. x 6 in. Endura-Gloss Mtd Portugal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033365','NF-1','12 in. x 18 in. Endura-Poly Mtd Portugal Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('033368','NF-1','3 ft. x 5 ft. Endura-Poly Portugal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033369','NF-1','3 ft. x 5 ft. Nylon Portugal O/D Flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('033370','NF-1','4 ft. x 6 ft. Nylon Portugal O/D Flag','63.50','0.700',2,100,1,NULL,20070512102759),
 ('033371','NF-1','5 ft. x 8 ft. Nylon Portugal O/D Flag','114.70','1.000',2,100,1,NULL,20070512102759),
 ('033381','NF-1','3 ft. x 5 ft. Endura-Poly Portugal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033382','NF-1','3 ft. x 5 ft. Nylon Portugal Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('033402','NF-1','4 in. x 6 in. Endura-Gloss Mtd Red Cross Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033405','NF-1','3 ft. x 5 ft. Endura-Poly Red Cross O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033406','NF-1','3 ft. x 5 ft. Nylon Red Cross O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('033407','NF-1','4 ft. x 6 ft. Nylon Red Cross O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('033408','NF-1','5 ft. x 8 ft. Nylon Red Cross O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('033416','NF-1','3 ft. x 5 ft. Endura-Poly Red Cross Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033417','NF-1','3 ft. x 5 ft. Nylon Red Cross Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('033420','NF-1','4 in. x 6 in. Endura-Gloss Mtd Romania Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033423','NF-1','3 ft. x 5 ft. Endura-Poly Romania O/D Flag','20.00','1.000',2,100,1,NULL,20070512102759),
 ('033424','NF-1','3 ft. x 5 ft. Nylon Romania O/D Flag','35.20','1.000',2,100,1,NULL,20070512102759),
 ('033425','NF-1','4 ft. x 6 ft. Nylon Romania O/D Flag','45.50','2.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033426','NF-1','5 ft. x 8 ft. Nylon Romania O/D Flag','73.20','2.000',2,100,1,NULL,20070512102759),
 ('033434','NF-1','3 ft. x 5 ft. Endura-Poly Romania Flag w/Ph & Fr','50.00','1.500',2,100,1,NULL,20070512102759),
 ('033435','NF-1','3 ft. x 5 ft. Nylon Romania Flag w/Ph & Fr','63.20','1.500',2,100,1,NULL,20070512102759),
 ('033436','NF-1','6 ft. x 10 ft. Nylon Romania O/D Flag','78.00','3.000',2,100,1,NULL,20070512102759),
 ('033438','NF-1','4 in. x 6 in. Endura-Gloss Mtd Russian Fed Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033440','NF-1','12 in. x 18 in. Endura-Poly Mtd Russian Fed Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759),
 ('033444','NF-1','3 ft. x 5 ft. Endura-Poly Russian Fed O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033445','NF-1','3 ft. x 5 ft. Nylon Russian Fed O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('033446','NF-1','4 ft. x 6 ft. Nylon Russian Fed O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033447','NF-1','5 ft. x 8 ft. Nylon Russian Fed O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('033457','NF-1','3 ft. x 5 ft. Endura-Poly Russian Fed Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033458','NF-1','3 ft. x 5 ft. Nylon Russian Fed Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('033555','NF-1','4 in. x 6 in. Endura-Gloss Mtd San Marino w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033557','NF-1','3 ft. x 5 ft. Endura-Poly San Marino w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033558','NF-1','3 ft. x 5 ft. Nylon San Marino w/Seal O/D Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033559','NF-1','4 ft. x 6 ft. Nylon San Marino w/Seal O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('033560','NF-1','5 ft. x 8 ft. Nylon San Marino w/Seal O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('033568','NF-1','3 ft. x 5 ft. Endura-Poly San Marino w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033569','NF-1','3 ft. x 5 ft. Nylon San Marino w/Seal Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('033572','NF-1','4 in. x 6 in. Endura-Gloss Mtd San Marino (No Seal) Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033575','NF-1','3 ft. x 5 ft. Nylon San Marino (No Seal) O/D Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('033576','NF-1','4 ft. x 6 ft. Nylon San Marino (No Seal) O/D Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('033577','NF-1','5 ft. x 8 ft. Nylon San Marino (No Seal) O/D Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('033584','NF-1','3 ft. x 5 ft. Nylon San Marino (No Seal) Flag w/Ph & Fr','50.00','0.600',2,100,1,NULL,20070512102759),
 ('033621','NF-1','4 in. x 6 in. Endura-Gloss Mtd Scotland w/Lion Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033622','NF-1','12 in. x 18 in. Endura-Poly Mtd Scotland w/Lion Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('033626','NF-1','3 ft. x 5 ft. Endura-Poly Scotland w/Lion O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033627','NF-1','3 ft. x 5 ft. Nylon Scotland w/Lion O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('033628','NF-1','4 ft. x 6 ft. Nylon Scotland w/Lion O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('033629','NF-1','5 ft. x 8 ft. Nylon Scotland w/Lion O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('033638','NF-1','3 ft. x 5 ft. Endura-Poly Scotland w/Lion Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033639','NF-1','3 ft. x 5 ft. Nylon Scotland w/Lion Flag w/Ph & Fr','70.00','0.600',2,100,1,NULL,20070512102759),
 ('033642','NF-1','4 in. x 6 in. Endura-Gloss Mtd Scotland w/Cross Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033646','NF-1','3 ft. x 5 ft. Endura-Poly Scotland w/Cross O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033647','NF-1','3 ft. x 5 ft. Nylon Scotland w/Cross O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('033648','NF-1','4 ft. x 6 ft. Nylon Scotland w/Cross O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033649','NF-1','5 ft. x 8 ft. Nylon Scotland w/Cross O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('033658','NF-1','3 ft. x 5 ft. Endura-Poly Scotland w/Cross Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033659','NF-1','3 ft. x 5 ft. Nylon Scotland w/Cross Flag w/Ph & Fr','80.00','0.600',2,100,1,NULL,20070512102759),
 ('033679','NF-1','12 in. x 18 in. Nylon Serbia/Montenegro Flag (no seal)','10.00','0.071',2,100,1,NULL,20070512102759),
 ('035873','NF-1','2 ft. x 3 ft. Nylon Serbia O/D Flag','43.80','0.300',2,100,1,NULL,20070512102759),
 ('033694','NF-1','3 ft. x 5 ft. Nylon Serbia O/D Flag','65.10','0.600',2,100,1,NULL,20070512102759),
 ('035874','NF-1','4 ft. x 6 ft. Nylon Serbia O/D Flag','85.50','0.700',2,100,1,NULL,20070512102759),
 ('035875','NF-1','5 ft. x 8 ft. Nylon Serbia O/D Flag','135.20','1.000',2,100,1,NULL,20070512102759),
 ('033717','NF-1','4 in. x 6 in. Endura-Gloss Mtd Sicily Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033740','NF-1','3 ft. x 5 ft. Endura-Poly Singapore O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033741','NF-1','3 ft. x 5 ft. Nylon Singapore O/D Flag','60.50','0.450',2,100,1,NULL,20070512102759),
 ('033742','NF-1','4 ft. x 6 ft. Nylon Singapore O/D Flag','75.00','0.700',2,100,1,NULL,20070512102759),
 ('033743','NF-1','5 ft. x 8 ft. Nylon Singapore O/D Flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('033752','NF-1','3 ft. x 5 ft. Endura-Poly Singapore Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033753','NF-1','3 ft. x 5 ft. Nylon Singapore Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('033850','NF-1','4 in. x 6 in. Endura-Gloss Mtd Spain w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033855','NF-1','3 ft. x 5 ft. Endura-Poly Spain w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033856','NF-1','3 ft. x 5 ft. Nylon Spain w/Seal O/D Flag','60.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033857','NF-1','4 ft. x 6 ft. Nylon Spain w/Seal O/D Flag','75.00','0.700',2,100,1,NULL,20070512102759),
 ('033858','NF-1','5 ft. x 8 ft. Nylon Spain w/Seal O/D Flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('033868','NF-1','3 ft. x 5 ft. Endura-Poly Spain w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033869','NF-1','3 ft. x 5 ft. Nylon Spain w/Seal Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('033874','NF-1','3 ft. x 5 ft. Nylon Spain (No Seal) O/D Flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('033875','NF-1','4 ft. x 6 ft. Nylon Spain (No Seal) O/D Flag','33.20','0.700',2,100,1,NULL,20070512102759),
 ('033876','NF-1','5 ft. x 8 ft. Nylon Spain (No Seal) O/D Flag','56.60','1.000',2,100,1,NULL,20070512102759),
 ('033882','NF-1','3 ft. x 5 ft. Nylon Spain (No Seal) Flag w/Ph & Fr','53.80','0.600',2,100,1,NULL,20070512102759),
 ('033955','NF-1','4 in. x 6 in. Endura-Gloss Mtd Sweden Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033961','NF-1','3 ft. x 5 ft. Endura-Poly Sweden O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('033962','NF-1','3 ft. x 5 ft. Nylon Sweden O/D Flag','34.00','0.450',2,100,1,NULL,20070512102759),
 ('033963','NF-1','4 ft. x 6 ft. Nylon Sweden O/D Flag','44.00','0.700',2,100,1,NULL,20070512102759),
 ('033964','NF-1','5 ft. x 8 ft. Nylon Sweden O/D Flag','70.50','1.000',2,100,1,NULL,20070512102759),
 ('033974','NF-1','3 ft. x 5 ft. Endura-Poly Sweden Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('033975','NF-1','3 ft. x 5 ft. Nylon Sweden Flag w/Ph & Fr','64.50','0.600',2,100,1,NULL,20070512102759),
 ('033981','NF-1','4 in. x 6 in. Endura-Gloss Mtd Switzerland Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('033983','NF-1','12 in. x 18 in. Endura-Poly Mtd Switzerland Flag No Fr','3.40','0.071',2,100,1,NULL,20070512102759),
 ('033987','NF-1','3 ft. x 5 ft. Endura-Poly Switzerland O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033988','NF-1','3 ft. x 5 ft. Nylon Switzerland O/D Flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('033989','NF-1','4 ft. x 6 ft. Nylon Switzerland O/D Flag','45.30','0.700',2,100,1,NULL,20070512102759),
 ('033990','NF-1','5 ft. x 8 ft. Nylon Switzerland O/D Flag','90.90','1.000',2,100,1,NULL,20070512102759),
 ('034000','NF-1','3 ft. x 5 ft. Endura-Poly Switzerland Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034001','NF-1','3 ft. x 5 ft. Nylon Switzerland Flag w/Ph & Fr','69.60','0.600',2,100,1,NULL,20070512102759),
 ('034034','NF-1','4 in. x 6 in. Endura-Gloss Mtd Taiwan Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034036','NF-1','12 in. x 18 in. Endura-Poly Mtd Taiwan Flag No Fr','5.00','0.071',2,100,1,NULL,20070512102759),
 ('034039','NF-1','3 ft. x 5 ft. Endura-Poly Taiwan O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034040','NF-1','3 ft. x 5 ft. Nylon Taiwan O/D Flag','60.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034041','NF-1','4 ft. x 6 ft. Nylon Taiwan O/D Flag','75.00','0.700',2,100,1,NULL,20070512102759),
 ('034042','NF-1','5 ft. x 8 ft. Nylon Taiwan O/D Flag','135.00','1.000',2,100,1,NULL,20070512102759),
 ('034052','NF-1','3 ft. x 5 ft. Endura-Poly Taiwan Flag w/Ph & Fr','20.00','0.417',2,100,1,NULL,20070512102759),
 ('034053','NF-1','3 ft. x 5 ft. Nylon Taiwan Flag w/Ph & Fr','90.00','0.600',2,100,1,NULL,20070512102759),
 ('034090','NF-1','4 in. x 6 in. Endura-Gloss Mtd Thailand Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034092','NF-1','3 ft. x 5 ft. Endura-Poly Thailand O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034093','NF-1','3 ft. x 5 ft. Nylon Thailand O/D Flag','41.50','0.450',2,100,1,NULL,20070512102759),
 ('034094','NF-1','4 ft. x 6 ft. Nylon Thailand O/D Flag','53.50','0.700',2,100,1,NULL,20070512102759),
 ('034095','NF-1','5 ft. x 8 ft. Nylon Thailand O/D Flag','87.50','1.000',2,100,1,NULL,20070512102759),
 ('034103','NF-1','3 ft. x 5 ft. Endura-Poly Thailand Flag w/Ph & Fr','20.00','0.417',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034104','NF-1','3 ft. x 5 ft. Nylon Thailand Flag w/Ph & Fr','71.50','0.600',2,100,1,NULL,20070512102759),
 ('034295','NF-1','4 in. x 6 in. Endura-Gloss Mtd U.K. Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034301','NF-1','3 ft. x 5 ft. Endura-Poly U.K. O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034302','NF-1','3 ft. x 5 ft. Nylon U.K. O/D Flag','40.00','0.450',2,100,1,NULL,20070512102759),
 ('034303','NF-1','4 ft. x 6 ft. Nylon U.K. O/D Flag','49.50','0.700',2,100,1,NULL,20070512102759),
 ('034304','NF-1','5 ft. x 8 ft. Nylon U.K. O/D Flag','87.50','1.000',2,100,1,NULL,20070512102759),
 ('034314','NF-1','3 ft. x 5 ft. Endura-Poly U.K. Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034315','NF-1','3 ft. x 5 ft. Nylon U.K. Flag w/Ph & Fr','69.50','0.600',2,100,1,NULL,20070512102759),
 ('034318','NF-1','4 in. x 6 in. Endura-Gloss Mtd U.N. Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034321','NF-1','3 ft. x 5 ft. Endura-Poly U.N. O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034322','NF-1','3 ft. x 5 ft. Nylon U.N. O/D Flag','54.50','0.450',2,100,1,NULL,20070512102759),
 ('034323','NF-1','4 ft. x 6 ft. Nylon U.N. O/D Flag','66.00','0.700',2,100,1,NULL,20070512102759),
 ('034324','NF-1','5 ft. x 8 ft. Nylon U.N. O/D Flag','115.00','1.000',2,100,1,NULL,20070512102759),
 ('034333','NF-1','3 ft. x 5 ft. Endura-Poly U.N. Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034334','NF-1','3 ft. x 5 ft. Nylon U.N. Flag w/Ph & Fr','84.50','0.600',2,100,1,NULL,20070512102759),
 ('034354','NF-1','3 ft. x 5 ft. Endura-Poly US President O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034356','NF-1','3 ft. x 5 ft. Endura-Poly US President Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034357','NF-1','4 in. x 6 in. Endura-Gloss Mtd Uruguay Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034360','NF-1','3 ft. x 5 ft. Endura-Poly Uruguay O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034361','NF-1','3 ft. x 5 ft. Nylon Uruguay O/D Flag','67.50','0.450',2,100,1,NULL,20070512102759),
 ('034362','NF-1','4 ft. x 6 ft. Nylon Uruguay O/D Flag','88.50','0.700',2,100,1,NULL,20070512102759),
 ('034363','NF-1','5 ft. x 8 ft. Nylon Uruguay O/D Flag','140.00','1.000',2,100,1,NULL,20070512102759),
 ('034372','NF-1','3 ft. x 5 ft. Endura-Poly Uruguay Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034373','NF-1','3 ft. x 5 ft. Nylon Uruguay Flag w/Ph & Fr','97.50','0.600',2,100,1,NULL,20070512102759),
 ('034429','NF-1','4 in. x 6 in. Endura-Gloss Mtd Venezuela w/Seal Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034430','NF-1','8 in. x 12 in. Endura-Gloss Mtd Venezuela w/Seal Flag No Fr','8.50','0.050',2,100,1,NULL,20070512102759),
 ('034432','NF-1','3 ft. x 5 ft. Endura-Poly Venezuela w/Seal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034433','NF-1','3 ft. x 5 ft. Nylon Venezuela w/Seal O/D Flag','80.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034434','NF-1','4 ft. x 6 ft. Nylon Venezuela w/Seal O/D Flag','100.00','0.700',2,100,1,NULL,20070512102759),
 ('034435','NF-1','5 ft. x 8 ft. Nylon Venezuela w/Seal O/D Flag','158.00','1.000',2,100,1,NULL,20070512102759),
 ('034444','NF-1','3 ft. x 5 ft. Endura-Poly Venezuela w/Seal Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034445','NF-1','3 ft. x 5 ft. Nylon Venezuela w/Seal Flag w/Ph & Fr','110.00','0.600',2,100,1,NULL,20070512102759),
 ('034448','NF-1','4 in. x 6 in. Endura-Gloss Mtd Venezuela (No Seal) Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034449','NF-1','8 in. x 12 in. Endura-Gloss Mtd Venezuela (No Seal) Flag No Fr','5.00','0.050',2,100,1,NULL,20070512102759),
 ('034452','NF-1','3 ft. x 5 ft. Nylon Venezuela (No Seal) O/D Flag','49.00','0.450',2,100,1,NULL,20070512102759),
 ('034453','NF-1','4 ft. x 6 ft. Nylon Venezuela (No Seal) O/D Flag','60.50','0.700',2,100,1,NULL,20070512102759),
 ('034454','NF-1','5 ft. x 8 ft. Nylon Venezuela (No Seal) O/D Flag','107.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034462','NF-1','3 ft. x 5 ft. Nylon Venezuela (No Seal) Flag w/Ph & Fr','79.50','0.600',2,100,1,NULL,20070512102759),
 ('034555','NF-1','3 ft. x 5 ft. Endura-Poly World Scout O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034557','NF-1','3 ft. x 5 ft. Endura-Poly World Scout Flag w/Ph & Fr','50.00','0.417',2,100,1,NULL,20070512102759),
 ('034558','NF-1','4 in. x 6 in. Endura-Gloss Mtd Yemen Flag No Fr','3.00','0.024',2,100,1,NULL,20070512102759),
 ('034560','NF-1','2\' x 3\' Nylon Yemen Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('034561','NF-1','3 ft. x 5 ft. Nylon Yemen Flag','35.20','0.600',2,100,1,NULL,20070512102759),
 ('034562','NF-1','4 ft. x 6 ft. Nylon Yemen Flag','45.50','0.700',2,100,1,NULL,20070512102759),
 ('034563','NF-1','5 ft. x 8 ft. Nylon Yemen Flag','73.20','1.000',2,100,1,NULL,20070512102759),
 ('290370','CAP','\"Baseball Style cap \"\"Argentina w/seal\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290371','CAP','\"Baseball Style cap \"\"Aruba\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290372','CAP','\"Baseball Style cap \"\"Australia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290373','CAP','\"Baseball Style cap \"\"Austria (no Eagle\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290374','CAP','\"Baseball Style cap \"\"Belgium\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290375','CAP','\"Baseball Style cap \"\"Bermuda\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290376','CAP','\"Baseball Style cap \"\"Bolivia (no Seal\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290377','CAP','\"Baseball Style cap \"\"Brazil\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290379','CAP','\"Baseball Style cap \"\"Cameroon\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290380','CAP','\"Baseball Style cap \"\"Canada\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290381','CAP','\"Baseball Style cap \"\"Chile\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290382','CAP','\"Baseball Style cap \"\"China\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290383','CAP','\"Baseball Style cap \"\"Columbia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290384','CAP','\"Baseball Style cap \"\"Conch Republic\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290385','CAP','\"Baseball Style cap \"\"Croatia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290386','CAP','\"Baseball Style cap \"\"Cuba\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290387','CAP','\"Baseball Style cap \"\"Czech Rep\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290388','CAP','\"Baseball Style cap \"\"Denmark\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290391','CAP','\"Baseball Style cap \"\"Egypt\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290390','CAP','\"Baseball Style cap \"\"England\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290392','CAP','\"Baseball Style cap \"\"Europe\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290393','CAP','\"Baseball Style cap \"\"Finland\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290394','CAP','\"Baseball Style cap \"\"France\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290395','CAP','\"Baseball Style cap \"\"Germany\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290396','CAP','\"Baseball Style cap \"\"Greece\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290398','CAP','\"Baseball Style cap \"\"India\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290399','CAP','\"Baseball Style cap \"\"Iran\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290400','CAP','\"Baseball Style cap \"\"Ireland\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290401','CAP','\"Baseball Style cap \"\"Isreal\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290402','CAP','\"Baseball Style cap \"\"Italy\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290403','CAP','\"Baseball Style cap \"\"Jamaica\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290404','CAP','\"Baseball Style cap \"\"Japan\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290405','CAP','\"Baseball Style cap \"\"Korea (South)\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290406','CAP','\"Baseball Style cap \"\"Malaysia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290407','CAP','\"Baseball Style cap \"\"Mexico\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290408','CAP','\"Baseball Style cap \"\"Morocco\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290409','CAP','\"Baseball Style cap \"\"Netherlands\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290410','CAP','\"Baseball Style cap \"\"New Zealand\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290411','CAP','\"Baseball Style cap \"\"Nigeria\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290412','CAP','\"Baseball Style cap \"\"Norway\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290413','CAP','\"Baseball Style cap \"\"Panama\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290414','CAP','\"Baseball Style cap \"\"Paraguay\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290415','CAP','\"Baseball Style cap \"\"Poland (no Eagle)\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290416','CAP','\"Baseball Style cap \"\"Portugal\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290418','CAP','\"Baseball Style cap \"\"Russian Fed\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290419','CAP','\"Baseball Style cap \"\"Saudi Arabia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290420','CAP','\"Baseball Style cap \"\"Scotland w/Cross\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290421','CAP','\"Baseball Style cap \"\"Scotland w/Lion\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290422','CAP','\"Baseball Style cap \"\"Slovakia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290423','CAP','\"Baseball Style cap \"\"Slovenia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290424','CAP','\"Baseball Style cap \"\"South Africa\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290425','CAP','\"Baseball Style cap \"\"Spain (no seal)\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290426','CAP','\"Baseball Style cap \"\"Sweden\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290427','CAP','\"Baseball Style cap \"\"Switzerland\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290428','CAP','\"Baseball Style cap \"\"Tunisia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290429','CAP','\"Baseball Style cap \"\"Turkey\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290430','CAP','\"Baseball Style cap \"\"Ukraine\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290431','CAP','\"Baseball Style cap \"\"UK\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290432','CAP','\"Baseball Style cap \"\"United States\"\"\"','10.00','0.800',2,100,1,NULL,20070512102759),
 ('290433','CAP','\"Baseball Style cap \"\"USA\"\"\"','10.00','0.800',2,100,1,NULL,20070512102759),
 ('290434','CAP','\"Baseball Style cap \"\"Venezuela (no Seal)\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290435','CAP','\"Baseball Style cap \"\"Wales\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290437','CAP','\"Baseball Style cap \"\"Serbia & Mont.\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290438','CAP','\"Baseball Style cap \"\"Zimbabwe\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290436','CAP','\"Baseball Style cap \"\"World Cap\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290439','CAP','\"Baseball Style cap \"\"Texas\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290440','CAP','\"Baseball Style cap \"\"Peach State\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290441','CAP','\"Baseball Style cap \"\"Puerto Rico\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290442','CAP','\"Baseball Style cap \"\"Pride\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290443','CAP','\"Baseball Style cap \"\"Rebel\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290446','CAP','\"Bucket Style cap \"\"Australia\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('290447','CAP','\"Bucket Style cap \"\"England\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290451','CAP','\"Bucket Style cap \"\"Germany\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290450','CAP','\"Bucket Style cap \"\"Greece\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290449','CAP','\"Bucket Style cap \"\"Italy\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290452','CAP','\"Bucket Style cap \"\"Netherlands\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290453','CAP','\"Bucket Style cap \"\"South Africa\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290448','CAP','\"Bucket Style cap \"\"Sweden\"\"\"','17.00','0.800',2,100,1,NULL,20070512102759),
 ('290444','CAP','\"Bucket Style cat \"\"United States\"\"\"','10.00','0.800',2,100,1,NULL,20070512102759),
 ('180021','PEN-00','Pennant Streamers - 60 ft. Long / Multi Color','7.60','0.650',1,100,1,NULL,20070512102759),
 ('180022','PEN-01','Pennant Streamers - 60 ft. Long / Red-White-Blue','7.60','0.650',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220266','LP-US','USA Flag Lapel Pin','2.00','0.011',2,100,1,NULL,20070512102759),
 ('320022','BPFG200','\"Fiberglass Display Pole 5\' Length, 1\"\" dia.\"','20.00','4.000',1,100,1,NULL,20070512102759),
 ('320023','BPFG600','\"Fiberglass Display Pole 6\' Length, 1\"\" dia.\"','21.00','5.000',1,100,1,NULL,20070512102759),
 ('320024','BPFG800','\"Fiberglass Display Pole 8\' Length, 1\"\" dia.\"','25.00','5.500',1,100,1,NULL,20070512102759),
 ('320025','BPFG1000','\"Fiberglass Display Pole 10\' length, 1\"\" dia.\"','29.00','7.000',1,100,1,NULL,20070512102759),
 ('320041','WA12','Colonial Flagpole Set - 12 ft.','68.00','4.500',1,100,1,NULL,20070512102759),
 ('320042','WA18','Colonial Flagpole Set - 18 ft.','82.00','7.200',1,100,1,NULL,20070512102759),
 ('320053','HS10','Homesteader Flagpoles - Complete Set - 10 ft.','88.00','8.100',1,200,1,NULL,20070512102759),
 ('320056','HS25','Homesteader Flagpoles - Complete Set - 25 ft.','222.00','25.350',1,250,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320057','HS-Section','\"Homesteader Flagpole Section only 70\"\" length, 2\"\" dia., Plain-Unswedged\"','20.00','5.000',1,200,1,NULL,20070512102759),
 ('320058','HS-Section','\"Homesteader Flagpole Section only 70\"\" length, 2\"\" dia., Plain-Drilled for cleat\"','21.00','5.000',1,200,1,NULL,20070512102759),
 ('320059','HS-Section','\"Homesteader Flagpole Section only 70\"\" length, 2\"\" dia., Swedged - No Drilling\"','21.00','5.000',1,200,1,NULL,20070512102759),
 ('320060','HS-Section','\"Homesteader Flagpole Section only 70\"\" length, 2\"\" dia., Swedged - Drilled for Cleat\"','22.00','5.000',1,200,1,NULL,20070512102759),
 ('320061','HS-Section','\"Homesteader Flagpole Section only 59\"\" length, 2.5\"\" dia., Plain-Unswedged\"','25.00','5.000',1,200,1,NULL,20070512102759),
 ('320062','HS-Section','\"Homesteader Flagpole Section only59\"\" length, 2.5\"\" dia., Swedged - no Drilling\"','26.00','5.000',1,200,1,NULL,20070512102759),
 ('320063','HS-Section','\"Homesteader Flagpole Section only 59\"\" length, 2.5\"\" dia., Swedged - Drilled for cleat\"','27.00','5.000',1,200,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320064','HSFC','\"Flash Collar for HS10,HS15,HS20,  8\"\" outside dia, 2.75\"\" height\"','21.00','2.000',1,100,1,NULL,20070512102759),
 ('320065','HSFC','\"Flash Collar for HS25,  8\"\" outside dia, 2.25\"\" height\"','21.00','2.000',1,100,1,NULL,20070512102759),
 ('320072','HSO10-45','Homesteader Flagpoles - Outrigger - 45 degree Bracket','150.00','9.200',1,200,1,NULL,20070512102759),
 ('320073','MBOF-30','Mounting Bracket for Outrigger Flagpole - 30 degree - Silver','63.00','3.350',1,100,1,NULL,20070512102759),
 ('320074','MBOF-45','Mounting Bracket for Outrigger Flagpole - 45 degree - Silver','63.00','1.100',1,100,1,NULL,20070512102759),
 ('320076','MBOF-90','Mounting Bracket for Outrigger Flagpole - 90 degree - Silver','56.00','2.900',1,100,1,NULL,20070512102759),
 ('320113','EC20','20 Foot High - Architectural Series Flagpole - Satin','597.00','118.000',0,100,1,NULL,20070512102759),
 ('320114','EC25','25 Foot High - Architectural Series Flagpole - Satin','767.00','150.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320115','EC30','30 Foot High - Architectural Series Flagpole - Satin','879.00','195.000',0,100,0,NULL,20070512102759),
 ('320116','EC35','35 Foot High - Architectural Series Flagpole - Satin','1163.00','255.000',0,100,0,NULL,20070512102759),
 ('320117','EC40','40 Foot High - Architectural Series Flagpole - Satin','1580.00','317.000',0,100,0,NULL,20070512102759),
 ('320118','EC45','45 Foot High - Architectural Series Flagpole - Satin','1866.00','342.000',0,100,0,NULL,20070512102759),
 ('320119','EC50','50 Foot High - Architectural Series Flagpole - Satin','2405.00','416.000',0,100,0,NULL,20070512102759),
 ('320120','EC60','60 Foot High - Architectural Series Flagpole - Satin','4615.00','665.000',0,100,0,NULL,20070512102759),
 ('320121','EC70','70 Foot High - Architectural Series Flagpole - Satin','5198.00','760.000',0,100,0,NULL,20070512102759),
 ('320122','EC80','80 Foot High - Architectural Series Flagpole - Satin','6687.00','1020.000',0,100,0,NULL,20070512102759),
 ('320123','EC20','20 Foot High - Architectural Series Flagpole - Clear Anodized','677.00','118.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320124','EC25','25 Foot High - Architectural Series Flagpole - Clear Anodized','867.00','150.000',0,100,0,NULL,20070512102759),
 ('320125','EC30','30 Foot High - Architectural Series Flagpole - Clear Anodized','996.00','195.000',0,100,0,NULL,20070512102759),
 ('320126','EC35','35 Foot High - Architectural Series Flagpole - Clear Anodized','1320.00','255.000',0,100,0,NULL,20070512102759),
 ('320127','EC40','40 Foot High - Architectural Series Flagpole - Clear Anodized','1775.00','317.000',0,100,0,NULL,20070512102759),
 ('320128','EC45','45 Foot High - Architectural Series Flagpole - Clear Anodized','1969.00','342.000',0,100,0,NULL,20070512102759),
 ('320129','EC50','50 Foot High - Architectural Series Flagpole - Clear Anodized','2756.00','416.000',0,100,0,NULL,20070512102759),
 ('320130','EC60','60 Foot High - Architectural Series Flagpole - Clear Anodized','5030.00','665.000',0,100,0,NULL,20070512102759),
 ('320131','EC70','70 Foot High - Architectural Series Flagpole - Clear Anodized','5680.00','760.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320132','EC80','80 Foot High - Architectural Series Flagpole - Clear Anodized','7233.00','1020.000',0,100,0,NULL,20070512102759),
 ('320133','EC20','20 Foot High - Architectural Series Flagpole - Bronze Anodized','696.00','118.000',0,100,1,NULL,20070512102759),
 ('320134','EC25','25 Foot High - Architectural Series Flagpole - Bronze Anodized','884.00','150.000',0,100,0,NULL,20070512102759),
 ('320135','EC30','30 Foot High - Architectural Series Flagpole - Bronze Anodized','1022.00','195.000',0,100,0,NULL,20070512102759),
 ('320136','EC35','35 Foot High - Architectural Series Flagpole - Bronze Anodized','1360.00','255.000',0,100,0,NULL,20070512102759),
 ('320137','EC40','40 Foot High - Architectural Series Flagpole - Bronze Anodized','1827.00','317.000',0,100,0,NULL,20070512102759),
 ('320138','EC45','45 Foot High - Architectural Series Flagpole - Bronze Anodized','2028.00','342.000',0,100,0,NULL,20070512102759),
 ('320139','EC50','50 Foot High - Architectural Series Flagpole - Bronze Anodized','2841.00','416.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320140','EC60','60 Foot High - Architectural Series Flagpole - Bronze Anodized','5147.00','665.000',0,100,0,NULL,20070512102759),
 ('320141','EC70','70 Foot High - Architectural Series Flagpole - Bronze Anodized','5817.00','760.000',0,100,0,NULL,20070512102759),
 ('320142','EC80','80 Foot High - Architectural Series Flagpole - Bronze Anodized','7388.00','1020.000',0,100,0,NULL,20070512102759),
 ('320193','ECX20','20 Foot High - Economy Extra  Series Flagpole - Satin','488.00','92.000',0,100,1,NULL,20070512102759),
 ('320194','ECX25','25 Foot High - Economy Extra  Series Flagpole - Satin','515.00','113.000',0,100,1,NULL,20070512102759),
 ('320195','ECX30','30 Foot High - Economy Extra  Series Flagpole - Satin','581.00','128.000',0,100,1,NULL,20070512102759),
 ('320196','ECX35','35 Foot High - Economy Extra  Series Flagpole - Satin','784.00','190.000',0,100,0,NULL,20070512102759),
 ('320197','ECX40','40 Foot High - Economy Extra  Series Flagpole - Satin','1326.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320198','ECX50','50 Foot High - Economy Extra  Series Flagpole - Satin','1885.00','360.000',0,100,0,NULL,20070512102759),
 ('320199','ECX60','60 Foot High - Economy Extra  Series Flagpole - Satin','2796.00','520.000',0,100,0,NULL,20070512102759),
 ('320200','ECX70','70 Foot High - Economy Extra  Series Flagpole - Satin','4479.00','695.000',0,100,0,NULL,20070512102759),
 ('320201','ECX20','20 Foot High - Economy Extra  Series Flagpole - Clear Anodized','567.00','92.000',0,100,1,NULL,20070512102759),
 ('320202','ECX25','25 Foot High - Economy Extra  Series Flagpole - Clear Anodized','607.00','113.000',0,100,1,NULL,20070512102759),
 ('320203','ECX30','30 Foot High - Economy Extra  Series Flagpole - Clear Anodized','684.00','128.000',0,100,1,NULL,20070512102759),
 ('320204','ECX35','35 Foot High - Economy Extra  Series Flagpole - Clear Anodized','1022.00','190.000',0,100,0,NULL,20070512102759),
 ('320205','ECX40','40 Foot High - Economy Extra  Series Flagpole - Clear Anodized','1502.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320206','ECX50','50 Foot High - Economy Extra  Series Flagpole - Clear Anodized','2126.00','360.000',0,100,0,NULL,20070512102759),
 ('320207','ECX60','60 Foot High - Economy Extra  Series Flagpole - Clear Anodized','3145.00','520.000',0,100,0,NULL,20070512102759),
 ('320208','ECX70','70 Foot High - Economy Extra  Series Flagpole - Clear Anodized','4881.00','695.000',0,100,0,NULL,20070512102759),
 ('320209','ECX20','20 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','586.00','92.000',0,100,1,NULL,20070512102759),
 ('320210','ECX25','25 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','625.00','113.000',0,100,1,NULL,20070512102759),
 ('320211','ECX30','30 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','696.00','128.000',0,100,1,NULL,20070512102759),
 ('320212','ECX35','35 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','1054.00','190.000',0,100,0,NULL,20070512102759),
 ('320213','ECX40','40 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','1548.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320214','ECX50','50 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','2191.00','360.000',0,100,0,NULL,20070512102759),
 ('320215','ECX60','60 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','3243.00','520.000',0,100,0,NULL,20070512102759),
 ('320216','ECX70','70 Foot High - Economy Extra  Series Flagpole - Bronze Anodized','4998.00','695.000',0,100,0,NULL,20070512102759),
 ('320257','ECM15','15 Foot High - Special Budget Series Flagpole - Satin','229.00','40.000',0,100,1,NULL,20070512102759),
 ('320258','ECM20','20 Foot High - Special Budget Series Flagpole - Satin','242.00','45.000',0,100,1,NULL,20070512102759),
 ('320259','ECSS15','15 Foot High - Special Budget Series Flagpole - Satin','207.00','45.000',0,100,1,NULL,20070512102759),
 ('320260','ECSS20','20 Foot High - Special Budget Series Flagpole - Satin','217.00','50.000',0,100,1,NULL,20070512102759),
 ('320261','ECSS25','25 Foot High - Special Budget Series Flagpole - Satin','255.00','55.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320262','ECS20','20 Foot High - Special Budget Series Flagpole - Satin','300.00','55.000',0,100,1,NULL,20070512102759),
 ('320263','ECS25','25 Foot High - Special Budget Series Flagpole - Satin','347.00','60.000',0,100,1,NULL,20070512102759),
 ('320264','ECS30','30 Foot High - Special Budget Series Flagpole - Satin','384.00','104.000',0,100,1,NULL,20070512102759),
 ('320265','ECS35','35 Foot High - Special Budget Series Flagpole - Satin','586.00','150.000',0,100,0,NULL,20070512102759),
 ('320266','ECM15','15 Foot High - Special Budget Series Flagpole - Clear Anodized','274.00','40.000',0,100,1,NULL,20070512102759),
 ('320267','ECM20','20 Foot High - Special Budget Series Flagpole - Clear Anodized','295.00','45.000',0,100,1,NULL,20070512102759),
 ('320268','ECSS15','15 Foot High - Special Budget Series Flagpole - Clear Anodized','223.00','45.000',0,100,1,NULL,20070512102759),
 ('320269','ECSS20','20 Foot High - Special Budget Series Flagpole - Clear Anodized','261.00','50.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320270','ECSS25','25 Foot High - Special Budget Series Flagpole - Clear Anodized','312.00','55.000',0,100,1,NULL,20070512102759),
 ('320271','ECS20','20 Foot High - Special Budget Series Flagpole - Clear Anodized','365.00','55.000',0,100,1,NULL,20070512102759),
 ('320272','ECS25','25 Foot High - Special Budget Series Flagpole - Clear Anodized','417.00','60.000',0,100,1,NULL,20070512102759),
 ('320273','ECS30','30 Foot High - Special Budget Series Flagpole - Clear Anodized','470.00','104.000',0,100,1,NULL,20070512102759),
 ('320274','ECS35','35 Foot High - Special Budget Series Flagpole - Clear Anodized','703.00','150.000',0,100,0,NULL,20070512102759),
 ('320275','ECM15','15 Foot High - Special Budget Series Flagpole - Bronze Anodized','281.00','40.000',0,100,1,NULL,20070512102759),
 ('320276','ECM20','20 Foot High - Special Budget Series Flagpole - Bronze Anodized','307.00','45.000',0,100,1,NULL,20070512102759),
 ('320277','ECSS15','15 Foot High - Special Budget Series Flagpole - Bronze Anodized','229.00','45.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320278','ECSS20','20 Foot High - Special Budget Series Flagpole - Bronze Anodized','274.00','50.000',0,100,1,NULL,20070512102759),
 ('320279','ECSS25','25 Foot High - Special Budget Series Flagpole - Bronze Anodized','327.00','55.000',0,100,1,NULL,20070512102759),
 ('320280','ECS20','20 Foot High - Special Budget Series Flagpole - Bronze Anodized','378.00','55.000',0,100,1,NULL,20070512102759),
 ('320281','ECS25','25 Foot High - Special Budget Series Flagpole - Bronze Anodized','431.00','60.000',0,100,1,NULL,20070512102759),
 ('320282','ECS30','30 Foot High - Special Budget Series Flagpole - Bronze Anodized','488.00','104.000',0,100,1,NULL,20070512102759),
 ('320283','ECS35','35 Foot High - Special Budget Series Flagpole - Bronze Anodized','729.00','150.000',0,100,0,NULL,20070512102759),
 ('320329','ESS20TS','20 Foot High - Special Budget Series Sectional Flagpole - 3 Sections - Shipping included in price','299.00','0.000',1,200,1,NULL,20070512102759),
 ('323976','ESS25FS','25 Foot High - Special Budget Series Sectional Flagpole - 4 Sections - Shipping included in price','359.00','0.000',1,200,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323977','ESS20TSB','20 Foot High - Bronze - Special Budget Series Sectional Flagpole - 3 Sections - Shipping included in price','405.00','0.000',1,200,1,NULL,20070512102759),
 ('323978','ESS25FSB','25 Foot High - Bronze - Special Budget Series Sectional Flagpole - 4 Sections - Shipping included in price','466.00','0.000',1,200,1,NULL,20070512102759),
 ('320337','ECSA20','20 Foot High - Atlas Series Flagpole - Satin','364.00','80.000',0,100,1,NULL,20070512102759),
 ('320338','ECSA25','25 Foot High - Atlas Series Flagpole - Satin','495.00','94.000',0,100,1,NULL,20070512102759),
 ('320339','ECXA25','25 Foot High - Atlas Series Flagpole - Satin','618.00','123.000',0,100,1,NULL,20070512102759),
 ('320340','ECXA30','30 Foot High - Atlas Series Flagpole - Satin','690.00','138.000',0,100,1,NULL,20070512102759),
 ('320341','ECA30','30 Foot High - Atlas Series Flagpole - Satin','853.00','185.000',0,100,0,NULL,20070512102759),
 ('320342','ECSA35','35 Foot High - Atlas Series Flagpole - Satin','773.00','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320343','ECA35','35 Foot High - Atlas Series Flagpole - Satin','1008.00','245.000',0,100,0,NULL,20070512102759),
 ('320344','ECA40','40 Foot High - Atlas Series Flagpole - Satin','1475.00','300.000',0,100,0,NULL,20070512102759),
 ('320345','ECXA60','60 Foot High - Atlas Series Flagpole - Satin','3561.00','585.000',0,100,0,NULL,20070512102759),
 ('320346','ECSA20','20 Foot High - Atlas Series Flagpole - Clear Anodized','430.00','80.000',0,100,1,NULL,20070512102759),
 ('320347','ECSA25','25 Foot High - Atlas Series Flagpole - Clear Anodized','567.00','94.000',0,100,1,NULL,20070512102759),
 ('320348','ECXA25','25 Foot High - Atlas Series Flagpole - Clear Anodized','703.00','123.000',0,100,1,NULL,20070512102759),
 ('320349','ECXA30','30 Foot High - Atlas Series Flagpole - Clear Anodized','780.00','138.000',0,100,1,NULL,20070512102759),
 ('320350','ECA30','30 Foot High - Atlas Series Flagpole - Clear Anodized','969.00','185.000',0,100,0,NULL,20070512102759),
 ('320351','ECSA35','35 Foot High - Atlas Series Flagpole - Clear Anodized','891.00','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320352','ECA35','35 Foot High - Atlas Series Flagpole - Clear Anodized','1163.00','245.000',0,100,0,NULL,20070512102759),
 ('320353','ECA40','40 Foot High - Atlas Series Flagpole - Clear Anodized','1671.00','300.000',0,100,0,NULL,20070512102759),
 ('320354','ECXA60','60 Foot High - Atlas Series Flagpole - Clear Anodized','3912.00','585.000',0,100,0,NULL,20070512102759),
 ('320355','ECSA20','20 Foot High - Atlas Series Flagpole - Bronze Anodized','442.00','80.000',0,100,1,NULL,20070512102759),
 ('320356','ECSA25','25 Foot High - Atlas Series Flagpole - Bronze Anodized','585.00','94.000',0,100,1,NULL,20070512102759),
 ('320357','ECXA25','25 Foot High - Atlas Series Flagpole - Bronze Anodized','728.00','123.000',0,100,1,NULL,20070512102759),
 ('320358','ECXA30','30 Foot High - Atlas Series Flagpole - Bronze Anodized','814.00','138.000',0,100,1,NULL,20070512102759),
 ('320359','ECA30','30 Foot High - Atlas Series Flagpole - Bronze Anodized','996.00','185.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320360','ECSA35','35 Foot High - Atlas Series Flagpole - Bronze Anodized','910.00','160.000',0,100,0,NULL,20070512102759),
 ('320361','ECA35','35 Foot High - Atlas Series Flagpole - Bronze Anodized','1196.00','245.000',0,100,0,NULL,20070512102759),
 ('320362','ECA40','40 Foot High - Atlas Series Flagpole - Bronze Anodized','1723.00','300.000',0,100,0,NULL,20070512102759),
 ('320363','ECXA60','60 Foot High - Atlas Series Flagpole - Bronze Anodized','4002.00','585.000',0,100,0,NULL,20070512102759),
 ('320409','ECXV20','20 Foot High - Vanguard Series Flagpole - Satin','612.00','92.000',0,100,1,NULL,20070512102759),
 ('320410','ECV20','20 Foot High - Vanguard Series Flagpole - Satin','716.00','118.000',0,100,1,NULL,20070512102759),
 ('320411','ECXV25','25 Foot High - Vanguard Series Flagpole - Satin','683.00','113.000',0,100,1,NULL,20070512102759),
 ('320412','ECXAV25','25 Foot High - Vanguard Series Flagpole - Satin','773.00','123.000',0,100,1,NULL,20070512102759),
 ('320413','ECV25','25 Foot High - Vanguard Series Flagpole - Satin','1008.00','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320414','ECXV30','30 Foot High - Vanguard Series Flagpole - Satin','748.00','128.000',0,100,1,NULL,20070512102759),
 ('320415','ECXAV30','30 Foot High - Vanguard Series Flagpole - Satin','845.00','138.000',0,100,1,NULL,20070512102759),
 ('320416','ECAV30','30 Foot High - Vanguard Series Flagpole - Satin','976.00','185.000',0,100,0,NULL,20070512102759),
 ('320417','ECV30','30 Foot High - Vanguard Series Flagpole - Satin','1040.00','195.000',0,100,0,NULL,20070512102759),
 ('320418','ECSAV35','35 Foot High - Vanguard Series Flagpole - Satin','955.00','160.000',0,100,0,NULL,20070512102759),
 ('320419','ECXV35','35 Foot High - Vanguard Series Flagpole - Satin','1040.00','190.000',0,100,0,NULL,20070512102759),
 ('320420','ECAV35','35 Foot High - Vanguard Series Flagpole - Satin','1169.00','245.000',0,100,0,NULL,20070512102759),
 ('320421','ECV35','35 Foot High - Vanguard Series Flagpole - Satin','1333.00','255.000',0,100,0,NULL,20070512102759),
 ('320422','ECXV40','40 Foot High - Vanguard Series Flagpole - Satin','1482.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320423','ECAV40','40 Foot High - Vanguard Series Flagpole - Satin','1690.00','300.000',0,100,0,NULL,20070512102759),
 ('320424','ECV40','40 Foot High - Vanguard Series Flagpole - Satin','1818.00','317.000',0,100,0,NULL,20070512102759),
 ('320425','ECXV20','20 Foot High - Vanguard Series Flagpole - Clear Anodized','690.00','92.000',0,100,1,NULL,20070512102759),
 ('320426','ECV20','20 Foot High - Vanguard Series Flagpole - Clear Anodized','800.00','118.000',0,100,1,NULL,20070512102759),
 ('320427','ECXV25','25 Foot High - Vanguard Series Flagpole - Clear Anodized','767.00','113.000',0,100,1,NULL,20070512102759),
 ('320428','ECXAV25','25 Foot High - Vanguard Series Flagpole - Clear Anodized','858.00','123.000',0,100,1,NULL,20070512102759),
 ('320429','ECV25','25 Foot High - Vanguard Series Flagpole - Clear Anodized','1074.00','160.000',0,100,0,NULL,20070512102759),
 ('320430','ECXV30','30 Foot High - Vanguard Series Flagpole - Clear Anodized','845.00','128.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320431','ECXAV30','30 Foot High - Vanguard Series Flagpole - Clear Anodized','943.00','138.000',0,100,1,NULL,20070512102759),
 ('320432','ECAV30','30 Foot High - Vanguard Series Flagpole - Clear Anodized','1106.00','185.000',0,100,0,NULL,20070512102759),
 ('320433','ECV30','30 Foot High - Vanguard Series Flagpole - Clear Anodized','1157.00','195.000',0,100,0,NULL,20070512102759),
 ('320434','ECSAV35','35 Foot High - Vanguard Series Flagpole - Clear Anodized','1074.00','160.000',0,100,0,NULL,20070512102759),
 ('320435','ECXV35','35 Foot High - Vanguard Series Flagpole - Clear Anodized','1184.00','190.000',0,100,0,NULL,20070512102759),
 ('320436','ECAV35','35 Foot High - Vanguard Series Flagpole - Clear Anodized','1320.00','245.000',0,100,0,NULL,20070512102759),
 ('320437','ECV35','35 Foot High - Vanguard Series Flagpole - Clear Anodized','1482.00','255.000',0,100,0,NULL,20070512102759),
 ('320438','ECXV40','40 Foot High - Vanguard Series Flagpole - Clear Anodized','1658.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320439','ECAV40','40 Foot High - Vanguard Series Flagpole - Clear Anodized','1884.00','300.000',0,100,0,NULL,20070512102759),
 ('320440','ECV40','40 Foot High - Vanguard Series Flagpole - Clear Anodized','2015.00','317.000',0,100,0,NULL,20070512102759),
 ('320441','ECXV20','20 Foot High - Vanguard Series Flagpole - Bronze Anodized','710.00','92.000',0,100,1,NULL,20070512102759),
 ('320442','ECV20','20 Foot High - Vanguard Series Flagpole - Bronze Anodized','814.00','118.000',0,100,1,NULL,20070512102759),
 ('320443','ECXV25','25 Foot High - Vanguard Series Flagpole - Bronze Anodized','793.00','113.000',0,100,1,NULL,20070512102759),
 ('320444','ECXAV25','25 Foot High - Vanguard Series Flagpole - Bronze Anodized','883.00','123.000',0,100,1,NULL,20070512102759),
 ('320445','ECV25','25 Foot High - Vanguard Series Flagpole - Bronze Anodized','1091.00','160.000',0,100,0,NULL,20070512102759),
 ('320446','ECXV30','30 Foot High - Vanguard Series Flagpole - Bronze Anodized','871.00','128.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320447','ECXAV30','30 Foot High - Vanguard Series Flagpole - Bronze Anodized','969.00','138.000',0,100,1,NULL,20070512102759),
 ('320448','ECAV30','30 Foot High - Vanguard Series Flagpole - Bronze Anodized','1118.00','185.000',0,100,0,NULL,20070512102759),
 ('320449','ECV30','30 Foot High - Vanguard Series Flagpole - Bronze Anodized','1184.00','195.000',0,100,0,NULL,20070512102759),
 ('320450','ECSAV35','35 Foot High - Vanguard Series Flagpole - Bronze Anodized','1100.00','160.000',0,100,0,NULL,20070512102759),
 ('320451','ECXV35','35 Foot High - Vanguard Series Flagpole - Bronze Anodized','1210.00','190.000',0,100,0,NULL,20070512102759),
 ('320452','ECAV35','35 Foot High - Vanguard Series Flagpole - Bronze Anodized','1365.00','245.000',0,100,0,NULL,20070512102759),
 ('320453','ECV35','35 Foot High - Vanguard Series Flagpole - Bronze Anodized','1527.00','255.000',0,100,0,NULL,20070512102759),
 ('320454','ECXV40','40 Foot High - Vanguard Series Flagpole - Bronze Anodized','1696.00','267.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320455','ECAV40','40 Foot High - Vanguard Series Flagpole - Bronze Anodized','1937.00','300.000',0,100,0,NULL,20070512102759),
 ('320456','ECV40','40 Foot High - Vanguard Series Flagpole - Bronze Anodized','2066.00','317.000',0,100,0,NULL,20070512102759),
 ('320473','ECX20IH','20 Foot High - Deluxe IH Series Flagpole - Satin','793.00','92.000',0,100,1,NULL,20070512102759),
 ('320474','EC20IH','20 Foot High - Deluxe IH Series Flagpole - Satin','898.00','118.000',0,100,1,NULL,20070512102759),
 ('320475','ECX25IH','25 Foot High - Deluxe IH Series Flagpole - Satin','866.00','113.000',0,100,1,NULL,20070512102759),
 ('320476','ECXA25IH','25 Foot High - Deluxe IH Series Flagpole - Satin','956.00','123.000',0,100,1,NULL,20070512102759),
 ('320477','EC25IH','25 Foot High - Deluxe IH Series Flagpole - Satin','1346.00','150.000',0,100,0,NULL,20070512102759),
 ('320478','ECX30IH','30 Foot High - Deluxe IH Series Flagpole - Satin','930.00','128.000',0,100,1,NULL,20070512102759),
 ('320479','ECXA30IH','30 Foot High - Deluxe IH Series Flagpole - Satin','1027.00','138.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320480','ECA30IH','30 Foot High - Deluxe IH Series Flagpole - Satin','1559.00','185.000',0,100,0,NULL,20070512102759),
 ('320481','EC30IH','30 Foot High - Deluxe IH Series Flagpole - Satin','1606.00','195.000',0,100,0,NULL,20070512102759),
 ('320482','ECSA35IH','35 Foot High - Deluxe IH Series Flagpole - Satin','1139.00','160.000',0,100,0,NULL,20070512102759),
 ('320483','ECX35IH','35 Foot High - Deluxe IH Series Flagpole - Satin','1594.00','190.000',0,100,0,NULL,20070512102759),
 ('320484','ECA35IH','35 Foot High - Deluxe IH Series Flagpole - Satin','1683.00','245.000',0,100,0,NULL,20070512102759),
 ('320485','EC35IH','35 Foot High - Deluxe IH Series Flagpole - Satin','1880.00','255.000',0,100,0,NULL,20070512102759),
 ('320486','ECX40IH','40 Foot High - Deluxe IH Series Flagpole - Satin','2028.00','267.000',0,100,0,NULL,20070512102759),
 ('320487','ECA40IH','40 Foot High - Deluxe IH Series Flagpole - Satin','2281.00','300.000',0,100,0,NULL,20070512102759),
 ('320488','EC40IH','40 Foot High - Deluxe IH Series Flagpole - Satin','2353.00','317.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320489','EC45IH','45 Foot High - Deluxe IH Series Flagpole - Satin','2470.00','342.000',0,100,0,NULL,20070512102759),
 ('320490','ECX50IH','50 Foot High - Deluxe IH Series Flagpole - Satin','2599.00','360.000',0,100,0,NULL,20070512102759),
 ('320491','EC50IH','50 Foot High - Deluxe IH Series Flagpole - Satin','3185.00','410.000',0,100,0,NULL,20070512102759),
 ('320492','ECX60IH','60 Foot High - Deluxe IH Series Flagpole - Satin','3737.00','520.000',0,100,0,NULL,20070512102759),
 ('320493','ECXA60IH','60 Foot High - Deluxe IH Series Flagpole - Satin','4615.00','585.000',0,100,0,NULL,20070512102759),
 ('320494','EC60IH','60 Foot High - Deluxe IH Series Flagpole - Satin','5686.00','665.000',0,100,0,NULL,20070512102759),
 ('320495','ECX70IH','70 Foot High - Deluxe IH Series Flagpole - Satin','5198.00','695.000',0,100,0,NULL,20070512102759),
 ('320496','EC70IH','70 Foot High - Deluxe IH Series Flagpole - Satin','6271.00','760.000',0,100,0,NULL,20070512102759),
 ('320497','EC80IH','80 Foot High - Deluxe IH Series Flagpole - Satin','8056.00','1020.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320498','ECX20IH','20 Foot High - Deluxe IH Series Flagpole - Clear Anodized','872.00','92.000',0,100,1,NULL,20070512102759),
 ('320499','EC20IH','20 Foot High - Deluxe IH Series Flagpole - Clear Anodized','976.00','118.000',0,100,1,NULL,20070512102759),
 ('320500','ECX25IH','25 Foot High - Deluxe IH Series Flagpole - Clear Anodized','950.00','113.000',0,100,1,NULL,20070512102759),
 ('320501','ECXA25IH','25 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1040.00','123.000',0,100,1,NULL,20070512102759),
 ('320502','EC25IH','25 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1443.00','150.000',0,100,0,NULL,20070512102759),
 ('320503','ECX30IH','30 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1027.00','128.000',0,100,1,NULL,20070512102759),
 ('320504','ECXA30IH','30 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1126.00','138.000',0,100,1,NULL,20070512102759),
 ('320505','ECA30IH','30 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1678.00','185.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320506','EC30IH','30 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1723.00','195.000',0,100,0,NULL,20070512102759),
 ('320507','ECSA35IH','35 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1255.00','160.000',0,100,0,NULL,20070512102759),
 ('320508','ECX35IH','35 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1723.00','190.000',0,100,0,NULL,20070512102759),
 ('320509','ECA35IH','35 Foot High - Deluxe IH Series Flagpole - Clear Anodized','1840.00','245.000',0,100,0,NULL,20070512102759),
 ('320510','EC35IH','35 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2035.00','255.000',0,100,0,NULL,20070512102759),
 ('320511','ECX40IH','40 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2197.00','267.000',0,100,0,NULL,20070512102759),
 ('320512','ECA40IH','40 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2476.00','300.000',0,100,0,NULL,20070512102759),
 ('320513','EC40IH','40 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2548.00','317.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320514','EC45IH','45 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2685.00','342.000',0,100,0,NULL,20070512102759),
 ('320515','ECX50IH','50 Foot High - Deluxe IH Series Flagpole - Clear Anodized','2841.00','360.000',0,100,0,NULL,20070512102759),
 ('320516','EC50IH','50 Foot High - Deluxe IH Series Flagpole - Clear Anodized','3477.00','410.000',0,100,0,NULL,20070512102759),
 ('320517','ECX60IH','60 Foot High - Deluxe IH Series Flagpole - Clear Anodized','4088.00','520.000',0,100,0,NULL,20070512102759),
 ('320518','ECXA60IH','60 Foot High - Deluxe IH Series Flagpole - Clear Anodized','4964.00','585.000',0,100,0,NULL,20070512102759),
 ('320519','EC60IH','60 Foot High - Deluxe IH Series Flagpole - Clear Anodized','6101.00','665.000',0,100,0,NULL,20070512102759),
 ('320520','ECX70IH','70 Foot High - Deluxe IH Series Flagpole - Clear Anodized','5601.00','695.000',0,100,0,NULL,20070512102759),
 ('320521','EC70IH','70 Foot High - Deluxe IH Series Flagpole - Clear Anodized','6751.00','760.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320522','EC80IH','80 Foot High - Deluxe IH Series Flagpole - Clear Anodized','8602.00','1020.000',0,100,0,NULL,20070512102759),
 ('320523','ECX20IH','20 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','883.00','92.000',0,100,1,NULL,20070512102759),
 ('320524','EC20IH','20 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','988.00','118.000',0,100,1,NULL,20070512102759),
 ('320525','ECX25IH','25 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','976.00','113.000',0,100,1,NULL,20070512102759),
 ('320526','ECXA25IH','25 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1065.00','123.000',0,100,1,NULL,20070512102759),
 ('320527','EC25IH','25 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1463.00','150.000',0,100,0,NULL,20070512102759),
 ('320528','ECX30IH','30 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1053.00','128.000',0,100,1,NULL,20070512102759),
 ('320529','ECXA30IH','30 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1151.00','138.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320530','ECA30IH','30 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1703.00','185.000',0,100,0,NULL,20070512102759),
 ('320531','EC30IH','30 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1749.00','195.000',0,100,0,NULL,20070512102759),
 ('320532','ECSA35IH','35 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1282.00','160.000',0,100,0,NULL,20070512102759),
 ('320533','ECX35IH','35 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1761.00','190.000',0,100,0,NULL,20070512102759),
 ('320534','ECA35IH','35 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','1879.00','245.000',0,100,0,NULL,20070512102759),
 ('320535','EC35IH','35 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2074.00','255.000',0,100,0,NULL,20070512102759),
 ('320536','ECX40IH','40 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2242.00','267.000',0,100,0,NULL,20070512102759),
 ('320537','ECA40IH','40 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2528.00','300.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320538','EC40IH','40 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2598.00','317.000',0,100,0,NULL,20070512102759),
 ('320539','EC45IH','45 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2742.00','342.000',0,100,0,NULL,20070512102759),
 ('320540','ECX50IH','50 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','2905.00','360.000',0,100,0,NULL,20070512102759),
 ('320541','EC50IH','50 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','3554.00','410.000',0,100,0,NULL,20070512102759),
 ('320542','ECX60IH','60 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','4178.00','520.000',0,100,0,NULL,20070512102759),
 ('320543','ECXA60IH','60 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','5056.00','585.000',0,100,0,NULL,20070512102759),
 ('320544','EC60IH','60 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','6205.00','665.000',0,100,0,NULL,20070512102759),
 ('320545','ECX70IH','70 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','5717.00','695.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320546','EC70IH','70 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','6887.00','760.000',0,100,0,NULL,20070512102759),
 ('320547','EC80IH','80 Foot High - Deluxe IH Series Flagpole - Bronze Anodized','8758.00','1020.000',0,100,0,NULL,20070512102759),
 ('323430','WT12','12 Foot High - White Titan Sectional Pole 3 Sections  White Steel','50.00','10.000',1,100,1,NULL,20070512102759),
 ('323431','WT18','18 Foot High - White Titan Sectional Pole 4 Sections  White Steel','70.00','16.000',1,100,1,NULL,20070512102759),
 ('323432','WT22','22 Foot High - White Titan Sectional Pole 5 Sections  White Steel','108.00','22.000',1,100,1,NULL,20070512102759),
 ('330007','SB103','Aluminum Ball Ornament - Outdoor - Silver Anodized - 3 in. Dia.','20.00','0.400',2,100,1,NULL,20070512102759),
 ('330008','SB104','Aluminum Ball Ornament - Outdoor - Silver Anodized - 4 in. Dia.','26.00','0.650',2,100,1,NULL,20070512102759),
 ('330009','SB105','Aluminum Ball Ornament - Outdoor - Silver Anodized - 5 in. Dia.','32.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330010','SB106','Aluminum Ball Ornament - Outdoor - Silver Anodized - 6 in. Dia.','38.00','1.300',2,100,1,NULL,20070512102759),
 ('330011','SB108','Aluminum Ball Ornament - Outdoor - Silver Anodized - 8 in. Dia.','64.00','2.050',2,300,1,NULL,20070512102759),
 ('330012','SB110','Aluminum Ball Ornament - Outdoor - Silver Anodized - 10 in. Dia.','116.00','2.800',2,300,1,NULL,20070512102759),
 ('330013','SB112','Aluminum Ball Ornament - Outdoor - Silver Anodized - 12 in. Dia.','142.00','3.850',2,300,1,NULL,20070512102759),
 ('340000','ST-1-38','ST-1 Series - 1-3/8 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','1.000',2,100,1,NULL,20070512102759),
 ('340001','ST-1-12','ST-1 Series - 1-1/2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','1.000',2,100,1,NULL,20070512102759),
 ('340002','ST-1-34','ST-1 Series - 1-3/4 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','0.950',2,100,1,NULL,20070512102759),
 ('340003','ST-1-16','ST-1 Series - 1-15/16 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340004','ST-1-20','ST-1 Series - 2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','0.800',2,100,1,NULL,20070512102759),
 ('340005','ST-1-38','ST-1 Series - 1-3/8 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759),
 ('340006','ST-1-12','ST-1 Series - 1-1/2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759),
 ('340007','ST-1-34','ST-1 Series - 1-3/4 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','0.950',2,100,1,NULL,20070512102759),
 ('340008','ST-1-16','ST-1 Series - 1-15/16 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759),
 ('340009','ST-1-20','ST-1 Series - 2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759),
 ('340010','ST-1-38','ST-1 Series - 1-3/8 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759),
 ('340011','ST-1-12','ST-1 Series - 1-1/2 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340012','ST-1-34','ST-1 Series - 1-3/4 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','0.950',2,100,1,NULL,20070512102759),
 ('340013','ST-1-16','ST-1 Series - 1-15/16 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759),
 ('340014','ST-1-20','ST-1 Series - 2 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759),
 ('340015','ST-1-38','ST-1 Series - 1-3/8 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759),
 ('340016','ST-1-12','ST-1 Series - 1-1/2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','1.000',2,100,1,NULL,20070512102759),
 ('340017','ST-1-34','ST-1 Series - 1-3/4 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','0.950',2,100,1,NULL,20070512102759),
 ('340018','ST-1-16','ST-1 Series - 1-15/16 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759),
 ('340019','ST-1-20','ST-1 Series - 2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340040','ST-3','ST-32 Series - 1-7/8 in. Dia. Pole - Silver - Ext Halyard - Double Pulley','35.00','1.900',2,100,1,NULL,20070512102759),
 ('340041','ST-2','ST-32 Series - 2-3/8 in. Dia. Pole - Silver - Ext Halyard - Double Pulley','35.00','1.650',2,100,1,NULL,20070512102759),
 ('340042','ST-3','ST-32 Series - 1-7/8 in. Dia. Pole - Bronze - Ext Halyard - Double Pulley','39.00','1.900',2,100,1,NULL,20070512102759),
 ('340043','ST-2','ST-32 Series - 2-3/8 in. Dia. Pole - Bronze - Ext Halyard - Double Pulley','39.00','1.650',2,100,1,NULL,20070512102759),
 ('340044','ST-3','ST-32 Series - 1-7/8 in. Dia. Pole - White - Ext Halyard - Double Pulley','39.00','1.900',2,100,1,NULL,20070512102759),
 ('340045','ST-2','ST-32 Series - 2-3/8 in. Dia. Pole - White - Ext Halyard - Double Pulley','39.00','1.650',2,100,1,NULL,20070512102759),
 ('340046','ST-3','ST-32 Series - 1-7/8 in. Dia. Pole - Black - Ext Halyard - Double Pulley','39.00','1.900',2,100,1,NULL,20070512102759),
 ('340047','ST-2','ST-32 Series - 2-3/8 in. Dia. Pole - Black - Ext Halyard - Double Pulley','39.00','1.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340056','OTH','OT Series - 2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','18.00','0.550',2,100,1,NULL,20070512102759),
 ('340057','OT1','OT Series - 2-3/8 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','25.00','0.950',2,100,1,NULL,20070512102759),
 ('340058','OT25','OT Series - 2-1/2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','29.00','0.950',2,100,1,NULL,20070512102759),
 ('340059','OT25','OT Series - 2-3/4 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','29.00','1.500',2,100,1,NULL,20070512102759),
 ('340060','OT3','OT Series - 3 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','29.00','1.250',2,100,1,NULL,20070512102759),
 ('340061','OT35','OT Series - 3-1/2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','34.00','1.750',2,100,1,NULL,20070512102759),
 ('340062','OTH','OT Series - 2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','20.00','0.550',2,100,1,NULL,20070512102759),
 ('340063','OT1','OT Series - 2-3/8 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','28.00','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340064','OT25','OT Series - 2-1/2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','32.00','0.950',2,100,1,NULL,20070512102759),
 ('340065','OT25','OT Series - 2-3/4 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','32.00','1.500',2,100,1,NULL,20070512102759),
 ('340066','OT3','OT Series - 3 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','32.00','1.250',2,100,1,NULL,20070512102759),
 ('340067','OT35','OT Series - 3-1/2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','37.00','1.750',2,100,1,NULL,20070512102759),
 ('340068','OTH','OT Series - 2 in. Dia. Pole - White - Ext Halyard - Single Pulley','20.00','0.550',2,100,1,NULL,20070512102759),
 ('340069','OT1','OT Series - 2-3/8 in. Dia. Pole - White - Ext Halyard - Single Pulley','28.00','0.950',2,100,1,NULL,20070512102759),
 ('340070','OT25','OT Series - 2-1/2 in. Dia. Pole - White - Ext Halyard - Single Pulley','32.00','0.950',2,100,1,NULL,20070512102759),
 ('340071','OT25','OT Series - 2-3/4 in. Dia. Pole - White - Ext Halyard - Single Pulley','32.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340072','OT3','OT Series - 3 in. Dia. Pole - White - Ext Halyard - Single Pulley','32.00','1.250',2,100,1,NULL,20070512102759),
 ('340073','OT35','OT Series - 3-1/2 in. Dia. Pole - White - Ext Halyard - Single Pulley','37.00','1.750',2,100,1,NULL,20070512102759),
 ('340074','OTH','OT Series - 2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','20.00','0.550',2,100,1,NULL,20070512102759),
 ('340075','OT1','OT Series - 2-3/8 in. Dia. Pole - Black - Ext Halyard - Single Pulley','28.00','0.950',2,100,1,NULL,20070512102759),
 ('340076','OT25','OT Series - 2-1/2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','32.00','0.950',2,100,1,NULL,20070512102759),
 ('340077','OT25','OT Series - 2-3/4 in. Dia. Pole - Black - Ext Halyard - Single Pulley','32.00','1.500',2,100,1,NULL,20070512102759),
 ('340078','OT3','OT Series - 3 in. Dia. Pole - Black - Ext Halyard - Single Pulley','32.00','1.250',2,100,1,NULL,20070512102759),
 ('340079','OT35','OT Series - 3-1/2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','37.00','1.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340104','RTC-1-1','RTC-1 Series - 2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','61.00','1.600',2,100,1,NULL,20070512102759),
 ('340105','RTC-1-238','RTC-1 Series - 2-3/8 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','61.00','1.900',2,100,1,NULL,20070512102759),
 ('340106','RTC-1-1','RTC-1 Series - 2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','68.00','1.600',2,100,1,NULL,20070512102759),
 ('340107','RTC-1-238','RTC-1 Series - 2-3/8 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','68.00','1.900',2,100,1,NULL,20070512102759),
 ('340108','RTC-1-1','RTC-1 Series - 2 in. Dia. Pole - White - Ext Halyard - Single Pulley','68.00','1.600',2,100,1,NULL,20070512102759),
 ('340109','RTC-1-238','RTC-1 Series - 2-3/8 in. Dia. Pole - White - Ext Halyard - Single Pulley','68.00','1.900',2,100,1,NULL,20070512102759),
 ('340110','RTC-1-1','RTC-1 Series - 2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','68.00','1.600',2,100,1,NULL,20070512102759),
 ('340111','RTC-1-238','RTC-1 Series - 2-3/8 in. Dia. Pole - Black - Ext Halyard - Single Pulley','68.00','1.900',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340136','RTS-1-125','RTS-1 Series - 3-1/2 in. Dia. Pole - Silver - Ext Halyard - Single Pulley','47.00','1.850',2,100,1,NULL,20070512102759),
 ('340137','RTS-1-125','RTS-1 Series - 3-1/2 in. Dia. Pole - Bronze - Ext Halyard - Single Pulley','51.00','1.850',2,100,1,NULL,20070512102759),
 ('340138','RTS-1-125','RTS-1 Series - 3-1/2 in. Dia. Pole - White - Ext Halyard - Single Pulley','51.00','1.850',2,100,1,NULL,20070512102759),
 ('340139','RTS-1-125','RTS-1 Series - 3-1/2 in. Dia. Pole - Black - Ext Halyard - Single Pulley','51.00','1.850',2,100,1,NULL,20070512102759),
 ('340152','HDT','HDT Series - 5-1/2 in. Dia. Pole - Silver - Ext Halyard - Double Pulley','116.00','4.800',2,100,1,NULL,20070512102759),
 ('340153','HDT','HDT Series - 5-1/2 in. Dia. Pole - Bronze - Ext Halyard - Double Pulley','126.00','4.800',2,100,1,NULL,20070512102759),
 ('340154','HDT','HDT Series - 5-1/2 in. Dia. Pole - White - Ext Halyard - Double Pulley','126.00','4.800',2,100,1,NULL,20070512102759),
 ('340155','HDT','HDT Series - 5-1/2 in. Dia. Pole - Black - Ext Halyard - Double Pulley','126.00','4.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350000','CL6','Cleats - Standard Cast Aluminum - Silver - 6 in.','6.30','0.250',2,100,1,NULL,20070512102759),
 ('350001','CL9','Cleats - Standard Cast Aluminum - Silver - 9 in.','8.40','0.550',2,100,1,NULL,20070512102759),
 ('350002','CL6','Cleats - Standard Cast Aluminum - Bronze - 6 in.','7.60','0.250',2,100,1,NULL,20070512102759),
 ('350003','CL9','Cleats - Standard Cast Aluminum - Bronze - 9 in.','10.00','0.550',2,100,1,NULL,20070512102759),
 ('350004','CL6','Cleats - Standard Cast Aluminum - White - 6 in.','7.60','0.250',2,100,1,NULL,20070512102759),
 ('350005','CL9','Cleats - Standard Cast Aluminum - White - 9 in.','10.00','0.550',2,100,1,NULL,20070512102759),
 ('350006','CL6','Cleats - Standard Cast Aluminum - Black - 6 in.','7.60','0.250',2,100,1,NULL,20070512102759),
 ('350007','CL9','Cleats - Standard Cast Aluminum - Black - 9 in.','10.00','0.550',2,100,1,NULL,20070512102759),
 ('350008','CLC','Cleats - Light Duty Cast Aluminum - Silver - 4-1/2 in.','2.80','0.040',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350009','CLH','Cleats - Light Duty Cast Aluminum - Silver - 1 in.','3.20','0.055',2,100,1,NULL,20070512102759),
 ('350010','CLC','Cleats - Light Duty Cast Aluminum - Bronze - 4-1/2 in.','3.20','0.040',2,100,1,NULL,20070512102759),
 ('350011','CLH','Cleats - Light Duty Cast Aluminum - Bronze - 1 in.','3.70','0.055',2,100,1,NULL,20070512102759),
 ('350012','CLC','Cleats - Light Duty Cast Aluminum - White - 4-1/2 in.','3.20','0.040',2,100,1,NULL,20070512102759),
 ('350013','CLH','Cleats - Light Duty Cast Aluminum - White - 1 in.','3.70','0.055',2,100,1,NULL,20070512102759),
 ('350014','CLC','Cleats - Light Duty Cast Aluminum - Black - 4-1/2 in.','3.20','0.040',2,100,1,NULL,20070512102759),
 ('350015','CLH','Cleats - Light Duty Cast Aluminum - Black - 1 in.','3.70','0.055',2,100,1,NULL,20070512102759),
 ('350046','CBC-335','Cleat Cover Box - Cylinder Lock - Clear- Fits Pole Dia. 3 in. to 3-1/2 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350047','CBC-412','Cleat Cover Box - Cylinder Lock - Clear- Fits Pole Dia. 4 in. to 12 in.','97.00','5.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350048','CB-335','Cleat Cover Box - Padlock - Clear- Fits Pole Dia. 3 in. to 3-1/2 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350049','CB-412','Cleat Cover Box - Padlock - Clear- Fits Pole Dia. 4 in. to 12 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350054','CBC-335','Cleat Cover Box - Cylinder Lock - White- Fits Pole Dia. 3 in. to 3-1/2 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350055','CBC-412','Cleat Cover Box - Cylinder Lock - White- Fits Pole Dia. 4 in. to 12 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350056','CB-335','Cleat Cover Box - Padlock - White- Fits Pole Dia. 3 in. to 3-1/2 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350057','CB-412','Cleat Cover Box - Padlock - White- Fits Pole Dia. 4 in. to 12 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350058','CBC-335','Cleat Cover Box - Cylinder Lock - Black- Fits Pole Dia. 3 in. to 3-1/2 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350059','CBC-412','Cleat Cover Box - Cylinder Lock - Black- Fits Pole Dia. 4 in. to 12 in.','97.00','5.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350060','CB-335','Cleat Cover Box - Padlock - Black- Fits Pole Dia. 3 in. to 3-1/2 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350061','CB-412','Cleat Cover Box - Padlock - Black- Fits Pole Dia. 4 in. to 12 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350178','PH6','Halyard - Solid Braided pylene - White - 3/16 in. Dia. (Price per Foot)','0.20','0.010',2,100,1,NULL,20070512102759),
 ('350179','PH8','Halyard - Solid Braided pylene - White - 1/4 in. Dia. (Price per Foot)','0.22','0.011',2,100,1,NULL,20070512102759),
 ('350183','PH6','Halyard - Solid Braided pylene - Silver - 3/16 in. Dia. (Price per Foot)','0.22','0.010',2,100,1,NULL,20070512102759),
 ('350184','PH8','Halyard - Solid Braided pylene - Silver - 1/4 in. Dia. (Price per Foot)','0.24','0.011',2,100,1,NULL,20070512102759),
 ('350185','PH10','Halyard - Solid Braided pylene - Silver - 5/16 in. Dia. (Price per Foot)','0.30','0.018',2,100,1,NULL,20070512102759),
 ('350187','PH6','Halyard - Solid Braided pylene - Bronze - 3/16 in. Dia. (Price per Foot)','0.22','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350188','PH8','Halyard - Solid Braided pylene - Bronze - 1/4 in. Dia. (Price per Foot)','0.24','0.011',2,100,1,NULL,20070512102759),
 ('350191','PH6','Halyard - Solid Braided pylene - Black - 3/16 in. Dia. (Price per Foot)','0.22','0.010',2,100,1,NULL,20070512102759),
 ('350192','PH8','Halyard - Solid Braided pylene - Black - 1/4 in. Dia. (Price per Foot)','0.24','0.011',2,100,1,NULL,20070512102759),
 ('350193','PH10','Halyard - Solid Braided pylene - Black - 5/16 in. Dia. (Price per Foot)','0.30','0.018',2,100,1,NULL,20070512102759),
 ('350194','PH12','Halyard - Solid Braided pylene - Black - 3/8 in. Dia. (Price per Foot)','0.36','0.021',2,100,1,NULL,20070512102759),
 ('350212','NWCH6','Halyard - Nylon ter - White - 3/16 in. Dia. (Price per Foot)','0.48','0.031',2,100,1,NULL,20070512102759),
 ('350213','NWCH8','Halyard - Nylon ter - White - 1/4 in. Dia. (Price per Foot)','0.52','0.034',2,100,1,NULL,20070512102759),
 ('350216','NWCH6','Halyard - Nylon ter - Silver - 3/16 in. Dia. (Price per Foot)','0.50','0.031',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350217','NWCH8','Halyard - Nylon ter - Silver - 1/4 in. Dia. (Price per Foot)','0.54','0.034',2,100,1,NULL,20070512102759),
 ('350218','NWCH10','Halyard - Nylon ter - Silver - 5/16 in. Dia. (Price per Foot)','0.64','0.039',2,100,1,NULL,20070512102759),
 ('350219','NWCH12','Halyard - Nylon ter - Silver - 3/8 in. Dia. (Price per Foot)','0.86','0.045',2,100,1,NULL,20070512102759),
 ('350220','NWCH6','Halyard - Nylon ter - Bronze - 3/16 in. Dia. (Price per Foot)','0.50','0.031',2,100,1,NULL,20070512102759),
 ('350221','NWCH8','Halyard - Nylon ter - Bronze - 1/4 in. Dia. (Price per Foot)','0.54','0.034',2,100,1,NULL,20070512102759),
 ('350224','NWCH6','Halyard - Nylon ter - Black - 3/16 in. Dia. (Price per Foot)','0.50','0.031',2,100,1,NULL,20070512102759),
 ('350225','NWCH8','Halyard - Nylon ter - Black - 1/4 in. Dia. (Price per Foot)','0.54','0.034',2,100,1,NULL,20070512102759),
 ('350226','NWCH10','Halyard - Nylon ter - Black - 5/16 in. Dia. (Price per Foot)','0.64','0.039',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350227','NWCH12','Halyard - Nylon ter - Black - 3/8 in. Dia. (Price per Foot)','0.86','0.045',2,100,1,NULL,20070512102759),
 ('710001','WUSF24','\"24 in. wood staff with spear, 8 in. x 12 in. No Fray Cotton US Flag. (100-pack)\"','92.00','7.400',1,100,1,NULL,20070512102759),
 ('710002','AFP20F','Flagpole Set - Commander - Aluminum 20 ft.','98.95','14.100',1,200,1,NULL,20070512102759),
 ('710003','OPF-46','Olympic Flag - Nylon - 4 in. x 6 in. on Black Staff','3.00','0.350',2,100,1,NULL,20070512102759),
 ('710004','USA-Stick','USA Stick Flags-12 in. x 18 in. x 24 in. (100-pack)','33.00','5.500',1,100,1,NULL,20070512102759),
 ('710005','USA-Stick','100% Cotton 4 in. x 6 in. U.S. Stick Flag (100-pack)','49.00','7.500',1,100,1,NULL,20070512102759),
 ('710009','USA-Stick','\"12\"\" x 18\"\" 100% Cotton no fray, 30\"\" wood stick w/ball (12 pack)\"','16.08','3.000',1,100,1,NULL,20070512102759),
 ('710007','USA-Stick','\"12\"\" x 18\"\" 100% Cotton no fray, 30\"\" wood stick w/spear (12 pack)\"','15.60','3.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('710008','USA-Stick','\"12\"\" x 18\"\" 100% Cotton no fray, 30\"\" wood stick w/no tip (12 pack)\"','14.88','3.000',1,100,1,NULL,20070512102759),
 ('710020','USA-Stick','\"4\"\" x 6\"\" 100% no fray cotton stick flag, plastic staff no spear or ball (100-pack)\"','32.00','7.500',1,100,1,NULL,20070512102759),
 ('711008','GA-SET','New Georgia flag indoor set','159.95','21.000',1,200,2,NULL,20070512102759),
 ('715000','FM-35','Field Message Flag with \'\'OPEN\'\' message - Red','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715001','FM-35','Field Message Flag with \'\'OPEN\'\' message - Green','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715002','FM-35','Field Message Flag with \'\'OPEN\'\' message - Blue','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715003','FM-35','Field Message Flag with \'\'OPEN\'\' message - Orange','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715004','FM-35','Field Message Flag with \'\'OPEN HOUSE\'\'  message - Red','10.00','0.750',1,125,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('715005','FM-35','Field Message Flag with \'\'OPEN HOUSE\'\'  message - Green','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715006','FM-35','Field Message Flag with \'\'OPEN HOUSE\'\'  message - Blue','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715007','FM-35','Field Message Flag with \'\'OPEN HOUSE\'\'  message - Orange','10.00','0.750',1,125,1,NULL,20070512102759),
 ('715008','FM-35','Field Message Flag - U.S. Flag - Red/White/Blue','10.00','0.750',1,125,1,NULL,20070512102759),
 ('720001','BNR-B2.0','Portable Banner Series - Base - 2 ft  - Clearance Price','281.00','0.000',0,100,0,NULL,20070512102759),
 ('720002','BNR-B2.5','Portable Banner Series - Base - 2.5 ft','458.00','0.000',0,100,0,NULL,20070512102759),
 ('720003','BNR-3.0  ','Portable Banner Series - Base - 3 ft  - Clearance Price','342.00','0.000',0,100,0,NULL,20070512102759),
 ('720004','BNR-4.0  ','Portable Banner Series - Base - 4 ft','723.00','0.000',0,100,0,NULL,20070512102759),
 ('720005','BNR-P08','Portable Banner Series - Banner Pole - 8 ft','36.00','0.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('720006','BNR-P10','Portable Banner Series - Banner Pole - 10 ft','45.00','0.000',0,100,0,NULL,20070512102759),
 ('720007','BNR-P12','Portable Banner Series - Banner Pole - 12 ft','54.00','0.000',0,100,0,NULL,20070512102759),
 ('720008','BNR-P15','Portable Banner Series - Banner Pole - 15 ft','67.50','0.000',0,100,0,NULL,20070512102759),
 ('720009','BNRP-A2.0','Portable Banner Series - Banner Pole Arm - 2 ft','42.00','0.000',0,100,0,NULL,20070512102759),
 ('720010','BNRP-2.5  ','Portable Banner Series - Banner Pole Arm - 2.5 ft','46.50','0.000',0,100,0,NULL,20070512102759),
 ('720011','BNRP-3.0  ','Portable Banner Series - Banner Pole Arm - 3 ft','51.00','0.000',0,100,0,NULL,20070512102759),
 ('720012','BNRP-A2.0','Portable Banner Series - Banner Pole Arm (Double) - 2 ft','100.00','0.000',0,100,0,NULL,20070512102759),
 ('720013','BNRP-2.5  ','Portable Banner Series - Banner Pole Arm (Double) - 2.5 ft','104.00','0.000',0,100,0,NULL,20070512102759),
 ('720014','BNRP-3.0  ','Portable Banner Series - Banner Pole Arm (Double) - 3 ft','114.00','0.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('720015','BNR CAP-3','\"Portable Banner Series -  3 in. Cap 1/2\"\"-13 threading\"','56.00','0.000',0,100,0,NULL,20070512102759),
 ('720016','Ground Sleeve24','\"Portable Banner Series - Ground Sleeve 3\"\" PVC SCH40\"','8.92','0.000',0,100,0,NULL,20070512102759),
 ('720017','Ground Sleeve36','\"Portable Banner Series - Ground Sleeve 3\"\" PVC SCH40\"','13.38','0.000',0,100,0,NULL,20070512102759),
 ('720018','Paint Base','Portable Banner Series - Custom Color Base','35.00','0.000',0,100,0,NULL,20070512102759),
 ('720019','Paiint Pole','Portable Banner Series - Custom Color Pole','35.00','0.000',0,100,0,NULL,20070512102759),
 ('721001','FAR-F','USA Farming Flags (100-pack)','41.00','6.000',1,75,1,NULL,20070512102759),
 ('721002','FAR-F','USA Farming Flags (200-pack)','82.00','12.000',1,75,1,NULL,20070512102759),
 ('721003','FAR-F','USA Farming Flags (300-pack)','123.00','18.000',1,75,1,NULL,20070512102759),
 ('721004','FAR-F','USA Farming Flags (400-pack)','164.00','24.000',1,75,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('721005','FAR-F','USA Farming Flags (500-pack)','190.00','30.000',1,75,1,NULL,20070512102759),
 ('721006','FAR-F','USA Farming Flags (600-pack)','228.00','36.000',1,75,1,NULL,20070512102759),
 ('721007','FAR-F','USA Farming Flags (700-pack)','266.00','42.000',1,75,1,NULL,20070512102759),
 ('721008','FAR-F','USA Farming Flags (800-pack)','304.00','48.000',1,75,1,NULL,20070512102759),
 ('721009','FAR-F','USA Farming Flags (900-pack)','342.00','54.000',1,75,1,NULL,20070512102759),
 ('721010','FAR-F','USA Farming Flags (1000-pack)','360.00','60.000',1,75,1,NULL,20070512102759),
 ('721011','FAR-F','USA Farming Flags (2000-pack)','720.00','120.000',1,75,1,NULL,20070512102759),
 ('721012','FAR-F','USA Farming Flags (3000-pack)','1080.00','180.000',1,75,2,NULL,20070512102759),
 ('721013','FAR-F','USA Farming Flags (4000-pack)','1440.00','240.000',1,75,2,NULL,20070512102759),
 ('721014','FAR-F','USA Farming Flags (5000-pack)','1650.00','300.000',1,75,3,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('721015','FAR-F','USA Farming Flags (6000-pack)','1980.00','360.000',1,75,3,NULL,20070512102759),
 ('721016','FAR-F','USA Farming Flags (7000-pack)','2170.00','420.000',1,75,3,NULL,20070512102759),
 ('721017','FAR-F','USA Farming Flags (8000-pack)','2480.00','480.000',1,75,4,NULL,20070512102759),
 ('721018','FAR-F','USA Farming Flags (9000-pack)','2790.00','540.000',1,75,4,NULL,20070512102759),
 ('722000','OL-USA','USA Olympic 5 Ring Flag - 2 ft. x 3 ft.','36.00','0.400',1,100,1,NULL,20070512102759),
 ('722001','OL-USA','USA Olympic 5 Ring Flag - 3 ft. x 5 ft.','29.98','0.650',1,100,1,NULL,20070512102759),
 ('722002','OL-USA','USA Olympic 5 Ring Flag - 4 ft. x 6 ft.','58.00','0.950',1,100,1,NULL,20070512102759),
 ('722003','OL-USA','USA Olympic 5 Ring Flag - 5 ft. x 8 ft.','75.95','1.300',1,100,1,NULL,20070512102759),
 ('722004','OL-USA','USA Olympic 5 Ring Mini Flag 4 in. x 6 in.','1.25','0.250',2,100,1,NULL,20070512102759),
 ('722200','PFS-5/30','\"3 ft. x 5 ft. Bargain Poly flag set, full case of 30 ON SALE!\"','169.95','43.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722201','USN-35','\"U.S. Flag Set 3 ft. x 5 ft.  Nylon - 5\' x 1\"\" white aluminum pole\"','34.95','4.000',1,125,1,NULL,20070512102759),
 ('722202','USN-35','U.S. Flag Set 3 ft. x 5 ft. Economy -Polyester','24.95','0.000',0,100,0,NULL,20070512102759),
 ('722203','USN-35','\"U.S. Flag Set 3 ft. x 5 ft. Nylon Embroidered Stars - Sewn stripes - 6\' x 1\"\" Fiberglass pole/acorn  accessory\"','39.95','5.000',1,200,1,NULL,20070512102759),
 ('722205','USN-35','\"U.S. Flag Set 3 ft. x 5 ft. - 6\' x 1\"\" white fiberglass pole with NeverFurl hardware\"','59.00','5.000',1,200,1,NULL,20070512102759),
 ('722206','USN-35','\"U.S. Flag Set 3 ft. x 5 ft. nylon - 6\' x 1\"\" white aluminum pole with NeverFurl hardware - gold anodized ball\"','75.00','5.000',1,200,1,NULL,20070512102759),
 ('722204','USA-Stick','U.S. Stick Flags-12 in. x 18 in. x 30 in. (100-pack)','43.00','6.000',1,100,1,NULL,20070512102759),
 ('722214','CAR-FL','USA Car Flag (Best)','5.50','1.300',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722215','CAR-WIN','USA Car Window Flag (Better)','3.95','1.800',1,100,1,NULL,20070512102759),
 ('722216','RE-5','3 ft. x 5 ft. Long & Foster Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722217','5 ft-Flag','\"3 ft. x 5 ft. Weichert, Realtors  Flag\"','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722218','5 ft-Flag','3 ft. x 5 ft. Arvida Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722219','RE-5','3 ft. x 5 ft. Baird & Warner Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722220','PFS-5','3 ft. x 5 ft. Bargain polyester flag set ON SALE','5.95','0.650',1,100,1,NULL,20070512102759),
 ('722221','RE-5','3 ft. x 5 ft. GMAC Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722222','RE-5','3 ft. x 5 ft. Keller & Williams Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722223','RE-5','3 ft. x 5 ft. Northside Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722224','RE-5','3 ft. x 5 ft. Prudential  Flag','25.00','0.650',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722225','RE-5','\"3 ft. x 5 ft. Tarbell, Realtors Flag\"','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722226','5 ft-Flag','3 ft. x 5 ft. U.S. flag \'\'Sentinel\'\' made by Valley Forge','8.95','0.650',1,100,1,NULL,20070512102759),
 ('722227','BP-Flag','3 ft. x 5 ft. BP Oil flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722229','RE-5','3 ft. x 5 ft. Re/Max Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722230','CAN-ST','Canadian Stick Flag','25.00','0.060',1,100,1,NULL,20070512102759),
 ('722232','CCARD','Compliments Card for Farming Flag (100-pack)','5.00','0.400',1,100,1,NULL,20070512102759),
 ('722233','CCARD','Compliments Cards-Orange (100-pack)','5.00','0.040',1,100,1,NULL,20070512102759),
 ('722234','DB-01','\"Decorative Bows - Red, White & Blue\"','4.96','0.850',1,100,1,NULL,20070512102759),
 ('722235','DOC-B','Doc-Box Permit Posting System - without window','53.95','7.850',1,150,1,NULL,20070512102759),
 ('722236','HAL-FL','Halloween Flag-3 ft. x 5 ft.','25.00','0.650',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722237','HAL-ST','Halloween Stick Flags (100-pack)','32.00','6.000',1,100,1,NULL,20070512102759),
 ('722337','HAL-ST','Halloween Stick Flags (250-pack)','80.00','18.000',1,100,1,NULL,20070512102759),
 ('722338','HAL-ST','Halloween Stick Flags (500-pack)','150.00','36.000',1,100,1,NULL,20070512102759),
 ('722339','HAL-ST','Halloween Stick Flags (10000-pack)','28000.00','600.000',0,100,0,NULL,20070512102759),
 ('722238','OPEN-FL','\'\'Open\'\' Stick Flags 12 in. x 18 in. on Wooden staff - Blue (10-pack)','5.00','0.600',2,100,1,NULL,20070512102759),
 ('722239','OPEN-FL','\'\'Open\'\' Stick Flags 12 in. x 18 in. on Wooden staff - Red (10-pack)','5.00','0.600',2,100,1,NULL,20070512102759),
 ('722240','ROP-12','Rope Light Star 12 in.','12.95','0.750',1,100,1,NULL,20070512102759),
 ('722241','ROP-24','Rope Light Star 24 in.','26.95','5.100',1,100,1,NULL,20070512102759),
 ('722242','ROP-F','Rope Light Stars and Stripes Flag','39.95','6.300',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722243','Shell-Flag','3 ft. x 5 ft. Shell Oil Flag','25.00','0.650',1,100,1,NULL,20070512102759),
 ('722244','911','\"Special \"\"Never Forget\"\" Compliments Card (100-pack)\"','5.00','0.400',1,100,1,NULL,20070512102759),
 ('722245','USA-Stick','USA Stick Flag - 8 in. x 12 in. (100-pack)','30.00','4.000',1,100,1,NULL,20070512102759),
 ('722246','DOC-B','Doc-Box Permit Posting System - with window','53.95','7.850',1,150,1,NULL,20070512102759),
 ('730000','LIB-C','Liberty Series flag case in Walnut','79.96','9.100',1,100,1,NULL,20070512102759),
 ('730001','LIB-C','Liberty Series flag case in Solid Cherry','79.96','9.100',1,100,1,NULL,20070512102759),
 ('730002','CAP-C','Capitol Series flag case in Walnut','51.96','9.100',1,100,1,NULL,20070512102759),
 ('730003','CAP-C','Capitol Series flag case in Oak','51.96','9.100',1,100,1,NULL,20070512102759),
 ('730004','CAP-C','Capitol Series flag case in Cherry Wood','51.96','9.100',1,100,1,NULL,20070512102759),
 ('730005','PRE-C','Presidential flag case in Cherry Wood','199.96','9.100',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('730006','PRE-C','Presidential flag case in Walnut','143.96','9.100',1,100,1,NULL,20070512102759),
 ('730007','PRE-C','Presidential flag case in Oak','143.96','9.100',1,100,1,NULL,20070512102759),
 ('730008','PRE-C','Presidential flag case in Hardwood','143.96','7.500',1,100,1,NULL,20070512102759),
 ('730009','PAT-C','Patriot flag case in Oak','103.96','7.500',1,100,1,NULL,20070512102759),
 ('730010','TRP-C','Trooper Series flag case with cherry finish','55.96','7.500',1,100,1,NULL,20070512102759),
 ('730011','VET-C','Veteran Series flag case in oak','71.96','7.500',1,100,1,NULL,20070512102759),
 ('730012','HER-C','Heritage Flag Case in Walnut','159.96','9.100',1,100,1,NULL,20070512102759),
 ('730013','HER-C','Heritage Flag Case in Oak','159.96','9.100',1,100,1,NULL,20070512102759),
 ('730014','HER-C','Heritage Flag Case in Cherry Wood','159.96','9.100',1,100,1,NULL,20070512102759),
 ('730015','HER-C','Heritage Flag Case in Pine','79.96','7.950',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('730100','PED','Pedestal for Flag Cases','39.96','5.000',1,100,1,NULL,20070512102759),
 ('730101','PED-F','Full Length combination pedestal/urn for flag cases','79.96','0.000',0,100,0,NULL,20070512102759),
 ('010000','USA-1N','\"American Flag -Nylon - 12\"\" x 18\"\" \"','9.00','0.200',2,100,1,1,20070512102759),
 ('010003','USA-3N','American Flag - Nylon - 2 ft. x 3 ft.','10.00','0.300',2,100,1,1,20070512102759),
 ('010004','USA-4N','American Flag - Nylon - 2.5 ft. x 4 ft.','12.15','0.450',2,100,1,1,20070512102759),
 ('010005','USA-5N','American Flag - Nylon 3 ft. x 5 ft.','14.75','0.600',2,100,1,1,20070512102759),
 ('010006','USA-6N','American Flag - Nylon - 4 ft. x 6 ft.','21.75','0.850',2,100,1,1,20070512102759),
 ('010007','USA-8N','American Flag - Nylon - 5 ft. x 8 ft.','33.68','1.300',2,100,1,1,20070512102759),
 ('010008','USA-9N','American Flag - Nylon - 5 ft. x 9.5 ft.','49.50','1.500',2,100,1,1,20070512102759),
 ('010009','USA-10N','American Flag - Nylon - 6 ft. x 10 ft.','49.95','1.900',2,100,1,1,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010010','USA-12N','American Flag - Nylon - 8 ft. x 12 ft.','114.00','3.050',1,100,1,1,20070512102759),
 ('010011','USA-15N','American Flag -Nylon - 10 ft. x 15 ft.','178.00','4.400',1,100,1,1,20070512102759),
 ('010012','USA-19N','American Flag - Nylon - 10 ft. x 19 ft.','324.00','5.450',1,100,1,1,20070512102759),
 ('010013','USA-18N','American Flag - Nylon - 12 ft. x 18 ft.','240.00','6.500',1,100,1,1,20070512102759),
 ('010014','USA-25N','American Flag - Nylon - 15 ft. x 25 ft.','375.00','10.750',1,100,1,1,20070512102759),
 ('010015','USA-30N','American Flag - Nylon - 20 ft. x 30 ft.','495.00','16.200',1,100,1,1,20070512102759),
 ('010016','USA-38N','American Flag - Nylon - 20 ft. x 38 ft.','995.00','19.100',1,100,1,1,20070512102759),
 ('010017','USA-40N','American Flag - Nylon - 25 ft. x 40 ft.','1460.00','33.800',1,100,1,1,20070512102759),
 ('010018','USA-50N','American Flag - Nylon - 30 ft. x 50 ft.','1180.00','43.600',1,100,1,1,20070512102759),
 ('010019','USA-60N','American Flag - Nylon - 30 ft. x 60 ft.','1332.00','53.350',1,100,1,1,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010045','USA-5P','American Flag  2-ply Polyester - 3 ft. x 5 ft.','18.56','0.950',2,100,1,2,20070512102759),
 ('010046','USA-6P','American Flag  2-ply Polyester - 4 ft. x 6 ft.','28.25','1.400',2,100,1,2,20070512102759),
 ('010047','USA-8P','American Flag  2-ply Polyester - 5 ft. x 8 ft.','44.45','2.200',2,100,1,2,20070512102759),
 ('010048','USA-9P','American Flag  2-ply Polyester - 5 ft. x 9.5 ft.','54.50','2.800',2,100,1,2,20070512102759),
 ('010049','USA-10P','American Flag  2-ply Polyester - 6 ft. x 10 ft.','66.45','3.200',2,100,1,2,20070512102759),
 ('010050','USA-12P','American Flag  2-ply Polyester - 8 ft. x 12 ft.','145.00','5.100',1,100,1,2,20070512102759),
 ('010051','USA-15P','American Flag  2-ply Polyester - 10 ft. x 15 ft.','225.00','7.550',1,100,1,2,20070512102759),
 ('010052','USA-19P','American Flag  2-ply Polyester - 10 ft. x 19 ft.','390.00','9.000',1,100,1,2,20070512102759),
 ('010053','USA-18P','American Flag  2-ply Polyester - 12 ft. x 18 ft.','285.00','10.800',1,100,1,2,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010054','USA-25P','American Flag  2-ply Polyester - 15 ft. x 25 ft.','480.00','17.600',1,100,1,2,20070512102759),
 ('010055','USA-30P','American Flag  2-ply Polyester - 20 ft. x 30 ft.','675.00','31.300',1,100,1,2,20070512102759),
 ('010056','USA-38P','American Flag  2-ply Polyester - 20 ft. x 38 ft.','1210.00','37.700',1,100,1,2,20070512102759),
 ('010057','USA-40P','American Flag  2-ply Polyester - 25 ft. x 40 ft.','1542.00','50.000',1,100,1,2,20070512102759),
 ('010058','USA-50P','American Flag  2-ply Polyester - 30 ft. x 50 ft.','1402.00','82.000',1,100,1,2,20070512102759),
 ('010059','USA-60P','American Flag  2-ply Polyester - 30 ft. x 60 ft.','2025.00','92.000',1,100,1,2,20070512102759),
 ('010060','GSP3230','Valley Forge G-SPEC small nylon U.S. Flag - 2\'5\" X 4\'6\" (compare to NSN# 8345-00-753-3230)','28.57','1.000',2,100,1,4,20070512102759),
 ('010061','GSP3234','\"Valley Forge G-SPEC standard nylon U.S. Flag (3\'6\"\" x 6\'8\"\")\"  (compare to NSN# 8345-00-753-3234)','49.15','1.500',2,100,1,4,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010062','GSP3235','\"Valley Forge G-SPEC large nylon U.S. Flag (5\' x 9\'6\"\")\"  (compare to NSN# 8345-00-753-3235)','77.75','2.000',2,100,1,4,20070512102759),
 ('010063','GSP3231','Valley Forge G-SPEC giant nylon U.S. Flag (9\' x 17\')  (compare to NSN# 8345-00-753-3231)','270.65','8.000',2,100,1,4,20070512102759),
 ('010064','GSP6857','\"Valley Forge G-SPEC small cotton U.S. Flag (2\'5\"\" x 4\'6\"\")\"  (compare to NSN# 8345-00-682-6857)','30.72','1.000',2,100,1,4,20070512102759),
 ('010065','GSP6856','\"Valley Forge G-SPEC standard cotton U.S. Flag (3\'6\"\" x 6\'8\"\")\"  (compare to NSN# 8345-00682-6856)','51.35','2.000',2,100,1,4,20070512102759),
 ('010066','GSP3232','\"Valley Forge G-SPEC large cotton U.S. Flag  (5\' x 9\'6\"\")\"  (compare to NSN# 8345-00753-3232)','79.05','3.000',2,100,1,4,20070512102759),
 ('010067','GSP6858','Valley Forge G-SPEC giant cotton U.S. Flag (10\' x 19\')  (compare to NSN# 8345-00-682-6858)','393.70','10.000',1,100,1,4,20070512102759),
 ('010068','GSP5987','\"Valley Forge 7\' Indoor Presentation Set (pole hem, tassle, fringe)\"  compare to NSN# 8345-01-295-5987)','454.10','15.000',1,100,1,4,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010069','GSP6860','\"Valley Forge 9\' Indoor Presentation Set (pole hem, tassle, fringe)\"  (compare to NSN# 8345-00-682-6860)','530.62','18.000',1,100,1,4,20070512102759),
 ('010070','GSP3142','\"Valley Forge 12\"\" diameter weighted stand\"  (compare to NSN# 8345----130-3142)','114.13','10.000',1,100,1,4,20070512102759),
 ('010071','GSP3149','Valley Forge Cast brass tone ornamental spear  (compare to NSN# 8345-00130-3149)','55.07','5.000',1,100,1,4,20070512102759),
 ('010072','GSP3146','Valley Forge Cast brass tone ornamental eagle (compare to NSN# 8345-00-130-3146)','57.61','5.000',1,100,1,4,20070512102759),
 ('010073','GSP9277','Valley Forge 7 foot Oak flagpole with ferrule  (compare to NSN# 8345-00-295-9277)','88.88','10.000',1,100,1,4,20070512102759),
 ('010074','GSP3135','Valley Forge 9 foot Oak flagpole with ferrule  (compare to NSN# 8345-00-130-3135)','104.06','12.000',1,100,1,4,20070512102759),
 ('010166','IND-FA301','US Nylon Flag Set on Gold Aluminum Pole with Perched Eagle','164.00','19.650',1,200,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010168','IND-FA46','US Nylon Flag Set on Gold Aluminum Pole with Perched Eagle','200.00','20.250',1,200,1,NULL,20070512102759),
 ('010169','IND-FA303','US Nylon Flag Set on Gold Aluminum Pole with Perched Eagle','258.00','21.350',1,200,1,NULL,20070512102759),
 ('010170','IND-F300','US Nylon Flag Set on Oak Pole with Perched Eagle','124.00','12.700',1,200,1,NULL,20070512102759),
 ('010172','IND-FW301','US Nylon Flag Set on Oak Pole with Perched Eagle','170.00','21.900',1,200,1,NULL,20070512102759),
 ('010174','IND-FW-46','US Nylon Flag Set on Oak Pole with Perched Eagle','195.00','22.450',1,200,1,NULL,20070512102759),
 ('010175','IND-FN-5','Indoor/Parade - Nylon US Flag with Gold Fringe - 2 ft. x 3 ft.','44.00','0.450',2,100,1,NULL,20070512102759),
 ('010177','IND-FN-3','Indoor/Parade - Nylon US Flag with Gold Fringe - 3 ft. x 5 ft.','57.00','0.800',2,100,1,NULL,20070512102759),
 ('010179','IND-FN-46','Indoor/Parade - Nylon US Flag with Gold Fringe - 4 ft. x 6 ft.','74.00','1.100',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010180','IND-FN-7','Indoor/Parade - Nylon US Flag with Gold Fringe - 5 ft. x 8 ft.','139.00','1.650',2,100,1,NULL,20070512102759),
 ('010181','IND-FNH-5','Indoor/Parade - Nylon US Flag without Fringe - 2 ft. x 3 ft.','38.00','0.350',2,100,1,NULL,20070512102759),
 ('010182','IND-FNH-9','Indoor/Parade - Nylon US Flag without Fringe - 2-1/2 ft. x 4 ft.','47.00','0.450',2,100,1,NULL,20070512102759),
 ('010183','IND-FNH-3','Indoor/Parade - Nylon US Flag without Fringe - 3 ft. x 5 ft.','50.00','0.650',2,100,1,NULL,20070512102759),
 ('010184','IND-FNH-1','Indoor/Parade - Nylon US Flag without Fringe - 4-1/3 ft. x 5-1/2 ft.','65.00','0.850',2,100,1,NULL,20070512102759),
 ('010185','IND-FNH-46','Indoor/Parade - Nylon US Flag without Fringe - 4 ft. x 6 ft.','65.00','0.900',2,100,1,NULL,20070512102759),
 ('010186','IND-FNH-7','Indoor/Parade - Nylon US Flag without Fringe - 5 ft. x 8 ft.','128.00','1.350',2,100,1,NULL,20070512102759),
 ('010187','IND-GSF-3','Indoor/Parade - Nylon Georgia (2003) Flag with Gold Fringe - 3 ft. x 5 ft.','60.00','0.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010188','IND-GSF-4','Indoor/Parade - Nylon Georgia (2003) Flag with Gold Fringe - 4 ft. x 6 ft.','84.40','1.000',2,100,1,NULL,20070512102759),
 ('010189','IND-GSF-5','Indoor/Parade - Nylon Georgia (2003) Flag with Gold Fringe - 5 ft. x 8 ft.','130.00','2.000',1,100,1,NULL,20070512102759),
 ('010190','IND-GSF-3S','Georgia (2003) Nylon Flag Set - Oak Pole with perched eagle - 3 ft x 5 ft','170.00','20.000',2,100,1,NULL,20070512102759),
 ('010191','IND-GSF-4S','Georgia (2003) Nylon Flag Set - Oak Pole with perched eagle - 4 ft x 6 ft','200.00','21.000',1,100,1,NULL,20070512102759),
 ('010192','IND-GSF-5S','Georgia (2003) Nylon Flag Set - Oak Pole with perched eagle - 5 ft x 8 ft','260.00','22.000',1,100,1,NULL,20070512102759),
 ('010195','NF-1','\"4 in. x 6 iin. Endura Gloss U.S. Mini Flag 10\"\" plastic staff w/gold spear\"','3.00','0.025',2,100,1,NULL,20070512102759),
 ('010300','Herc35','3 ft. x 5 ft. Hercules American Flag','31.50','0.450',2,100,1,3,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('010301','Herc46','4 ft. x 6 ft. Hercules U.S. O/D Flag','43.50','0.700',2,100,1,3,20070512102759),
 ('010302','Herc58','5 ft. x 8 ft. Hercules U.S. O/D Flag','68.25','1.000',2,100,1,3,20070512102759),
 ('010303','Herc610','6 ft. x 10 ft. Hercules U.S. O/D Flag','90.00','1.500',2,100,1,3,20070512102759),
 ('010304','Herc812','8 ft. x 12 ft. Hercules U.S. O/D Flag','148.50','2.800',1,100,1,3,20070512102759),
 ('010305','Herc1015','10 ft. x 15 ft. Hercules U.S. O/D Flag','231.00','3.000',1,100,1,3,20070512102759),
 ('010306','Herc1218','12 ft. x 18 ft. Hercules U.S. O/D Flag','277.50','5.000',1,100,1,3,20070512102759),
 ('010307','Herc1525','15 ft. x 25 ft. Hercules U.S. O/D Flag','487.50','8.000',1,100,1,3,20070512102759),
 ('020007','ST-FL','3 ft. x 5 ft. Nylon Alabama O/D Flag','32.50','0.450',2,100,1,3,20070512102759),
 ('020009','ST-FL','4 ft. x 6 ft. Nylon Alabama O/D Flag','53.00','0.700',2,100,1,3,20070512102759),
 ('020010','ST-FL','12 ft. x 18 ft. Nylon Alabama O/D Flag','700.00','6.500',1,100,1,3,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020011','ST-FL','5 ft. x 8 ft. Nylon Alabama O/D Flag','82.90','1.000',2,100,1,3,20070512102759),
 ('020013','ST-FL','6 ft. x 10 ft. Nylon Alabama O/D Flag','172.00','1.550',2,100,1,3,20070512102759),
 ('020014','ST-FL','8 ft. x 12 ft. Nylon Alabama O/D Flag','245.00','2.850',1,100,1,3,20070512102759),
 ('020030','ST-FL','3 ft. x 5 ft. Nylon Alabama Flag w/Ph & Fr','61.50','0.600',2,100,1,3,20070512102759),
 ('020032','ST-FL','4 ft. x 6 ft. Nylon Alabama Flag w/Ph & Fr','90.80','0.950',2,100,1,3,20070512102759),
 ('020044','ST-FL','3 ft. x 5 ft. Nylon Alaska O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020046','ST-FL','4 ft. x 6 ft. Nylon Alaska O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020048','ST-FL','5 ft. x 8 ft. Nylon Alaska O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020050','ST-FL','6 ft. x 10 ft. Nylon Alaska O/D Flag','172.00','1.800',2,100,1,NULL,20070512102759),
 ('020051','ST-FL','8 ft. x 12 ft. Nylon Alaska O/D Flag','270.00','3.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020052','ST-FL','12 ft. x 18 ft. Nylon Alaska O/D Flag','500.00','6.800',1,100,1,NULL,20070512102759),
 ('020067','ST-FL','3 ft. x 5 ft. Nylon Alaska Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020069','ST-FL','4 ft. x 6 ft. Nylon Alaska Flag w/Ph & Fr','96.00','0.950',2,100,1,NULL,20070512102759),
 ('020081','ST-FL','3 ft. x 5 ft. Nylon Arizona O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020083','ST-FL','4 ft. x 6 ft. Nylon Arizona O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020085','ST-FL','5 ft. x 8 ft. Nylon Arizona O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020087','ST-FL','6 ft. x 10 ft. Nylon Arizona O/D Flag','172.00','1.800',2,100,1,NULL,20070512102759),
 ('020088','ST-FL','8 ft. x 12 ft. Nylon Arizona O/D Flag','555.00','2.600',1,100,1,NULL,20070512102759),
 ('020104','ST-FL','3 ft. x 5 ft. Nylon Arizona Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020106','ST-FL','4 ft. x 6 ft. Nylon Arizona Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020118','ST-FL','3 ft. x 5 ft. Nylon Arkansas O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020120','ST-FL','4 ft. x 6 ft. Nylon Arkansas O/D Flag','53.40','0.700',2,100,1,NULL,20070512102759),
 ('020122','ST-FL','5 ft. x 8 ft. Nylon Arkansas O/D Flag','82.90','1.000',2,100,1,NULL,20070512102759),
 ('020124','ST-FL','6 ft. x 10 ft. Nylon Arkansas O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('020125','ST-FL','8 ft. x 12 ft. Nylon Arkansas O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759),
 ('020126','ST-FL','12 ft. x 18 ft. Nylon Arkansas O/D Flag','560.00','6.600',1,100,1,NULL,20070512102759),
 ('020141','ST-FL','3 ft. x 5 ft. Nylon Arkansas Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020143','ST-FL','4 ft. x 6 ft. Nylon Arkansas Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('020155','ST-FL','3 ft. x 5 ft. Nylon California O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020157','ST-FL','4 ft. x 6 ft. Nylon California O/D Flag','64.90','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020159','ST-FL','5 ft. x 8 ft. Nylon California O/D Flag','97.40','1.000',2,100,1,NULL,20070512102759),
 ('020161','ST-FL','6 ft. x 10 ft. Nylon California O/D Flag','172.00','1.550',2,100,1,NULL,20070512102759),
 ('020162','ST-FL','8 ft. x 12 ft. Nylon California O/D Flag','256.00','2.950',1,100,1,NULL,20070512102759),
 ('020163','ST-FL','12 ft. x 18 ft. Nylon California O/D Flag','559.00','6.700',1,100,1,NULL,20070512102759),
 ('020181','ST-FL','3 ft. x 5 ft. Nylon California Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020180','ST-FL','4 ft. x 6 ft. Nylon California Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('020192','ST-FL','3 ft. x 5 ft. Nylon Colorado O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020194','ST-FL','4 ft. x 6 ft. Nylon Colorado O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020196','ST-FL','5 ft. x 8 ft. Nylon Colorado O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020198','ST-FL','6 ft. x 10 ft. Nylon Colorado O/D Flag','172.00','2.650',2,100,1,NULL,20070512102759),
 ('020199','ST-FL','8 ft. x 12 ft. Nylon Colorado O/D Flag','330.00','4.050',1,100,1,NULL,20070512102759),
 ('020215','ST-FL','3 ft. x 5 ft. Nylon Colorado Flag w/Ph & Fr','60.50','0.600',2,100,1,NULL,20070512102759),
 ('020217','ST-FL','4 ft. x 6 ft. Nylon Colorado Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('020229','ST-FL','3 ft. x 5 ft. Nylon Connecticut O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020231','ST-FL','4 ft. x 6 ft. Nylon Connecticut O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('020233','ST-FL','5 ft. x 8 ft. Nylon Connecticut O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('020235','ST-FL','6 ft. x 10 ft. Nylon Connecticut O/D Flag','194.30','1.700',2,100,1,NULL,20070512102759),
 ('020236','ST-FL','8 ft. x 12 ft. Nylon Connecticut O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020237','ST-FL','12 ft. x 18 ft. Nylon Connecticut O/D Flag','559.00','6.600',1,100,1,NULL,20070512102759),
 ('020252','ST-FL','3 ft. x 5 ft. Nylon Connecticut Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020254','ST-FL','4 ft. x 6 ft. Nylon Connecticut Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('020266','ST-FL','3 ft. x 5 ft. Nylon Delaware O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020268','ST-FL','4 ft. x 6 ft. Nylon Delaware O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('020270','ST-FL','5 ft. x 8 ft. Nylon Delaware O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('020272','ST-FL','6 ft. x 10 ft. Nylon Delaware O/D Flag','194.30','1.700',2,100,1,NULL,20070512102759),
 ('020273','ST-FL','8 ft. x 12 ft. Nylon Delaware O/D Flag','300.00','2.850',1,100,1,NULL,20070512102759),
 ('020274','ST-FL','12 ft. x 18 ft. Nylon Delaware O/D Flag','700.00','6.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020289','ST-FL','3 ft. x 5 ft. Nylon Delaware Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020291','ST-FL','4 ft. x 6 ft. Nylon Delaware Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('020303','ST-FL','3 ft. x 5 ft. Nylon Florida O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020305','ST-FL','4 ft. x 6 ft. Nylon Florida O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020307','ST-FL','5 ft. x 8 ft. Nylon Florida O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020309','ST-FL','6 ft. x 10 ft. Nylon Florida O/D Flag','223.70','1.750',2,100,1,NULL,20070512102759),
 ('020310','ST-FL','8 ft. x 12 ft. Nylon Florida O/D Flag','330.00','2.950',1,100,1,NULL,20070512102759),
 ('020311','ST-FL','12 ft. x 18 ft. Nylon Florida O/D Flag','756.00','6.700',1,100,1,NULL,20070512102759),
 ('020326','ST-FL','3 ft. x 5 ft. Nylon Florida Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020328','ST-FL','4 ft. x 6 ft. Nylon Florida Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020340','ST-FL','3 ft. x 5 ft. Nylon Georgia (Old) O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020342','ST-FL','4 ft. x 6 ft. Nylon Georgia (Old) O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020344','ST-FL','5 ft. x 8 ft. Nylon Georgia (Old) O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020346','ST-FL','6 ft. x 10 ft. Nylon Georgia (Old) O/D Flag','172.00','1.950',2,100,1,NULL,20070512102759),
 ('020363','ST-FL','3 ft. x 5 ft. Nylon Georgia (Old) Flag w/Ph & Fr','65.00','0.600',2,100,1,NULL,20070512102759),
 ('020365','ST-FL','4 ft. x 6 ft. Nylon Georgia (Old) Flag w/Ph & Fr','104.00','0.950',2,100,1,NULL,20070512102759),
 ('020367','ST-FL','5 ft. x 8 ft. Nylon Georgia (Old) Flag w/Ph & Fr','149.50','1.200',2,100,1,NULL,20070512102759),
 ('020377','ST-FL','3 ft. x 5 ft. Nylon Hawaii O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020379','ST-FL','4 ft. x 6 ft. Nylon Hawaii O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020381','ST-FL','5 ft. x 8 ft. Nylon Hawaii O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020383','ST-FL','6 ft. x 10 ft. Nylon Hawaii O/D Flag','172.00','1.800',2,100,1,NULL,20070512102759),
 ('020384','ST-FL','8 ft. x 12 ft. Nylon Hawaii O/D Flag','230.00','3.100',2,100,1,NULL,20070512102759),
 ('020385','ST-FL','12 ft. x 18 ft. Nylon Hawaii O/D Flag','1060.00','7.000',1,100,1,NULL,20070512102759),
 ('020400','ST-FL','3 ft. x 5 ft. Nylon Hawaii Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020402','ST-FL','4 ft. x 6 ft. Nylon Hawaii Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('020414','ST-FL','3 ft. x 5 ft. Nylon Idaho O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020416','ST-FL','4 ft. x 6 ft. Nylon Idaho O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020418','ST-FL','5 ft. x 8 ft. Nylon Idaho O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020420','ST-FL','6 ft. x 10 ft. Nylon Idaho O/D Flag','223.70','1.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020421','ST-FL','8 ft. x 12 ft. Nylon Idaho O/D Flag','257.00','2.700',1,100,1,NULL,20070512102759),
 ('020437','ST-FL','3 ft. x 5 ft. Nylon Idaho Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020439','ST-FL','4 ft. x 6 ft. Nylon Idaho Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('020451','ST-FL','3 ft. x 5 ft. Nylon Illinois O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020453','ST-FL','4 ft. x 6 ft. Nylon Illinois O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020455','ST-FL','5 ft. x 8 ft. Nylon Illinois O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020457','ST-FL','6 ft. x 10 ft. Nylon Illinois O/D Flag','233.70','1.700',2,100,1,NULL,20070512102759),
 ('020458','ST-FL','8 ft. x 12 ft. Nylon Illinois O/D Flag','270.00','2.650',1,100,1,NULL,20070512102759),
 ('020474','ST-FL','3 ft. x 5 ft. Nylon Illinois Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020476','ST-FL','4 ft. x 6 ft. Nylon Illinois Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020488','ST-FL','3 ft. x 5 ft. Nylon Indiana O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020490','ST-FL','4 ft. x 6 ft. Nylon Indiana O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020492','ST-FL','5 ft. x 8 ft. Nylon Indiana O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020494','ST-FL','6 ft. x 10 ft. Nylon Indiana O/D Flag','172.00','1.550',2,100,1,NULL,20070512102759),
 ('020495','ST-FL','8 ft. x 12 ft. Nylon Indiana O/D Flag','257.00','2.750',1,100,1,NULL,20070512102759),
 ('020511','ST-FL','3 ft. x 5 ft. Nylon Indiana Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020513','ST-FL','4 ft. x 6 ft. Nylon Indiana Flag w/Ph & Fr','96.00','0.950',2,100,1,NULL,20070512102759),
 ('020525','ST-FL','3 ft. x 5 ft. Nylon Iowa O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020527','ST-FL','4 ft. x 6 ft. Nylon Iowa O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020529','ST-FL','5 ft. x 8 ft. Nylon Iowa O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020531','ST-FL','6 ft. x 10 ft. Nylon Iowa O/D Flag','172.00','1.600',2,100,1,NULL,20070512102759),
 ('020532','ST-FL','8 ft. x 12 ft. Nylon Iowa O/D Flag','257.00','2.650',1,100,1,NULL,20070512102759),
 ('020548','ST-FL','3 ft. x 5 ft. Nylon Iowa Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020550','ST-FL','4 ft. x 6 ft. Nylon Iowa Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('020562','ST-FL','3 ft. x 5 ft. Nylon Kansas O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020564','ST-FL','4 ft. x 6 ft. Nylon Kansas O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020566','ST-FL','5 ft. x 8 ft. Nylon Kansas O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020568','ST-FL','6 ft. x 10 ft. Nylon Kansas O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759),
 ('020569','ST-FL','8 ft. x 12 ft. Nylon Kansas O/D Flag','270.00','3.050',1,100,1,NULL,20070512102759),
 ('020585','ST-FL','3 ft. x 5 ft. Nylon Kansas Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020587','ST-FL','4 ft. x 6 ft. Nylon Kansas Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('020599','ST-FL','3 ft. x 5 ft. Nylon Kentucky O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020601','ST-FL','4 ft. x 6 ft. Nylon Kentucky O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020603','ST-FL','5 ft. x 8 ft. Nylon Kentucky O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020605','ST-FL','6 ft. x 10 ft. Nylon Kentucky O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759),
 ('020606','ST-FL','8 ft. x 12 ft. Nylon Kentucky O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759),
 ('020607','ST-FL','12 ft. x 18 ft. Nylon Kentucky O/D Flag','560.00','6.600',1,100,1,NULL,20070512102759),
 ('020622','ST-FL','3 ft. x 5 ft. Nylon Kentucky Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020624','ST-FL','4 ft. x 6 ft. Nylon Kentucky Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('020636','ST-FL','3 ft. x 5 ft. Nylon Louisiana O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020638','ST-FL','4 ft. x 6 ft. Nylon Louisiana O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020640','ST-FL','5 ft. x 8 ft. Nylon Louisiana O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020642','ST-FL','6 ft. x 10 ft. Nylon Louisiana O/D Flag','172.00','1.650',2,100,1,NULL,20070512102759),
 ('020643','ST-FL','8 ft. x 12 ft. Nylon Louisiana O/D Flag','257.00','2.950',1,100,1,NULL,20070512102759),
 ('020659','ST-FL','3 ft. x 5 ft. Nylon Louisiana Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020661','ST-FL','4 ft. x 6 ft. Nylon Louisiana Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('020673','ST-FL','3 ft. x 5 ft. Nylon Maine O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020675','ST-FL','4 ft. x 6 ft. Nylon Maine O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020677','ST-FL','5 ft. x 8 ft. Nylon Maine O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020679','ST-FL','6 ft. x 10 ft. Nylon Maine O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020680','ST-FL','8 ft. x 12 ft. Nylon Maine O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759),
 ('020696','ST-FL','3 ft. x 5 ft. Nylon Maine Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020698','ST-FL','4 ft. x 6 ft. Nylon Maine Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('020710','ST-FL','3 ft. x 5 ft. Nylon Maryland O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020712','ST-FL','4 ft. x 6 ft. Nylon Maryland O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020714','ST-FL','5 ft. x 8 ft. Nylon Maryland O/D Flag','82.90','1.000',2,100,1,NULL,20070512102759),
 ('020716','ST-FL','6 ft. x 10 ft. Nylon Maryland O/D Flag','172.00','1.800',2,100,1,NULL,20070512102759),
 ('020717','ST-FL','8 ft. x 12 ft. Nylon Maryland O/D Flag','390.00','3.000',1,100,1,NULL,20070512102759),
 ('020733','ST-FL','3 ft. x 5 ft. Nylon Maryland Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020735','ST-FL','4 ft. x 6 ft. Nylon Maryland Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020747','ST-FL','3 ft. x 5 ft. Nylon Massachusetts O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020749','ST-FL','4 ft. x 6 ft. Nylon Massachusetts O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020751','ST-FL','5 ft. x 8 ft. Nylon Massachusetts O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020753','ST-FL','6 ft. x 10 ft. Nylon Massachusetts O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('020754','ST-FL','8 ft. x 12 ft. Nylon Massachusetts O/D Flag','243.00','2.900',1,100,1,NULL,20070512102759),
 ('020770','ST-FL','3 ft. x 5 ft. Nylon Massachusetts Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020772','ST-FL','4 ft. x 6 ft. Nylon Massachusetts Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('020784','ST-FL','3 ft. x 5 ft. Nylon Michigan O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020786','ST-FL','4 ft. x 6 ft. Nylon Michigan O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020788','ST-FL','5 ft. x 8 ft. Nylon Michigan O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020790','ST-FL','6 ft. x 10 ft. Nylon Michigan O/D Flag','223.70','1.600',2,100,1,NULL,20070512102759),
 ('020791','ST-FL','8 ft. x 12 ft. Nylon Michigan O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759),
 ('020807','ST-FL','3 ft. x 5 ft. Nylon Michigan Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020809','ST-FL','4 ft. x 6 ft. Nylon Michigan Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('020821','ST-FL','3 ft. x 5 ft. Nylon Minnesota O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020823','ST-FL','4 ft. x 6 ft. Nylon Minnesota O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('020825','ST-FL','5 ft. x 8 ft. Nylon Minnesota O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('020827','ST-FL','6 ft. x 10 ft. Nylon Minnesota O/D Flag','194.30','1.650',2,100,1,NULL,20070512102759),
 ('020828','ST-FL','8 ft. x 12 ft. Nylon Minnesota O/D Flag','257.00','2.650',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020829','ST-FL','12 ft. x 18 ft. Nylon Minnesota O/D Flag','560.00','6.000',1,100,1,NULL,20070512102759),
 ('020844','ST-FL','3 ft. x 5 ft. Nylon Minnesota Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020846','ST-FL','4 ft. x 6 ft. Nylon Minnesota Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('020858','ST-FL','3 ft. x 5 ft. Nylon Mississippi O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020860','ST-FL','4 ft. x 6 ft. Nylon Mississippi O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020862','ST-FL','5 ft. x 8 ft. Nylon Mississippi O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('020864','ST-FL','6 ft. x 10 ft. Nylon Mississippi O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('020865','ST-FL','8 ft. x 12 ft. Nylon Mississippi O/D Flag','465.00','3.800',1,100,1,NULL,20070512102759),
 ('020881','ST-FL','3 ft. x 5 ft. Nylon Mississippi Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020883','ST-FL','4 ft. x 6 ft. Nylon Mississippi Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('020895','ST-FL','3 ft. x 5 ft. Nylon Missouri O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020897','ST-FL','4 ft. x 6 ft. Nylon Missouri O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('020899','ST-FL','5 ft. x 8 ft. Nylon Missouri O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('020901','ST-FL','6 ft. x 10 ft. Nylon Missouri O/D Flag','194.30','1.700',2,100,1,NULL,20070512102759),
 ('020902','ST-FL','8 ft. x 12 ft. Nylon Missouri O/D Flag','257.00','2.950',1,100,1,NULL,20070512102759),
 ('020918','ST-FL','3 ft. x 5 ft. Nylon Missouri Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020920','ST-FL','4 ft. x 6 ft. Nylon Missouri Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('020932','ST-FL','3 ft. x 5 ft. Nylon Montana O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020934','ST-FL','4 ft. x 6 ft. Nylon Montana O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('020936','ST-FL','5 ft. x 8 ft. Nylon Montana O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('020938','ST-FL','6 ft. x 10 ft. Nylon Montana O/D Flag','223.70','1.850',2,100,1,NULL,20070512102759),
 ('020939','ST-FL','8 ft. x 12 ft. Nylon Montana O/D Flag','330.00','3.200',1,100,1,NULL,20070512102759),
 ('020940','ST-FL','12 ft. x 18 ft. Nylon Montana O/D Flag','739.00','6.000',1,100,1,NULL,20070512102759),
 ('020955','ST-FL','3 ft. x 5 ft. Nylon Montana Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020957','ST-FL','4 ft. x 6 ft. Nylon Montana Flag w/Ph & Fr','113.30','0.950',2,100,1,NULL,20070512102759),
 ('020969','ST-FL','3 ft. x 5 ft. Nylon Nebraska O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('020971','ST-FL','4 ft. x 6 ft. Nylon Nebraska O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('020973','ST-FL','5 ft. x 8 ft. Nylon Nebraska O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020975','ST-FL','6 ft. x 10 ft. Nylon Nebraska O/D Flag','172.00','1.750',2,100,1,NULL,20070512102759),
 ('020976','ST-FL','8 ft. x 12 ft. Nylon Nebraska O/D Flag','257.00','3.200',1,100,1,NULL,20070512102759),
 ('020992','ST-FL','3 ft. x 5 ft. Nylon Nebraska Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('020994','ST-FL','4 ft. x 6 ft. Nylon Nebraska Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('021006','ST-FL','3 ft. x 5 ft. Nylon Nevada O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021008','ST-FL','4 ft. x 6 ft. Nylon Nevada O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021010','ST-FL','5 ft. x 8 ft. Nylon Nevada O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021012','ST-FL','6 ft. x 10 ft. Nylon Nevada O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('021013','ST-FL','8 ft. x 12 ft. Nylon Nevada O/D Flag','245.00','2.850',1,100,1,NULL,20070512102759),
 ('021014','ST-FL','12 ft. x 18 ft. Nylon Nevada O/D Flag','559.00','6.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021029','ST-FL','3 ft. x 5 ft. Nylon Nevada Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021031','ST-FL','4 ft. x 6 ft. Nylon Nevada Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('021043','ST-FL','3 ft. x 5 ft. Nylon New Hampshire O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021045','ST-FL','4 ft. x 6 ft. Nylon New Hampshire O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021047','ST-FL','5 ft. x 8 ft. Nylon New Hampshire O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021049','ST-FL','6 ft. x 10 ft. Nylon New Hampshire O/D Flag','223.70','1.500',2,100,1,NULL,20070512102759),
 ('021050','ST-FL','8 ft. x 12 ft. Nylon New Hampshire O/D Flag','257.00','2.950',1,100,1,NULL,20070512102759),
 ('021066','ST-FL','3 ft. x 5 ft. Nylon New Hampshire Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021068','ST-FL','4 ft. x 6 ft. Nylon New Hampshire Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021080','ST-FL','3 ft. x 5 ft. Nylon New Jersey O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021082','ST-FL','4 ft. x 6 ft. Nylon New Jersey O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021084','ST-FL','5 ft. x 8 ft. Nylon New Jersey O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021086','ST-FL','6 ft. x 10 ft. Nylon New Jersey O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759),
 ('021087','ST-FL','8 ft. x 12 ft. Nylon New Jersey O/D Flag','245.00','2.950',1,100,1,NULL,20070512102759),
 ('021103','ST-FL','3 ft. x 5 ft. Nylon New Jersey Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021105','ST-FL','4 ft. x 6 ft. Nylon New Jersey Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021117','ST-FL','3 ft. x 5 ft. Nylon New Mexico O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021119','ST-FL','4 ft. x 6 ft. Nylon New Mexico O/D Flag','53.40','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021121','ST-FL','5 ft. x 8 ft. Nylon New Mexico O/D Flag','82.90','1.000',2,100,1,NULL,20070512102759),
 ('021123','ST-FL','6 ft. x 10 ft. Nylon New Mexico O/D Flag','172.00','1.750',2,100,1,NULL,20070512102759),
 ('021124','ST-FL','8 ft. x 12 ft. Nylon New Mexico O/D Flag','245.00','3.100',1,100,1,NULL,20070512102759),
 ('021125','ST-FL','12 ft. x 18 ft. Nylon New Mexico O/D Flag','530.00','7.000',1,100,1,NULL,20070512102759),
 ('021140','ST-FL','3 ft. x 5 ft. Nylon New Mexico Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021142','ST-FL','4 ft. x 6 ft. Nylon New Mexico Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('021154','ST-FL','3 ft. x 5 ft. Nylon New York O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021156','ST-FL','4 ft. x 6 ft. Nylon New York O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021158','ST-FL','5 ft. x 8 ft. Nylon New York O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021160','ST-FL','6 ft. x 10 ft. Nylon New York O/D Flag','223.70','1.750',2,100,1,NULL,20070512102759),
 ('021161','ST-FL','8 ft. x 12 ft. Nylon New York O/D Flag','245.00','2.900',1,100,1,NULL,20070512102759),
 ('021162','ST-FL','12 ft. x 18 ft. Nylon New York O/D Flag','530.00','6.600',1,100,1,NULL,20070512102759),
 ('021177','ST-FL','3 ft. x 5 ft. Nylon New York Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021179','ST-FL','4 ft. x 6 ft. Nylon New York Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021191','ST-FL','3 ft. x 5 ft. Nylon North Carolina O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021193','ST-FL','4 ft. x 6 ft. Nylon North Carolina O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021195','ST-FL','5 ft. x 8 ft. Nylon North Carolina O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021197','ST-FL','6 ft. x 10 ft. Nylon North Carolina O/D Flag','172.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021198','ST-FL','8 ft. x 12 ft. Nylon North Carolina O/D Flag','257.00','2.700',1,100,1,NULL,20070512102759),
 ('021199','ST-FL','12 ft. x 18 ft. Nylon North Carolina O/D Flag','560.00','6.100',1,100,1,NULL,20070512102759),
 ('021214','ST-FL','3 ft. x 5 ft. Nylon North Carolina Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021216','ST-FL','4 ft. x 6 ft. Nylon North Carolina Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('021228','ST-FL','3 ft. x 5 ft. Nylon North Dakota O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021230','ST-FL','4 ft. x 6 ft. Nylon North Dakota O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('021232','ST-FL','5 ft. x 8 ft. Nylon North Dakota O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('021234','ST-FL','6 ft. x 10 ft. Nylon North Dakota O/D Flag','194.30','1.750',2,100,1,NULL,20070512102759),
 ('021235','ST-FL','8 ft. x 12 ft. Nylon North Dakota O/D Flag','257.00','2.650',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021236','ST-FL','12 ft. x 18 ft. Nylon North Dakota O/D Flag','560.00','6.000',1,100,1,NULL,20070512102759),
 ('021251','ST-FL','3 ft. x 5 ft. Nylon North Dakota Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021253','ST-FL','4 ft. x 6 ft. Nylon North Dakota Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('021265','ST-FL','3 ft. x 5 ft. Nylon Ohio O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021267','ST-FL','4 ft. x 6 ft. Nylon Ohio O/D Flag','53.40','0.700',2,100,1,NULL,20070512102759),
 ('021269','ST-FL','5 ft. x 8 ft. Nylon Ohio O/D Flag','82.90','1.000',2,100,1,NULL,20070512102759),
 ('021271','ST-FL','6 ft. x 10 ft. Nylon Ohio O/D Flag','172.00','1.500',2,100,1,NULL,20070512102759),
 ('021272','ST-FL','8 ft. x 12 ft. Nylon Ohio O/D Flag','481.00','2.600',1,100,1,NULL,20070512102759),
 ('021288','ST-FL','3 ft. x 5 ft. Nylon Ohio Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021290','ST-FL','4 ft. x 6 ft. Nylon Ohio Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021302','ST-FL','3 ft. x 5 ft. Nylon Oklahoma O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021304','ST-FL','4 ft. x 6 ft. Nylon Oklahoma O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('021306','ST-FL','5 ft. x 8 ft. Nylon Oklahoma O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('021308','ST-FL','6 ft. x 10 ft. Nylon Oklahoma O/D Flag','194.30','1.550',2,100,1,NULL,20070512102759),
 ('021309','ST-FL','8 ft. x 12 ft. Nylon Oklahoma O/D Flag','270.00','3.000',1,100,1,NULL,20070512102759),
 ('021310','ST-FL','12 ft. x 18 ft. Nylon Oklahoma O/D Flag','705.00','6.800',1,100,1,NULL,20070512102759),
 ('021325','ST-FL','3 ft. x 5 ft. Nylon Oklahoma Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021327','ST-FL','4 ft. x 6 ft. Nylon Oklahoma Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('021339','ST-FL','3 ft. x 5 ft. Nylon Oregon O/D Flag','72.70','0.600',2,100,1,NULL,20070512102759),
 ('021341','ST-FL','4 ft. x 6 ft. Nylon Oregon O/D Flag','133.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021343','ST-FL','5 ft. x 8 ft. Nylon Oregon O/D Flag','176.00','1.400',2,100,1,NULL,20070512102759),
 ('021345','ST-FL','6 ft. x 10 ft. Nylon Oregon O/D Flag','246.00','2.050',2,100,1,NULL,20070512102759),
 ('021346','ST-FL','8 ft. x 12 ft. Nylon Oregon O/D Flag','380.00','3.150',1,100,1,NULL,20070512102759),
 ('021347','ST-FL','12 ft. x 18 ft. Nylon Oregon O/D Flag','759.00','7.100',1,100,1,NULL,20070512102759),
 ('021362','ST-FL','3 ft. x 5 ft. Nylon Oregon Flag w/Ph & Fr','100.60','0.750',2,100,1,NULL,20070512102759),
 ('021364','ST-FL','4 ft. x 6 ft. Nylon Oregon Flag w/Ph & Fr','164.00','1.250',2,100,1,NULL,20070512102759),
 ('021376','ST-FL','3 ft. x 5 ft. Nylon Pennsylvania O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021378','ST-FL','4 ft. x 6 ft. Nylon Pennsylvania O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021380','ST-FL','5 ft. x 8 ft. Nylon Pennsylvania O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021382','ST-FL','6 ft. x 10 ft. Nylon Pennsylvania O/D Flag','223.70','1.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021383','ST-FL','8 ft. x 12 ft. Nylon Pennsylvania O/D Flag','245.00','2.600',1,100,1,NULL,20070512102759),
 ('021384','ST-FL','12 ft. x 18 ft. Nylon Pennsylvania O/D Flag','530.00','5.900',1,100,1,NULL,20070512102759),
 ('021399','ST-FL','3 ft. x 5 ft. Nylon Pennsylvania Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021401','ST-FL','4 ft. x 6 ft. Nylon Pennsylvania Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021413','ST-FL','3 ft. x 5 ft. Nylon Rhode Island O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021415','ST-FL','4 ft. x 6 ft. Nylon Rhode Island O/D Flag','53.40','0.700',2,100,1,NULL,20070512102759),
 ('021417','ST-FL','5 ft. x 8 ft. Nylon Rhode Island O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021419','ST-FL','6 ft. x 10 ft. Nylon Rhode Island O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('021420','ST-FL','8 ft. x 12 ft. Nylon Rhode Island O/D Flag','245.00','2.900',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021421','ST-FL','12 ft. x 18 ft. Nylon Rhode Island O/D Flag','530.00','6.600',1,100,1,NULL,20070512102759),
 ('021436','ST-FL','3 ft. x 5 ft. Nylon Rhode Island Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021438','ST-FL','4 ft. x 6 ft. Nylon Rhode Island Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('021450','ST-FL','3 ft. x 5 ft. Nylon South Carolina O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021452','ST-FL','4 ft. x 6 ft. Nylon South Carolina O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021454','ST-FL','5 ft. x 8 ft. Nylon South Carolina O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021456','ST-FL','6 ft. x 10 ft. Nylon South Carolina O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('021457','ST-FL','8 ft. x 12 ft. Nylon South Carolina O/D Flag','257.00','2.800',1,100,1,NULL,20070512102759),
 ('021458','ST-FL','12 ft. x 18 ft. Nylon South Carolina O/D Flag','595.00','6.300',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021473','ST-FL','3 ft. x 5 ft. Nylon South Carolina Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021475','ST-FL','4 ft. x 6 ft. Nylon South Carolina Flag w/Ph & Fr','96.00','0.950',2,100,1,NULL,20070512102759),
 ('021487','ST-FL','3 ft. x 5 ft. Nylon South Dakota O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021489','ST-FL','4 ft. x 6 ft. Nylon South Dakota O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021491','ST-FL','5 ft. x 8 ft. Nylon South Dakota O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021493','ST-FL','6 ft. x 10 ft. Nylon South Dakota O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('021494','ST-FL','8 ft. x 12 ft. Nylon South Dakota O/D Flag','257.00','2.850',1,100,1,NULL,20070512102759),
 ('021495','ST-FL','12 ft. x 18 ft. Nylon South Dakota O/D Flag','590.00','6.500',1,100,1,NULL,20070512102759),
 ('021510','ST-FL','3 ft. x 5 ft. Nylon South Dakota Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021512','ST-FL','4 ft. x 6 ft. Nylon South Dakota Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('021524','ST-FL','3 ft. x 5 ft. Nylon Tennessee O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021526','ST-FL','4 ft. x 6 ft. Nylon Tennessee O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021528','ST-FL','5 ft. x 8 ft. Nylon Tennessee O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021530','ST-FL','6 ft. x 10 ft. Nylon Tennessee O/D Flag','172.00','2.250',2,100,1,NULL,20070512102759),
 ('021531','ST-FL','8 ft. x 12 ft. Nylon Tennessee O/D Flag','245.00','3.000',1,100,1,NULL,20070512102759),
 ('021532','ST-FL','12 ft. x 18 ft. Nylon Tennessee O/D Flag','589.00','6.800',1,100,1,NULL,20070512102759),
 ('021547','ST-FL','3 ft. x 5 ft. Nylon Tennessee Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021549','ST-FL','4 ft. x 6 ft. Nylon Tennessee Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021562','ST-FL','2 ft. x 3 ft. Nylon Texas O/D Flag (Sewn)','17.60','0.350',2,100,1,NULL,20070512102759),
 ('021563','ST-FL','3 ft. x 5 ft. Endura-Poly Texas O/D Flag (Printed)','14.70','0.350',2,100,1,NULL,20070512102759),
 ('021564','ST-FL','3 ft. x 5 ft. Nylon Texas O/D Flag (Printed)','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021565','ST-FL','3 ft. x 5 ft. Nylon Texas O/D Flag (Sewn)','28.20','0.750',2,100,1,NULL,20070512102759),
 ('021567','ST-FL','4 ft. x 6 ft. Nylon Texas O/D Flag (Sewn)','32.90','1.100',2,100,1,NULL,20070512102759),
 ('021569','ST-FL','5 ft. x 8 ft. Nylon Texas O/D Flag (Sewn)','58.00','1.800',2,100,1,NULL,20070512102759),
 ('021571','ST-FL','6 ft. x 10 ft. Nylon Texas O/D Flag (Sewn)','172.00','2.050',2,100,1,NULL,20070512102759),
 ('021572','ST-FL','8 ft. x 12 ft. Nylon Texas O/D Flag (Sewn)','257.00','2.650',1,100,1,NULL,20070512102759),
 ('021573','ST-FL','12 ft. x 18 ft. Nylon Texas O/D Flag (Sewn)','559.00','6.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('022022','ST-FL','4 in. x 6 in. Endura Gloss Northern Marianas Flag','3.00','0.030',2,100,1,NULL,20070512102759),
 ('022024','ST-FL','3 ft. x 5 ft. Nylon O/D Northern Marianas Flag','56.20','0.450',2,100,1,NULL,20070512102759),
 ('022026','ST-FL','4 ft. x 6 ft. Nylon O/D Northern Marianas Flag','80.60','1.100',2,100,1,NULL,20070512102759),
 ('035829','ST-FL','5 ft. x 8 ft. Nylon O/D Northern Marianas Flag','116.00','1.800',2,100,1,NULL,20070512102759),
 ('022076','ST-FL','10 ft. x 15 ft. Nylon Texas O/D Flag (Sewn)','212.00','6.000',1,100,1,NULL,20070512102759),
 ('022356','ST-FL','15 ft. x 25 ft. Nylon Texas O/D Flag (Sewn)','464.00','8.000',1,100,1,NULL,20070512102759),
 ('022357','ST-FL','20 ft. x 38 ft. Nylon Texas O/D Flag (Sewn)','940.00','12.000',1,100,1,NULL,20070512102759),
 ('021555','ST-FL','4 in. x 6 in. Endura Gloss Texas Flags','3.00','0.030',2,100,1,NULL,20070512102759),
 ('021561','ST-FL','12 in. x 18 in. Printed Texas Flag','12.80','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021574','ST-FL','4 in. x 6 in. Endura-Gloss Mtd Texas Flag w/Fr (Printed)','3.40','0.030',2,100,1,NULL,20070512102759),
 ('021575','ST-FL','8 in. x 12 in. Endura-Gloss Mtd Texas Flag w/Fr (Printed)','11.10','0.061',2,100,1,NULL,20070512102759),
 ('021589','ST-FL','3 ft. x 5 ft. Nylon Texas Flag w/Ph & Fr (Sewn)','61.50','0.900',2,100,1,NULL,20070512102759),
 ('021591','ST-FL','4 ft. x 6 ft. Nylon Texas Flag w/Ph & Fr (Sewn)','110.50','1.350',2,100,1,NULL,20070512102759),
 ('022239','ST-FL','3 ft. x 5 ft. Poly-Max Texas Flag O/D','38.00','0.450',2,100,1,NULL,20070512102759),
 ('022291','ST-FL','4 ft. x 6 ft. Poly-Max Texas Flag O/D','48.00','0.700',2,100,1,NULL,20070512102759),
 ('022343','ST-FL','5 ft. x 8 ft. Poly-Max Texas Flag O/D','72.00','1.000',2,100,1,NULL,20070512102759),
 ('022358','ST-FL','6 ft. x 10 ft. Poly-Max Texas Flag O/D','145.00','1.700',2,100,1,NULL,20070512102759),
 ('022359','ST-FL','8 ft. x 12 ft. Poly-Max Texas Flag O/D','188.00','2.600',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('022360','ST-FL','10 ft. x 15 ft. Poly-Max Texas O/D Flag','266.00','6.000',1,100,1,NULL,20070512102759),
 ('022361','ST-FL','12 ft. x 18 ft. Poly-Max Texas Flag O/D','350.00','6.500',1,100,1,NULL,20070512102759),
 ('022362','ST-FL','15 ft. x 25 ft. Poly-Max Texas O/D Flag','580.00','8.000',1,100,1,NULL,20070512102759),
 ('022363','ST-FL','20 ft. x 38 ft. Poly-Max Texas O/D Flag','990.00','12.000',1,100,1,NULL,20070512102759),
 ('021603','ST-FL','3 ft. x 5 ft. Nylon Utah O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021605','ST-FL','4 ft. x 6 ft. Nylon Utah O/D Flag','73.70','0.700',2,100,1,NULL,20070512102759),
 ('021607','ST-FL','5 ft. x 8 ft. Nylon Utah O/D Flag','112.10','1.000',2,100,1,NULL,20070512102759),
 ('021609','ST-FL','6 ft. x 10 ft. Nylon Utah O/D Flag','194.30','1.700',2,100,1,NULL,20070512102759),
 ('021610','ST-FL','8 ft. x 12 ft. Nylon Utah O/D Flag','257.00','2.650',1,100,1,NULL,20070512102759),
 ('021611','ST-FL','12 ft. x 18 ft. Nylon Utah O/D Flag','559.00','6.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021626','ST-FL','3 ft. x 5 ft. Nylon Utah Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021628','ST-FL','4 ft. x 6 ft. Nylon Utah Flag w/Ph & Fr','110.50','0.950',2,100,1,NULL,20070512102759),
 ('021640','ST-FL','3 ft. x 5 ft. Nylon Vermont O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021642','ST-FL','4 ft. x 6 ft. Nylon Vermont O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021644','ST-FL','5 ft. x 8 ft. Nylon Vermont O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021646','ST-FL','6 ft. x 10 ft. Nylon Vermont O/D Flag','223.70','1.750',2,100,1,NULL,20070512102759),
 ('021647','ST-FL','8 ft. x 12 ft. Nylon Vermont O/D Flag','257.00','2.900',1,100,1,NULL,20070512102759),
 ('021648','ST-FL','12 ft. x 18 ft. Nylon Vermont O/D Flag','560.00','6.600',1,100,1,NULL,20070512102759),
 ('021663','ST-FL','3 ft. x 5 ft. Nylon Vermont Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021665','ST-FL','4 ft. x 6 ft. Nylon Vermont Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021677','ST-FL','3 ft. x 5 ft. Nylon Virginia O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021679','ST-FL','4 ft. x 6 ft. Nylon Virginia O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021681','ST-FL','5 ft. x 8 ft. Nylon Virginia O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021683','ST-FL','6 ft. x 10 ft. Nylon Virginia O/D Flag','223.70','1.550',2,100,1,NULL,20070512102759),
 ('021684','ST-FL','8 ft. x 12 ft. Nylon Virginia O/D Flag','257.00','2.750',1,100,1,NULL,20070512102759),
 ('021685','ST-FL','12 ft. x 18 ft. Nylon Virginia O/D Flag','559.00','6.200',1,100,1,NULL,20070512102759),
 ('021700','ST-FL','3 ft. x 5 ft. Nylon Virginia Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021702','ST-FL','4 ft. x 6 ft. Nylon Virginia Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021714','ST-FL','3 ft. x 5 ft. Nylon Washington O/D Flag','55.00','0.550',2,100,1,NULL,20070512102759),
 ('021716','ST-FL','4 ft. x 6 ft. Nylon Washington O/D Flag','100.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021718','ST-FL','5 ft. x 8 ft. Nylon Washington O/D Flag','147.50','1.300',2,100,1,NULL,20070512102759),
 ('021720','ST-FL','6 ft. x 10 ft. Nylon Washington O/D Flag','206.00','1.850',2,100,1,NULL,20070512102759),
 ('021721','ST-FL','8 ft. x 12 ft. Nylon Washington O/D Flag','285.00','3.500',1,100,1,NULL,20070512102759),
 ('021722','ST-FL','12 ft. x 18 ft. Nylon Washington O/D Flag','620.00','7.900',1,100,1,NULL,20070512102759),
 ('021737','ST-FL','3 ft. x 5 ft. Nylon Washington Flag w/Ph & Fr','83.00','0.700',2,100,1,NULL,20070512102759),
 ('021739','ST-FL','4 ft. x 6 ft. Nylon Washington Flag w/Ph & Fr','131.00','1.050',2,100,1,NULL,20070512102759),
 ('021751','ST-FL','3 ft. x 5 ft. Nylon West Virginia O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021753','ST-FL','4 ft. x 6 ft. Nylon West Virginia O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021755','ST-FL','5 ft. x 8 ft. Nylon West Virginia O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021757','ST-FL','6 ft. x 10 ft. Nylon West Virginia O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759),
 ('021758','ST-FL','8 ft. x 12 ft. Nylon West Virginia O/D Flag','345.00','3.150',1,100,1,NULL,20070512102759),
 ('021759','ST-FL','12 ft. x 18 ft. Nylon West Virginia O/D Flag','795.00','7.100',1,100,1,NULL,20070512102759),
 ('021774','ST-FL','3 ft. x 5 ft. Nylon West Virginia Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021776','ST-FL','4 ft. x 6 ft. Nylon West Virginia Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021788','ST-FL','3 ft. x 5 ft. Nylon Wisconsin O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021790','ST-FL','4 ft. x 6 ft. Nylon Wisconsin O/D Flag','82.30','0.700',2,100,1,NULL,20070512102759),
 ('021792','ST-FL','5 ft. x 8 ft. Nylon Wisconsin O/D Flag','130.30','1.000',2,100,1,NULL,20070512102759),
 ('021794','ST-FL','6 ft. x 10 ft. Nylon Wisconsin O/D Flag','223.70','1.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021795','ST-FL','8 ft. x 12 ft. Nylon Wisconsin O/D Flag','285.00','3.150',1,100,1,NULL,20070512102759),
 ('021796','ST-FL','12 ft. x 18 ft. Nylon Wisconsin O/D Flag','620.00','7.100',1,100,1,NULL,20070512102759),
 ('021811','ST-FL','3 ft. x 5 ft. Nylon Wisconsin Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021813','ST-FL','4 ft. x 6 ft. Nylon Wisconsin Flag w/Ph & Fr','118.90','0.950',2,100,1,NULL,20070512102759),
 ('021825','ST-FL','3 ft. x 5 ft. Nylon Wyoming O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('021827','ST-FL','4 ft. x 6 ft. Nylon Wyoming O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('021829','ST-FL','5 ft. x 8 ft. Nylon Wyoming O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('021831','ST-FL','6 ft. x 10 ft. Nylon Wyoming O/D Flag','172.00','1.700',2,100,1,NULL,20070512102759),
 ('021832','ST-FL','8 ft. x 12 ft. Nylon Wyoming O/D Flag','345.00','3.000',1,100,1,NULL,20070512102759),
 ('021833','ST-FL','12 ft. x 18 ft. Nylon Wyoming O/D Flag','789.00','6.800',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('021848','ST-FL','3 ft. x 5 ft. Nylon Wyoming Flag w/Ph & Fr','61.50','0.600',2,100,1,NULL,20070512102759),
 ('021850','ST-FL','4 ft. x 6 ft. Nylon Wyoming Flag w/Ph & Fr','102.00','0.950',2,100,1,NULL,20070512102759),
 ('022091','ST-FL','3 ft. x 5 ft. Nylon Georgia (New) O/D Flag','32.50','0.450',2,100,1,NULL,20070512102759),
 ('022092','ST-FL','4 ft. x 6 ft. Nylon Georgia (New) O/D Flag','65.00','0.700',2,100,1,NULL,20070512102759),
 ('022093','ST-FL','5 ft. x 8 ft. Nylon Georgia (New) O/D Flag','98.50','1.000',2,100,1,NULL,20070512102759),
 ('022094','ST-FL','6 ft. x 10 ft. Nylon Georgia (New) O/D Flag','172.00','1.750',2,100,1,NULL,20070512102759),
 ('022108','ST-FL','3 ft. x 5 ft. Nylon Georgia (New) Flag w/Ph & Fr','59.50','0.600',2,100,1,NULL,20070512102759),
 ('022109','ST-FL','4 ft. x 6 ft. Nylon Georgia (New) Flag w/Ph & Fr','90.80','0.950',2,100,1,NULL,20070512102759),
 ('020176','ST-FL','3 ft. x 5 ft. Nylon Georgia (2003) O/D Flag','32.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('020177','ST-FL','4 ft. x 6 ft. Nylon Georgia (2003) O/D Flag','53.40','1.500',2,100,1,NULL,20070512102759),
 ('020178','ST-FL','5 ft. x 8 ft. Nylon Georgia (2003) O/D Flag','82.90','2.000',2,100,1,NULL,20070512102759),
 ('020179','ST-FL','6 ft. x 10 ft. Nylon Georgia (2003) O/D Flag','145.90','3.000',2,100,1,NULL,20070512102759),
 ('034413','REL-FL','3 ft. x 5 ft. Endura-Poly Vatican City Papal O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('034414','REL-FL','3 ft. x 5 ft. Nylon Vatican City Papal O/D Flag','49.80','0.450',2,100,1,NULL,20070512102759),
 ('034415','REL-FL','4 ft. x 6 ft. Nylon Vatican City Papal O/D Flag','59.60','0.700',2,100,1,NULL,20070512102759),
 ('034416','REL-FL','5 ft. x 8 ft. Nylon Vatican City Papal O/D Flag','95.30','1.000',2,100,1,NULL,20070512102759),
 ('040002','FSW-301','3 ft. x 5 ft. Nylon Christian Flag Set W/Oak Pole','168.00','21.900',2,100,1,NULL,20070512102759),
 ('040006','FPW-1','3 ft. x 5 ft. Nylon Vatican City Papal In/Par Flag Set W/Oak Pole','196.00','21.900',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040009','ENW-3','3 ft. x 5 ft. Nylon Episcopal In/Par Flag Set W/Oak Pole','200.00','21.900',2,100,1,NULL,20070512102759),
 ('040013','ZW-20','3 ft. x 5 ft. Nylon Israel  Flag Set W/Oak Pole','185.00','21.900',2,100,1,NULL,20070512102759),
 ('040098','REL-FL','3 ft. x 5 ft. Nylon Christian O/D Flag','27.80','0.450',2,100,1,NULL,20070512102759),
 ('040099','REL-FL','3 ft. x 5 ft. Cotton Christian O/D Flag','30.00','0.500',2,100,1,NULL,20070512102759),
 ('040100','REL-FL','3 ft. x 5 ft. Endura-Poly Christian O/D Flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('040101','REL-FL','4 ft. x 6 ft. Nylon Christian O/D Flag','37.10','0.700',2,100,1,NULL,20070512102759),
 ('040103','REL-FL','5 ft. x 8 ft. Nylon Christian O/D Flag','56.70','1.000',2,100,1,NULL,20070512102759),
 ('040108','REL-FL','3 ft. x 5 ft. Nylon Episcopal O/D Flag','61.50','0.450',2,100,1,NULL,20070512102759),
 ('040110','REL-FL','4 ft. x 6 ft. Nylon Episcopal O/D Flag','77.70','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040111','REL-FL','5 ft. x 8 ft. Nylon Episcopal O/D Flag','120.00','1.000',2,100,1,NULL,20070512102759),
 ('040200','POL-FL','3 ft  x 5 ft Nylon Police  O/D Flag  Blue and White','24.95','0.500',2,100,1,NULL,20070512102759),
 ('040201','POL-FL','4 ft  x 6 ft Nylon Police  O/D Flag  Blue and White','34.95','0.700',2,100,1,NULL,20070512102759),
 ('040202','POL-FL','\"5 ft  x  9.5 ft Police Memorial Flag  Blue, Black and Silver\"','99.00','1.000',2,100,1,NULL,20070512102759),
 ('040203','FIRE-FL','3 ft  x 5 ft Nylon Fire Dept  O/D Flag  Red and White','24.95','0.500',2,100,1,NULL,20070512102759),
 ('040204','FIRE-FL','4 ft  x 6 ft Nylon Fire Dept  O/D Flag  Red and White','34.95','0.700',2,100,1,NULL,20070512102759),
 ('040205','FIRE-FL','\"5 ft  x  9.5 ft Fire Dept. Memorial Flag  Red, Black and Yellow\"','99.00','1.000',2,100,1,NULL,20070512102759),
 ('040206','POL-FL','3 ft  x 5 ft  Indoor Police Flag with Fringe  Blue and White','53.95','0.600',2,100,1,NULL,20070512102759),
 ('040207','POL-FL','4 ft  x 6 ft Indoor Police Flag with Friinge  Blue and White','73.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040208','FIRE-FL','3 ft x 5 ft Indoor Fire Dept. Flag with fringe Red and White','60.00','0.600',2,100,1,NULL,20070512102759),
 ('040209','FIRE-FL','4 ft x 6 ft Indoor Fire Dept Flag with fringe Red and White','80.00','0.800',2,100,1,NULL,20070512102759),
 ('040210','POL-FL-SET','\"3 ft x 5 ft Indoor Police Dept. Flag Set with fringe Blue and White, Pole, ornament and stand \"','250.00','15.000',1,100,1,NULL,20070512102759),
 ('040211','POL-FL-SET','\"4 ft x 6 ft Indoor Police Dept Flag Set with fringe Blue and White, pole, ornament and stand\"','350.00','18.000',1,100,1,NULL,20070512102759),
 ('040212','FIRE-FL-SET','\"3 ft x 5 ft Indoor Fire Dept. Flag Set with fringe Red and White pole, ornament, stand \"','199.00','15.000',1,100,1,NULL,20070512102759),
 ('040213','FIRE-FL-SET','\"4 ft x 6 ft Indoor Fire Dept Flag Set with fringe Red and White, pole, ornament, stand\"','230.00','18.000',1,100,1,NULL,20070512102759),
 ('040214','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo\"','174.00','1.200',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040215','FIRE-FL','Customization package for Fire Department flags (not for memorial drape)','75.00','0.000',0,0,0,NULL,20070512102759),
 ('040216','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor) includes one(1) flag plus 1 time custom charge','99.95','1.000',1,100,1,NULL,20070512102759),
 ('040217','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor)  includes two(2) flags plus 1 time custom charge','124.90','2.000',1,100,1,NULL,20070512102759),
 ('040218','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor) includes three(3) flags plus 1 time custom charge','149.85','3.000',1,100,1,NULL,20070512102759),
 ('040219','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor) includes four(4) flags plus 1 time custom charge','174.80','4.000',1,100,1,NULL,20070512102759),
 ('040220','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor) includes five(5) flags plus 1 time custom charge','199.75','5.000',1,100,1,NULL,20070512102759),
 ('040221','FIRE-FL','3 ft. x 5 ft. custom fire and rescue flag (outdoor) includes six(6) flags plus 1 time custom charge','224.70','6.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040222','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 1 flag, pole hem and gold fringe plus 1 time custom charge\"','135.00','1.000',1,100,1,NULL,20070512102759),
 ('040223','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 2 flags, pole hem and gold fringe plus 1 time custom charge\"','195.00','2.000',1,100,1,NULL,20070512102759),
 ('040224','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 3 flags, pole hem and gold fringe plus 1 time custom charge\"','255.00','3.000',1,100,1,NULL,20070512102759),
 ('040225','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 4 flags, pole hem and gold fringe plus 1 time custom charge\"','315.00','4.000',1,100,1,NULL,20070512102759),
 ('040226','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 5 flags, pole hem and gold fringe plus 1 time custom charge\"','375.00','5.000',1,100,1,NULL,20070512102759),
 ('040227','FIRE-FL','\"3 ft. x 5 ft. custom fire and rescue flag(indoor) includes 6 flags, pole hem and gold fringe plus 1 time custom charge\"','435.00','6.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040228','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 1 flag plus 1 time custom charge','109.95','1.200',1,100,1,NULL,20070512102759),
 ('040229','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 2 flags plus 1 time custom charge','144.90','2.400',1,100,1,NULL,20070512102759),
 ('040230','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 3 flags plus 1 time custom charge','179.85','3.600',1,100,1,NULL,20070512102759),
 ('040231','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 4 flags plus 1 time custom charge','214.80','4.800',1,100,1,NULL,20070512102759),
 ('040232','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 5 flags plus 1 time custom charge','249.75','6.000',1,100,1,NULL,20070512102759),
 ('040233','FIRE-FL','4 ft. x 6 ft. custom fire and rescue flag (outdoor) includes 6 flags plus 1 time custom charge','284.70','7.200',1,100,1,NULL,20070512102759),
 ('040234','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 1 flag, pole hem and gold fringe plus 1 time custom charge\"','155.00','1.200',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040235','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 2 flags, pole hem and gold fringe plus 1 time custom charge\"','235.00','2.400',1,100,1,NULL,20070512102759),
 ('040236','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 3 flags, pole hem and gold fringe plus 1 time custom charge\"','315.00','3.600',1,100,1,NULL,20070512102759),
 ('040237','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 4 flags, pole hem and gold fringe plus 1 time custom charge\"','395.00','4.800',1,100,1,NULL,20070512102759),
 ('040238','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 5 flags, pole hem and gold fringe plus 1 time custom charge\"','475.00','6.000',1,100,1,NULL,20070512102759),
 ('040239','FIRE-FL','\"4 ft. x 6 ft. custom fire and rescue flag(indoor) includes 6 flags, pole hem and gold fringe plus 1 time custom charge\"','555.00','7.200',1,100,1,NULL,20070512102759),
 ('040240','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo- Two Drapes + One time charge\"','273.00','1.800',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('040241','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo - Three Drapes + One time charge\"','372.00','2.800',1,100,1,NULL,20070512102759),
 ('040242','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo - Four Drapes + One time charge\"','471.00','4.500',1,100,1,NULL,20070512102759),
 ('040243','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo - Five Drapes + One time charge\"','570.00','6.000',1,100,1,NULL,20070512102759),
 ('040244','FIRE-FL','\"Customized 5\' x 9.5\' Fire Dept memorial drape,  red and black with yellow logo - Six Drapes + One time charge\"','669.00','8.000',1,100,1,NULL,20070512102759),
 ('040245','FIRE-FL','5\' x 9.5\'   U.S. Flag Memorial Drape','54.50','3.000',1,100,1,NULL,20070512102759),
 ('050000','IND-E-6F','Metal Flying Eagle Indoor/Parade Ornament Gold with Ferrule - 5 in. x 6-1/2 in.','27.00','1.000',2,100,1,NULL,20070512102759),
 ('050002','IND-E-8F','Metal Flying Eagle Indoor/Parade Ornament Gold with Ferrule - 7 in. x  8-1/4 in.','36.00','1.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050004','IND-E-9F','Metal Flying Eagle Indoor/Parade Ornament Gold with Ferrule - 7-1/4 in. x 9-1/4 in.','40.00','1.850',2,100,1,NULL,20070512102759),
 ('050006','IND-E-6S','Metal Flying Eagle Indoor/Parade Ornament Gold with Spindle - 5 in. x 6-1/2 in.','27.00','0.950',2,100,1,NULL,20070512102759),
 ('050008','IND-E-8S','Metal Flying Eagle Indoor/Parade Ornament Gold with Spindle - 7 in. x  8-1/4 in.','36.00','1.400',2,100,1,NULL,20070512102759),
 ('050010','IND-E-9S','Metal Flying Eagle Indoor/Parade Ornament Gold with Spindle - 7-1/4 in. x 9-1/4 in.','40.00','1.800',2,100,1,NULL,20070512102759),
 ('050012','IND-E-6','Metal Flying Eagle Indoor/Parade Ornament Gold no Ferrule or Spindle - 5 in. x 6-1/2 in.','23.00','0.850',2,100,1,NULL,20070512102759),
 ('050014','IND-E-8','Metal Flying Eagle Indoor/Parade Ornament Gold no Ferrule or Spindle - 7 in. x  8-1/4 in.','32.00','1.300',2,100,1,NULL,20070512102759),
 ('050016','IND-E-9','Metal Flying Eagle Indoor/Parade Ornament Gold no Ferrule or Spindle - 7-1/4 in. x 9-1/4 in.','36.00','1.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050018','IND-E-5F','Metal Perched Eagle Indoor/Parade Ornament Gold with Ferrule - 5 in. x 5 in.','20.00','0.950',2,100,1,NULL,20070512102759),
 ('050020','IND-E-7F','Metal Perched Eagle Indoor/Parade Ornament Gold with Ferrule - 6.75 in. x 7 in.','31.00','1.650',2,100,1,NULL,20070512102759),
 ('050022','IND-E-5S','Metal Perched Eagle Indoor/Parade Ornament Gold with Spindle - 5 in. x 5 in.','20.00','0.900',2,100,1,NULL,20070512102759),
 ('050024','IND-E-7S','Metal Perched Eagle Indoor/Parade Ornament Gold with Spindle - 6.75 in. x 7 in.','31.00','1.600',2,100,1,NULL,20070512102759),
 ('050026','IND-E-5','Metal Perched Eagle Indoor/Parade Ornament Gold no Ferrule or Spindle - 5 in. x 5 in.','16.00','0.800',2,100,1,NULL,20070512102759),
 ('050028','IND-E-7','Metal Perched Eagle Indoor/Parade Ornament Gold no Ferrule or Spindle - 6.75 in. x 7 in.','27.00','1.500',2,100,1,NULL,20070512102759),
 ('050030','ME-1','Metal Slip Fit Eagle Indoor/Parade Ornament Gold - 2.5 in. x 5 in.','4.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050031','PE-1','Plastic Slip Fit Eagle Indoor/Parade Ornament Brass Plated Gold - 3.25 in. x 4.25 in. - fits .75 in. Aluminum Pole','3.50','0.020',2,100,1,NULL,20070512102759),
 ('050032','PE-1','Plastic Slip Fit Eagle Indoor/Parade Ornament Brass Plated Gold - 3.25 in. x 4.25 in. - fits .75 in. Steel Pole','3.50','0.020',2,100,1,NULL,20070512102759),
 ('050033','PE-1','Plastic Slip Fit Eagle Indoor/Parade Ornament Brass Plated Gold - 3.25 in. x 4.25 in. - fits 1 in. Aluminum Pole','3.50','0.020',2,100,1,NULL,20070512102759),
 ('050034','PE-2','Plastic Slip Fit Eagle Indoor/Parade Ornament Gold Gilt - 3.25 in. x 4.25 in. - fits .75 in. Aluminum Pole','2.00','0.020',2,100,1,NULL,20070512102759),
 ('050035','PE-2','Plastic Slip Fit Eagle Indoor/Parade Ornament Gold Gilt - 3.25 in. x 4.25 in. - fits .75 in. Steel Pole','2.00','0.020',2,100,1,NULL,20070512102759),
 ('050036','PE-2','Plastic Slip Fit Eagle Indoor/Parade Ornament Gold Gilt - 3.25 in. x 4.25 in. - fits  1 in. Aluminum Pole','2.00','0.020',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050041','R-30s','Metal Passion Cross Indoor/Parade Ornament Gold with Spindle - 6.5 in. x 4.25 in.','28.00','1.500',2,100,1,NULL,20070512102759),
 ('050045','R-30s','Metal Passion Cross Indoor/Parade Ornament Gold no Ferrule or  Spindle - 6.5 in. x 4.25 in.','24.00','1.500',2,100,1,NULL,20070512102759),
 ('050037','R-30','Metal Passion Cross Indoor/Parade Ornament Gold with Ferrule - 6.5 in. x 4.75 in.','28.00','1.500',2,100,1,NULL,20070512102759),
 ('050039','R-30','Metal Passion Cross Indoor/Parade Ornament Gold with Ferrule - 7.5 in. x 5 in.','32.00','1.500',2,100,1,NULL,20070512102759),
 ('050043','R-30','Metal Passion Cross Indoor/Parade Ornament Gold with Spindle - 7.5 in. x 5 in.','32.00','1.500',2,100,1,NULL,20070512102759),
 ('050047','R-30','Metal Passion Cross Indoor/Parade Ornament Gold no Ferrule or Spindle - 7.5 in. x 5 in.','28.00','1.500',2,100,1,NULL,20070512102759),
 ('050049','R-31','Metal Fancy Cross Indoor/Parade Ornament Gold with Ferrule - 7.5 in. x 4.75 in.','30.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050051','R-31','Metal Fancy Cross Indoor/Parade Ornament Gold with Spindle - 7.5 in. x 4.75 in.','30.00','1.500',2,100,1,NULL,20070512102759),
 ('050053','R-31','Metal Fancy Cross Indoor/Parade Ornament Gold no Ferrule or Spindle - 7.5 in. x 4.75 in.','26.00','1.500',2,100,1,NULL,20070512102759),
 ('050055','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold with Ferrule - 5.75 in. x 4.75 in.','30.00','1.500',2,100,1,NULL,20070512102759),
 ('050059','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold with Spindle - 5.75 in. x 4.75 in.','30.00','1.500',2,100,1,NULL,20070512102759),
 ('050063','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold no Ferrule or Spindle - 5.75 in. x 4.75 in.','26.00','1.500',2,100,1,NULL,20070512102759),
 ('050057','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold with Ferrule  - 6.75 in. x 5.5 in.','36.00','1.500',2,100,1,NULL,20070512102759),
 ('050061','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold with Spindle  - 6.75 in. x 5.5 in.','36.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050065','R-29s','Metal Avalon (Botonee) Cross Indoor/Parade Ornament Gold no Ferrule or Spindle  - 6.75 in. x 5.5 in.','32.00','1.500',2,100,1,NULL,20070512102759),
 ('050067','GC-1','Metal Greek Cross Indoor/Parade Ornament Gold with Ferrule  - 8.75 in. x 5 in.','38.00','1.500',2,100,1,NULL,20070512102759),
 ('050069','GC-1','Metal Greek Cross Indoor/Parade Ornament Gold with Spindle  - 8.75 in. x 5 in.','38.00','1.500',2,100,1,NULL,20070512102759),
 ('050071','GC-1','Metal Greek Cross Indoor/Parade Ornament Gold no Ferrule or Spindle  - 8.75 in. x 5 in.','34.00','1.500',2,100,1,NULL,20070512102759),
 ('050073','SD-1','Metal Star of David Indoor/Parade Ornament Gold with Ferrule  - 6.75 in. x 4.75 in.','34.00','1.500',2,100,1,NULL,20070512102759),
 ('050075','SD-1','Metal Star of David Indoor/Parade Ornament Gold with Spindle  - 6.75 in. x 4.75 in.','34.00','1.500',2,100,1,NULL,20070512102759),
 ('050077','SD-1','Metal Star of David Indoor/Parade Ornament Gold no Ferrule or Spindle  - 6.75 in. x 4.75 in.','30.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050079','MC-1','Metal Maltese Cross Indoor/Parade Ornament Gold with Ferrule  - 6.5 in. x 5.5 in.','34.00','1.500',2,100,1,NULL,20070512102759),
 ('050081','MC-1','Metal Maltese Cross Indoor/Parade Ornament Gold with Spindle  - 6.5 in. x 5.5 in.','34.00','1.500',2,100,1,NULL,20070512102759),
 ('050083','MC-1','Metal Maltese Cross Indoor/Parade Ornament Gold no Ferrule or Spindle  - 6.5 in. x 5.5 in.','30.00','1.500',2,100,1,NULL,20070512102759),
 ('050085','S-101','Metal Round Spear Gold with Ferrule- 3-1/2 in. x 1-1/2 in.','17.00','0.650',2,100,1,NULL,20070512102759),
 ('050091','S-101','Metal Round Spear Gold with Spindle- 3-1/2 in. x 1-1/2 in.','17.00','0.650',2,100,1,NULL,20070512102759),
 ('050097','S-101','Metal Round Spear Gold no Ferrule or Spindle- 3-1/2 in. x 1-1/2 in.','13.00','0.650',2,100,1,NULL,20070512102759),
 ('050087','S-105','Metal Round Spear Gold with Ferrule- 8 in. x 1-3/4 in.','32.00','0.650',2,100,1,NULL,20070512102759),
 ('050093','S-105','Metal Round Spear Gold with Spindle- 8 in. x 1-3/4 in.','32.00','0.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050099','S-105','Metal Round Spear Gold no Ferrule or Spindle- 8 in. x 1-3/4 in.','28.00','0.650',2,100,1,NULL,20070512102759),
 ('050089','S-104','Metal Round Spear Gold with Ferrule- 8 -1/2 in. x 2-1/2 in.','34.00','0.650',2,100,1,NULL,20070512102759),
 ('050095','S-104','Metal Round Spear Gold with Spindle- 8-1/2 in. x 2-1/2 in.','34.00','0.650',2,100,1,NULL,20070512102759),
 ('050101','S-104','Metal Round Spear Gold no Ferrule or Spindle- 8-1/2 in. x 2-1/2 in.','30.00','0.650',2,100,1,NULL,20070512102759),
 ('050103','IND-S-102f','Metal Flat Spear Gold with Ferrule - 7-1/2 in. x 1-3/4 in.','28.00','0.650',2,100,1,NULL,20070512102759),
 ('050105','IND-S-106f','Metal Flat Spear Gold with Ferrule - 10 in. x 2-3/4 in.','32.00','1.150',2,100,1,NULL,20070512102759),
 ('050107','IND-S-102s','Metal Flat Spear Gold with Spindle - 7-1/2 in. x 1-3/4 in.','28.00','0.600',2,100,1,NULL,20070512102759),
 ('050109','IND-S-106s','Metal Flat Spear Gold with Spindle - 10 in. x 2-3/4 in.','32.00','1.100',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050111','IND-S-102','Metal Flat Spear Gold no Ferrule or Spindle - 7-1/2 in. x 1-3/4 in.','24.00','0.500',2,100,1,NULL,20070512102759),
 ('050113','IND-S-106','Metal Flat Spear Gold no Ferrule or Spindle - 10 in. x 2-3/4 in.','28.00','1.000',2,100,1,NULL,20070512102759),
 ('050115','IND-S-100f','Metal Army Spear Gold with Ferrule - 8 in. x 3-1/2 in.','32.00','0.850',2,100,1,NULL,20070512102759),
 ('050117','IND-S-100s','Metal Army Spear Gold with Spindle - 8 in. x 3-1/2 in.','32.00','0.800',2,100,1,NULL,20070512102759),
 ('050119','IND-S-100','Metal Army Spear Gold no Ferrule or Spindle - 8 in. x 3-1/2 in.','28.00','0.700',2,100,1,NULL,20070512102759),
 ('050121','BA-1','Metal Battle Axe Gold with Ferrule - 8-1/4 in. x 4 in.','36.00','0.850',2,100,1,NULL,20070512102759),
 ('050123','BA-1','Metal Battle Axe Gold with Spindle - 8-1/4 in. x 4 in.','36.00','0.850',2,100,1,NULL,20070512102759),
 ('050125','BA-1','Metal Battle Axe Gold no Ferrule or Spindle - 8-1/4 in. x 4 in.','28.00','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050127','IND-PB-3f','Metal Parade Ball Gold with Ferrule - 4-1/4 in. x 3 in.','28.00','0.700',2,100,1,NULL,20070512102759),
 ('050129','IND-PB-3s','Metal Parade Ball Gold with Spindle - 4-1/4 in. x 3 in.','28.00','0.650',2,100,1,NULL,20070512102759),
 ('050131','IND-PB-3','Metal Parade Ball Gold no Ferrule or Spindle - 4-1/4 in. x 3 in.','24.00','0.550',2,100,1,NULL,20070512102759),
 ('050133','Z-1','Metal Parade Slip Fit Ball Gold  - 3 in. x 2 in. dia.','10.00','0.550',2,100,1,NULL,20070512102759),
 ('050135','Z-138','Metal Parade Slip Fit Ball Gold  - 4 in. x 2.5 in. dia.','18.00','0.550',2,100,1,NULL,20070512102759),
 ('050137','Z-2','Metal Parade Slip Fit Ball Gold  - 5.5 in. x 3.25 in. dia.','20.00','0.550',2,100,1,NULL,20070512102759),
 ('050139','VB1516','Vinyl Parade Slip Fit Ball  - 2-1/8 in. x 1-3/4 in. dia. - 15/16 Pole Diameter','1.50','0.020',2,100,1,NULL,20070512102759),
 ('050140','VB1','Vinyl Parade Slip Fit Ball - 2-1/8 in. x 1-3/4 in. dia. - 1in.  Pole Diameter','1.50','0.020',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050141','VB138','Vinyl Parade Slip Fit Ball - 3-1/4 in. x 2-1/2 in. dia. - 1 -3/8 in.  Pole Diameter','2.50','0.020',2,100,1,NULL,20070512102759),
 ('050142','VB150','Vinyl Parade Slip Fit Ball - 3-1/4 in. x 2-1/2 in. dia. - 1 -1/2 in.  Pole Diameter','2.50','0.020',2,100,1,NULL,20070512102759),
 ('050143','VB158','Vinyl Parade Slip Fit Ball - 3-1/4 in. x 2-1/2 in. dia. - 1 -5/8 in.  Pole Diameter','2.50','0.020',2,100,1,NULL,20070512102759),
 ('050144','VB175','Vinyl Parade Slip Fit Ball - 4-1/4 in. x 3-1/2 in. dia. - 1 -3/4 in.  Pole Diameter','7.50','0.020',2,100,1,NULL,20070512102759),
 ('050145','GPB-1','Plastic Parade Slip Fit Ball - 1-3/8 in. x 1-5/8 in. dia. - 1 in.  Pole Diameter','2.00','0.020',2,100,1,NULL,20070512102759),
 ('050146','BF-1','Metal Pointed Bottom Ferrule Ornament 5.25 length - fits 13/16 diameter pole','40.00','0.750',2,100,1,NULL,20070512102759),
 ('050148','MPR3.5','Metal Pole Ring 3.5 in. outside dia. 7/8 in. inside dia.','32.00','0.550',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050150','TS-1','Metal Texas Star Gold with Ferrule - 6.75 in. x 4.25 in.','30.00','0.750',2,100,1,NULL,20070512102759),
 ('050152','TS-1','Metal Texas Star Gold with Spindle - 6.75 in. x 4.25 in.','30.00','0.750',2,100,1,NULL,20070512102759),
 ('050154','TS-1','Metal Texas Star Gold no Ferrule or Spindle - 6.75 in. x 4.25 in.','26.00','0.750',2,100,1,NULL,20070512102759),
 ('050156','FDL-1','Metal Fleur de Lis Gold with Ferrule - 7.75 in. x 4.75 in.','38.00','0.750',2,100,1,NULL,20070512102759),
 ('050157','ML-1','Metal Maple Leaf Gold with Ferrule - 6.75 in. x 4.50 in.','38.00','0.750',2,100,1,NULL,20070512102759),
 ('050169','ML-1','Metal Maple Leaf Gold with Spindle - 6.75 in. x 4.50 in.','38.00','0.750',2,100,1,NULL,20070512102759),
 ('050171','ML-1','Metal Maple Leaf Gold no Ferrule or Spindle - 6.75 in. x 4.50 in.','34.00','0.750',2,100,1,NULL,20070512102759),
 ('050158','FDL-1','Metal Fleur de Lis Gold with Spindle - 7.75 in. x 4.75 in.','38.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050160','FDL-1','Metal Fleur de Lis Gold no Ferrule or Spindle - 7.75 in. x 4.75 in.','34.00','0.750',2,100,1,NULL,20070512102759),
 ('050162','EH7','Metal Elk Head Gold with Ferrule - 4.5 in. x 4.75 in.','34.00','0.750',2,100,1,NULL,20070512102759),
 ('050164','EH7','Metal Elk Head Gold no Ferrule - 4.5 in. x 4.75 in.','26.00','0.750',2,100,1,NULL,20070512102759),
 ('050166','SFB','Wood Parade Slip Fit Ball - 3 in. x 2 in.','2.00','0.550',2,100,1,NULL,20070512102759),
 ('050173','GB7','Metal Bear Gold - 5.50 in. x 2 in. with Ferrule','38.00','0.750',2,100,1,NULL,20070512102759),
 ('050175','GB7','Metal Bear Gold - 5.50 in. x 2 in. no Ferrule or Spindle','30.00','0.750',2,100,1,NULL,20070512102759),
 ('050177','C-7','Metal Cardinal Gold with Ferrule - 6.5 in. x 1.75 in.','39.00','0.750',2,100,1,NULL,20070512102759),
 ('050179','C-7','Metal Cardinal Gold with Spindle - 6.5 in. x 1.75 in.','39.00','0.750',2,100,1,NULL,20070512102759),
 ('050181','C-7','Metal Cardinal Gold with no Ferrule or Spindle - 6.5 in. x 1.75 in.','35.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050183','IND-PA-12','Plastic Slip Fit Acorns Gold - 1-3/8 in. x 1 in.-Pole diameter1/2 in.','0.90','0.020',2,100,1,NULL,20070512102759),
 ('050184','IND-PA-34','Plastic Slip Fit Acorns Gold - 2 in. x 1 1/2 in.-Pole diameter 3/4 in.','2.40','0.030',2,100,1,NULL,20070512102759),
 ('050185','IND-PA-1516','Plastic Slip Fit Acorns Gold - 2-3/8 in. x 2 in.-Pole diameter 15/16 in.','2.20','0.040',2,100,1,NULL,20070512102759),
 ('050186','IND-PA-1','Plastic Slip Fit Acorns Gold - 2-3/8 in. x 2 in.-Pole diameter 1 in.','2.20','0.040',2,100,1,NULL,20070512102759),
 ('050187','IND-E200-1516','Endura Floor Stands Gold Stand Diameter - 9 in.','28.00','7.500',1,100,1,NULL,20070512102759),
 ('050188','IND-E200-1517','Endura Floor Stands Gold Stand Diameter - 9 in.','28.00','7.500',1,100,1,NULL,20070512102759),
 ('050189','E100-1516','Endura Floor Stands Gold Stand Diameter - 12 in.','39.00','13.250',1,100,1,NULL,20070512102759),
 ('050190','E100-1517','Endura Floor Stands Gold Stand Diameter - 12 in.','39.00','13.250',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050191','E100-118','Endura Floor Stands Gold Stand Diameter - 12 in.','39.00','13.250',1,100,1,NULL,20070512102759),
 ('050192','E100-114','Endura Floor Stands Gold Stand Diameter - 12 in.','39.00','13.250',1,100,1,NULL,20070512102759),
 ('050193','E100-112','Endura Floor Stands Gold Stand Diameter - 12 in.','39.00','13.250',1,100,1,NULL,20070512102759),
 ('050194','E200-1516','Endura Floor Stands Gold Stand Diameter - 12 in.','28.00','7.500',1,100,1,NULL,20070512102759),
 ('050201','B101-1516','American Beauty Floor Stands - Gold -  7 in. stand diameter','22.00','3.650',1,100,1,NULL,20070512102759),
 ('050202','B101-1','American Beauty Floor Stands - Gold -  7 in. stand diameter','22.00','3.650',1,100,1,NULL,20070512102759),
 ('050203','B100-118','American Beauty Floor Stands - Gold -  12 in. stand diameter','46.00','16.600',1,100,1,NULL,20070512102759),
 ('050204','b100-114','American Beauty Floor Stands - Gold -  12 in. stand diameter','50.00','16.600',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050205','B100-138','American Beauty Floor Stands - Gold -  12 in. stand diameter','50.00','16.600',1,100,1,NULL,20070512102759),
 ('050211','B-300','Three Hole Floor Stands - Gold - 12 in. Stand Diameter','96.00','33.900',1,100,1,NULL,20070512102759),
 ('050213','US-100','U.S. Floor Stands - Gold only - 12 in. Stand Diameter','64.00','13.350',1,100,1,NULL,20070512102759),
 ('050214','US-101','U.S. Floor Stands - Gold only - 12 in. Stand Diameter','64.00','13.350',1,100,1,NULL,20070512102759),
 ('050215','F-100','Federal Floor Stands - Gold - 9 in. Stand Diameter','34.00','8.250',1,100,1,NULL,20070512102759),
 ('050217','PMB-M','Regent Floor Stands - 12 in. Stand Diameter','36.00','3.450',1,100,1,NULL,20070512102759),
 ('050219','PMB-P','Viscount Floor Stands - Gold - 12 in. Stand Diameter','27.00','3.450',1,100,1,NULL,20070512102759),
 ('050221','PFS','Portable Floor Stand','20.00','1.500',1,100,1,NULL,20070512102759),
 ('050282','P-11','Oak Pole - 2 piece - Indoor/Parade - 8 ft. x 15/16 in.','34.00','1.750',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050283','P-111','Oak Pole - 2 piece - Indoor/Parade - 8 ft. x 1 in.','34.00','2.050',1,100,1,NULL,20070512102759),
 ('050284','P-20','Oak Pole - 2 piece - Indoor/Parade - 8 ft. x 1-1/8 in.','45.00','3.100',1,100,1,NULL,20070512102759),
 ('050285','P-24','Oak Pole - 2 piece - Indoor/Parade - 8 ft. x 1-1/4 in.','45.00','3.500',1,100,1,NULL,20070512102759),
 ('050286','P-21','Oak Pole - 2 piece - Indoor/Parade - 9 ft. x 1-1/8 in.','49.00','3.250',1,100,1,NULL,20070512102759),
 ('050287','P-25','Oak Pole - 2 piece - Indoor/Parade - 9 ft. x 1-1/4 in.','49.00','3.800',1,100,1,NULL,20070512102759),
 ('050446','B-10','Leather Carrying Belt - Single - White','50.00','0.700',1,100,1,NULL,20070512102759),
 ('050447','B-11-BL','Leather Carrying Belt - Single - Black','40.00','0.700',1,100,1,NULL,20070512102759),
 ('050448','B-11-T','Leather Carrying Belt - Single - Tan','40.00','0.700',1,100,1,NULL,20070512102759),
 ('050449','B-12-W','Leather Carrying Belt - Double - White','63.00','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('050450','B-12-BL','Leather Carrying Belt - Double - Black','40.00','1.000',1,100,1,NULL,20070512102759),
 ('050451','WWS','White Web Carrying Belts - Single','24.00','0.350',1,100,1,NULL,20070512102759),
 ('050452','WWD','White Web Carrying Belts - Double','42.00','0.550',1,100,1,NULL,20070512102759),
 ('050453','LFC','Leatherette Flag Covers - 64 in. x 9 in.','20.00','1.800',1,100,1,NULL,20070512102759),
 ('050454','LFC','Leatherette Flag Covers - 76 in. x 9 in.','24.00','2.050',2,100,1,NULL,20070512102759),
 ('060260','NJN-1','Navy Jack Outdoor Nylon Flag  12 in. x 18 in.','8.24','0.092',2,100,1,NULL,20070512102759),
 ('060261','NJN-3','Navy Jack Outdoor Nylon Flag  2 ft. x 3 ft.','18.08','0.250',2,100,1,NULL,20070512102759),
 ('060262','NJN-5','Navy Jack Outdoor Nylon Flag  3 ft. x 5 ft.','32.16','0.450',2,100,1,NULL,20070512102759),
 ('060263','NJN-6','Navy Jack Outdoor Nylon Flag  4 ft. x 6 ft.','42.32','0.700',2,100,1,NULL,20070512102759),
 ('060264','NJN-8','Navy Jack Outdoor Nylon Flag  5 ft. x 8 ft.','77.44','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('060265','NJN-10','Navy Jack Outdoor Nylon Flag  6 ft. x 10 ft.','224.00','2.000',2,100,1,NULL,20070512102759),
 ('060266','NJN-12','Navy Jack Outdoor Nylon Flag  8 ft. x 12 ft.','368.00','3.550',2,100,1,NULL,20070512102759),
 ('060267','FNN-3','First National Outdoor Nylon Flag  2 ft. x 3 ft.','18.08','0.250',2,100,1,NULL,20070512102759),
 ('060268','FNN-5','First National Outdoor Nylon Flag  3 ft. x 5 ft.','33.28','0.450',2,100,1,NULL,20070512102759),
 ('060269','FNN-6','First National Outdoor Nylon Flag  4 ft. x 6 ft.','42.32','0.700',2,100,1,NULL,20070512102759),
 ('060270','FNN-8','First National Outdoor Nylon Flag  5 ft. x 8 ft.','77.44','1.000',2,100,1,NULL,20070512102759),
 ('060271','SNN-3','Second National Outdoor Nylon Flag  2 ft. x 3 ft.','18.08','0.250',2,100,1,NULL,20070512102759),
 ('060272','SNN-5','Second National Outdoor Nylon Flag  3 ft. x 5 ft.','33.28','0.450',2,100,1,NULL,20070512102759),
 ('060273','SNN-6','Second National Outdoor Nylon Flag  4 ft. x 6 ft.','42.32','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('060274','SNN-8','Second National Outdoor Nylon Flag  5 ft. x 8 ft.','77.44','1.000',2,100,1,NULL,20070512102759),
 ('060275','TNN-1','Third National Outdoor Nylon Flag  2 ft. x 3 ft.','18.08','0.250',2,100,1,NULL,20070512102759),
 ('060276','TNN-3','Third National Outdoor Nylon Flag  3 ft. x 5 ft.','33.28','0.450',2,100,1,NULL,20070512102759),
 ('060277','TNN-5','Third National Outdoor Nylon Flag  4 ft. x 6 ft.','42.32','0.700',2,100,1,NULL,20070512102759),
 ('060278','TNN-6','Third National Outdoor Nylon Flag  5 ft. x 8 ft.','77.44','1.000',2,100,1,NULL,20070512102759),
 ('060279','BBN-1','Bonnie Blue Outdoor Nylon Flag  2 ft. x 3 ft.','15.20','0.250',2,100,1,NULL,20070512102759),
 ('060280','BBN-3','Bonnie Blue Outdoor Nylon Flag  3 ft. x 5 ft.','26.88','0.450',2,100,1,NULL,20070512102759),
 ('060281','BBN-5','Bonnie Blue Outdoor Nylon Flag  4 ft. x 6 ft.','38.16','0.700',2,100,1,NULL,20070512102759),
 ('060282','BBN-6','Bonnie Blue Outdoor Nylon Flag  5 ft. x 8 ft.','54.80','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('060377','NJC-5','Navy Jack Outdoor Acid Dyed Heavy Weight Cotton Flag  3 ft. x 5 ft.','19.95','0.500',2,100,1,NULL,20070512102759),
 ('060731','60731-BRT','Special Home FlagPole Set - 5\' aluminum pole with adjustable cast aluminum bracket','24.95','3.000',1,100,1,NULL,20070512102759),
 ('060737','NJEP-1','\"Endura-Poly Confederate Navy Jack Outdoor Flag 12\"\" x 18\"\"\"','5.52','0.092',2,100,1,NULL,20070512102759),
 ('060380','NJEP-3','Endura-Poly Confederate Navy Jack Outdoor Flag 2\' x 3\'','12.80','0.250',2,100,1,NULL,20070512102759),
 ('060381','NJEP-5','Endura-Poly Confederate Navy Jack Outdoor Flag 3\' x 5\'','16.00','0.450',2,100,1,NULL,20070512102759),
 ('070040','ADN-AF','Special Run Acid Dye Nylon Outdoor Air Force Flag 2\' x 3\'','15.95','0.500',2,100,1,NULL,20070512102759),
 ('070041','ADN-AF','Special Run Acid Dye Nylon Outdoor Air Force Flag 3\' x 5\'','23.95','0.500',2,100,1,NULL,20070512102759),
 ('070042','ADN-A','Special Run Acid Dye Nylon Outdoor Army Flag 2\' x 3\'','15.95','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070043','ADN-A','Special Run Acid Dye Nylon Outdoor Army Flag 3\' x 5\'','23.95','0.500',2,100,1,NULL,20070512102759),
 ('070044','ADN-CG','Special Run Acid Dye Nylon Outdoor Coast Guard Flag 2\' x 3\'','15.95','0.500',2,100,1,NULL,20070512102759),
 ('070045','ADN-CG','Special Run Acid Dye Nylon Outdoor Coast Guard Flag 3\' x 5\'','23.95','0.500',2,100,1,NULL,20070512102759),
 ('070046','ADN-MC','Special Run Acid Dye Nylon Outdoor Marine Corps Flag 2\' x 3\'','15.95','0.500',2,100,1,NULL,20070512102759),
 ('070047','ADN-MC','Special Run Acid Dye Nylon Outdoor Marine Corps Flag 3\' x 5\'','23.95','0.500',2,100,1,NULL,20070512102759),
 ('070048','ADN-N','Special Run Acid Dye Nylon Outdoor Navy Flag 2\' x 3\'','15.95','0.500',2,100,1,NULL,20070512102759),
 ('070049','ADN-N','Special Run Acid Dye Nylon Outdoor Navy Flag 3\' x 5\'','23.95','0.500',2,100,1,NULL,20070512102759),
 ('070050','ADN-POW-MIA','Special Run Acid Dye Nylon Outdoor POW-MIA Flag 2\' x 3\'','11.25','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070051','ADN-POW-MIA','Special Run Acid Dye Nylon Outdoor POW-MIA Flag 3\' x 5\'','21.75','0.500',2,100,1,NULL,20070512102759),
 ('070052','AFF-AF','Air Force Outdoor Nylon Flag  - 3 ft. x 5 ft.','29.50','0.450',2,100,1,NULL,20070512102759),
 ('070053','AFF-A','Army Outdoor Nylon Flag  - 3 ft. x 5 ft.','29.50','0.450',2,100,1,NULL,20070512102759),
 ('070054','AFF-CG','Coast Guard Outdoor Nylon Flag  - 3 ft. x 5 ft.','29.50','0.450',2,100,1,NULL,20070512102759),
 ('070055','AFF-MC','Marine Corps Outdoor Nylon Flag  - 3 ft. x 5 ft.','29.50','0.450',2,100,1,NULL,20070512102759),
 ('070056','AFF-N','Navy Outdoor Nylon Flag  - 3 ft. x 5 ft.','29.50','0.450',2,100,1,NULL,20070512102759),
 ('070057','AFF-AF','Air Force Indoor Nylon Flag - 3 ft. x 5 ft. (w/ pole hem & gold fringe)','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070058','AFF-A','Army Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem & gold fringe)','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070059','AFF-CG','Coast Guard Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem & gold fringe)','43.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070060','AFF-MC','Marine Corps Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem & gold fringe)','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070061','AFF-N','Navy Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem & gold fringe)','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070062','AFF-AF','Air Force Indoor Nylon Flag - 3 ft. x 5 ft. (w/ pole hem only)','60.00','0.450',2,100,1,NULL,20070512102759),
 ('070063','AFF-A','Army Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem only)','60.00','0.450',2,100,1,NULL,20070512102759),
 ('070064','AFF-CG','Coast Guard Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem only)','60.00','0.450',2,100,1,NULL,20070512102759),
 ('070065','AFF-MC','Marine Corps Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem only)','60.00','0.450',2,100,1,NULL,20070512102759),
 ('070066','AFF-N','Navy Indoor Nylon Flag  - 3 ft. x 5 ft. (w/ pole hem only)','60.00','0.450',2,100,1,NULL,20070512102759),
 ('070067','AFF-AF','Air Force Outdoor Nylon Flag  - 4 ft. x 6 ft.','49.95','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070068','AFF-A','Army Outdoor Nylon Flag  - 4 ft. x 6 ft.','49.95','0.700',2,100,1,NULL,20070512102759),
 ('070069','AFF-CG','Coast Guard Outdoor Nylon Flag  - 4 ft. x 6 ft.','49.95','0.700',2,100,1,NULL,20070512102759),
 ('070070','AFF-MC','Marine Corps Outdoor Nylon Flag  - 4 ft. x 6 ft.','49.95','0.700',2,100,1,NULL,20070512102759),
 ('070071','AFF-N','Navy Outdoor Nylon Flag  - 4 ft. x 6 ft.','49.95','0.700',2,100,1,NULL,20070512102759),
 ('070072','AFF-AF','Air Force Indoor Nylon Flag - 4 ft. x 6 ft. (w/ pole hem only)','117.00','0.700',2,100,1,NULL,20070512102759),
 ('070073','AFF-A','Army Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem only)','117.00','0.700',2,100,1,NULL,20070512102759),
 ('070074','AFF-CG','Coast Guard Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem only)','117.00','0.700',2,100,1,NULL,20070512102759),
 ('070075','AFF-MC','Marine Corps Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem only)','117.00','0.700',2,100,1,NULL,20070512102759),
 ('070076','AFF-N','Navy Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem only)','117.00','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070077','AFF-AF','Air Force Indoor Nylon Flag - 4 ft. x 6 ft. (w/ pole hem & gold fringe)','139.00','0.700',2,100,1,NULL,20070512102759),
 ('070078','AFF-A','Army Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem & gold fringe)','139.00','0.700',2,100,1,NULL,20070512102759),
 ('070079','AFF-CG','Coast Guard Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem & gold fringe)','139.00','0.700',2,100,1,NULL,20070512102759),
 ('070080','AFF-MC','Marine Corps Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem & gold fringe)','139.00','0.700',2,100,1,NULL,20070512102759),
 ('070081','AFF-N','Navy Indoor Nylon Flag  - 4 ft. x 6 ft. (w/ pole hem & gold fringe)','139.00','0.700',2,100,1,NULL,20070512102759),
 ('070082','AFF-AF','Air Force Outdoor Nylon Flag  - 5 ft. x 8 ft.','69.95','1.000',2,100,1,NULL,20070512102759),
 ('070083','AFF-A','Army Outdoor Nylon Flag  - 5 ft. x 8 ft.','69.95','1.000',2,100,1,NULL,20070512102759),
 ('070084','AFF-CG','Coast Guard Outdoor Nylon Flag  - 5 ft. x 8 ft.','69.95','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070085','AFF-MC','Marine Corps Outdoor Nylon Flag  - 5 ft. x 8 ft.','69.95','1.000',2,100,1,NULL,20070512102759),
 ('070086','AFF-N','Navy Outdoor Nylon Flag  - 5 ft. x 8 ft.','69.95','1.000',2,100,1,NULL,20070512102759),
 ('070194','AFF-AF-set','Air Force Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070195','AFF-A-set','Army Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070196','AFF-Cg-set','Coast Guard Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070197','AFF-Mc-set','Marine Corps Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070198','AFF-N-set','Navy Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070199','AFF-MIA-set','MIA Indoor Nylon Flag Set (includes 3\' x 5\' flag and 8\' pole)','175.00','7.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070200','AFF-A-set','Army Indoor Nylon Flag Set (includes 4\' x 6\' flag and 9\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070201','AFF-Cg-set','Coast Guard Indoor Nylon Flag Set (includes 4\' x 6\' flag and 9\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070202','AFF-Mc-set','Marine Corps Indoor Nylon Flag Set (includes 4\' x 6\' flag and 9\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070203','AFF-N-set','Navy Indoor Nylon Flag Set (includes 4\' x 6\' flag and 9\' pole)','175.00','7.500',1,100,1,NULL,20070512102759),
 ('070112','Mounted-AF','\"Air Force mounted armed forces flag (4\"\"x 6\"\" endura gloss mini flag)\"','2.50','0.250',1,100,1,NULL,20070512102759),
 ('070113','Mounted-A','\"Army mounted armed forces flag (4\"\"x 6\"\" endura gloss mini flag)\"','2.50','0.250',1,100,1,NULL,20070512102759),
 ('070114','Mounted-CG','\"Coast Guard mounted armed forces flag (4\"\"x 6\"\" endura gloss mini flag)\"','2.50','0.250',1,100,1,NULL,20070512102759),
 ('070115','Mounted-Mc','\"Marine Corp mounted armed forces flag (4\"\"x 6\"\" endura gloss mini flag)\"','2.50','0.250',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070116','Mounted-N','\"Navy mounted armed forces flag (4\"\"x 6\"\" endura gloss mini flag)\"','2.50','0.250',1,100,1,NULL,20070512102759),
 ('070132','Mounted-US-set','\"Mounted armed forces mini flag set (4\"\" x 6\"\" flags of all military branch and 2 1/2\"\" base included)\"','15.50','1.520',1,100,1,NULL,20070512102759),
 ('070140','PM-OS-5','Outdoor - POW-MIA Nylon Flag 3 ft. x 5 ft. Single Face','28.00','0.450',2,100,1,NULL,20070512102759),
 ('070141','PM-OS-6','Outdoor - POW-MIA Nylon Flag 4 ft. x 6 ft. Single Face','45.00','0.700',2,100,1,NULL,20070512102759),
 ('070142','PM-OS-8','Outdoor - POW-MIA Nylon Flag 5 ft. x 8 ft. Single Face','70.00','1.000',2,100,1,NULL,20070512102759),
 ('070143','PM-OS-10','Outdoor - POW-MIA Nylon Flag 6 ft. x 10 ft. Single Face','121.00','2.000',2,100,1,NULL,20070512102759),
 ('070144','PM-OD-1','Outdoor - POW-MIA Nylon Flag 12 in. x 18 in. Double Face','24.00','0.165',2,100,1,NULL,20070512102759),
 ('070145','PM-OD-3','Outdoor - POW-MIA Nylon Flag 2 ft. x 3 ft. Double Face','31.00','0.350',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070146','PM-OD-5','Outdoor - POW-MIA Nylon Flag 3 ft. x 5 ft. Double Face','49.00','0.600',2,100,1,NULL,20070512102759),
 ('070147','PM-OD-6','Outdoor - POW-MIA Nylon Flag 4 ft. x 6 ft. Double Face','60.00','1.000',2,100,1,NULL,20070512102759),
 ('070148','PM-OD-8','Outdoor - POW-MIA Nylon Flag 5 ft. x 8 ft. Double Face','109.00','1.500',2,100,1,NULL,20070512102759),
 ('070149','PM-OD-10','Outdoor - POW-MIA Nylon Flag 6 ft. x 10 ft. Double Face','140.00','2.000',2,100,1,NULL,20070512102759),
 ('070150','PM-IF-3','Indoor/Parade - POW-MIA Nylon Flag 2 ft. x 3 ft. With Silver Fringe','43.50','0.200',2,100,1,NULL,20070512102759),
 ('070151','PM-IF-5','Indoor/Parade - POW-MIA Nylon Flag 3 ft. x 5 ft. With Silver Fringe','58.00','0.400',2,100,1,NULL,20070512102759),
 ('070152','PM-IF-6','Indoor/Parade - POW-MIA Nylon Flag 4 ft. x 6 ft. With Silver Fringe','91.00','0.650',2,100,1,NULL,20070512102759),
 ('070153','PM-IF-8','Indoor/Parade - POW-MIA Nylon Flag 5 ft. x 8 ft. With Silver Fringe','139.00','0.900',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070154','PM-IF-10','Indoor/Parade - POW-MIA Nylon Flag 6 ft. x 10 ft. With Silver Fringe','202.00','1.850',2,100,1,NULL,20070512102759),
 ('070155','PM-I-3','Indoor/Parade - POW-MIA Nylon Flag 2 ft. x 3 ft. Without Fringe','31.50','0.300',2,100,1,NULL,20070512102759),
 ('070156','PM-I-5','Indoor/Parade - POW-MIA Nylon Flag 3 ft. x 5 ft. Without Fringe','41.00','0.600',2,100,1,NULL,20070512102759),
 ('070157','PM-I-6','Indoor/Parade - POW-MIA Nylon Flag 4 ft. x 6 ft. Without Fringe','69.00','0.950',2,100,1,NULL,20070512102759),
 ('070158','PM-I-8','Indoor/Parade - POW-MIA Nylon Flag 5 ft. x 8 ft. Without Fringe','110.00','1.200',2,100,1,NULL,20070512102759),
 ('070159','PM-I-10','Indoor/Parade - POW-MIA Nylon Flag 6 ft. x 10 ft. Without Fringe','158.00','2.200',2,100,1,NULL,20070512102759),
 ('070188','AFR-AF','Armed Forces Retired - Poly Flag - Air Force - 3 ft. x 4 ft.','14.00','0.320',2,100,1,NULL,20070512102759),
 ('070189','AFR-A','Armed Forces Retired - Poly Flag - Army - 3 ft. x 4 ft.','14.00','0.320',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070190','AFR-CG','Armed Forces Retired - Poly Flag - Coast Guard - 3 ft. x 5 ft.','14.00','0.350',2,100,1,NULL,20070512102759),
 ('070191','AFR-MC','Armed Forces Retired - Poly Flag - Marine Corps - 3 ft. x 5 ft.','14.00','0.350',2,100,1,NULL,20070512102759),
 ('070192','AFR-CG','Armed Forces Retired - Poly Flag - Merchant Marine - 3 ft. x 4 ft.','14.00','0.320',2,100,1,NULL,20070512102759),
 ('070193','AFR-N','Armed Forces Retired - Poly Flag - Navy - 3 ft. x 5 ft.','14.00','0.350',2,100,1,NULL,20070512102759),
 ('070238','VC-WW2','Veterans Commemorative Flag - World War II - 3 ft. x 5 ft.','64.00','0.430',2,100,1,NULL,20070512102759),
 ('070239','VC-KW','Veterans Commemorative Flag - Korean War - 3 ft. x 5 ft.','64.00','0.450',2,100,1,NULL,20070512102759),
 ('070240','VC-VW','Veterans Commemorative Flag - Vietnam War - 3 ft. x 5 ft.','102.00','0.450',2,100,1,NULL,20070512102759),
 ('070331','MFS-2 GS','Cherry Memorial Case w/Gold Seal','157.20','9.100',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070332','MFS-2 NS','Cherry Memorial Case No Seal','157.20','9.100',1,100,1,NULL,20070512102759),
 ('070333','IFC-2','Oak Memorial Case For 3 ft. x 5 ft. Flag','62.00','3.700',1,100,1,NULL,20070512102759),
 ('070334','IFC-1','Oak Memorial Case For 5 ft. x 9-1/2 ft. Flag','73.60','5.700',1,100,1,NULL,20070512102759),
 ('070335','IFC-P','Poplar Memorial Case','56.00','5.300',1,100,1,NULL,20070512102759),
 ('070336','IFC-M','Maple Memorial Case w/Wood Grain Finish','54.00','4.000',1,100,1,NULL,20070512102759),
 ('070339','MFC-1','Plastic Memorial Case','8.00','0.163',1,100,1,NULL,20070512102759),
 ('070363','BlueStar-1','Blue Star Service Flag - 1 Star - 8 in. x 12 in.','14.95','0.150',2,100,1,NULL,20070512102759),
 ('070364','BlueStar-1','Blue Star Service Flag - 1 Star - 10 in. x 14 in.','24.00','0.180',2,100,1,NULL,20070512102759),
 ('070365','BlueStar-1','Blue Star Service Flag - 1 Star - 12 in. x 18 in.','29.00','0.200',2,100,1,NULL,20070512102759),
 ('070366','BlueStar-2','Blue Star Service Flag - 2 Star - 8 in. x 12 in.','18.00','0.150',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070367','BlueStar-2','Blue Star Service Flag - 2 Star - 10 in. x 14 in.','26.00','0.180',2,100,1,NULL,20070512102759),
 ('070368','BlueStar-2','Blue Star Service Flag - 2 Star -  12 in. x 18 in.','31.00','0.200',2,100,1,NULL,20070512102759),
 ('070369','BlueStar-3','Blue Star Service Flag - 3 Star - 8 in. x 12 in.','20.00','0.150',2,100,1,NULL,20070512102759),
 ('070370','BlueStar-3','Blue Star Service Flag - 3 Star - 10 in. x 14 in.','28.00','0.180',2,100,1,NULL,20070512102759),
 ('070371','BlueStar-3','Blue Star Service Flag - 3 Star - 12 in. x 18 in.','33.00','0.200',2,100,1,NULL,20070512102759),
 ('070372','BlueStar-4','Blue Star Service Flag - 4 Star - 8 in. x 12 in.','22.00','0.150',2,100,1,NULL,20070512102759),
 ('070373','BlueStar-4','Blue Star Service Flag - 4 Star - 10 in. x 14 in.','30.00','0.180',2,100,1,NULL,20070512102759),
 ('070374','BlueStar-4','Blue Star Service Flag - 4 Star  - 12 in. x 18 in.','35.00','0.200',2,100,1,NULL,20070512102759),
 ('070375','Economy BlueStar-1','\"Economy Blue Star Service Flag printed 1 star - 8\"\"x12\"\"\"','7.50','0.150',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070376','Economy BlueStar-2','\"Economy Blue Star Service Flag printed 2 star - 8\"\"x12\"\"\"','7.50','0.150',2,100,1,NULL,20070512102759),
 ('070377','Economy BlueStar-3','\"Economy Blue Star Service Flag printed 3 star - 8\"\"x12\"\"\"','7.50','0.150',2,100,1,NULL,20070512102759),
 ('070378','Economy BlueStar-4','\"Economy Blue Star Service Flag printed 4 star - 8\"\"x12\"\"\"','7.50','0.150',2,100,1,NULL,20070512102759),
 ('070379','Supportflag','\"Yellow \"\"We Support our Troops\"\" flag - 3\'x5\'\"','26.00','0.450',2,100,1,NULL,20070512102759),
 ('070380','BlueStar horiz -1','3\' x 5\' Nylon Blue Star flag - horizontal- 1 star','26.00','0.450',2,100,1,NULL,20070512102759),
 ('070381','BlueStar horiz -2','3\' x 5\' Nylon Blue Star flag - horizontal- 2 star','31.00','0.450',2,100,1,NULL,20070512102759),
 ('070389','BlueStar horiz -3','3\' x 5\' Nylon Blue Star flag - horizontal- 3 star','36.00','0.450',2,100,1,NULL,20070512102759),
 ('070382','BlueStar vert -1','3\' x 5\' Nylon Blue Star flag - vertical- 1 star','26.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070383','BlueStar vert-2','3\' x 5\' Nylon Blue Star flag - vertical- 2 star','31.00','0.450',2,100,1,NULL,20070512102759),
 ('070390','BlueStar vert-3','3\' x 5\' Nylon Blue Star flag - vertical- 3 star','36.00','0.450',2,100,1,NULL,20070512102759),
 ('070391','GoldStar-1','\"8\"\" x 12\"\" Gold Star Service flag\"','14.95','0.150',2,100,1,NULL,20070512102759),
 ('070392','GoldStar horiz -1','3\' x 5\' Nylon Gold Star Service flag - horizontal - 1 star','26.00','0.450',2,100,1,NULL,20070512102759),
 ('070384','smlsupportflag','\"8\"\" x 12\"\" \"\"We support Our Troops\"\" window flag\"','11.95','0.150',2,100,1,NULL,20070512102759),
 ('070385','Printed BlueStar-1','\"8.5\"\" x 14\"\" Printed Satin Blue Star Service flag 1 Star\"','9.95','0.150',2,100,1,NULL,20070512102759),
 ('070386','Printed BlueStar-2','\"8.5\"\" x 14\"\" Printed Satin Blue Star Service flag 2 Star\"','9.95','0.150',2,100,1,NULL,20070512102759),
 ('070387','Printed BlueStar-3','\"8.5\"\" x 14\"\" Printed Satin Blue Star Service flag 3 Star\"','9.95','0.150',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070388','Printed BlueStar-4','\"8.5\"\" x 14\"\" Printed Satin Blue Star Service flag 4 Star\"','9.95','0.150',2,100,1,NULL,20070512102759),
 ('070393','GoldStar horiz -2','3\' x 5\' Nylon Gold Star Service flag - horizontal - 2 star','31.00','0.450',2,100,1,NULL,20070512102759),
 ('070394','GoldStar horiz -3','3\' x 5\' Nylon Gold Star Service flag - horizontal - 3 star','36.00','0.450',2,100,1,NULL,20070512102759),
 ('070395','BlueStar horiz -4','3\' x 5\' Nylon Blue Star flag - horizontal- 4 star','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070396','GoldStar horiz -4','3\' x 5\' Nylon Gold Star Service flag - horizontal - 4 star','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070397','GoldStar Vert -1','3\' x 5\' Nylon Gold Star Service flag - vertical - 1 star','26.00','0.450',2,100,1,NULL,20070512102759),
 ('070398','GoldStar Vert -2','3\' x 5\' Nylon Gold Star Service flag - vertical - 2 star','31.00','0.450',2,100,1,NULL,20070512102759),
 ('070399','GoldStar Vert -3','3\' x 5\' Nylon Gold Star Service flag - vertical - 3 star','36.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('070400','BlueStar vert-4','3\' x 5\' Nylon Blue Star flag - vertical- 4 star','43.00','0.450',2,100,1,NULL,20070512102759),
 ('070401','GoldStar Vert -4','3\' x 5\' Nylon Gold Star Service flag - vertical - 4 star','43.00','0.450',2,100,1,NULL,20070512102759),
 ('120000','MES-FL','Message Flag with - ANTIQUES - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120001','MES-FL','Message Flag with - AUCTION - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120018','MES-FL','Message Flag with - CONDOS - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120032','MES-FL','Message Flag with - GRAND OPENING - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120036','MES-FL','Message Flag with - LEASING - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120040','MES-FL','Message Flag with - MODEL - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('120042','MES-FL','Message Flag with - MODELS - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120045','MES-FL','Message Flag with - NEW HOMES - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120046','MES-FL','Message Flag with - NOW LEASING - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120048','MES-FL','Message Flag with - OPEN - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120055','MES-FL','Message Flag with - OPEN HOUSE - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120063','MES-FL','Message Flag with - SALE - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120083','MES-FL','Message Flag with - WE FINANCE - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759),
 ('120086','MES-FL','Message Flag with - WELCOME - message - 3 ft. x 5 ft. Red/White/Blue','16.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('180031','PEN-02','Pennant Streamers - 60 ft. Long / Red-White','7.60','0.650',1,100,1,NULL,20070512102759),
 ('180034','PEN-03','Pennant Streamers - 60 ft. Long / Red-Yellow','7.60','0.650',1,100,1,NULL,20070512102759),
 ('180039','PEN-04','Pennant Streamers - 60 ft. Long / Yellow-Green','7.60','0.650',1,100,1,NULL,20070512102759),
 ('180040','PEN-OPEN HOUSE','Open House Pennant Streamers - 60 ft. Long / Red-White-Blue','36.20','0.650',1,100,1,NULL,20070512102759),
 ('230266','LP-US (100-pack)','USA Flag Lapel Pin (100-pack)','150.00','1.130',2,100,1,NULL,20070512102759),
 ('310043','SU-AJB','Silver Alum Ultimate Adjustable Bracket','13.00','0.850',2,100,1,NULL,20070512102759),
 ('310044','WU-AJB','White Alum Ultimate Adjustable Bracket','13.00','0.850',2,100,1,NULL,20070512102759),
 ('310046','AJB','Silver Alum Standard Adjustable Bracket','12.00','0.850',2,100,1,NULL,20070512102759),
 ('310047','AJB-W','White Alum Standard Adjustable Bracket','13.00','0.850',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('310048','AJB-G','Gold Alum Standard Adjustable Bracket','14.00','0.850',2,100,1,NULL,20070512102759),
 ('310049','AJB-B','Black Alum Standard Adjustable Bracket','13.00','0.850',2,100,1,NULL,20070512102759),
 ('310052','MPB','Silver Alum Multi Purpose Bracket','10.00','0.500',2,100,1,NULL,20070512102759),
 ('310053','MPB-W','White Alum Multi Purpose Bracket','11.00','0.500',2,100,1,NULL,20070512102759),
 ('310054','MPB-G','Gold Alum Multi Purpose Bracket','13.00','0.500',2,100,1,NULL,20070512102759),
 ('310055','NMPB','Nylon Multi Purpose Bracket','4.00','0.250',2,100,1,NULL,20070512102759),
 ('310056','SSB-12 S','1/2 in. Silver Stamped Steel Bracket','1.40','0.150',2,100,1,NULL,20070512102759),
 ('310057','SSB-34 S','3/4 in. Silver Stamped Steel Bracket','1.50','0.200',2,100,1,NULL,20070512102759),
 ('310058','SSB-10 S','1 in. Silver Stamped Steel Bracket','3.70','0.400',2,100,1,NULL,20070512102759),
 ('310059','SSB-114 S','1-1/4 in. Silver Stamped Steel Bracket','6.10','0.350',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('310060','SSB-12 G','1/2 in. Gold Stamped Steel Bracket','2.10','0.150',2,100,1,NULL,20070512102759),
 ('310061','SSB-34 G','3/4 in. Gold Stamped Steel Bracket','2.30','0.200',2,100,1,NULL,20070512102759),
 ('310062','SSB-10 G','1 in. Gold Stamped Steel Bracket','4.60','0.400',2,100,1,NULL,20070512102759),
 ('310063','SSB-114 G','1-1/4 in. Gold Stamped Steel Bracket','7.10','0.350',2,100,1,NULL,20070512102759),
 ('310085','SSSFG3','Silver Stamped Steel 3 Finger Bracket','3.80','0.200',2,100,1,NULL,20070512102759),
 ('310086','SSSFG5','Silver Stamped Steel 5 Finger Bracket','5.50','0.250',2,100,1,NULL,20070512102759),
 ('310110','NFT4','Nylon Flag Tie For 3/4 in. Pole','0.24','0.001',2,100,1,NULL,20070512102759),
 ('310111','NFT8','Nylon Flag Tie For 2 in. Pole','0.50','0.004',2,100,1,NULL,20070512102759),
 ('310112','NFT12','Nylon Flag Tie For 3 in. Pole','0.68','0.005',2,100,1,NULL,20070512102759),
 ('310113','NFT16','Nylon Flag Tie For 4 in. Pole','0.76','0.020',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('310114','NFT22','Nylon Flag Tie For 6 in. Pole','0.86','0.026',2,100,1,NULL,20070512102759),
 ('310115','NFT32','Nylon Flag Tie For 9-1/4 in. Pole','1.90','0.042',2,100,1,NULL,20070512102759),
 ('310117','NVF','1 in. Neverfurl','13.00','0.350',2,100,1,NULL,20070512102759),
 ('320004','BPA1000 S','9 ft. x 1 in. Aluminum Display Pole Set 2 Section white','20.00','3.000',1,300,1,NULL,20070512102759),
 ('320005','BPA10000S','10 Ft. x 1 in. Aluminum Display Pole Set 2 Section Silver','20.00','4.000',1,400,1,NULL,20070512102759),
 ('320006','BPA3000','9 ft x 1 in. white aluminum display pole set 3 section','20.00','3.000',1,300,1,NULL,20070512102759),
 ('320054','HS15','Homesteader Flagpoles - Complete Set - 15 ft.','100.00','10.600',1,200,1,NULL,20070512102759),
 ('320055','HS20','Homesteader Flagpoles - Complete Set - 20 ft.','116.00','12.650',1,250,1,NULL,20070512102759),
 ('320071','HSO10-30','Homesteader Flagpoles - Outrigger - 30 degree Bracket','150.00','11.450',1,200,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('320075','HSV10','Homesteader Flagpole - Vertical Mount','142.00','11.000',1,200,1,NULL,20070512102759),
 ('320077','TH20','20 ft. Silver Alum Tapered Homesteader Flagpole Set','165.00','20.000',1,200,1,NULL,20070512102759),
 ('330000','SB103','Aluminum Ball Ornament - Outdoor - Gold Anodized - 3 in. Dia.','15.50','0.400',2,100,1,NULL,20070512102759),
 ('330001','SB104','Aluminum Ball Ornament - Outdoor - Gold Anodized - 4 in. Dia.','20.00','0.650',2,100,1,NULL,20070512102759),
 ('330002','SB105','Aluminum Ball Ornament - Outdoor - Gold Anodized - 5 in. Dia.','24.50','1.000',2,100,1,NULL,20070512102759),
 ('330003','SB106','Aluminum Ball Ornament - Outdoor - Gold Anodized - 6 in. Dia.','29.00','1.300',2,100,1,NULL,20070512102759),
 ('330004','SB108','Aluminum Ball Ornament - Outdoor - Gold Anodized - 8 in. Dia.','50.00','2.050',2,300,1,NULL,20070512102759),
 ('330005','SB110','Aluminum Ball Ornament - Outdoor - Gold Anodized - 10 in. Dia.','90.00','2.800',2,300,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330006','SB112','Aluminum Ball Ornament - Outdoor - Gold Anodized - 12 in. Dia.','110.00','3.850',2,300,1,NULL,20070512102759),
 ('330055','E-11','Aluminum Flying Eagle Ornament - Gold - 11-1/4 in. x 12 in.','72.00','3.000',2,100,1,NULL,20070512102759),
 ('330056','E-16','Aluminum Flying Eagle Ornament - Gold - 15 in. x 18 in.','99.00','7.000',2,100,1,NULL,20070512102759),
 ('330057','E-24','Aluminum Flying Eagle Ornament - Gold - 24 in. x 20 in..','164.00','12.000',2,100,1,NULL,20070512102759),
 ('330058','E-11','Aluminum Flying Eagle Ornament - Natural - 11-1/4 in. x 12 in.','91.00','3.000',2,100,1,NULL,20070512102759),
 ('330059','E-16','Aluminum Flying Eagle Ornament - Natural - 15 in. x 18 in.','126.00','7.000',2,100,1,NULL,20070512102759),
 ('330060','E-24','Aluminum Flying Eagle Ornament - Natural - 24 in. x 20 in.','179.00','12.000',2,100,1,NULL,20070512102759),
 ('340194','IHT-V','IHT-V Silver Alum Ih Truck To Accept A 1/2 in. Spindle','137.00','3.300',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340195','IHT-1','IHT-1 Silver Alum Ih Truck To Accept A 1/2 in. Spindle','210.00','6.400',1,100,1,NULL,20070512102759),
 ('340196','IHT-2','IHT-2 Silver Alum Ih Truck To Accept A 1/2 in. Spindle','252.00','8.050',1,100,1,NULL,20070512102759),
 ('340197','IHT-3','IHT-3 Silver Alum Ih Truck To Accept A 1/2 in. Spindle','515.00','15.750',1,100,1,NULL,20070512102759),
 ('340238','PTA-238','2-3/8 in. Silver Alum Pole Top Adapter','38.00','1.100',2,100,1,NULL,20070512102759),
 ('340239','PTA-212','2-1/2 in. Silver Alum Pole Top Adapter','38.00','0.900',2,100,1,NULL,20070512102759),
 ('340240','PTA-3','3 in. Silver Alum Pole Top Adapter','53.00','1.150',2,100,1,NULL,20070512102759),
 ('340241','PTA-312','3-1/2 in. Silver Alum Pole Top Adapter','53.00','1.500',2,100,1,NULL,20070512102759),
 ('340242','PTA-4','4 in. Silver Alum Pole Top Adapter','63.00','2.050',2,100,1,NULL,20070512102759),
 ('340243','PTA-412','4-1/2 in. Silver Alum Pole Top Adapter','63.00','2.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340244','PTA-5','5 in. Silver Alum Pole Top Adapter','63.00','2.700',2,100,1,NULL,20070512102759),
 ('340245','PTA-512','5-1/2 in. Silver Alum Pole Top Adapter','84.00','3.200',2,100,1,NULL,20070512102759),
 ('340246','PTA-6','6 in. Silver Alum Pole Top Adapter','84.00','3.950',2,100,1,NULL,20070512102759),
 ('340247','PTA-238','8 in. Bronze 313 Alum Pole Top Adapter','42.00','1.100',2,100,1,NULL,20070512102759),
 ('340248','PTA-212','2 in. Bronze 313 Alum Pole Top Adapter','42.00','0.900',2,100,1,NULL,20070512102759),
 ('340249','PTA-3','3 in. Bronze 313 Alum Pole Top Adapter','58.00','1.150',2,100,1,NULL,20070512102759),
 ('340250','PTA-312','2 in. Bronze 313 Alum Pole Top Adapter','58.00','1.500',2,100,1,NULL,20070512102759),
 ('340251','PTA-4','4 in. Bronze 313 Alum Pole Top Adapter','69.00','2.050',2,100,1,NULL,20070512102759),
 ('340252','PTA-412','2 in. Bronze 313 Alum Pole Top Adapter','69.00','2.250',2,100,1,NULL,20070512102759),
 ('340253','PTA-5','5 in. Bronze 313 Alum Pole Top Adapter','69.00','2.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340254','PTA-512','2 in. Bronze 313 Alum Pole Top Adapter','92.00','3.200',2,100,1,NULL,20070512102759),
 ('340255','PTA-6','6 in. Bronze 313 Alum Pole Top Adapter','92.00','3.950',2,100,1,NULL,20070512102759),
 ('340256','PTA-238','2-3/8 in. White Alum Pole Top Adapter','42.00','1.100',2,100,1,NULL,20070512102759),
 ('340257','PTA-212','2-1/2 in. White Alum Pole Top Adapter','42.00','0.900',2,100,1,NULL,20070512102759),
 ('340258','PTA-3','3 in. White Alum Pole Top Adapter','58.00','1.150',2,100,1,NULL,20070512102759),
 ('340259','PTA-312','3-1/2 in. White Alum Pole Top Adapter','58.00','1.500',2,100,1,NULL,20070512102759),
 ('340260','PTA-4','4 in. White Alum Pole Top Adapter','69.00','2.050',2,100,1,NULL,20070512102759),
 ('340261','PTA-412','4-1/2 in. White Alum Pole Top Adapter','69.00','2.250',2,100,1,NULL,20070512102759),
 ('340262','PTA-5','5 in. White Alum Pole Top Adapter','69.00','2.700',2,100,1,NULL,20070512102759),
 ('340263','PTA-512','5-1/2 in. White Alum Pole Top Adapter','92.00','3.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('340264','PTA-6','6 in. White Alum Pole Top Adapter','92.00','3.950',2,100,1,NULL,20070512102759),
 ('340265','PTA-238','2-3/8 in. Black Alum Pole Top Adapter','42.00','1.100',2,100,1,NULL,20070512102759),
 ('340266','PTA-212','2-1/2 in. Black Alum Pole Top Adapter','42.00','0.900',2,100,1,NULL,20070512102759),
 ('340267','PTA-3','3 in. Black Alum Pole Top Adapter','58.00','1.150',2,100,1,NULL,20070512102759),
 ('340268','PTA-312','3-1/2 in. Black Alum Pole Top Adapter','58.00','1.500',2,100,1,NULL,20070512102759),
 ('340269','PTA-4','4 in. Black Alum Pole Top Adapter','69.00','2.050',2,100,1,NULL,20070512102759),
 ('340270','PTA-4','4-1/2 in. Black Alum Pole Top Adapter','69.00','2.250',2,100,1,NULL,20070512102759),
 ('340271','PTA-5','5 in. Black Alum Pole Top Adapter','69.00','2.700',2,100,1,NULL,20070512102759),
 ('340272','PTA-512','5-1/2 in. Black Alum Pole Top Adapter','92.00','3.200',2,100,1,NULL,20070512102759),
 ('340273','PTA-6','6 in. Black Alum Pole Top Adapter','92.00','3.950',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350042','CBC-335','Cleat Cover Box - Cylinder Lock - Silver- Fits Pole Dia. 3 in. to 3-1/2 in.','89.00','5.000',2,100,1,NULL,20070512102759),
 ('350043','CBC-412','Cleat Cover Box - Cylinder Lock - Silver- Fits Pole Dia. 4 in. to 12 in.','89.00','5.000',2,100,1,NULL,20070512102759),
 ('350044','CB-335','Cleat Cover Box - Padlock - Silver- Fits Pole Dia. 3 in. to 3-1/2 in.','95.00','5.550',2,100,1,NULL,20070512102759),
 ('350045','CB-412','Cleat Cover Box - Padlock - Silver- Fits Pole Dia. 4 in. to 12 in.','95.00','5.550',2,100,1,NULL,20070512102759),
 ('350050','CBC-335','Cleat Cover Box - Cylinder Lock - Bronze- Fits Pole Dia. 3 in. to 3-1/2 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350051','CBC-412','Cleat Cover Box - Cylinder Lock - Bronze- Fits Pole Dia. 4 in. to 12 in.','97.00','5.000',2,100,1,NULL,20070512102759),
 ('350052','CB-335','Cleat Cover Box - Padlock - Bronze- Fits Pole Dia. 3 in. to 3-1/2 in.','106.00','5.550',2,100,1,NULL,20070512102759),
 ('350053','CB-412','Cleat Cover Box - Padlock - Bronze- Fits Pole Dia. 4 in. to 12 in.','106.00','5.550',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350062','MS-1','1/4 in.-20NC x 2-1/2 in. Silver Cleat Box Screw','1.50','0.028',2,100,1,NULL,20070512102759),
 ('350063','MS-1','1/4 in.-20NC x 2-1/2 in. Bronze 313 Cleat Box Screw','2.00','0.028',2,100,1,NULL,20070512102759),
 ('350064','MS-1','1/4 in.-20NC x 2-1/2 in. White Cleat Box Screw','2.00','0.028',2,100,1,NULL,20070512102759),
 ('350065','MS-1','1/4 in.-20NC x 2-1/2 in. Black Cleat Box Screw','2.00','0.028',2,100,1,NULL,20070512102759),
 ('350066','HC-5','HC-5  5ft. Silver Halyard Cover','84.00','5.100',2,100,1,NULL,20070512102759),
 ('350067','HC-6','HC-6  6ft. Silver Halyard Cover','95.00','5.850',2,100,1,NULL,20070512102759),
 ('350068','HC-8','HC-8  8ft. Silver Halyard Cover','116.00','7.500',2,100,1,NULL,20070512102759),
 ('350069','HC-10','HC-10  10ft. Silver Halyard Cover','137.00','9.500',2,100,1,NULL,20070512102759),
 ('350124','ESS','Swivel Snaps - Brass - 3 in.','2.50','0.125',2,100,1,NULL,20070512102759),
 ('350125','ESSL','Swivel Snaps - Brass - 3-3/4 in.','3.60','0.170',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350126','ESSXL','Swivel Snaps - Brass - 4-3/4 in.','6.00','0.300',2,100,1,NULL,20070512102759),
 ('350127','ESSZ','Swivel Snaps - Nickel Plated Zinc - 3-1/2 in.','2.00','0.095',2,100,1,NULL,20070512102759),
 ('350131','ESN','Nylon Snaps - 2-3/4 in.','0.60','0.012',2,100,1,NULL,20070512102759),
 ('350132','EVL','Swivel Snaps - Nylon - 3 in.','4.40','0.043',2,100,1,NULL,20070512102759),
 ('350137','EVC-G','Snap Covers - Vinyl - Gray - 3-1/2 in. L x 1-1/4 in. Diameter','1.30','0.048',2,100,1,NULL,20070512102759),
 ('350138','EVC-B','Snap Covers - Vinyl - Brown - 3-1/2 in. L x 1-1/4 in. Diameter','1.30','0.048',2,100,1,NULL,20070512102759),
 ('350139','EVXL-G','Snap Covers - Vinyl - Gray - 4-1/4 in. L x 1-1/2 in. Diameter','1.70','0.075',2,100,1,NULL,20070512102759),
 ('350140','EVCXL-B','Snap Covers - Vinyl - Brown - 4-1/4 in. L x 1-1/2 in. Diameter','1.70','0.075',2,100,1,NULL,20070512102759),
 ('350180','PH10','Halyard - Solid Braided pylene - White - 5/16 in. Dia. (Price per Foot)','0.28','0.018',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('350181','PH12','Halyard - Solid Braided pylene - White - 3/8 in. Dia. (Price per Foot)','0.34','0.021',2,100,1,NULL,20070512102759),
 ('350186','PH12','Halyard - Solid Braided pylene - Silver - 3/8 in. Dia. (Price per Foot)','0.36','0.021',2,100,1,NULL,20070512102759),
 ('350189','PH10','Halyard - Solid Braided pylene - Bronze - 5/16 in. Dia. (Price per Foot)','0.30','0.018',2,100,1,NULL,20070512102759),
 ('350190','PH12','Halyard - Solid Braided pylene - Bronze - 3/8 in. Dia. (Price per Foot)','0.36','0.021',2,100,1,NULL,20070512102759),
 ('350214','NWCH10','Halyard - Nylon - White - 5/16 in. Dia. (Price per Foot)','0.62','0.039',2,100,1,NULL,20070512102759),
 ('350215','NWCH12','Halyard - Nylon - White - 3/8 in. Dia. (Price per Foot)','0.84','0.045',2,100,1,NULL,20070512102759),
 ('350222','NWCH10','Halyard - Nylon - Bronze - 5/16 in. Dia. (Price per Foot)','0.64','0.039',2,100,1,NULL,20070512102759),
 ('350223','NWCH12','Halyard - Nylon - Bronze - 3/8 in. Dia. (Price per Foot)','0.86','0.045',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('360176','RR5','\"Beaded Retainer Ring - White - 5\"\" pole dia. - 1\"\" ball dia.\"','33.00','0.750',2,100,1,NULL,20070512102759),
 ('360177','RR6','\"Beaded Retainer Ring - White - 6\"\" pole dia. - 1\"\" ball dia.\"','35.00','0.800',2,100,1,NULL,20070512102759),
 ('360178','RR7','\"Beaded Retainer Ring - White - 7\"\" pole dia. - 1\"\" ball dia.\"','37.00','0.850',2,100,1,NULL,20070512102759),
 ('360179','RR8','\"Beaded Retainer Ring - White - 8\"\" pole dia. - 1\"\" ball dia.\"','39.00','0.900',2,100,1,NULL,20070512102759),
 ('360180','RR10','\"Beaded Retainer Ring - White - 10\"\" pole dia. - 1\"\" ball dia.\"','42.00','1.100',2,100,1,NULL,20070512102759),
 ('360181','RR11','\"Beaded Retainer Ring - White - 11\"\" pole dia. - 1\"\" ball dia.\"','45.00','1.200',2,100,1,NULL,20070512102759),
 ('360182','RR12','\"Beaded Retainer Ring - White - 12\"\" pole dia. - 1\"\" ball dia.\"','46.00','1.200',2,100,1,NULL,20070512102759),
 ('360194','RR5','\"Beaded Retainer Ring - Silver - 5\"\" pole dia. - 1\"\" ball dia.\"','39.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('360195','RR6','\"Beaded Retainer Ring - Silver - 6\"\" pole dia. - 1\"\" ball dia.\"','42.00','0.800',2,100,1,NULL,20070512102759),
 ('360196','RR7','\"Beaded Retainer Ring -Silver - 7\"\" pole dia. - 1\"\" ball dia.\"','44.00','0.850',2,100,1,NULL,20070512102759),
 ('360197','RR8','\"Beaded Retainer Ring - Silver - 8\"\" pole dia. - 1\"\" ball dia.\"','46.00','0.900',2,100,1,NULL,20070512102759),
 ('360198','RR10','\"Beaded Retainer Ring - Silver - 10\"\" pole dia. - 1\"\" ball dia.\"','47.00','1.100',2,100,1,NULL,20070512102759),
 ('360199','RR11','\"Beaded Retainer Ring - Silver - 11\"\" pole dia. - 1\"\" ball dia.\"','51.00','1.200',2,100,1,NULL,20070512102759),
 ('360200','RR12','\"Beaded Retainer Ring - Silver - 12\"\" pole dia. - 1\"\" ball dia.\"','53.00','1.200',2,100,1,NULL,20070512102759),
 ('360212','RR5','\"Beaded Retainer Ring - Bronze - 5\"\" pole dia. - 1\"\" ball dia.\"','39.00','0.750',2,100,1,NULL,20070512102759),
 ('360213','RR6','\"Beaded Retainer Ring - Bronze - 6\"\" pole dia. - 1\"\" ball dia.\"','42.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('360214','RR7','\"Beaded Retainer Ring -Bronze - 7\"\" pole dia. - 1\"\" ball dia.\"','44.00','0.850',2,100,1,NULL,20070512102759),
 ('360215','RR8','\"Beaded Retainer Ring - Bronze - 8\"\" pole dia. - 1\"\" ball dia.\"','46.00','0.900',2,100,1,NULL,20070512102759),
 ('360216','RR10','\"Beaded Retainer Ring - Bronze - 10\"\" pole dia. - 1\"\" ball dia.\"','47.00','1.100',2,100,1,NULL,20070512102759),
 ('360217','RR11','\"Beaded Retainer Ring - Bronze - 11\"\" pole dia. - 1\"\" ball dia.\"','51.00','1.200',2,100,1,NULL,20070512102759),
 ('360218','RR12','\"Beaded Retainer Ring - Bronze - 12\"\" pole dia. - 1\"\" ball dia.\"','53.00','1.200',2,100,1,NULL,20070512102759),
 ('370000','FCS8-2-060','FCS8-2-060 2 in. x 8 in. x .060 Silver Std Profile Alum Collar Not Split','17.00','0.500',2,100,1,NULL,20070512102759),
 ('370001','FCS8-238-060','FCS8-238-060 2-3/8 in. x 8 in. x .060 Silver Std Profile Alum Collar Not Split','17.00','0.450',2,100,1,NULL,20070512102759),
 ('370002','FCS8-212-060','FCS8-212-060 2-1/2 in. x 8 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370003','FCS12-2-060','FCS12-2-060 2 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.800',2,100,1,NULL,20070512102759),
 ('370004','FCS12-238-060','FCS12-238-060 2-3/8 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.800',2,100,1,NULL,20070512102759),
 ('370005','FCS12-212-060','FCS12-212-060 2-1/2 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.800',2,100,1,NULL,20070512102759),
 ('370006','FCS12-3-060','FCS12-3-060 3 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.850',2,100,1,NULL,20070512102759),
 ('370007','FCS12-312-060','FCS12-312-060 3-1/2 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.800',2,100,1,NULL,20070512102759),
 ('370008','FCS12-4-060','FCS12-4-060 4 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.750',2,100,1,NULL,20070512102759),
 ('370009','FCS12-414-060','FCS12-414-060 4-1/4 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370010','FCS12-5-060','FCS12-5-060 5 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.750',2,100,1,NULL,20070512102759),
 ('370011','FCS12-512-060','FCS12-512-060 5-1/2 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.700',2,100,1,NULL,20070512102759),
 ('370012','FCS12-6-060','FCS12-6-060 6 in. x 12 in. x .060 Silver Std Profile Alum Collar Not Split','21.00','0.650',2,100,1,NULL,20070512102759),
 ('370013','FCS16-6-060','FCS16-6-060 6 in. x 16 in. x .060 Silver Std Profile Alum Collar Not Split','34.00','1.350',2,100,1,NULL,20070512102759),
 ('370014','FCS16-7-060','FCS16-7-060 7 in. x 16 in. x .060 Silver Std Profile Alum Collar Not Split','34.00','1.350',2,100,1,NULL,20070512102759),
 ('370015','FCS16-8-060','FCS16-8-060 8 in. x 16 in. x .060 Silver Std Profile Alum Collar Not Split','34.00','1.300',2,100,1,NULL,20070512102759),
 ('370016','FCS22-7-060','FCS22-7-060 7 in. x 22 in. x .060 Silver Std Profile Alum Collar Not Split','69.00','2.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370017','FCS22-8-060','FCS22-8-060 8 in. x 22 in. x .060 Silver Std Profile Alum Collar Not Split','69.00','2.700',2,100,1,NULL,20070512102759),
 ('370018','FCS22-10-060','FCS22-10-060 10 in. x 22 in. x .060 Silver Std Profile Alum Collar Not Split','69.00','2.900',2,100,1,NULL,20070512102759),
 ('370019','FCS30-8-060','FCS30-8-060 8 in. x 30 in. x .060 Silver Std Profile Alum Collar Not Split','158.00','5.900',2,100,1,NULL,20070512102759),
 ('370020','FCS30-10-060','FCS30-10-060 10 in. x 30 in. x .060 Silver Std Profile Alum Collar Not Split','158.00','5.400',2,100,1,NULL,20070512102759),
 ('370021','FCS30-12-060','FCS30-12-060 12 in. x 30 in. x .060 Silver Std Profile Alum Collar Not Split','158.00','5.250',2,100,1,NULL,20070512102759),
 ('370022','FCS38-8-060','FCS38-8-060 8 in. x 38 in. x .060 Silver Std Profile Alum Collar Not Split','515.00','7.500',2,100,1,NULL,20070512102759),
 ('370023','FCS38-10-060','FCS38-10-060 10 in. x 38 in. x .060 Silver Std Profile Alum Collar Not Split','515.00','6.900',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370024','FCS38-12-060','FCS38-12-060 12 in. x 38 in. x .060 Silver Std Profile Alum Collar Not Split','515.00','6.700',2,100,1,NULL,20070512102759),
 ('370048','FCS8-2-060','FCS8-2-060 2 in. x 8 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','21.00','0.500',2,100,1,NULL,20070512102759),
 ('370049','FCS8-238-060','FCS8-238-060 2-3/8 in. x 8 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','21.00','0.450',2,100,1,NULL,20070512102759),
 ('370050','FCS8-212-060','FCS8-212-060 2-1/2 in. x 8 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','21.00','0.450',2,100,1,NULL,20070512102759),
 ('370051','FCS12-2-060','FCS12-2-060 2 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.800',2,100,1,NULL,20070512102759),
 ('370052','FCS12-238-060','FCS12-238-060 2-3/8 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.800',2,100,1,NULL,20070512102759),
 ('370053','FCS12-212-060','FCS12-212-060 2-1/2 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370054','FCS12-3-060','FCS12-3-060 3 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','31.00','0.850',2,100,1,NULL,20070512102759),
 ('370055','FCS12-312-060','FCS12-312-060 3-1/2 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.800',2,100,1,NULL,20070512102759),
 ('370056','FCS12-4-060','FCS12-4-060 4 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.750',2,100,1,NULL,20070512102759),
 ('370057','FCS12-414-060','FCS12-414-060 4-1/4 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.750',2,100,1,NULL,20070512102759),
 ('370058','FCS12-5-060','FCS12-5-060 5 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.750',2,100,1,NULL,20070512102759),
 ('370059','FCS12-512-060','FCS12-512-060 5-1/2 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.700',2,100,1,NULL,20070512102759),
 ('370060','FCS12-6-060','FCS12-6-060 6 in. x 12 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','26.00','0.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370061','FCS16-6-060','FCS16-6-060 6 in. x 16 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','42.00','1.350',2,100,1,NULL,20070512102759),
 ('370062','FCS16-7-060','FCS16-7-060 7 in. x 16 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','42.00','1.350',2,100,1,NULL,20070512102759),
 ('370063','FCS16-8-060','FCS16-8-060 8 in. x 16 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','42.00','1.300',2,100,1,NULL,20070512102759),
 ('370064','FCS22-7-060','FCS22-7-060 7 in. x 22 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','88.00','2.500',2,100,1,NULL,20070512102759),
 ('370065','FCS22-8-060','FCS22-8-060 8 in. x 22 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','88.00','2.700',2,100,1,NULL,20070512102759),
 ('370066','FCS22-10-060','FCS22-10-060 10 in. x 22 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','88.00','2.900',2,100,1,NULL,20070512102759),
 ('370067','FCS30-8-060','FCS30-8-060 8 in. x 30 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','200.00','5.900',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('370068','FCS30-10-060','FCS30-10-060 10 in. x 30 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','200.00','5.400',2,100,1,NULL,20070512102759),
 ('370069','FCS30-12-060','FCS30-12-060 12 in. x 30 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','200.00','5.250',2,100,1,NULL,20070512102759),
 ('370070','FCS38-8-060','FCS38-8-060 8 in. x 38 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','630.00','7.500',2,100,1,NULL,20070512102759),
 ('370071','FCS38-10-060','FCS38-10-060 10 in. x 38 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','630.00','6.900',2,100,1,NULL,20070512102759),
 ('370072','FCS38-12-060','FCS38-12-060 12 in. x 38 in. x .060 Bronze 313 Std Profile Alum Collar Not Split','630.00','6.700',2,100,1,NULL,20070512102759),
 ('380000','FS-26','2 ft. x 6 in. Steel Foundation Sleeve','42.00','20.000',1,100,1,NULL,20070512102759),
 ('380001','FS-2126','2-1/2 ft. x 6 in. Steel Foundation Sleeve','46.00','22.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('380002','FS-36','3 ft. x 6 in. Steel Foundation Sleeve','48.00','24.000',1,100,1,NULL,20070512102759),
 ('380003','FS-38','3 ft. x 8 in. Steel Foundation Sleeve','84.00','33.000',1,100,1,NULL,20070512102759),
 ('380004','FS-3128','3-1/2 ft. x 8 in. Steel Foundation Sleeve','90.00','40.000',1,300,1,NULL,20070512102759),
 ('380005','FS-310','3 ft. x 10 in. Steel Foundation Sleeve','94.00','40.000',1,300,1,NULL,20070512102759),
 ('380006','FS-31210','3-1/2 ft. x 10 in. Steel Foundation Sleeve','98.00','45.000',1,300,1,NULL,20070512102759),
 ('380007','FS412','4 ft. x 12 in. Steel Foundation Sleeve','122.00','57.000',0,100,0,NULL,20070512102759),
 ('380008','FS-512','5 ft. x 12 in. Steel Foundation Sleeve','138.00','65.000',0,100,0,NULL,20070512102759),
 ('380009','FS-515','5 ft. x 15 in. Steel Foundation Sleeve','210.00','85.000',0,100,0,NULL,20070512102759),
 ('380010','FS-615','6 ft. x 15 in. Steel Foundation Sleeve','242.00','120.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('380011','FS-618','6 ft. x 18 in. Steel Foundation Sleeve','294.00','130.000',0,100,0,NULL,20070512102759),
 ('380012','FS-715','7 ft. x 15 in. Steel Foundation Sleeve','274.00','140.000',0,100,0,NULL,20070512102759),
 ('380013','FS-718','7 ft. x 18 in. Steel Foundation Sleeve','316.00','150.000',0,100,0,NULL,20070512102759),
 ('380014','FS-818','8 ft. x 18 in. Steel Foundation Sleeve','358.00','160.000',0,100,0,NULL,20070512102759),
 ('710006','AFP15F','Flagpole Set - Commander - Aluminum 15 ft.','130.00','14.100',1,200,1,NULL,20070512102759),
 ('710011','AFP-SEC','\"Commander Flagpole section - 56\"\" length, 2.0\"\" dia, silver, plain unswedged\"','25.00','2.000',1,100,1,NULL,20070512102759),
 ('710010','AFP-SEC','\"Commander Flagpole section - 56\"\" length, 2.0\"\" dia, silver, plain swedged no drilling\"','26.00','2.000',1,100,1,NULL,20070512102759),
 ('710012','AFP-SEC','\"Commander Flagpole section - 56\"\" length, 2.0\"\" dia. Silver, swedged-drilled for cleat\"','27.00','2.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('722249','Texaco-Flag','3 ft. x 5 ft. Texaco Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722250','Chevron-Flag','3 ft. x 5 ft. Chevron Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722251','Fina-Flag','3 ft. x 5 ft. Fina Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722252','76-Flag','3 ft. x 5 ft. 76 Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722253','Mobil-Flag','3 ft. x 5 ft. Mobil Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722254','Exxon-Flag','3 ft. x 5 ft. Exxon Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722255','Citgo-Flag','3 ft. x 5 ft. Citgo Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('722256','Tenneco-Flag','3 ft. x 5 ft. Tenneco Oil flag','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740000','RE-FL','3 ft. x 5 ft. - Arvida Realty - Blue on White','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740001','RE-FL','3 ft. x 5 ft. - Baird & Warner - Black on Gold','25.00','0.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740002','RE-FL','3 ft. x 5 ft. - Century 21 - Black on Gold','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740003','RE-FL','3 ft. x 5 ft. - Coldwell Banker - Blue on white','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740004','RE-FL','4 ft. x 6 ft. - Coldwell Banker - Blue on white','45.00','0.970',2,100,1,NULL,20070512102759),
 ('740005','RE-FL','5 ft. x 8 ft. - Coldwell Banker - Blue on white','60.00','1.800',2,100,1,NULL,20070512102759),
 ('740006','RE-FL','3 ft. x 5 ft. - ERA - Two color','35.00','0.650',2,100,1,NULL,20070512102759),
 ('740007','RE-FL','3 ft. x 5 ft. - GMAC - Two color','35.00','0.650',2,100,1,NULL,20070512102759),
 ('740008','RE-FL','3 ft. x 5 ft. - Long & Foster - Three Color','35.00','0.650',2,100,1,NULL,20070512102759),
 ('740009','RE-FL','3 ft. x 5 ft. - Prudential -  Blue on White','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740010','RE-FL','3 ft. x 5 ft. - Re/Max Balloon - Blue & Red on white - Polyester','30.00','0.650',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740011','RE-FL','3 ft. x 5 ft. - Re/Max Message - Red and Blue stripes - Polyester','20.00','0.650',2,100,1,NULL,20070512102759),
 ('740012','RE-FL','3 ft. x 5 ft. - Realtor  R - Blue on White','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740013','RE-FL','3 ft. x 5 ft. - Realty Executive - Blue& Red on White','30.00','0.650',2,100,1,NULL,20070512102759),
 ('740014','RE-FL','3 ft. x 5 ft. - Tarbell Realty - Red & Black on White','30.00','0.650',2,100,1,NULL,20070512102759),
 ('740015','RE-FL','3 ft. x 5 ft. - Weichert Realty - Black on Yellow','25.00','0.650',2,100,1,NULL,20070512102759),
 ('740016','RE-FL-FIELD','\"19\"\" x 26\"\"  \"\"ERA\"\" Field Flag  solid color with logo, 2 pc fiberglass pole 6\' x 1/4\"\"\"','12.00','1.000',2,100,1,NULL,20070512102759),
 ('740017','RE-FL-FIELD','\"19\"\" x 26\"\"  \"\"ReMax\"\" Field Flag  solid color with logo, 2 pc fiberglass pole 6\' x 1/4\"\"\"','12.00','1.000',2,100,1,NULL,20070512102759),
 ('740018','RE-FL-FIELD','\"19\"\" x 26\"\"  \"\"Century 21\"\" Field Flag  solid color with logo, 2 pc fiberglass pole 6\' x 1/4\"\"\"','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740019','RE-FL-FIELD','\"19\"\" x 26\"\"  \"\"ColdWell Banker\"\" Field Flag  solid color with logo, 2 pc fiberglass pole 6\' x 1/4\"\"\"','12.00','1.000',2,100,1,NULL,20070512102759),
 ('740020','RE-FL','3 ft. x 5 ft. - Keller-Williams - Two color','35.00','0.650',2,100,1,NULL,20070512102759),
 ('740021','RE-FL-FIELD','\"19\"\" x 26\"\"  \"\"Keller-Williams\"\" Field Flag  solid color with logo, 2 pc fiberglass pole 6\' x 1/4\"\"\"','12.00','1.000',2,100,1,NULL,20070512102759),
 ('750000','ORN FPB-6-S','6\'\' Flagpole Beacon with stationary truck','290.00','10.000',1,300,1,NULL,20070512102759),
 ('750001','ORN FPB-6-R','6\'\' Flagpole Beacon with revolving truck','420.00','10.000',1,300,1,NULL,20070512102759),
 ('750002','ORN FPB-8-R','8\'\' Flagpole Beacon with revolving truck','420.00','10.000',1,300,1,NULL,20070512102759),
 ('750003','ORN FPB-10-R','10\'\' Flagpole Beacon with revolving truck','440.00','10.000',1,300,1,NULL,20070512102759),
 ('750004','ORN FPB-12-R','12\'\' Flagpole Beacon with revolving truck','480.00','10.000',1,300,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('750005','ORN FPB-8-RPC','8\'\' Flagpole Beacon with revolving truck and photo cell','950.00','10.000',1,300,1,NULL,20070512102759),
 ('750006','ORN FPB-10-RPC','10\'\' Flagpole Beacon with revolving truck and photo cell','1050.00','10.000',1,300,1,NULL,20070512102759),
 ('750007','ORN FPB-12-RPC','12\'\' Flagpole Beacon with revolving truck and photo cell','1150.00','10.000',1,300,1,NULL,20070512102759),
 ('750008','ORN-FPB-8-S','\"8\"\" Flagpole Beacon with stationary truck\"','310.00','10.000',1,300,1,NULL,20070512102759),
 ('750009','ORN-FPB-10-S','\"10\"\" Flagpole Beacon with stationary truck\"','340.00','10.000',1,300,1,NULL,20070512102759),
 ('750010','ORN-FPB-12-S','\"12\"\" Flagpole Beacon with stationary truck\"','360.00','10.000',1,300,1,NULL,20070512102759),
 ('750011','Wire Kit-20','Flagpole Beacon wire kit 30\' of wire','32.40','1.000',1,100,1,NULL,20070512102759),
 ('750012','Wire Kit-30','Flagpole Beacon wire kit 40\' of wire','43.20','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('750013','Wire Kit-40','Flagpole Beacon wire kit 50\' of wire','54.00','1.000',1,100,1,NULL,20070512102759),
 ('750014','Wire Kit-50','Flagpole Beacon wire kit 60\' of wire','64.80','1.000',1,100,1,NULL,20070512102759),
 ('750015','Wire Kit-60','Flagpole Beacon wire kit 70\' of wire','75.60','1.000',1,100,1,NULL,20070512102759),
 ('750016','Wire Kit-70','Flagpole Beacon wire kit 80\' of wire','86.40','1.000',1,100,1,NULL,20070512102759),
 ('750017','Wire Kit-80','Flagpole Beacon wire kit 90\' of wire','97.20','1.000',1,100,1,NULL,20070512102759),
 ('750018','Photocell','Flagpole Beacon on at night-off at dawn photocell','200.00','1.000',1,100,1,NULL,20070512102759),
 ('750019','ORN FPB-6.5 int','\"6.5\"\" Flagpole Beacon, internal system with dual lights, revolving w/o truck\"','850.00','10.000',1,300,1,NULL,20070512102759),
 ('750020','ORN FPB-6.5 int','\"6.5\"\" Flagpole Beacon, internal system with dual lights, revolving w truck\"','1000.00','15.000',1,300,1,NULL,20070512102759),
 ('750021','ORN FPB-8 int','\"8\"\" Flagpole Beacon, internal system with dual lights, revolving w/o truck\"','900.00','10.000',1,300,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('750022','ORN FPB-8 int','\"8\"\" Flagpole Beacon, internal system with dual lights, revolving w truck\"','1152.00','15.000',1,300,1,NULL,20070512102759),
 ('750023','ORN FPB-10.5 int','\"10.5\"\" Flagpole Beacon, internal system with dual lights, revolving w/o truck\"','950.00','10.000',1,300,1,NULL,20070512102759),
 ('750024','ORN FPB-10.5 int','\"10.5\"\" Flagpole Beacon, internal system with dual lights, revolving w truck\"','1415.00','15.000',1,300,1,NULL,20070512102759),
 ('720110','CAR-CB','Caravan Flag - Coldwell Banker','10.00','0.500',2,100,1,NULL,20070512102759),
 ('720120','CAR-ERA','Caravan Flag - ERA Realtors','10.00','0.500',2,100,1,NULL,20070512102759),
 ('720130','CAR-REM','Caravan Flag - ReMax','10.00','0.500',2,100,1,NULL,20070512102759),
 ('030000','NF-1','3 ft x 5 ft. Nylon Abkhazia Flag','61.40','0.600',2,100,1,NULL,20070512102759),
 ('030004','NF-1','2\' x 3\' Nylon Abu Dhabi Flag','24.70','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030005','NF-1','3 ft. x 5 ft. Nylon Abu Dhabi Flag','38.60','0.600',2,100,1,NULL,20070512102759),
 ('030006','NF-1','4 ft. x 6 ft. Nylon Abu Dhabi Flag','58.50','0.700',2,100,1,NULL,20070512102759),
 ('030007','NF-1','5 ft. x 8 ft. Nylon Abu Dhabi Flag','80.80','1.000',2,100,1,NULL,20070512102759),
 ('030016','NF-1','\"4\"\" x 6\"\" Endura Gloss stick mounted Acadiana Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030017','NF-1','3 ft x 5 ft. Endura Poly Acadiana Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030078','NF-1','4 x 6 inch Algeria flag with stick','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030080','NF-1','3\' x 5\' poly Algeria flag','20.00','0.267',2,100,1,NULL,20070512102759),
 ('030081','NF-1','3\' x 5\' nylon Algeria flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('030082','NF-1','4\' x 6\' nylon O/D Algeria flag','56.10','0.450',2,100,1,NULL,20070512102759),
 ('030083','NF-1','5\' x 8\' nylon O/D Algeria flag','97.60','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030125','NF-1','\"4\"\" x 6\"\" inch stick mounted Angola flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030127','NF-1','3\' x 5\' foot poly O/D Angola flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030128','NF-1','3\' x 5\' foot nylon O/D Angola flag','68.20','0.750',2,100,1,NULL,20070512102759),
 ('030129','NF-1','4\' x 6\' nylon O/D Angola flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030130','NF-1','5\' x 8\' nylon O/D Angola flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('035008','NF-1','6 ft. x 10 ft. nylon O/D Angola Flag','200.00','5.000',2,100,1,NULL,20070512102759),
 ('030328','NF-1','\"4\"\" x 6\"\" inch stick mounted Azerbaijhan Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030330','NF-1','3 ft x 5 ft Endura Poly Azerbaijan Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030329','NF-1','2 ft x 3 ft Nylon Azerbaijan Flag','39.10','0.400',2,100,1,NULL,20070512102759),
 ('030331','NF-1','3 ft x 5 ft Nylon Azerbaijan Flag','57.40','0.700',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030332','NF-1','4 ft x 6 ft Nylon Azerbaijan Flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('030333','NF-1','5 ft x 8 ft Nylon Azerbaijan Flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('030390','NF-1','\"4\"\" x 6\"\" inch stick mounted Endura Gloss Bangladesh Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030392','NF-1','3 ft x 5 ft Endura Poly Bangladesh Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030391','NF-1','2 ft x 3 ft Nylon Bangladesh Flag','31.80','0.400',2,100,1,NULL,20070512102759),
 ('030393','NF-1','3 ft x 5 ft Nylon Bangladesh Flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('030394','NF-1','4 ft x 6 ft Nylon Bangladesh Flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('030395','NF-1','5 ft x 8 ft Nylon Bangladesh Flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('035021','NF-1','6 ft. x 10 ft. Nylon O/D Bangladesh Flag','137.00','4.000',2,100,1,NULL,20070512102759),
 ('030431','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Belarus stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030432','NF-1','2 ft x 3 ft Nylon Belarus Flag','43.80','0.400',2,100,1,NULL,20070512102759),
 ('030433','NF-1','3 ft x 5 ft Nylon Belarus Flag','68.20','0.750',2,100,1,NULL,20070512102759),
 ('030434','NF-1','4 ft x 6 ft Nylon Belarus flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030435','NF-1','5 ft x 8 ft Nylon Belarus Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('035024','NF-1','6 ft. x 10 ft. Nylon Belarus Flag','372.00','4.000',2,100,1,NULL,20070512102759),
 ('030485','NF-1','\"4\"\" x 6\"\" inch stick mounted Benin flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030468','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Belize stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030470','NF-1','3 ft x 5 ft Endura Poly Belize Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030469','NF-1','2 ft x 3 ft Nylon Belize Flag','43.80','0.400',2,100,1,NULL,20070512102759),
 ('030471','NF-1','3 ft x 5 ft Nylon Belize Flag','68.20','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030472','NF-1','4 ft x 6 ft Nylon Belize Flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030473','NF-1','5 ft x 8 ft Nylon Belize Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('030487','NF-1','3\' x 5\' foot poly O/D Benin flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030488','NF-1','3\' x 5\' foot nylon O/D Benin flag','46.10','0.750',2,100,1,NULL,20070512102759),
 ('030489','NF-1','4\' x 6\' foot nylon O/D Benin flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('030490','NF-1','5\' x 8\' foot nylon O/D Benin flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('030522','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Bhutan stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030524','NF-1','3 ft x 5 ft Endura Poly Bhutan Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030523','NF-1','2 ft x 3 ft Nylon Bhutan Flag','43.80','0.400',2,100,1,NULL,20070512102759),
 ('030525','NF-1','3 ft x 5 ft Nylon Bhutan Flag','68.20','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030526','NF-1','4 ft x 6 ft Nylon Bhutan Flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030527','NF-1','5 ft x 8 ft Nylon Bhutan Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('030576','NF-1','\"4\"\" x 6\"\" inch stick mounted Botswana flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030578','NF-1','3\' x 5\' foot poly O/D Botswana flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030579','NF-1','3\' x 5\' foot nylon O/D Botswana flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('030580','NF-1','4\' x 6\' foot nylon O/D Botswana flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('030581','NF-1','5\' x 8\' foot nylon O/D Botswana flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('030651','NF-1','\"4\"\" x 6\"\" inch stick mounted Brunei Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030653','NF-1','3 ft x 5 ft Endura Poly Brunei Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030652','NF-1','2 ft x 3 ft Nylon Brunei Flag','43.80','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030654','NF-1','3 ft x 5 ft Nylon Brunei Flag','68.20','0.750',2,100,1,NULL,20070512102759),
 ('030655','NF-1','4 ft x 6 ft Nylon Brunei Flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030656','NF-1','5 ft x 8 ft Nylon Brunei Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('030668','NF-1','\"4\"\" x 6\"\" inch stick mounted Bulgaria Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030670','NF-1','2 ft x 3 ft Nylon Bulgaria Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('030671','NF-1','3 ft x 5 ft Nylon Bulgaria Flag','35.20','0.750',2,100,1,NULL,20070512102759),
 ('030672','NF-1','4 ft x 6 ft Nylon Bulgaria Flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('030673','NF-1','5 ft x 8 ft Nylon Bulgaria Flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('030683','NF-1','\"4\"\" x 6\"\" inch stick mounted Burkina flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030685','NF-1','3\' x 5\' foot poly O/D Burkina flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030686','NF-1','3\' x 5\' foot nylon O/D Burkina flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('030687','NF-1','4\' x 6\' foot nylon O/D Burkina flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('030688','NF-1','5\' x 8\' foot nylon O/D Burkina flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('030700','NF-1','\"4\"\" x 6\"\" inch stick mounted Burundi flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030702','NF-1','3\' x 5\' foot poly O/D Burundi flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030703','NF-1','3\' x 5\' foot nylon O/D Burundi flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('030704','NF-1','4\' x 6\' foot nylon O/D Burundi flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('030705','NF-1','5\' x 8\' foot nylon O/D Burundi flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('030717','NF-1','\"4\"\" x 6\"\" inch stick mounted Cambodia Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030718','NF-1','2 ft x 3 ft Nylon Cambodia Flag','43.80','0.400',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030719','NF-1','3\' x 5\' foot nylon Cambodia Flag','62.80','0.450',2,100,1,NULL,20070512102759),
 ('030720','NF-1','4\' x 6\' foot nylon Cambodia Flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030721','NF-1','5\' x 8\' foot nylon Cambodia Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('030731','NF-1','\"4\"\" x 6\"\" inch stick mounted Cameroon flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030733','NF-1','3\' x 5\' foot poly Cameroon flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030734','NF-1','3\' x 5\' foot nylon Cameroon flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('030735','NF-1','4\' x 6\' foot nylon Cameroon flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('030736','NF-1','5\' x 8\' foot nylon Cameroon flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('030856','NF-1','\"4\"\" x 6\"\" inch stick mounted Central African Rep flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030858','NF-1','3\' x 5\' foot poly Central African Rep flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030859','NF-1','3\' x 5\' foot nylon Central African Rep flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('030860','NF-1','4\' x 6\' foot nylon Central African Rep flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('030861','NF-1','5\' x 8\' foot nylon Central African Rep flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('030873','NF-1','\"4\"\" x 6\"\" inch stick mounted Chad flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030876','NF-1','3\' x 5\' foot nylon  Chad flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('030877','NF-1','4\' x 6\' foot nylon Chad flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('030878','NF-1','5\' x 8\' foot nylon Chad flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('030958','NF-1','\"4\"\" x 6\"\" inch stick mounted Comoros flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('030960','NF-1','3\' x 5\' foot poly Comoros flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('030961','NF-1','3\' x 5\' foot nylon Comoros flag','68.20','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('030962','NF-1','4\' x 6\' foot nylon Comoros flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('030963','NF-1','5\' x 8\' foot nylon Comoros flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('031172','NF-1','\"4\"\" x 6\"\" inch stick mounted Djibouti flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031174','NF-1','3\' x 5\' foot poly O/D Djibouti flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031175','NF-1','3\' x 5\' foot nylon O/D Djibouti flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('031176','NF-1','4\' x 6\' foot nylon O/D Djibouti flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('031177','NF-1','5\' x 8\' foot nylon O/D Djibouti flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('031304','NF-1','\"4\"\" x 6\"\" inch stick mounted Egypt flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('035833','NF-1','12 in. x 18 in. Egypt flag','3.40','0.400',2,100,1,NULL,20070512102759),
 ('031306','NF-1','3\' x 5\' foot poly O/D Egypt flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031307','NF-1','3\' x 5\' foot nylon O/D Egypt flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031308','NF-1','4\' x 6\' foot nylon O/D Egypt flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('031309','NF-1','5\' x 8\' foot nylon O/D Egypt flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('035072','NF-1','6 ft. x 10 ft. Nylon O/D Egypt Flag','239.00','5.000',2,100,1,NULL,20070512102759),
 ('031369','NF-1','\"4\"\" x 6\"\" inch stick mounted Equatorial Guinea flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031371','NF-1','3\' x 5\' foot poly Equatorial Guinea flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031372','NF-1','3\' x 5\' foot nylon Equatorial Guinea flag','62.80','0.450',2,100,1,NULL,20070512102759),
 ('031373','NF-1','4\' x 6\' foot nylon O/D Equatorial Guinea flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('031374','NF-1','5\' x 8\' foot nylon O/D Equatorial Guinea flag','135.20','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031402','NF-1','\"4\"\" x 6\"\" inch stick mounted Eritrea flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031404','NF-1','3\' x 5\' foot nylon O/D Eritrea flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('031405','NF-1','4\' x 6\' foot nylon O/D Eritrea flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('031406','NF-1','5\' x 8\' foot nylon O/D Eritrea flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('031416','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Estonia stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031418','NF-1','2 ft x 3 ft Nylon Estonia Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('031419','NF-1','3\' x 5\' foot Nylon O/D Estonia Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031420','NF-1','4\' x 6\' foot nylon O/D Estonia Flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('031421','NF-1','5\' x 8\' foot nylon O/D Estonia Flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('031431','NF-1','\"4\"\" x 6\"\" inch stick mounted Ethiopia flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031433','NF-1','3\' x 5\' foot poly O/D Ethiopia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031434','NF-1','3\' x 5\' foot nylon O/D Ethiopia flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031435','NF-1','4\' x 6\' foot nylon O/D Ethiopia flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('031436','NF-1','5\' x 8\' foot nylon O/D Ethiopia flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('031448','NF-1','3\' x 5\' foot poly O/D Ethiopia with Lion Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031485','NF-1','\"4\"\" x 6\"\" inch stick mounted Faroe Islands Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031488','NF-1','3\' x 5\' foot poly O/D Faroe Islands Flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('031487','NF-1','2 ft x 3 ft Nylon Faroe Islands Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('031489','NF-1','3\' x 5\' foot nylon O/D Faroe Islands Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031490','NF-1','4\' x 6\' foot nylon O/D Faroe Islands Flag','45.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031491','NF-1','5\' x 8\' foot nylon O/D Faroe Islands Flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('031584','NF-1','\"4\"\" x 6\"\" inch stick mounted Gabon flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031587','NF-1','3\' x 5\' foot nylon O/D Gabon flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031588','NF-1','4\' x 6\' foot nylon O/D Gabon flag','33.20','1.000',2,100,1,NULL,20070512102759),
 ('031589','NF-1','5\' x 8\' foot nylon O/D Gabon flag','56.60','1.200',2,100,1,NULL,20070512102759),
 ('031599','NF-1','\"4\"\" x 6\"\" inch stick mounted Gambia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031602','NF-1','3\' x 5\' foot poly O/D Gambia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031603','NF-1','3\' x 5\' foot nylon O/D Gambia flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('031604','NF-1','4\' x 6\' foot nylon O/D Gambia flag','45.30','1.000',2,100,1,NULL,20070512102759),
 ('031605','NF-1','5\' x 8\' foot nylon O/D Gambia flag','73.20','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031617','NF-1','\"4\"\" x 6\"\" inch stick mounted Georgia Republic Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031620','NF-1','3\' x 5\' foot poly O/D Georgia Republic Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031619','NF-1','2 ft x 3 ft Nylon Georgia Republic Flag','22.80','0.400',2,100,1,NULL,20070512102759),
 ('031621','NF-1','3\' x 5\' foot nylon O/D Georgia Republic Flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031622','NF-1','4\' x 6\' foot nylon O/D Georgia Republic Flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('031623','NF-1','5\' x 8\' foot nylon O/D Georgia Republic Flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('031688','NF-1','\"4\"\" x 6\"\" inch stick mounted Ghana flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031690','NF-1','3\' x 5\' foot poly O/D Ghana flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031691','NF-1','3\' x 5\' foot nylon O/D Ghana flag','51.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031692','NF-1','4\' x 6\' foot nylon O/D Ghana flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('031693','NF-1','5\' x 8\' foot nylon O/D Ghana flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('031801','NF-1','\"4\"\" x 6\"\" inch stick mounted Guernsey Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031802','NF-1','3\' x 5\' foot poly O/D Guernsey Flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('031806','NF-1','\"4\"\" x 6\"\" inch stick mounted Guinea flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031809','NF-1','3\' x 5\' foot nylon O/D Guinea flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031810','NF-1','4\' x 6\' foot nylon O/D Guinea flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('031811','NF-1','5\' x 8\' foot nylon O/D Guinea flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('031821','NF-1','\"4\"\" x 6\"\" inch stick mounted Guinea -Bissau flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031823','NF-1','3\' x 5\' foot poly O/D Guinea-Bissau flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031824','NF-1','3\' x 5\' foot nylon O/D Guinea-Bissau flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('031825','NF-1','4\' x 6\' foot nylon O/D Guinea-Bissau flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('031826','NF-1','5\' x 8\' foot nylon O/D Guinea-Bissau flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('031838','NF-1','\"4\"\" x 6\"\" inch stick mounted Guyana Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031841','NF-1','3\' x 5\' foot poly O/D Guyana Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031840','NF-1','2\' x 3\' foot nylon O/D Guyana Flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('031842','NF-1','3\' x 5\' foot nylon O/D Guyana Flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('031843','NF-1','4\' x 6\' foot nylon O/D Guyana Flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('031844','NF-1','5\' x 8\' foot nylon O/D Guyana Flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('031857','NF-1','\"4\"\" x 6\"\" inch stick mounted Haiti flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031860','NF-1','3\' x 5\' foot poly O/D Haiti flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('031859','NF-1','2\' x 3\' foot nylon O/D Haiti flag','39.10','0.450',2,100,1,NULL,20070512102759),
 ('031861','NF-1','3\' x 5\' foot nylon O/D Haiti flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('031862','NF-1','4\' x 6\' foot nylon O/D Haiti flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('031863','NF-1','5\' x 8\' foot nylon O/D Haiti flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('031877','NF-1','2\' x 3\' foot nylon O/D Haiti flag','16.00','0.450',2,100,1,NULL,20070512102759),
 ('031878','NF-1','3\' x 5\' foot nylon O/D Haiti flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('031879','NF-1','4\' x 6\' foot nylon O/D Haiti flag','33.20','1.000',2,100,1,NULL,20070512102759),
 ('031880','NF-1','5\' x 8\' foot nylon O/D Haiti flag','56.60','1.200',2,100,1,NULL,20070512102759),
 ('031976','NF-1','3\' x 5\' foot nylon O/D Ichkeria Flag','42.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('031047','NF-1','4\' x 6\' inch stick mounted Cort D\'Ivoire flag','3.00','0.250',2,100,1,NULL,20070512102759),
 ('031050','NF-1','3\' x 5\' foot nylon O/D Cort D\'Ivoire flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('031051','NF-1','4\' x 6\' foot nylon O/D Cort D\'Ivoire flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('031052','NF-1','5\' x 8\' foot nylon O/D Cort D\'Ivoire flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('032211','NF-1','\"4\"\" x 6\"\" inch stick mounted Jordan Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032213','NF-1','3\' x 5\' foot poly  O/D Jordan Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032212','NF-1','2\' x 3\' foot nylon O/D Jordan flag','39.50','0.450',2,100,1,NULL,20070512102759),
 ('032214','NF-1','3\' x 5\' foot nylon O/D Jordan flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032215','NF-1','4\' x 6\' foot nylon O/D Jordan flag','63.60','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032216','NF-1','5\' x 8\' foot nylon O/D Jordan flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032228','NF-1','\"4\"\" x 6\"\" inch stick mounted Kazakhstan Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032230','NF-1','3\' x 5\' foot poly O/D Kazakhstan Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032229','NF-1','2\' x 3\' foot nylon O/D Kazakhstan flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032231','NF-1','3\' x 5\' foot nylon O/D Kazakhstan flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032232','NF-1','4\' x 6\' foot nylon O/D Kazakhstan flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032233','NF-1','5\' x 8\' foot nylon O/D Kazakhstan flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032245','NF-1','\"4\"\" x 6\"\" inch stick mounted Kenya flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032247','NF-1','3\' x 5\' foot poly  O/D Kenya flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032248','NF-1','3\' x 5\' foot nylon O/D Kenya flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032249','NF-1','4\' x 6\' foot nylon O/D Kenya flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032250','NF-1','5\' x 8\' foot nylon O/D Kenya flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032268','NF-1','\"4\"\" x 6\"\" inch stick mounted Kiribati Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032270','NF-1','3\' x 5\' foot poly O/D Kiribati Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032269','NF-1','2\' x 3\' foot nylon O/D Kiribati flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032271','NF-1','3\' x 5\' foot nylon O/D Kiribati flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032272','NF-1','4\' x 6\' foot nylon O/D Kiribati flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032273','NF-1','5\' x 8\' foot nylon O/D Kiribati flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032339','NF-1','\"4\"\" x 6\"\" inch stick mounted Kyrgystan Flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032341','NF-1','3\' x 5\' foot poly O/D Kyrgystan Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032340','NF-1','2\' x 3\' foot nylon O/D Kyrgystan flag','39.10','0.450',2,100,1,NULL,20070512102759),
 ('032342','NF-1','3\' x 5\' foot nylon O/D Kyrgystan flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('032343','NF-1','4\' x 6\' foot nylon O/D Kyrgystan flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('032344','NF-1','5\' x 8\' foot nylon O/D Kyrgystan flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('032356','NF-1','\"4\"\" x 6\"\" inch stick mounted Laos Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032358','NF-1','3\' x 5\' foot poly O/D Laos Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032357','NF-1','2\' x 3\' foot nylon O/D Laos flag','31.80','0.450',2,100,1,NULL,20070512102759),
 ('032359','NF-1','3\' x 5\' foot nylon O/D Laos flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('032360','NF-1','4\' x 6\' foot nylon O/D Laos flag','56.10','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032361','NF-1','5\' x 8\' foot nylon O/D Laos flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('032373','NF-1','\"4\"\" x 6\"\" inch stick mounted Latvia Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032376','NF-1','3\' x 5\' foot poly O/D Latvia Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032375','NF-1','2\' x 3\' foot nylon O/D Latvia flag','22.80','0.450',2,100,1,NULL,20070512102759),
 ('032377','NF-1','3\' x 5\' foot nylon O/D Latvia flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('032378','NF-1','4\' x 6\' foot nylon O/D Latvia flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('032379','NF-1','5\' x 8\' foot nylon O/D Latvia flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('032408','NF-1','\"4\"\" x 6\"\" inch stick mounted Lesotho flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032410','NF-1','3\' x 5\' foot poly O/D Lesotho flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032411','NF-1','3\' x 5\' foot nylon O/D Lesotho flag','68.20','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032412','NF-1','4\' x 6\' foot nylon O/D Lesotho flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032413','NF-1','5\' x 8\' foot nylon O/D Lesotho flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032425','NF-1','\"4\"\" x 6\"\" inch stick mounted Liberia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032427','NF-1','3\' x 5\' foot poly O/D Liberia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032428','NF-1','3\' x 5\' foot nylon O/D Liberia flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('032429','NF-1','4\' x 6\' foot nylon O/D Liberia flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('032430','NF-1','5\' x 8\' foot nylon O/D Liberia flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('032477','NF-1','\"4\"\" x 6\"\" inch stick mounted Lithuania Flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032480','NF-1','3\' x 5\' foot poly O/D Lithuania Flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032479','NF-1','2\' x 3\' foot nylon O/D Lithuania flag','22.80','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032481','NF-1','3\' x 5\' foot nylon O/D Lithuania flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('032482','NF-1','4\' x 6\' foot nylon O/D Lithuania flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('032483','NF-1','5\' x 8\' foot nylon O/D Lithuania flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('032442','NF-1','\"4\"\" x 6\"\" inch stick mounted Lybia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032445','NF-1','3\' x 5\' foot poly O/D Lybia flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('032446','NF-1','3\' x 5\' foot nylon O/D Lybia flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('032447','NF-1','4\' x 6\' foot nylon O/D Lybia flag','33.20','1.000',2,100,1,NULL,20070512102759),
 ('032448','NF-1','5\' x 8\' foot nylon O/D Lybia flag','56.60','1.200',2,100,1,NULL,20070512102759),
 ('032516','NF-1','3\' x 5\' foot nylon O/D Macau flag','189.00','0.450',2,100,1,NULL,20070512102759),
 ('032519','NF-1','\"4\"\" x 6\"\" inch stick mounted Macedonia flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032520','NF-1','2\' x 3\' foot nylon O/D Macedonia flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('032521','NF-1','3\' x 5\' foot nylon O/D Macedonia flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032522','NF-1','4\' x 6\' foot nylon O/D Macedonia flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('032523','NF-1','5\' x 8\' foot nylon O/D Macedonia flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032533','NF-1','\"4\"\" x 6\"\" inch stick mounted Madagascar flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032535','NF-1','3\' x 5\' foot poly O/D Madagascar flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032536','NF-1','3\' x 5\' foot nylon O/D Madagascar flag','41.60','0.450',2,100,1,NULL,20070512102759),
 ('032537','NF-1','4\' x 6\' foot nylon O/D Madagascar flag','45.30','1.000',2,100,1,NULL,20070512102759),
 ('032538','NF-1','5\' x 8\' foot nylon O/D Madagascar flag','90.90','1.200',2,100,1,NULL,20070512102759),
 ('032567','NF-1','\"4\"\" x 6\"\" inch stick mounted Malaysia flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032569','NF-1','3\' x 5\' foot poly O/D Malaysia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032568','NF-1','2\' x 3\' foot nylon O/D Malaysia flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032570','NF-1','3\' x 5\' foot nylon O/D Malaysia flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032571','NF-1','4\' x 6\' foot nylon O/D Malaysia flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032572','NF-1','5\' x 8\' foot nylon O/D Malaysia flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032550','NF-1','\"4\"\" x 6\"\" inch stick mounted Malawi flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032552','NF-1','3\' x 5\' foot poly O/D Malawi flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032553','NF-1','3\' x 5\' foot nylon O/D Malawi flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('032554','NF-1','4\' x 6\' foot nylon O/D Malawi flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('032555','NF-1','5\' x 8\' foot nylon O/D Malawi flag','97.60','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032584','NF-1','\"4\"\" x 6\"\" inch stick mounted Maldives flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032586','NF-1','3\' x 5\' foot poly O/D Maldives flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032585','NF-1','2\' x 3\' foot nylon O/D Maldives flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('032587','NF-1','3\' x 5\' foot nylon O/D Maldives flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032588','NF-1','4\' x 6\' foot nylon O/D Maldives flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('032589','NF-1','5\' x 8\' foot nylon O/D Maldives flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032601','NF-1','\"4\"\" x 6\"\" inch stick mounted Mali flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032604','NF-1','3\' x 5\' foot poly O/D Mali flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032605','NF-1','3\' x 5\' foot nylon O/D Mali flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('032606','NF-1','4\' x 6\' foot nylon O/D Mali flag','45.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032607','NF-1','5\' x 8\' foot nylon O/D Mali flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('032636','NF-1','\"4\"\" x 6\"\" inch stick mounted Isle of Man flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032637','NF-1','3\' x 5\' foot poly O/D Isle of Man flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032638','NF-1','3\' x 5\' foot nylon O/D Isle of Man flag','49.40','0.450',2,100,1,NULL,20070512102759),
 ('032644','NF-1','\"4\"\" x 6\"\" inch stick mounted Marshall Islands flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032646','NF-1','3\' x 5\' foot poly O/D Marshall Islands flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032645','NF-1','2\' x 3\' foot nylon O/D Marshall Islands flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032647','NF-1','3\' x 5\' foot nylon O/D Marshall Islands flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032648','NF-1','4\' x 6\' foot nylon O/D Marshall Islands flag','63.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032649','NF-1','5\' x 8\' foot nylon O/D Marshall Islands flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032661','NF-1','\"4\"\" x 6\"\" inch stick mounted Mauritania flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032663','NF-1','3\' x 5\' foot poly O/D Mauritania flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032664','NF-1','3\' x 5\' foot nylon O/D Mauritania flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('032665','NF-1','4\' x 6\' foot nylon O/D Mauritania flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('032666','NF-1','5\' x 8\' foot nylon O/D Mauritania flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('032678','NF-1','\"4\"\" x 6\"\" inch stick mounted Mauritius flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032681','NF-1','3\' x 5\' foot poly O/D Mauritius flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032682','NF-1','3\' x 5\' foot nylon O/D Maurituis flag','35.20','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032683','NF-1','4\' x 6\' foot nylon O/D Mauritius flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('032684','NF-1','5\' x 8\' foot nylon O/D Mauritius flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('032719','NF-1','\"4\"\" x 6\"\" inch stick mounted Micronesia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032721','NF-1','3\' x 5\' foot poly O/D Micronesia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032720','NF-1','2\' x 3\' foot nylon O/D Micronesia flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('032722','NF-1','3\' x 5\' foot nylon O/D Micronesia flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032723','NF-1','4\' x 6\' foot nylon O/D Micronesia flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('032724','NF-1','5\' x 8\' foot nylon O/D Micronesia flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032736','NF-1','\"4\"\" x 6\"\" inch stick mounted Moldova flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032738','NF-1','3\' x 5\' foot poly O/D Moldova flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032737','NF-1','2\' x 3\' foot nylon O/D Moldova flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032739','NF-1','3\' x 5\' foot nylon O/D Moldova flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032740','NF-1','4\' x 6\' foot nylon O/D Moldova flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032741','NF-1','5\' x 8\' foot nylon O/D Moldova flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032776','NF-1','\"4\"\" x 6\"\" inch stick mounted Mongolia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032778','NF-1','3\' x 5\' foot poly O/D Mongolia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032777','NF-1','2\' x 3\' foot nylon O/D Mongolia flag','31.80','0.450',2,100,1,NULL,20070512102759),
 ('032779','NF-1','3\' x 5\' foot nylon O/D Mongolia flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('032780','NF-1','4\' x 6\' foot nylon O/D Mongolia flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('032781','NF-1','5\' x 8\' foot nylon O/D Mongolia flag','97.60','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032794','NF-1','2\' x 3\' foot nylon O/D Montenegro flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032795','NF-1','3\' x 5\' foot nylon O/D Montenegro flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032796','NF-1','4\' x 6\' foot nylon O/D Montenegro flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032797','NF-1','5\' x 8\' foot nylon O/D Montenegro flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032806','NF-1','3\' x 5\' foot poly O/D Montserrat flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032807','NF-1','3\' x 5\' foot nylon O/D Montserrat flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032808','NF-1','4\' x 6\' foot nylon O/D Montserrat flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032809','NF-1','5\' x 8\' foot nylon O/D Montserrat flag','135.00','1.200',2,100,1,NULL,20070512102759),
 ('032819','NF-1','\"4\"\" x 6\"\" inch stick mounted Morocco flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032821','NF-1','3\' x 5\' foot poly O/D Morocco flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032822','NF-1','3\' x 5\' foot nylon O/D Morocco flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('032823','NF-1','4\' x 6\' foot nylon O/D Morocco flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('032824','NF-1','5\' x 8\' foot nylon O/D Morocco flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('032836','NF-1','\"4\"\" x 6\"\" inch stick mounted Mozambique flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032838','NF-1','3\' x 5\' foot poly O/D Mozambique flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032839','NF-1','3\' x 5\' foot nylon O/D Mozambique flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032840','NF-1','4\' x 6\' foot nylon O/D Mozambique flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032841','NF-1','5\' x 8\' foot nylon O/D Mozambique flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032853','NF-1','\"4\"\" x 6\"\" inch stick mounted Myanmar flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032854','NF-1','2\' x 3\' foot nylon O/D Myanmar flag','43.80','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032855','NF-1','3\' x 5\' foot nylon O/D Myanmar flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032856','NF-1','4\' x 6\' foot nylon O/D Myanmar flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032857','NF-1','5\' x 8\' foot nylon O/D Myanmar flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032867','NF-1','\"4\"\" x 6\"\" inch stick mounted Namibia flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032869','NF-1','3\' x 5\' foot poly O/D Namibia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032868','NF-1','2\' x 3\' foot nylon O/D Namibia flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032870','NF-1','3\' x 5\' foot nylon O/D Namibia flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032871','NF-1','4\' x 6\' foot nylon O/D Namibia flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('032872','NF-1','5\' x 8\' foot nylon O/D Namibia flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('032901','NF-1','\"4\"\" x 6\"\" inch stick mounted Nauru flag\"','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032903','NF-1','3\' x 5\' foot poly O/D Nauru flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032902','NF-1','2\' x 3\' foot nylon O/D Nauru flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('032904','NF-1','3\' x 5\' foot nylon O/D Nauru flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('032905','NF-1','4\' x 6\' foot nylon O/D Nauru flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('032906','NF-1','5\' x 8\' foot nylon O/D Nauru flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('032918','NF-1','\"4\"\" x 6\"\" inch stick mounted Nepal flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032920','NF-1','3\' x 5\' foot poly O/D Nepal flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032919','NF-1','2\' x 3\' foot nylon O/D Nepal flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('032921','NF-1','3\' x 5\' foot nylon O/D Nepal flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('032922','NF-1','4\' x 6\' foot nylon O/D Nepal flag','85.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('032923','NF-1','5\' x 8\' foot nylon O/D Nepal flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('033016','NF-1','2\' x 3\' foot nylon O/D Nicaragua flag','17.60','0.450',2,100,1,NULL,20070512102759),
 ('033017','NF-1','3\' x 5\' foot nylon O/D Nicaragua flag','25.80','0.450',2,100,1,NULL,20070512102759),
 ('033018','NF-1','4\' x 6\' foot nylon O/D Nicaraqua flag','33.20','1.000',2,100,1,NULL,20070512102759),
 ('033019','NF-1','5\' x 8\' foot nylon O/D Nicaragua flag','56.60','1.200',2,100,1,NULL,20070512102759),
 ('032995','NF-1','\"4\"\" x 6\"\" inch stick mounted Nicaragua w/ Seal flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('032999','NF-1','3\' x 5\' foot poly O/D Nicaragua w/ Seal flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('032998','NF-1','2\' x 3\' foot nylon O/D Nicaragua w/ Seal flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('033000','NF-1','3\' x 5\' foot nylon O/D Nicaragua w/ Seal flag','51.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033001','NF-1','4\' x 6\' foot nylon O/D Nicaraqua w/ Seal flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('033002','NF-1','5\' x 8\' foot nylon O/D Nicaragua w/ Seal flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('033028','NF-1','\"4\"\" x 6\"\" inch stick mounted Niger flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033030','NF-1','3\' x 5\' foot poly O/D Niger flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033029','NF-1','2\' x 3\' foot nylon O/D Niger flag','31.80','0.450',2,100,1,NULL,20070512102759),
 ('033031','NF-1','3\' x 5\' foot nylon O/D Niger flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('033032','NF-1','4\' x 6\' foot nylon O/D Niqer flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('033033','NF-1','5\' x 8\' foot nylon O/D Niger flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('033045','NF-1','\"4\"\" x 6\"\" inch stick mounted Nigeria flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033048','NF-1','3\' x 5\' foot poly O/D Nigeria flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033047','NF-1','2\' x 3\' foot nylon O/D Nigeria flag','22.80','0.450',2,100,1,NULL,20070512102759),
 ('033049','NF-1','3\' x 5\' foot nylon O/D Nigeria flag','35.20','0.450',2,100,1,NULL,20070512102759),
 ('033050','NF-1','4\' x 6\' foot nylon O/D Niqeria flag','45.50','1.000',2,100,1,NULL,20070512102759),
 ('033051','NF-1','5\' x 8\' foot nylon O/D Nigeria flag','73.20','1.200',2,100,1,NULL,20070512102759),
 ('033063','NF-1','3\' x 5\' foot poly O/D Niue flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('033102','NF-1','3\' x 5\' foot poly O/D Oas flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('033101','NF-1','2\' x 3\' foot nylon O/D Oas flag','45.20','0.450',2,100,1,NULL,20070512102759),
 ('033103','NF-1','3\' x 5\' foot nylon O/D Oas flag','60.90','0.450',2,100,1,NULL,20070512102759),
 ('033104','NF-1','4\' x 6\' foot nylon O/D Oas flag','82.60','1.000',2,100,1,NULL,20070512102759),
 ('033105','NF-1','5\' x 8\' foot nylon O/D Oas flag','127.80','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033130','NF-1','\"4\"\" x 6\"\" inch stick mounted Oman flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033132','NF-1','3\' x 5\' foot poly O/D Oman flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033131','NF-1','2\' x 3\' foot nylon O/D Oman flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('033133','NF-1','3\' x 5\' foot nylon O/D Oman flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033134','NF-1','4\' x 6\' foot nylon O/D Oman flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('033135','NF-1','5\' x 8\' foot nylon O/D Oman flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('033166','NF-1','\"4\"\" x 6\"\" inch stick mounted Palau flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033168','NF-1','3\' x 5\' foot poly O/D Palau flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033167','NF-1','2\' x 3\' foot nylon O/D Palau flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('033169','NF-1','3\' x 5\' foot nylon O/D Palau flag','51.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033170','NF-1','4\' x 6\' foot nylon O/D Palau flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('033171','NF-1','5\' x 8\' foot nylon O/D Palau flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('033223','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Papua New Guinea stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033225','NF-1','3\' x 5\' foot Endura Poly Papau New Guinea flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033224','NF-1','2\' x 3\' foot nylon O/D Papau New Guinea flag','39.10','0.450',2,100,1,NULL,20070512102759),
 ('033226','NF-1','3\' x 5\' foot nylon O/D Papau New Guinea flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('033227','NF-1','4\' x 6\' foot nylon O/D Papau New Guinea flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('033228','NF-1','5\' x 8\' foot nylon O/D Papau New Guinea flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('033313','NF-1','3\' x 5\' foot Endura Gloss Pitcairn Islands flag','30.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033316','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Pohnpei stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033464','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Rwanda stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033466','NF-1','3\' x 5\' foot Endura Poly Rwanda flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033465','NF-1','2\' x 3\' foot nylon O/D Rwanda flag','39.10','0.450',2,100,1,NULL,20070512102759),
 ('033467','NF-1','3\' x 5\' foot nylon O/D Rwanda flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('033468','NF-1','4\' x 6\' foot nylon O/D Rwanda flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('033469','NF-1','5\' x 8\' foot nylon O/D Rwanda flag','119.80','1.200',2,100,1,NULL,20070512102759),
 ('033481','NF-1','\"4\"\" x 6\"\" inch Endura Gloss St. Christopher-Nevis stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033484','NF-1','3\' x 5\' foot Endura Poly St. Christopher-Nevis flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033483','NF-1','2\' x 3\' foot nylon O/D St. Christopher-Nevis flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('033485','NF-1','3\' x 5\' foot nylon O/D St. Christopher-Nevis flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033486','NF-1','4\' x 6\' foot nylon O/D St. Christopher-Nevis flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('033487','NF-1','5\' x 8\' foot nylon O/D St. Christopher-Nevis flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('033500','NF-1','\"4\"\" x 6\"\" inch Endura Gloss St. Helena stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033502','NF-1','3\' x 5\' foot Endura Poly St. Helena flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('033501','NF-1','2\' x 3\' foot nylon O/D St. Helena flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('033503','NF-1','3\' x 5\' foot nylon O/D St. Helena flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033504','NF-1','4\' x 6\' foot nylon O/D St. Helena flag','85.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033505','NF-1','5\' x 8\' foot nylon O/D St. Helena flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('033517','NF-1','\"4\"\" x 6\"\" inch Endura Gloss St. Lucia stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033520','NF-1','3\' x 5\' foot Endura Poly St. Lucia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033519','NF-1','2\' x 3\' foot nylon O/D St. Lucia flag','43.80','0.450',2,100,1,NULL,20070512102759),
 ('033521','NF-1','3\' x 5\' foot nylon O/D St. Lucia flag','68.20','0.450',2,100,1,NULL,20070512102759),
 ('033522','NF-1','4\' x 6\' foot nylon O/D St. Lucia flag','85.50','1.000',2,100,1,NULL,20070512102759),
 ('033523','NF-1','5\' x 8\' foot nylon O/D St. Lucia flag','135.20','1.200',2,100,1,NULL,20070512102759),
 ('033536','NF-1','\"4\"\" x 6\"\" inch Endura Gloss St. Vincent & Grenadines stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033539','NF-1','3\' x 5\' foot Endura Poly St. Vincent & Grenadines flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033538','NF-1','2\' x 3\' foot nylon O/D St. Vincent & Grenadines flag','33.40','0.450',2,100,1,NULL,20070512102759),
 ('033540','NF-1','3\' x 5\' foot nylon O/D St. Vincent & Grenadines flag','51.50','0.450',2,100,1,NULL,20070512102759),
 ('033541','NF-1','4\' x 6\' foot nylon O/D St. Vincent & Grenadines flag','63.50','1.000',2,100,1,NULL,20070512102759),
 ('033542','NF-1','5\' x 8\' foot nylon O/D St. Vincent & Grenadines flag','114.70','1.200',2,100,1,NULL,20070512102759),
 ('033587','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Sao Tome & Principe stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033588','NF-1','2\' x 3\' foot nylon O/D Sao Tome & Principe flag','39.10','0.450',2,100,1,NULL,20070512102759),
 ('033589','NF-1','3\' x 5\' foot nylon O/D Sao Tome & Principe flag','57.40','0.450',2,100,1,NULL,20070512102759),
 ('033590','NF-1','4\' x 6\' foot nylon O/D Sao Tome & Principe flag','75.10','1.000',2,100,1,NULL,20070512102759),
 ('033591','NF-1','5\' x 8\' foot nylon O/D Sao Tome & Principe flag','119.80','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033662','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Senegal stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033664','NF-1','3\' x 5\' foot Endura Poly Senegal flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033663','NF-1','2\' x 3\' foot nylon O/D Senegal flag','31.80','0.450',2,100,1,NULL,20070512102759),
 ('033665','NF-1','3\' x 5\' foot nylon O/D Senegal flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('033666','NF-1','4\' x 6\' foot nylon O/D Senegal flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('033667','NF-1','5\' x 8\' foot nylon O/D Senegal flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('033700','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Seychelles stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033702','NF-1','3\' x 5\' foot Endura Poly Seychelles flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033701','NF-1','2\' x 3\' foot nylon O/D Seychelles flag','52.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033703','NF-1','3\' x 5\' foot nylon O/D Seychelles flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033704','NF-1','4\' x 6\' foot nylon O/D Seychelles flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('033705','NF-1','5\' x 8\' foot nylon O/D Seychelles flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('033718','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Sierra Leone stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033721','NF-1','3\' x 5\' foot Endura Poly Sierra Leone flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033720','NF-1','2\' x 3\' foot nylon O/D Sierra Leone flag','16.00','0.450',2,100,1,NULL,20070512102759),
 ('033722','NF-1','3\' x 5\' foot nylon O/D Sierra Leone flag','21.00','0.450',2,100,1,NULL,20070512102759),
 ('033723','NF-1','4\' x 6\' foot nylon O/D Sierra Leone flag','28.00','1.000',2,100,1,NULL,20070512102759),
 ('033724','NF-1','5\' x 8\' foot nylon O/D Sierra Leone flag','48.00','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033756','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Slovakia stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033758','NF-1','3\' x 5\' foot Endura Gloss Poly flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033757','NF-1','2\' x 3\' foot nylon O/D Slovakia flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('033759','NF-1','3\' x 5\' foot nylon O/D Slovakia flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033760','NF-1','4\' x 6\' foot nylon O/D Slovakia flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('033761','NF-1','5\' x 8\' foot nylon O/D Siovakia flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('033773','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Slovenia stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033775','NF-1','3\' x 5\' foot Endura Poly Slovenia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033774','NF-1','2\' x 3\' foot nylon O/D Slovenia flag','52.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033776','NF-1','3\' x 5\' foot nylon O/D Slovenia flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033777','NF-1','4\' x 6\' foot nylon O/D Slovenia flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('033778','NF-1','5\' x 8\' foot nylon O/D Siovenia flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('033793','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Solomon Islands stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033795','NF-1','3\' x 5\' foot Endura Poly Solomon Islands flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033794','NF-1','2\' x 3\' foot nylon O/D Solomon Islands flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('033796','NF-1','3\' x 5\' foot nylon O/D Solomon Islands flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033797','NF-1','4\' x 6\' foot nylon O/D Solomon Islands flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('033798','NF-1','5\' x 8\' foot nylon O/D Solomon Islands flag','158.00','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033827','NF-1','3\' x 5\' foot nylon O/D Somaliland flag','54.50','0.450',2,100,1,NULL,20070512102759),
 ('033885','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Sri Lanka stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033887','NF-1','3\' x 5\' foot Endura Poly Sri Lanka flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033886','NF-1','2\' x 3\' foot nylon O/D Sri Lanka flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('033888','NF-1','3\' x 5\' foot nylon O/D Sri Lanka flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033889','NF-1','4\' x 6\' foot nylon O/D Sri Lanka flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('033890','NF-1','5\' x 8\' foot nylon O/D Sri Lanka flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('033919','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Suriname stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033922','NF-1','3\' x 5\' foot Endura Poly Suriname flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033921','NF-1','2\' x 3\' foot nylon O/D Suriname flag','46.00','0.450',2,100,1,NULL,20070512102759),
 ('033923','NF-1','3\' x 5\' foot nylon O/D Suriname flag','67.50','0.450',2,100,1,NULL,20070512102759),
 ('033924','NF-1','4\' x 6\' foot nylon O/D Suriname flag','88.50','1.000',2,100,1,NULL,20070512102759),
 ('033925','NF-1','5\' x 8\' foot nylon O/D Suriname flag','140.00','1.200',2,100,1,NULL,20070512102759),
 ('033938','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Swaziland stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('033940','NF-1','3\' x 5\' foot Endura Poly Swaziland flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('033939','NF-1','2\' x 3\' foot nylon O/D Swaziland flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('033941','NF-1','3\' x 5\' foot nylon O/D Swaziland flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('033942','NF-1','4\' x 6\' foot nylon O/D Swaziland flag','100.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('033943','NF-1','5\' x 8\' foot nylon O/D Swaziland flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034022','NF-1','2\' x 3\' foot nylon O/D Tahiti flag','10.00','0.450',2,100,1,NULL,20070512102759),
 ('034023','NF-1','3\' x 5\' foot nylon O/D Tahiti flag','21.00','0.450',2,100,1,NULL,20070512102759),
 ('034024','NF-1','4\' x 6\' foot nylon O/D Tahiti flag','28.00','1.000',2,100,1,NULL,20070512102759),
 ('034025','NF-1','5\' x 8\' foot nylon O/D Tahiti flag','48.00','1.200',2,100,1,NULL,20070512102759),
 ('034056','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Tajikistan stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034058','NF-1','3\' x 5\' foot Endura Poly Tajikistan flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034057','NF-1','2\' x 3\' foot nylon O/D Tajikistan flag','46.00','0.450',2,100,1,NULL,20070512102759),
 ('034059','NF-1','3\' x 5\' foot nylon O/D Tajikistan flag','67.50','0.450',2,100,1,NULL,20070512102759),
 ('034060','NF-1','4\' x 6\' foot nylon O/D Tajikistan flag','88.50','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034061','NF-1','5\' x 8\' foot nylon O/D Tajikistan flag','140.00','1.200',2,100,1,NULL,20070512102759),
 ('034073','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Tanzania stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034075','NF-1','3\' x 5\' foot Endura Poly Tanzania flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034074','NF-1','2\' x 3\' foot nylon O/D Tanzania flag','39.50','0.450',2,100,1,NULL,20070512102759),
 ('034076','NF-1','3\' x 5\' foot nylon O/D Tanzania flag','60.50','0.450',2,100,1,NULL,20070512102759),
 ('034077','NF-1','4\' x 6\' foot nylon O/D Tanzania flag','75.00','1.000',2,100,1,NULL,20070512102759),
 ('034078','NF-1','5\' x 8\' foot nylon O/D Tanzania flag','135.00','1.200',2,100,1,NULL,20070512102759),
 ('034107','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Tibet stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034108','NF-1','3\' x 5\' foot Endura Poly O/D Tibet flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034112','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Togo stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034114','NF-1','3\' x 5\' foot Endura Ploy Togo flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034113','NF-1','2\' x 3\' foot nylon O/D Togo flag','39.50','0.450',2,100,1,NULL,20070512102759),
 ('034115','NF-1','3\' x 5\' foot nylon O/D Togo flag','60.50','0.450',2,100,1,NULL,20070512102759),
 ('034116','NF-1','4\' x 6\' foot nylon O/D Togo flag','75.00','1.000',2,100,1,NULL,20070512102759),
 ('034117','NF-1','5\' x 8\' foot nylon O/D Togo flag','135.00','1.200',2,100,1,NULL,20070512102759),
 ('034146','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Trinidad & Tobago stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034151','NF-1','3\' x 5\' foot Endura Poly Trinidad & Tobago flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034150','NF-1','2\' x 3\' foot nylon O/D Trinidad & Tobago flag','39.50','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034152','NF-1','3\' x 5\' foot nylon O/D Trinidad & Tobago flag','60.50','0.450',2,100,1,NULL,20070512102759),
 ('034153','NF-1','4\' x 6\' foot nylon O/D Trinidad & Tobago flag','75.00','1.000',2,100,1,NULL,20070512102759),
 ('034154','NF-1','5\' x 8\' foot nylon O/D Trinidad & Tobago flag','135.00','1.200',2,100,1,NULL,20070512102759),
 ('034168','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Tunisia stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034170','NF-1','3\' x 5\' foot Endura Gloss Tunisia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034169','NF-1','2\' x 3\' foot nylon O/D Tunisia flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034171','NF-1','3\' x 5\' foot nylon O/D Tunisia flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034172','NF-1','4\' x 6\' foot nylon O/D Tunisia flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034173','NF-1','5\' x 8\' foot nylon O/D Tunisia flag','158.00','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034204','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Turkmenistan stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034205','NF-1','2\' x 3\' foot nylon O/D Turkmenistan flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034206','NF-1','3\' x 5\' foot nylon O/D Turkmenistan flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034207','NF-1','4\' x 6\' foot nylon O/D Turkmenistan flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034208','NF-1','5\' x 8\' foot nylon O/D Turkmenistan flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034218','NF-1','\"4\"\" x 6\"\" inch Endura Gloss Turks & Caicos stick mounted flag\"','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034220','NF-1','3\' x 5\' foot Endura Poly Turks & Caicos flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034219','NF-1','2\' x 3\' foot nylon O/D Turks & Caicos flag','71.00','0.450',2,100,1,NULL,20070512102759),
 ('034221','NF-1','3\' x 5\' foot nylon O/D Turks & Caicos flag','96.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034222','NF-1','4\' x 6\' foot nylon O/D Turks & Caicos flag','128.00','1.000',2,100,1,NULL,20070512102759),
 ('034223','NF-1','5\' x 8\' foot nylon O/D Turks & Caicos flag','190.00','1.200',2,100,1,NULL,20070512102759),
 ('034235','NF-1','4 in. x 6 in. Endura Gloss Tuvalu No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034236','NF-1','3\' x 5\' foot Endura Poly Tuvalu flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('034237','NF-1','3\' x 5\' foot nylon O/D Tuvalu flag','144.00','0.450',2,100,1,NULL,20070512102759),
 ('034243','NF-1','4 in. x 6 in. Endura Gloss Uganda No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034245','NF-1','3\' x 5\' foot Endura Poly Uganda flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034244','NF-1','2\' x 3\' foot nylon O/D Uganda flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034246','NF-1','3\' x 5\' foot nylon O/D Uganda flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034247','NF-1','4\' x 6\' foot nylon O/D Uganda flag','100.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034248','NF-1','5\' x 8\' foot nylon O/D Uganda flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034260','NF-1','4 in. x 6 in. Endura Gloss Ukraine No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034263','NF-1','3\' x 5\' foot Endura Poly Ukraine flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034262','NF-1','2\' x 3\' foot nylon O/D Ukraine flag','16.00','0.450',2,100,1,NULL,20070512102759),
 ('034264','NF-1','3\' x 5\' foot nylon O/D Ukraine flag','21.00','0.450',2,100,1,NULL,20070512102759),
 ('034265','NF-1','4\' x 6\' foot nylon O/D Ukraine flag','28.00','1.000',2,100,1,NULL,20070512102759),
 ('034266','NF-1','5\' x 8\' foot nylon O/D Ukraine flag','48.00','1.200',2,100,1,NULL,20070512102759),
 ('034376','NF-1','4 in. x 6 in. Endura Gloss Uzbekistan No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034378','NF-1','3\' x 5\' foot Endura Poly Uzebekistan flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034377','NF-1','2\' x 3\' foot nylon O/D Uzbekistan flag','52.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034379','NF-1','3\' x 5\' foot nylon O/D Uzbekistan flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034380','NF-1','4\' x 6\' foot nylon O/D Uzebkistan flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034381','NF-1','5\' x 8\' foot nylon O/D Uzebkistan flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034393','NF-1','4 in. x 6 in. Endura Gloss Vanuatu No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034395','NF-1','3\' x 5\' foot Endura Poly Vanuatu flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034394','NF-1','2\' x 3\' foot nylon O/D Vanuatu flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034396','NF-1','3\' x 5\' foot nylon O/D Vanuatu flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034397','NF-1','4\' x 6\' foot nylon O/D Vanuatu flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034398','NF-1','5\' x 8\' foot nylon O/D Vanuatu flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034499','NF-1','4 in. x 6 in. Endura Gloss Wales No Fr','3.00','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034504','NF-1','2\' x 3\' foot nylon O/D Wales flag','31.80','0.450',2,100,1,NULL,20070512102759),
 ('034506','NF-1','3\' x 5\' foot nylon O/D Wales flag','46.10','0.450',2,100,1,NULL,20070512102759),
 ('034507','NF-1','4\' x 6\' foot nylon O/D Wales flag','56.10','1.000',2,100,1,NULL,20070512102759),
 ('034508','NF-1','5\' x 8\' foot nylon O/D Wales flag','97.60','1.200',2,100,1,NULL,20070512102759),
 ('034522','NF-1','3\' x 5\' foot Endura Poly Western Sahara flag','30.00','0.450',2,100,1,NULL,20070512102759),
 ('034525','NF-1','4 in. x 6 in. Endura Gloss Western Samoa No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034527','NF-1','3\' x 5\' foot Endura Poly Western Samoa flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034526','NF-1','2\' x 3\' foot nylon O/D Western Samoa flag','37.50','0.450',2,100,1,NULL,20070512102759),
 ('034528','NF-1','3\' x 5\' foot nylon O/D Western Samoa flag','54.50','0.450',2,100,1,NULL,20070512102759),
 ('034529','NF-1','4\' x 6\' foot nylon O/D Western Samoa flag','66.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034530','NF-1','5\' x 8\' foot nylon O/D Western Samoa flag','115.00','1.200',2,100,1,NULL,20070512102759),
 ('034573','NF-1','4 in. x 6 in. Endura Gloss Yugoslavia No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034577','NF-1','3\' x 5\' foot Endura Poly Yugoslavia flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034576','NF-1','2\' x 3\' foot nylon O/D Yugoslavia flag','16.00','0.450',2,100,1,NULL,20070512102759),
 ('034578','NF-1','3\' x 5\' foot nylon O/D Yugoslavia flag/Serbia-Montenegro flag','21.00','0.450',2,100,1,NULL,20070512102759),
 ('034579','NF-1','4\' x 6\' foot nylon O/D Yugoslavia flag','28.00','1.000',2,100,1,NULL,20070512102759),
 ('034580','NF-1','5\' x 8\' foot nylon O/D Yugoslavia flag','48.00','1.200',2,100,1,NULL,20070512102759),
 ('034593','NF-1','4 in x 6 in Endura Gloss Zambia No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034595','NF-1','3\' x 5\' foot Endura Poly Zambia flag','20.00','0.450',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034594','NF-1','2\' x 3\' foot nylon O/D Zambia flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034596','NF-1','3\' x 5\' foot nylon O/D Zambia flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034597','NF-1','4\' x 6\' foot nylon O/D Zambia flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034598','NF-1','5\' x 8\' foot nylon O/D Zambia flag','158.00','1.200',2,100,1,NULL,20070512102759),
 ('034610','NF-1','4 in. x 6 in. Endura-Gloss Zimbabwe No Fr','3.00','0.250',2,100,1,NULL,20070512102759),
 ('034612','NF-1','3\' x 5\' foot Endura Poly Zimbabwe flag','20.00','0.450',2,100,1,NULL,20070512102759),
 ('034611','NF-1','2\' x 3\' foot nylon O/D Zimbabwe flag','52.00','0.450',2,100,1,NULL,20070512102759),
 ('034613','NF-1','3\' x 5\' foot nylon O/D Zimbabwe flag','80.00','0.450',2,100,1,NULL,20070512102759),
 ('034614','NF-1','4\' x 6\' foot nylon O/D Zimbabwe flag','100.00','1.000',2,100,1,NULL,20070512102759),
 ('034615','NF-1','5\' x 8\' foot nylon O/D Zimbabwe flag','158.00','1.200',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('034630','NF-1','\"4\"\" x 6\"\" inch Endura Gloss U.N. Flag Set - 191 Flags\"','340.00','10.000',1,100,1,NULL,20070512102759),
 ('034631','NF-1','\"4\"\" x 6\"\" inch Endura Gloss U.N. Flag Set with fringe - 191 Flags\"','755.00','10.000',1,100,1,NULL,20070512102759),
 ('034635','NF-1','3\' x 5\' Nylon Outdoor U.N. Flag Set - 191 Flags','9680.00','80.000',1,100,2,NULL,20070512102759),
 ('034636','NF-1','3\' x 5\' Nylon Outdoor U.N. Flag Set with  Pole Hem - 191 Flags','11950.00','100.000',1,100,2,NULL,20070512102759),
 ('034637','NF-1','3\' x 5\' Nylon Outdoor U.N. Flag Set with fringe and Pole Hem - 191 Flags','15160.00','100.000',1,100,2,NULL,20070512102759),
 ('034638','NF-1','4\' x 6\' Nylon Outdoor U.N. Flag Set - 191 Flags','12180.00','120.000',1,100,3,NULL,20070512102759),
 ('034639','NF-1','4\' x 6\' Nylon Outdoor U.N. Flag Set with  Pole Hem - 191 Flags','15390.00','120.000',1,100,3,NULL,20070512102759),
 ('034640','NF-1','4\' x 6\' Nylon Outdoor U.N. Flag Set with fringe and Pole Hem - 191 Flags','19550.00','130.000',1,100,3,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('062039','heritage1','Heritage Series USA 50 stars 3\'x5\' (header)','44.00','1.000',1,100,1,NULL,20070512102759),
 ('062041','heritage2','Heritage Series USA First Stars & Stripes 3\'x5\' (header)','42.00','1.000',1,100,1,NULL,20070512102759),
 ('062139','heritage3','Heritage Series USA First Stars & Stripes Gift Box','80.00','2.000',1,100,1,NULL,20070512102759),
 ('062140','heritage4','\"Heritage Series USA 50 Stars sleeved flag 28\"\"x40\"\" \"','44.00','1.000',1,100,1,NULL,20070512102759),
 ('062141','DFS1-H','\"Heritage Series Flag Set 30\"\"x50\"\" sleeved flag\"','70.00','2.000',1,100,1,NULL,20070512102759),
 ('731100','FAR-F','USA Farming Flags (1100-pack)','396.00','66.000',1,75,1,NULL,20070512102759),
 ('731200','FAR-F','USA Farming Flags (1200-pack)','432.00','72.000',1,75,1,NULL,20070512102759),
 ('731300','FAR-F','USA Farming Flags (1300-pack)','468.00','78.000',1,75,1,NULL,20070512102759),
 ('731400','FAR-F','USA Farming Flags (1400-pack)','504.00','84.000',1,75,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('731500','FAR-F','USA Farming Flags (1500-pack)','540.00','90.000',1,75,1,NULL,20070512102759),
 ('731600','FAR-F','USA Farming Flags (1600-pack)','576.00','96.000',1,75,1,NULL,20070512102759),
 ('731700','FAR-F','USA Farming Flags (1700-pack)','612.00','102.000',1,75,1,NULL,20070512102759),
 ('731800','FAR-F','USA Farming Flags (1800-pack)','648.00','106.000',1,75,1,NULL,20070512102759),
 ('731900','FAR-F','USA Farming Flags (1900-pack)','684.00','114.000',1,75,1,NULL,20070512102759),
 ('732100','FAR-F','USA Farming Flags (2100-pack)','756.00','126.000',1,75,1,NULL,20070512102759),
 ('732200','FAR-F','USA Farming Flags (2200-pack)','792.00','132.000',1,75,1,NULL,20070512102759),
 ('732300','FAR-F','USA Farming Flags (2300-pack)','828.00','138.000',1,75,1,NULL,20070512102759),
 ('732400','FAR-F','USA Farming Flags (2400-pack)','864.00','144.000',1,75,1,NULL,20070512102759),
 ('732500','FAR-F','USA Farming Flags (2500-pack)','900.00','150.000',1,75,2,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('732600','FAR-F','USA Farming Flags (2600-pack)','936.00','156.000',1,75,2,NULL,20070512102759),
 ('732700','FAR-F','USA Farming Flags (2700-pack)','972.00','162.000',1,75,2,NULL,20070512102759),
 ('732800','FAR-F','USA Farming Flags (2800-pack)','1008.00','168.000',1,75,2,NULL,20070512102759),
 ('732900','FAR-F','USA Farming Flags (2900-pack)','1044.00','174.000',1,75,2,NULL,20070512102759),
 ('733100','FAR-F','USA Farming Flags (3100-pack)','1116.00','186.000',1,75,2,NULL,20070512102759),
 ('733200','FAR-F','USA Farming Flags (3200-pack)','1152.00','192.000',1,75,2,NULL,20070512102759),
 ('733300','FAR-F','USA Farming Flags (3300-pack)','1188.00','198.000',1,75,2,NULL,20070512102759),
 ('733400','FAR-F','USA Farming Flags (3400-pack)','1224.00','204.000',1,75,2,NULL,20070512102759),
 ('733500','FAR-F','USA Farming Flags (3500-pack)','1260.00','210.000',1,75,2,NULL,20070512102759),
 ('733600','FAR-F','USA Farming Flags (3600-pack)','1296.00','216.000',1,75,2,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('733700','FAR-F','USA Farming Flags (3700-pack)','1332.00','222.000',1,75,2,NULL,20070512102759),
 ('733800','FAR-F','USA Farming Flags (3800-pack)','1368.00','228.000',1,75,2,NULL,20070512102759),
 ('733900','FAR-F','USA Farming Flags (3900-pack)','1404.00','234.000',1,75,2,NULL,20070512102759),
 ('734100','FAR-F','USA Farming Flags (4100-pack)','1476.00','246.000',1,75,2,NULL,20070512102759),
 ('734200','FAR-F','USA Farming Flags (4200-pack)','1512.00','252.000',1,75,2,NULL,20070512102759),
 ('734300','FAR-F','USA Farming Flags (4300-pack)','1548.00','258.000',1,75,2,NULL,20070512102759),
 ('734400','FAR-F','USA Farming Flags (4400-pack)','1584.00','264.000',1,75,2,NULL,20070512102759),
 ('734500','FAR-F','USA Farming Flags (4500-pack)','1620.00','270.000',1,75,2,NULL,20070512102759),
 ('734600','FAR-F','USA Farming Flags (4600-pack)','1656.00','276.000',1,75,2,NULL,20070512102759),
 ('734700','FAR-F','USA Farming Flags (4700-pack)','1692.00','282.000',1,75,2,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('734800','FAR-F','USA Farming Flags (4800-pack)','1728.00','288.000',1,75,2,NULL,20070512102759),
 ('734900','FAR-F','USA Farming Flags (4900-pack)','1764.00','294.000',1,75,2,NULL,20070512102759),
 ('735100','FAR-F','USA Farming Flags (5100-pack)','1683.00','306.000',1,75,3,NULL,20070512102759),
 ('735200','FAR-F','USA Farming Flags (5200-pack)','1716.00','312.000',1,75,3,NULL,20070512102759),
 ('735300','FAR-F','USA Farming Flags (5300-pack)','1749.00','318.000',1,75,3,NULL,20070512102759),
 ('735400','FAR-F','USA Farming Flags (5400-pack)','1782.00','324.000',1,75,3,NULL,20070512102759),
 ('735500','FAR-F','USA Farming Flags (5500-pack)','1815.00','330.000',1,75,3,NULL,20070512102759),
 ('735600','FAR-F','USA Farming Flags (5600-pack)','1848.00','336.000',1,75,3,NULL,20070512102759),
 ('735700','FAR-F','USA Farming Flags (5700-pack)','1881.00','342.000',1,75,3,NULL,20070512102759),
 ('735800','FAR-F','USA Farming Flags (5800-pack)','1914.00','348.000',1,75,3,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('735900','FAR-F','USA Farming Flags (5900-pack)','1947.00','354.000',1,75,3,NULL,20070512102759),
 ('736100','FAR-F','USA Farming Flags (6100-pack)','2013.00','366.000',1,75,3,NULL,20070512102759),
 ('736200','FAR-F','USA Farming Flags (6200-pack)','2046.00','372.000',1,75,3,NULL,20070512102759),
 ('736300','FAR-F','USA Farming Flags (6300-pack)','2079.00','378.000',1,75,3,NULL,20070512102759),
 ('736400','FAR-F','USA Farming Flags (6400-pack)','2112.00','384.000',1,75,3,NULL,20070512102759),
 ('736500','FAR-F','USA Farming Flags (6500-pack)','2145.00','390.000',1,75,3,NULL,20070512102759),
 ('736600','FAR-F','USA Farming Flags (6600-pack)','2178.00','396.000',1,75,3,NULL,20070512102759),
 ('736700','FAR-F','USA Farming Flags (6700-pack)','2211.00','402.000',1,75,3,NULL,20070512102759),
 ('736800','FAR-F','USA Farming Flags (6800-pack)','2244.00','408.000',1,75,3,NULL,20070512102759),
 ('736900','FAR-F','USA Farming Flags (6900-pack)','2277.00','414.000',1,75,3,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('737100','FAR-F','USA Farming Flags (7100-pack)','2201.00','426.000',1,75,3,NULL,20070512102759),
 ('737200','FAR-F','USA Farming Flags (7200-pack)','2232.00','432.000',1,75,3,NULL,20070512102759),
 ('737300','FAR-F','USA Farming Flags (7300-pack)','2263.00','438.000',1,75,3,NULL,20070512102759),
 ('737400','FAR-F','USA Farming Flags (7400-pack)','2294.00','444.000',1,75,3,NULL,20070512102759),
 ('737500','FAR-F','USA Farming Flags (7500-pack)','2325.00','450.000',1,75,4,NULL,20070512102759),
 ('737600','FAR-F','USA Farming Flags (7600-pack)','2356.00','456.000',1,75,4,NULL,20070512102759),
 ('737700','FAR-F','USA Farming Flags (7700-pack)','2387.00','462.000',1,75,4,NULL,20070512102759),
 ('737800','FAR-F','USA Farming Flags (7800-pack)','2418.00','468.000',1,75,4,NULL,20070512102759),
 ('737900','FAR-F','USA Farming Flags (7900-pack)','2449.00','474.000',1,75,4,NULL,20070512102759),
 ('738100','FAR-F','USA Farming Flags (8100-pack)','2511.00','486.000',1,75,4,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('738200','FAR-F','USA Farming Flags (8200-pack)','2542.00','492.000',1,75,4,NULL,20070512102759),
 ('738300','FAR-F','USA Farming Flags (8300-pack)','2573.00','498.000',1,75,4,NULL,20070512102759),
 ('738400','FAR-F','USA Farming Flags (8400-pack)','2604.00','504.000',1,75,4,NULL,20070512102759),
 ('738500','FAR-F','USA Farming Flags (8500-pack)','2635.00','510.000',1,75,4,NULL,20070512102759),
 ('738600','FAR-F','USA Farming Flags (8600-pack)','2666.00','516.000',1,75,4,NULL,20070512102759),
 ('738700','FAR-F','USA Farming Flags (8700-pack)','2697.00','522.000',1,75,4,NULL,20070512102759),
 ('738800','FAR-F','USA Farming Flags (8800-pack)','2728.00','528.000',1,75,4,NULL,20070512102759),
 ('738900','FAR-F','USA Farming Flags (8900-pack)','2759.00','534.000',1,75,4,NULL,20070512102759),
 ('739100','FAR-F','USA Farming Flags (9100-pack)','2821.00','546.000',1,75,4,NULL,20070512102759),
 ('739200','FAR-F','USA Farming Flags (9200-pack)','2852.00','552.000',1,75,4,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('739300','FAR-F','USA Farming Flags (9300-pack)','2883.00','558.000',1,75,4,NULL,20070512102759),
 ('739400','FAR-F','USA Farming Flags (9400-pack)','2914.00','564.000',1,75,4,NULL,20070512102759),
 ('739500','FAR-F','USA Farming Flags (9500-pack)','2945.00','570.000',1,75,4,NULL,20070512102759),
 ('739600','FAR-F','USA Farming Flags (9600-pack)','2976.00','576.000',1,75,4,NULL,20070512102759),
 ('739700','FAR-F','USA Farming Flags (9700-pack)','3007.00','582.000',1,75,4,NULL,20070512102759),
 ('739800','FAR-F','USA Farming Flags (9800-pack)','3038.00','588.000',1,75,4,NULL,20070512102759),
 ('739900','FAR-F','USA Farming Flags (9900-pack)','3069.00','594.000',1,75,4,NULL,20070512102759),
 ('720020','BNRP-AS4-2.0','Banner Pole Arm-single-2 ft','21.00','0.000',0,100,1,NULL,20070512102759),
 ('720021','BNRP-AS4-2.5','Banner Pole Arm-single-2.5 ft','23.25','0.000',0,100,1,NULL,20070512102759),
 ('720022','BNRP-AS4-3.0','Banner Pole Arm- single - 3.0 ft.','25.50','0.000',0,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('720023','BNRP-AS4-2.0-T','Banner Pole Arm - single- 2.0 ft. top arm','36.00','0.000',0,100,1,NULL,20070512102759),
 ('720024','BNRP-AS4-2.5-T','Banner Pole Arm - single- 2.5 ft. top arm','38.25','0.000',0,100,1,NULL,20070512102759),
 ('720025','BNRP-AS4-3.0-T','Banner pole Arm - single - 3.0 ft. top arm','41.50','0.000',0,100,1,NULL,20070512102759),
 ('090100','DEC','\"Candy Cane 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090101','DEC','\"Candy Cane 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090102','DEC','\"Candy Cane 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090200','DEC','\"Christmas Lights 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090201','DEC','\"Christmas Lights 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090202','DEC','\"Christmas Lights 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('090203','DEC','\"Christmas Lights 11\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090204','DEC','\"Christmas Lights 5.5\"\" x 48\"\" window stick up for borders\"','19.98','1.000',1,100,1,NULL,20070512102759),
 ('090205','DEC','Christmas Lights Windshield logo','34.95','1.000',1,100,1,NULL,20070512102759),
 ('090300','DEC','\" Happy Thanksgiving 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090301','DEC','\"Happy Thanksgiving 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090302','DEC','\"Happy Thanksgiving 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090303','DEC','\"Happy Thanksgiving 11\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090304','DEC','\"Happy Thanksgiving 5.5\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090305','DEC','Happy Thanksgiving windshield logo','34.95','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('090400','DEC','\"Harvest Time 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090401','DEC','\"Harvest Time 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090402','DEC','\"Harvest Time 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090500','DEC','\"Holly 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090501','DEC','\"Holly 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090502','DEC','\"Holly 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090503','DEC','\"Holly 11\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090504','DEC','\"Holly 5.5\"\" x 48\"\" window stick up for borders\"','19.98','1.000',1,100,1,NULL,20070512102759),
 ('090505','DEC','Holly windshield logo','34.95','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('090600','DEC','\"Merry Christmas 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090601','DEC','\"Merry Christmas 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090602','DEC','\"Merry Christmas 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090603','DEC','\"Merry Christmas 11\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090604','DEC','\"Merry Christmas 5.5\"\" x 48\"\" window sitck up for borders\"','19.98','1.000',1,100,1,NULL,20070512102759),
 ('090605','DEC','Merry Christmas windshield logo','34.95','1.000',1,100,1,NULL,20070512102759),
 ('090700','DEC','\"Pointsettia 12\"\" x 12\"\" windows sitck up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090701','DEC','\"Pointsettia 24\"\" x 24\"\" windows sitck up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090702','DEC','\"Pointsettia 36\"\" x 36\"\" windows sitck up\"','59.95','1.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('090703','DEC','\"Pointsettia 11\"\" x 48\"\" window stick up for border\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090704','DEC','\"Pointsettia 5.5\"\" x 48\"\" window stick up for border\"','19.98','1.000',1,100,1,NULL,20070512102759),
 ('090705','DEC','Pointsettia windshield logo','34.95','1.000',1,100,1,NULL,20070512102759),
 ('090800','DEC','\"Pumpkins 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090801','DEC','\"Pumpkins 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090802','DEC','\"Pumpkins 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('090803','DEC','\"Pumpkins 11\"\" x 48\"\" window stick up for borders\"','28.75','1.000',1,100,1,NULL,20070512102759),
 ('090804','DEC','\"Pumpkins 5.5\"\" x 48\"\" window stick up for borders\"','19.98','1.000',1,100,1,NULL,20070512102759),
 ('090805','DEC','Pumpkins windshield logo','34.95','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('090900','DEC','\"Scarecrow 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('090901','DEC','\"Scarecrow 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('090902','DEC','\"Scarecrow 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('091000','DEC','\"Snowman 12\"\" x 12\"\" window stick up\"','9.95','0.500',1,100,1,NULL,20070512102759),
 ('091001','DEC','\"Snowman 24\"\" x 24\"\" window stick up\"','33.95','1.000',1,100,1,NULL,20070512102759),
 ('091002','DEC','\"Snowman 36\"\" x 36\"\" window stick up\"','59.95','1.500',1,100,1,NULL,20070512102759),
 ('320067','HF20-CD','Homesteader Flagpole Kit 20 foot - Silver anodized - 3\' x 5\' U.S. Flag','118.80','15.000',1,100,1,NULL,20070512102759),
 ('321738','SFP18F-S','Valley Forge  white steel 18\' flagpole set','75.00','22.000',1,100,1,NULL,20070512102759),
 ('321781','AmSpirit','American Spirit 15\' residential flagpole set','92.00','10.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321782','AmSpirit','American Spirit 20\' residential flagpole set','79.95','12.000',1,100,1,NULL,20070512102759),
 ('321783','TF20','TopFlight Telescoping 20\' flagpole','169.95','20.000',1,500,1,NULL,20070512102759),
 ('321784','TFEAGLE','\"12\"\" Eagle ornament for TopFlight telescoping flagpole\"','49.95','10.000',2,100,1,NULL,20070512102759),
 ('321785','TFWS','Wheel Stand for TopFlight telescoping flagpole','49.95','10.000',2,100,1,NULL,20070512102759),
 ('321786','TFBAG','Carrying bag for TopFlight telescoping flagpole','17.95','5.000',2,100,1,NULL,20070512102759),
 ('321787','TF20W','TopFlight Telescoping 20\' flagpole White enamel finish','169.95','20.000',1,500,1,NULL,20070512102759),
 ('321788','TFDOCK-V','Vertical Dock Mounting for TopFlight telescoping flagpole','49.95','15.000',2,100,1,NULL,20070512102759),
 ('321789','TFDOCK-H','Horizontal Dock Mounting for TopFlight telescoping flagpole','49.95','15.000',2,100,1,NULL,20070512102759),
 ('321884','MES-FL','\"Message Flags \"\"Abierto  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321984','MES-FL','\"Message Flags \"\"Antiques\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321985','MES-FL','\"Message Flags \"\"Auction\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321887','MES-FL','\"Message Flags \"\"Autos Nuevos\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321891','MES-FL','\"Message Flags \"\"Autos Semi-Nuevos\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321888','MES-FL','\"Message Flags \"\"Autos Usados\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321986','MES-FL','\"Message Flags \"\"Bagels\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321817','MES-FL','\"Message Flags \"\"Bicycles\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321886','MES-FL','\"Message Flags \"\"Bienvenidos\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321892','MES-FL','\"Message Flags \"\"Casa En Exhibicion\"\"  3\' x 5\' nylon outdoor  green/white/red\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321893','MES-FL','\"Message Flags \"\"Neuvas Casas\"\" 3\' x 5\' nylon outdoor  green/white/red\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321895','MES-FL','\"Message Flags \"\"Lunch\"\" 3\' x 5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321894','MES-FL','\"Message Flags \"\"Para Venta\"\"  3\' x 5\' nylon outdoor  green/white/red\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321820','MES-FL','\"Message Flags \"\"Bingo\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321835','MES-FL','\"Message Flags \"\"Boats\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321818','MES-FL','\"Message Flags \"\"Boat Rentals\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321823','MES-FL','\"Message Flags \"\"Brakes\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321821','MES-FL','\"Message Flags \"\"Buy American\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321865','MES-FL','\"Message Flags \"\"Buy Here Pay Here\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321826','MES-FL','\"Message Flags \"\"Campers\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321824','MES-FL','\"Message Flags \"\"Car Cleaning\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321838','MES-FL','\"Message Flags \"\"Carpets\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321845','MES-FL','\"Message Flags \"\"Car Wash\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321834','MES-FL','\"Message Flags \"\"Clearance\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321848','MES-FL','\"Message Flags \"\"Cold Beer\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321827','MES-FL','\"Message Flags \"\"Collectables\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321829','MES-FL','\"Message Flags \"\"Condos\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321830','MES-FL','\"Message Flags \"\"Consignments\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321832','MES-FL','\"Message Flags \"\"Crafts\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321841','MES-FL','\"Message Flags \"\"Cycles\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321860','MES-FL','\"Message Flags \"\"Deli\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321987','MES-FL','\"Message Flags \"\"Discount\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321868','MES-FL','\"Message Flags \"\"Discount Prices\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321840','MES-FL','\"Message Flags \"\"EZ Terms\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321885','MES-FL','\"Message Flags \"\"Financiamos\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321837','MES-FL','\"Message Flags \"\"Fireworks\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321869','MES-FL','\"Message Flags \"\"Flags\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321819','MES-FL','\"Message Flags \"\"Flea Market\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321843','MES-FL','\"Message Flags \"\"Flowers\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321846','MES-FL','\"Message Flags \"\"Furniture\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321822','MES-FL','\"Message Flags \"\"Gallery\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321988','MES-FL','\"Message Flags \"\"Garage Sale\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321852','MES-FL','\"Message Flags \"\"Gifts\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321890','MES-FL','\"Message Flags \"\"Gran Apertura\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321825','MES-FL','\"Message Flags \"\"Grand Opening\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321870','MES-FL','\"Message Flags \"\"Guns\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321875','MES-FL','\"Message Flags \"\"Happy Birthday\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321871','MES-FL','\"Message Flags \"\"Leasing\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321866','MES-FL','\"Message Flags \"\"Lottery Tickets\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321828','MES-FL','\"Message Flags \"\"Lowest Prices\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321831','MES-FL','\"Message Flags \"\"Mobile Homes\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321844','MES-FL','\"Message Flags \"\"Model\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321847','MES-FL','\"Message Flags \"\"Models\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321849','MES-FL','\"Message Flags \"\"Mufflers\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321851','MES-FL','\"Message Flags \"\"New Cars\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321882','MES-FL','\"Message Flags \"\"New Homes\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321883','MES-FL','\"Message Flags \"\"Now Leasing\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321833','MES-FL','\"Message Flags \"\"Now Renting\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321855','MES-FL','\"Message Flags \"\"Open\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321874','MES-FL','\"Message Flags \"\"Open 24 Hours\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321881','MES-FL','\"Message Flags \"\"Open for Inspection\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321880','MES-FL','\"Message Flags \"\"Open House\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321858','MES-FL','\"Message Flags \"\"Pizza\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321878','MES-FL','\"Message Flags \"\"Rent a Car\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321836','MES-FL','\"Message Flags \"\"Rummage Sale\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321861','MES-FL','\"Message Flags \"\"RV\'S\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321879','MES-FL','\"Message Flags \"\"Salad Bar\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321862','MES-FL','\"Message Flags \"\"Sale\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321872','MES-FL','\"Message Flags \"\"Sales\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321850','MES-FL','\"Message Flags \"\"Shocks\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321853','MES-FL','\"Message Flags \"\"Skating\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321877','MES-FL','\"Message Flags \"\"Souvenirs\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321863','MES-FL','\"Message Flags \"\"Subs\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321867','MES-FL','\"Message Flags \"\"Town House\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321839','MES-FL','\"Message Flags \"\"Town Houses\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321856','MES-FL','\"Message Flags \"\"Trucks\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321876','MES-FL','\"Message Flags \"\"Used Cars\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321842','MES-FL','\"Message Flags \"\"Used Trucks\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321864','MES-FL','\"Message Flags \"\"Vans\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321889','MES-FL','\"Message Flags \"\"Venta\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321873','MES-FL','\"Message Flags \"\"Video Rentals\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321857','MES-FL','\"Message Flags \"\"We Finance\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321854','MES-FL','\"Message Flags \"\"Welcome\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321859','MES-FL','\"Message Flags \"\"Yogurt\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321968','MES-FL','\"Message Flags \"\"Model\"\"  3\'x5\'  vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321969','MES-FL','\"Message Flags \"\"New Cars\"\"  3\'x5\'  vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321972','MES-FL','\"Message Flags \"\"Open\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321967','MES-FL','\"Message Flags \"\"Sale\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321970','MES-FL','\"Message Flags \"\"Used Cars\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321971','MES-FL','\"Message Flags \"\"Welcome\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321980','MES-FL','\"Message Flags \"\"Model\"\" 3\'x 8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321973','MES-FL','\"Message Flags \"\"Models\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321974','MES-FL','\"Message Flags \"\"New Cars\"\"  3\'x8\'  vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321975','MES-FL','\"Message Flags \"\"Open House\"\"  3\'x8\'  vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321976','MES-FL','\"Message Flags \"\"Open\"\"  3\'x8\'  vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321977','MES-FL','\"Message Flags \"\"Sale\"\"  3\'x8\'  vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321978','MES-FL','\"Message Flags \"\"Used Cars\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321979','MES-FL','\"Message Flags \"\"Welcome\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321994','MES-FL','\"Message Flags \"\"Live Bait\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321981','MES-FL','\"Message Flags \"\"Live Shrimp\"\" 3\'x5\'  nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321982','MES-FL','\"Message Flags \"\"$ave\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321983','MES-FL','\"Message Flags \"\"SUV\'s\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322000','MES-FL','\"Message Flags \"\"Tires\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322001','MES-FL','\"Message Flags \"\"Deli\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322002','MES-FL','\"Message Flags \"\"Pizza\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322003','MES-FL','\"Message Flags \"\"Subs\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322004','MES-FL','\"Message Flags \"\"blank\"\" (no words) 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321989','MES-FL','\"Message Flags \"\"Trucks\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321990','MES-FL','\"Message Flags \"\"Models\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321991','MES-FL','\"Message Flags \"\"We Finance\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321992','MES-FL','\"Message Flags \"\"Leasing\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321993','MES-FL','\"Message Flags \"\"Strips & Stars\"\"  3\'x5\' vertical nylon outdoor  red/white/blue\"','34.00','0.750',2,100,1,NULL,20070512102759),
 ('322174','MES-FL','\"Message Flags \"\"Gift Shop\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('321995','MES-FL','\"Message Flags \"\"Pre-Owned\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321996','MES-FL','\"Message Flags \"\"Available\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('321997','MES-FL','\"Message Flags \"\"Now Leasing\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('321998','MES-FL','\"Message Flags \"\"Grand Opening\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','38.00','0.800',2,100,1,NULL,20070512102759),
 ('321999','MES-FL','\"Message Flags \"\"Strips & Stars\"\"  3\'x8\' vertical nylon outdoor  red/white/blue\"','45.00','0.800',2,100,1,NULL,20070512102759),
 ('322005','MES-FL','\"Message Flags \"\"Fast Oil Change\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322845','MES-FL','\"Message Flags \"\"Body Shop\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322844','MES-FL','\"Message Flags \"\"Estimates\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322848','MES-FL','\"Message Flags \"\"Movies\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322847','MES-FL','\"Message Flags \"\"Payday Advance\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322846','MES-FL','\"Message Flags \"\"Title Loans\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322849','MES-FL','\"Message Flags \"\"Self Storage\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322006','MES-FL','\"Solid Color  Flags \"\"Dark Green\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322007','MES-FL','\"Solid Color Flags \"\"Emerald Green\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322008','MES-FL','\"Solid Color Flags \"\"Irish Green\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322009','MES-FL','\"Solid Color Flags \"\"Mint Green\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322010','MES-FL','\"Solid Color Flags \"\"Aqua\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322011','MES-FL','\"Solid Color Flags \"\"Parrot Blue\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322012','MES-FL','\"Solid Color Flags \"\"Turquoise\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322013','MES-FL','\"Solid Color Flags \"\"Teal\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322014','MES-FL','\"Solid Color Flags \"\"U.N. Blue\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322015','MES-FL','\"Solid Color Flags \"\"French Blue\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322016','MES-FL','\"Solid Color Flags \"\"Royal Blue\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322017','MES-FL','\"Solid Color Flags \"\"Deep Blue\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322018','MES-FL','\"Solid Color Flags \"\"Peacock\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322019','MES-FL','\"Solid Color Flags \"\"O.G. Blue\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322020','MES-FL','\"Solid Color Flags \"\"Purple\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322021','MES-FL','\"Solid Color Flags \"\"Lavender\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322022','MES-FL','\"Solid Color Flags \"\"Lilac\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322023','MES-FL','\"Solid Color Flags \"\"Orchid\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322024','MES-FL','\"Solid Color Flags \"\"Mauve\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322025','MES-FL','\"Solid Color Flags \"\"Crocus\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322026','MES-FL','\"Solid Color Flags \"\"Magenta\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322027','MES-FL','\"Solid Color Flags \"\"Crimson\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322028','MES-FL','\"Solid Color Flags \"\"Canada Red\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322029','MES-FL','\"Solid Color Flags \"\"O.G. Red\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322030','MES-FL','\"Solid Color Flags \"\"Wineberry\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322031','MES-FL','\"Solid Color Flags \"\"Ruby\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322032','MES-FL','\"Solid Color Flags \"\"Maroon\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322033','MES-FL','\"Solid Color Flags \"\"Black\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322034','MES-FL','\"Solid Color Flags \"\"Brown\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322035','MES-FL','\"Solid Color Flags \"\"Sandlewood\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322036','MES-FL','\"Solid Color Flags \"\"Rust\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322037','MES-FL','\"Solid Color Flags \"\"Warm Red\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322038','MES-FL','\"Solid Color Flags \"\"Orange\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322039','MES-FL','\"Solid Color Flags \"\"Salmon\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322040','MES-FL','\"Solid Color Flags \"\"Peach\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322041','MES-FL','\"Solid Color Flags \"\"Flesh\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322042','MES-FL','\"Solid Color Flags \"\"Buff\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322043','MES-FL','\"Solid Color Flags \"\"F.M. Yellow\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322044','MES-FL','\"Solid Color Flags \"\"Spanish Yellow\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322045','MES-FL','\"Solid Color Flags \"\"Silver\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322046','MES-FL','\"Solid Color Flags \"\"Charcoal\"\"  solid color 3\'x5\' nylon outdoor  \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322047','MES-FL','\"Solid Color Flags \"\"White\"\" solid color 3\'x5\' nylon outdoor\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322048','MES-FL','\"Message Flags \"\"Tiles\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322049','MES-FL','\"Message Flags \"\"Cafe\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322050','MES-FL','\"Message Flags \"\"Real Estate\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322051','MES-FL','\"Message Flags \"\"Lake Homes\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322052','MES-FL','\"Message Flags \"\"Lake Lots\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322053','MES-FL','\"Message Flags \"\"Commercial\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322054','MES-FL','\"Message Flags \"\"Residential\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322055','MES-FL','\"Message Flags \"\"Books\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322056','MES-FL','\"Message Flags \"\"Used Books\"\" 3\'x5\' nylon oudoor   red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322057','MES-FL','\"Message Flags \"\"Music\"\"  3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322058','MES-FL','\"Message Flags \"\"Video Games\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322162','MES-FL','\"Message Flags \"\"Spas\"\"  3\' x 5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322163','MES-FL','\"Message Flags \"\"Fresh Fish\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322164','MES-FL','\"Message Flags \"\"Mullet\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322165','MES-FL','\"Message Flags \"\"Oysters\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322166','MES-FL','\"Message Flags \"\"BBQ\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322167','MES-FL','\"Message Flags \"\"Golf Carts\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322168','MES-FL','\"Message Flag \"\"Studio\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322169','MES-FL','\"Message Flag \"\"Catfish\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322170','MES-FL','\"Message Flag \"\"Hushpuppies\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322171','MES-FL','\"Message Flag Vertical \"\"Antiques\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('062048','Heritage','Heritage Series USA Pleated Full Fan 3\'x6\'','36.00','0.800',1,100,1,NULL,20070512102759),
 ('029660','Heritage','Heritage Series USA Pleated Mini Fan 1.5\' x 3\'','21.00','0.500',1,100,1,NULL,20070512102759),
 ('062045','Heritage','\"Heritage Series USA Pulldown Flag  20\"\" x 8\'\"','34.25','0.800',1,100,1,NULL,20070512102759),
 ('060701','Heritage Acc','\"Heritage Series Accessories - Wood Pole w/anti-wrap sleeve 63\"\"X1\"\"\"','10.87','3.000',1,100,1,NULL,20070512102759),
 ('060705','Heritage Acc','\"Heritage Series Accessories - Wood Pole w/anti-wrap ring and flag mounting ring 63\"\"x1\"\"\"','8.45','3.000',1,100,1,NULL,20070512102759),
 ('060712','Heritage Acc','\"Heritage 2 pc. Wood Pole w/anti-wrap ring 33\"\"x1\"\"\"','13.47','3.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('060703','Heritage Acc','\"Heritage Mahogany stained woodpole w/anti-wrap sleeve 63\"\"x1\"\"\"','16.43','3.000',1,100,1,NULL,20070512102759),
 ('060704','Heritage Acc','\"Heritage 2 pc. Mahogany stained wood Pole w/anti-wrap ring 33\"\"x1\"\"\"','12.70','3.000',1,100,1,NULL,20070512102759),
 ('060706','Heritage Acc','\"Heritage Mahogany stained woodpole w/anti-wrap sleeve & flag mounting ring 63\"\"x1\"\"\"','16.43','3.000',1,100,1,NULL,20070512102759),
 ('029675','Heritage Acc','\"Heritage Series 1\"\" Solid Brass Bracket\"','25.41','0.500',1,100,1,NULL,20070512102759),
 ('060753','Heritage Acc','\"Heritage  13 Position Cast Aluminum Bracket 1\"\"\"','12.20','0.500',1,100,1,NULL,20070512102759),
 ('062052','Heritage Acc','Heritage Series 2 Position White Cast Aluminum Bracket','11.00','0.500',1,100,1,NULL,20070512102759),
 ('062007','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"American Rocker\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062010','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Bed and Breakfast\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('062012','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"American Birdhouse\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062021','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Gardening Panels\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062029','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Picket Fence\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062030','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Hilltop Trellis\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062033','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Green Chair with Tulips\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062034','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Under the Trellis\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062037','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Watering Can Panels\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('062044','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Birdhouse Panels\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062051','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Siesta\"\" 24\"\"x36\"\" \"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('062060','Ross Banner','\"Elizabeth Ross Decorative Banner \"\"Day at the Beach\"\" 24\"\"x36\"\"\"','17.50','0.500',1,100,1,NULL,20070512102759),
 ('322059','MES-FL','\"Auto Logo flag  \"\"Acura\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322060','MES-FL','\"Auto Logo \"\"Chevrolet\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322061','MES-FL','\"Auto Logo \"\"Dodge\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322062','MES-FL','\"Auto Logo \"\"Chrysler\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322063','MES-FL','\"Auto Logo \"\"Checked\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322064','MES-FL','\"Auto Logo \"\"Ferrari\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322065','MES-FL','\"Auto Logo \"\"Ford Oval\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322066','MES-FL','\"Auto Logo \"\"Ford\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322067','MES-FL','\"Auto Logo \"\"Ford\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322068','MES-FL','\"Auto Logo \"\"Ford\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322069','MES-FL','\"Auto Logo \"\"Ford Trucks\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322070','MES-FL','\"Auto Logo \"\"GM\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322071','MES-FL','\"Auto Logo \"\"GMC\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322072','MES-FL','\"Auto Logo \"\"Honda\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322073','MES-FL','\"Auto Logo \"\"Hyundai\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322074','MES-FL','\"Auto Logo \"\"Infiniti\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322075','MES-FL','\"Auto Logo \"\"International\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322076','MES-FL','\"Auto Logo \"\"Isuzu\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322077','MES-FL','\"Auto Logo \"\"Jaguar\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322078','MES-FL','\"Auto Logo \"\"Jeep\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322079','MES-FL','\"Auto Logo \"\"KIA\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322080','MES-FL','\"Auto Logo \"\"Lincoln Mercury\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322081','MES-FL','\"Auto Logo \"\"Mazda\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322082','MES-FL','\"Auto Logo \"\"Mercedes Benz\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322083','MES-FL','\"Auto Logo \"\"Mitsubishi\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322084','MES-FL','\"Auto Logo \"\"Nissan\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322085','MES-FL','\"Auto Logo \"\"Oldsmobile\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322086','MES-FL','\"Auto Logo \"\"Peugot\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322087','MES-FL','\"Auto Logo \"\"Pontiac\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322088','MES-FL','\"Auto Logo \"\"Saturn\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322089','MES-FL','\"Auto Logo \"\"Subaru\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322090','MES-FL','\"Auto Logo \"\"Toyota\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322091','MES-FL','\"Auto Logo \"\"Used Cars\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322092','MES-FL','\"Auto Logo \"\"VW\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322093','MES-FL','\"Auto Logo \"\"Volvo\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322094','MES-FL','\"Auto Logo \"\"Volvo Trucks\"\" 3\'x5\' nylon outdoor\"','25.00','0.800',2,100,1,NULL,20070512102759),
 ('322095','MES-FL','\"Auto name only \"\"Acura\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322096','MES-FL','\"Auto name only \"\"Audi\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322097','MES-FL','\"Flags Auto name only \"\"Buick\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322098','MES-FL','\"Flags Auto name only \"\"Cadillac\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322099','MES-FL','\"Flags Auto name only \"\"Chevrolet\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322100','MES-FL','\"Flags Auto name only \"\"Chrysler\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322101','MES-FL','\"Flags Auto name only \"\"Daihatsu\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322102','MES-FL','\"Flags Auto name only \"\"Dodge\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322103','MES-FL','\"Flags Auto name only \"\"Ford\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322104','MES-FL','\"Flags Auto name only \"\"GMC\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322105','MES-FL','\"Flags Auto name only \"\"Honda\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322106','MES-FL','\"Flags Auto name only \"\"Hyundai\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322107','MES-FL','\"Flags Auto name only \"\"Infiniti\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322108','MES-FL','\"Flags Auto name only \"\"Isuzu\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322109','MES-FL','\"Flags Auto name only \"\"Jaguar\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322110','MES-FL','\"Flags Auto name only \"\"Jeep\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322111','MES-FL','\"Flags Auto name only \"\"KIA\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322112','MES-FL','\"Flags Auto name only \"\"Lexus\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322113','MES-FL','\"Flags Auto name only \"\"Lincoln\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322114','MES-FL','\"Flags Auto name only \"\"Mazda\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322115','MES-FL','\"Flags Auto name only \"\"Mercedes\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322116','MES-FL','\"Flags Auto name only \"\"Mercury\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322117','MES-FL','\"Flags Auto name only \"\"Mitsubishi\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322118','MES-FL','\"Flags Auto name only \"\"Nissan\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322119','MES-FL','\"Flags Auto name only \"\"Oldsmobile\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322120','MES-FL','\"Flags Auto name only \"\"Pontiac\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322121','MES-FL','\"Flags Auto name only \"\"Porsche\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322122','MES-FL','\"Flags Auto name only \"\"SAAB\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322123','MES-FL','\"Flags Auto name only \"\"Subaru\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322124','MES-FL','\"Flags Auto name only \"\"Toyota\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322125','MES-FL','\"Flags Auto name only \"\"Volvo\"\" 3\'x5\' nylon outdoor\"','18.00','0.800',2,100,1,NULL,20070512102759),
 ('322613','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"Used Cars\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759),
 ('322614','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"Buy Here/Pay Here\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759),
 ('322615','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"Sale\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759),
 ('322616','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"Welcome\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759),
 ('322617','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"We Finance\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322618','MES-FL','\"Message Flags Checkered Flag, Vertical 3\'x8\', \"\"Trucks\"\", nylon outdoor\"','46.00','1.000',2,100,1,NULL,20070512102759),
 ('322126','MES-FL','\"Message Flags \"\"Gone Fishin\"\"  3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322127','MES-FL','\"Message Flags \"\"Yard Sale\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322128','MES-FL','\"Message Flags \"\"Cappuccino\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322129','MES-FL','\"Message Flags \"\"Ice Cream\"\" 3\'x5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322130','MES-FL','\"Message Flags \"\"Espresso\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322131','MES-FL','\"Message Flags \"\"Computers\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322132','MES-FL','\"Message Flags \"\"Restaurants\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322133','MES-FL','\"Message Flags \"\"Food\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322134','MES-FL','\"Message Flags \"\"Hotel\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322135','MES-FL','\"Message Flags \"\"Drinks\"\" 3\'x5\' nylon oudoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322136','MES-FL','\"Message Flags \"\"Motel\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322137','MES-FL','\"Message Flags \"\"Bakery\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322138','MES-FL','\"Message Flags \"\"Dessert\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322139','MES-FL','\"Message Flags \"\"Barber Shop\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322140','MES-FL','\"Message Flags \"\"Hair Cut\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322141','MES-FL','\"Message Flags \"\"Mullet\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322142','MES-FL','\"Message Flags \"\"Toys\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322143','MES-FL','\"Message Flags \"\"ATM\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322144','MES-FL','\"Message Flags \"\"Coffee\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322145','MES-FL','\"Message Flags \"\"New Home\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322146','MES-FL','\"Message Flags \"\"For Sale\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322147','MES-FL','\"Message Flags \"\"Abierto  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322148','MES-FL','\"Message Flags \"\"Auto Nuevos\"\" 3\'x5\' nylon outdoor red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322149','MES-FL','\"Message Flags \"\"Autos Semi-Nuevos\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322150','MES-FL','\"Message Flags \"\"Auto Usados\"\" 3\'x5\' nylon outdoor red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322151','MES-FL','\"Message Flags \"\"Bienvenidos\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322152','MES-FL','\"Message Flags \"\"Financiamos\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322153','MES-FL','\"Message Flags \"\"Gran Apertura\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322154','MES-FL','\"Message Flags \"\"Se Habla Espanol\"\" 3\'x5\' nylon outdoor red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322155','MES-FL','\"Message Flags \"\"Venta\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322156','MES-FL','\"Message Flags \"\"Rental\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322157','MES-FL','\"Message Flags \"\"Rentals\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322158','MES-FL','\"Message Flags \"\"Repair\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322159','MES-FL','\"Message Flags \"\"Repairs\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322160','MES-FL','\"Message Flags \"\"Barbeque\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322161','MES-FL','\"Message Flags \"\"Vote\"\" 3\'x5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322172','MES-FL','\"Message Flags \"\"Open Late\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322173','MES-FL','\"Message Flags \"\"Tanning\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322850','MES-FL','\"Message Flags \"\"Party\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322851','MES-FL','\"Message Flags \"\"Dance\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322852','MES-FL','\"Message Flags \"\"Golf\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322853','MES-FL','\"Message Flags \"\"Tennis\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322854','MES-FL','\"Message Flags \"\"U-Pick\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322855','MES-FL','\"Message Flags \"\"Photos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322856','MES-FL','\"Message Flags \"\"Sofas\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322857','MES-FL','\"Message Flags \"\"Campgrounds\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322858','MES-FL','\"Message Flags \"\"Fruit\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322859','MES-FL','\"Message Flags \"\"Blue Crabs\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322860','MES-FL','\"Message Flags \"\"Hunting\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322861','MES-FL','\"Message Flags \"\"1 Hour Photo\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322862','MES-FL','\"Message Flags \"\"Tattoos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322863','MES-FL','\"Message Flags \"\"Videos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322864','MES-FL','\"Message Flags \"\"Happy Hour\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322865','MES-FL','\"Message Flags \"\"Strawberries\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322866','MES-FL','\"Message Flags \"\"Tacos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322867','MES-FL','\"Message Flags \"\"Food To Go\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322868','MES-FL','\"Message Flags \"\"Deer Processing\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322869','MES-FL','\"Message Flags \"\"Skate Park\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322870','MES-FL','\"Message Flags \"\"Smoke Free\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322871','MES-FL','\"Message Flags \"\"Organic Foods\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322872','MES-FL','\"Message Flags \"\"Parking\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322873','MES-FL','\"Message Flags \"\"Pet Supplies\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322874','MES-FL','\"Message Flags \"\"Fruit Stand\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322875','MES-FL','\"Message Flags \"\"Hot Coffee\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322876','MES-FL','\"Message Flags \"\"WiFi\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322877','MES-FL','\"Message Flags \"\"Oranges\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322878','MES-FL','\"Message Flags \"\"Grapefruit\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322879','MES-FL','\"Message Flags \"\"Pineapples\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322880','MES-FL','\"Message Flags \"\"Candles\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322881','MES-FL','\"Message Flags \"\"Beds\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322882','MES-FL','\"Message Flags \"\"Camping\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322883','MES-FL','\"Message Flags \"\"Vegetables\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322884','MES-FL','\"Message Flags \"\"Crabs\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322885','MES-FL','\"Message Flags \"\"Adult Videos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322886','MES-FL','\"Message Flags \"\"Fishing\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322887','MES-FL','\"Message Flags \"\"Pets\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322888','MES-FL','\"Message Flags \"\"Piercings\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322889','MES-FL','\"Message Flags \"\"2 for 1\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322890','MES-FL','\"Message Flags \"\"Mango\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322891','MES-FL','\"Message Flags \"\"Seafood\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322892','MES-FL','\"Message Flags \"\"Kids Meals\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322893','MES-FL','\"Message Flags \"\"Photography\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322894','MES-FL','\"Message Flags \"\"Taxidermy\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322895','MES-FL','\"Message Flags \"\"Tobacco\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322896','MES-FL','\"Message Flags \"\"Vitamins\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322897','MES-FL','\"Message Flags \"\"Massages\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322898','MES-FL','\"Message Flags \"\"Pet Grooming\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322899','MES-FL','\"Message Flags \"\"Obediance Training\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322900','MES-FL','\"Message Flags \"\"Unlimited Minutes\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322901','MES-FL','\"Message Flags \"\"Free Longdistance\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322902','MES-FL','\"Message Flags \"\"Gift Shop\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322903','MES-FL','\"Message Flags \"\"Coming Soon\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322904','MES-FL','\"Message Flags \"\"Country Cooking\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322905','MES-FL','\"Message Flags \"\"Military Discounts\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322906','MES-FL','\"Message Flags \"\"Showers\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322907','MES-FL','\"Message Flags \"\"Now Open\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322908','MES-FL','\"Message Flags \"\"Used Appliances\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322909','MES-FL','\"Message Flags \"\"Christmas Trees\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322910','MES-FL','\"Message Flags \"\"Merry Christmas\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322911','MES-FL','\"Message Flags \"\"Hot Dogs\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322912','MES-FL','\"Message Flags \"\"Taxes\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322913','MES-FL','\"Message Flags \"\"Sno-Cones\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322914','MES-FL','\"Message Flags \"\"Shaved Ice\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322915','MES-FL','\"Message Flags \"\"Tea\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322916','MES-FL','\"Message Flags \"\"Lemonade\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322917','MES-FL','\"Message Flags \"\"Drugs\"\" 3\' x 5\' nylon outdoor  red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322918','MES-FL','\"Message Flags \"\"Pharmacy\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322919','MES-FL','\"Message Flags \"\"Now Selling\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322920','MES-FL','\"Message Flags \"\"Now Hiring\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322921','MES-FL','\"Message Flags \"\"Brunch\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322922','MES-FL','\"Message Flags \"\"Restaurant\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322923','MES-FL','\"Message Flags \"\"Jewelry\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322924','MES-FL','\"Message Flags \"\"ASAP\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322925','MES-FL','\"Message Flags \"\"Lumber\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322926','MES-FL','\"Message Flags \"\"Classic Cars\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322927','MES-FL','\"Message Flags \"\"Bail Bonds\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322928','MES-FL','\"Message Flags \"\"Buffet\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322929','MES-FL','\"Message Flags \"\"Pasta\"\"  3\'x5\' nylon outdoor  red/white/green\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322930','MES-FL','\"Message Flags \"\"Wings\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322931','MES-FL','\"Message Flags \"\"Hard Wood Floors\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322932','MES-FL','\"Message Flags \"\"Vinyl Floors\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322933','MES-FL','\"Message Flags \"\"Carpet Cleaning\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322934','MES-FL','\"Message Flags \"\"Installations\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322935','MES-FL','\"Message Flags \"\"Boiled Peanuts\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322936','MES-FL','\"Message Flags \"\"Peanuts\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322937','MES-FL','\"Message Flags \"\"Salon\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322938','MES-FL','\"Message Flags \"\"1 Hour Photos\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322939','MES-FL','\"Message Flags \"\"Diner\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322940','MES-FL','\"Message Flags \"\"Charter Bus\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322941','MES-FL','\"Message Flags \"\"Tour Bus\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322942','MES-FL','\"Message Flags \"\"Auto Repairs\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322943','MES-FL','\"Message Flags \"\"Herbs\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322944','MES-FL','\"Message Flags \"\"Vacancy\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322945','MES-FL','\"Message Flags \"\"A/C Repair\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322946','MES-FL','\"Message Flags \"\"In God we trust\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322947','MES-FL','\"Message Flags \"\"Cabins\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322948','MES-FL','\"Message Flags \"\"Smoothie\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322949','MES-FL','\"Message Flags \"\"Iced Coffee\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322950','MES-FL','\"Message Flags \"\"Fudge\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322951','MES-FL','\"Message Flags \"\"Accessories\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322952','MES-FL','\"Message Flags \"\"Town Homes\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322953','MES-FL','\"Message Flags \"\"Agent on Duty\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322954','MES-FL','\"Message Flags \"\"Sweet Corn\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322955','MES-FL','\"Message Flags \"\"Candy\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322956','MES-FL','\"Message Flags \"\"Catering\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322957','MES-FL','\"Message Flags \"\"Wine\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322958','MES-FL','\"Message Flags \"\"Wine Tasting\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322959','MES-FL','\"Message Flags \"\"Karate\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322960','MES-FL','\"Message Flags \"\"Breakfast\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322961','MES-FL','\"Message Flags \"\"Italian Deli\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322962','MES-FL','\"Message Flags \"\"Market\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322963','MES-FL','\"Message Flags \"\"Smoothies\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322964','MES-FL','\"Message Flags \"\"Tortellini\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322965','MES-FL','\"Message Flags \"\"Breakfast\"\" 3\' x 5\'  vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322966','MES-FL','\"Message Flags \"\"Italian Deli\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322967','MES-FL','\"Message Flags \"\"Market\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322968','MES-FL','\"Message Flags \"\"Pizza\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322969','MES-FL','\"Message Flags \"\"Smoothies\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322970','MES-FL','\"Message Flags \"\"Tortellini\"\" 3\' x 5\' vertical nylon outdoor red/white/blue\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322971','MES-FL','\"Message Flags \"\"Pools\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322972','MES-FL','\"Message Flags \"\"Blood Drive\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322973','MES-FL','\"Message Flags \"\"Flu Shots\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322974','MES-FL','\"Message Flags \"\"Monthly\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322975','MES-FL','\"Message Flags \"\"Daily\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322976','MES-FL','\"Message Flags \"\"Weekly\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322977','MES-FL','\"Message Flags \"\"Climate Controlled\"\" 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322978','MES-FL','\"Message Flags \"\"24 / 7\"\" - 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322979','MES-FL','\"Message Flags \"\"Windows\"\" - 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322980','MES-FL','\"Message Flags \"\"Doors\"\" - 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322981','MES-FL','\"Message Flags \"\"Siding\"\" - 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322982','MES-FL','\"Message Flags \"\"Roofing\"\" - 3\' x 5\'  nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322983','MES-FL','\"Message Flags \"\"Mortgages\"\" - 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322984','MES-FL','\"Message Flags \"\"Go-Karts\"\" -3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322985','MES-FL','\"Message Flags \"\"Quality\"\" - 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322986','MES-FL','\"Message Flags \"\"Sales Office\"\" - 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322800','JMES-FL','\"Super Size Message Flags \"\"Open\"\" 4\' x 6\' nylon outdoor red/white/blue\"','35.00','2.000',2,100,1,NULL,20070512102759),
 ('322801','JMES-FL','\"Super Size Message Flags \"\"Open\"\" 5\' x 8\' nylon outdoor red/white/blue\"','58.00','3.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322802','JMES-FL','\"Super Size Message Flags \"\"Open\"\" 6\' x 10\' nylon outdoor red/white/blue\"','85.00','5.000',2,100,1,NULL,20070512102759),
 ('322803','JMES-FL','\"Super Size Message Flags \"\"Welcome\"\" 4\' x 6\' nylon outdoor red/white/blue\"','35.00','2.000',2,100,1,NULL,20070512102759),
 ('322804','JMES-FL','\"Super Size Message Flags \"\"Welcome\"\" 5\' x 8\' nylon outdoor red/white/blue\"','58.00','3.000',2,100,1,NULL,20070512102759),
 ('322805','JMES-FL','\"Super Size Message Flags \"\"Welcome\"\" 6\' x 10\' nylon outdoor red/white/blue\"','85.00','5.000',2,100,1,NULL,20070512102759),
 ('322806','JMES-FL','\"Super Size Message Flags \"\"Model\"\" 4\' x 6\' nylon outdoor red/white/blue\"','35.00','2.000',2,100,1,NULL,20070512102759),
 ('322807','JMES-FL','\"Super Size Message Flags \"\"Model\"\" 5\' x 8\' nylon outdoor red/white/blue\"','58.00','3.000',2,100,1,NULL,20070512102759),
 ('322808','JMES-FL','\"Super Size Message Flags \"\"Model\"\" 6\' x 10\' nylon outdoor red/white/blue\"','85.00','5.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322809','JMES-FL','\"Super Size Message Flags \"\"Open House \"\" 4\' x 6\' nylon outdoor red/white/blue\"','35.00','2.000',2,100,1,NULL,20070512102759),
 ('322810','JMES-FL','\"Super Size Message Flags \"\"Open House \"\" 5\' x 8\' nylon outdoor red/white/blue\"','58.00','3.000',2,100,1,NULL,20070512102759),
 ('322811','JMES-FL','\"Super Size Message Flags \"\"Open House\"\" 6\' x 10\' nylon outdoor red/white/blue\"','85.00','5.000',2,100,1,NULL,20070512102759),
 ('322812','JMES-FL','\"Super Size Message Flags \"\"New Homesl\"\" 4\' x 6\' nylon outdoor red/white/blue\"','35.00','2.000',2,100,1,NULL,20070512102759),
 ('322813','JMES-FL','\"Super Size Message Flags \"\"New Homes\"\" 5\' x 8\' nylon outdoor red/white/blue\"','58.00','3.000',2,100,1,NULL,20070512102759),
 ('322814','JMES-FL','\"Super Size Message Flags \"\"New Homes\"\" 6\' x 10\' nylon outdoor red/white/blue\"','85.00','5.000',2,100,1,NULL,20070512102759),
 ('322815','MES-FL','\"Message Flags \"\"Tackle\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322816','MES-FL','\"Message Flags \"\"Ice\"\" 3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322817','MES-FL','\"Message Flags \"\"Bait\"\" 3\' x 5\' nylon outdoor red/white/blue \"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322818','MES-FL','\"International Message Flags French \"\"Bienvenue\"\"  Blue/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322819','MES-FL','\"International Message Flags French \"\"Ouvert\"\"  Blue/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322820','MES-FL','\"International Message Flags French \"\"Vin\"\"  Blue/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322821','MES-FL','\"International Message Flags French \"\"Crepes\"\"  Blue/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322822','MES-FL','\"International Message Flags German \"\"Willkommen\"\" Black/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322823','MES-FL','\"International Message Flags German \"\"Offen\"\" Black/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322824','MES-FL','\"International Message Flags German \"\"Bier\"\" Black/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322825','MES-FL','\"International Message Flags German \"\"Festtag\"\" Black/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322826','MES-FL','\"International Message Flags Italian \"\"Benvenuto\"\" Green/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322827','MES-FL','\"International Message Flags Italian \"\"Aprire\"\" Green/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322828','MES-FL','\"International Message Flags Italian \"\"Vino\"\" Green/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322829','MES-FL','\"International Message Flags Italian \"\"Ristorante\"\" Green/White/Red 3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322830','MES-FL','\"International Message Flags Chinese \"\"Open\"\"  Red/White/Yellow  3\' x 5\' nylon outdoor\"','20.00','0.750',2,100,1,NULL,20070512102759),
 ('322831','MES-FL','\"Message Flags \"\"Check Cashing\"\"  3\' x 5\' nylon outdoor red/white/blue\"','15.00','0.750',2,100,1,NULL,20070512102759),
 ('322832','EMES-FL','\"Economy Message Flag \"\"Models\"\"  Approx 19\"\" x 26\"\"- white nylon flag messages printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322833','EMES-FL','\"Economy Message Flag \"\"Model\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322834','EMES-FL','\"Economy Message Flag \"\"Open\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322835','EMES-FL','\"Economy Message Flag \"\"Open House\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322836','EMES-FL','\"Economy Message Flag \"\"Welcome\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322837','EMES-FL','\"Economy Message Flag \"\"New Homes\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322838','EMES-FL','\"Economy Message Flag \"\"Condos\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322839','EMES-FL','\"Economy Message Flag \"\"Grand Opening\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black, 6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322840','EMES-FL','\"Economy Message Flag \"\"Coffee\"\"  Approx 19\"\" x 26\"\"- white nylon flag  printed in Black,  6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322841','EMES-FL','\"Economy Message Flag \"\"Antiques\"\"  Approx 19\"\" x 26\"\"- white nylon flag printed in Black, 6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322842','EMES-FL','\"Economy Message Flag \"\"For Sale\"\"  Approx 19\"\" x 26\"\"- white nylon flag printed in Black, 6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('322843','EMES-FL','\"Economy Message Flag \"\"Now Renting\"\"  Approx 19\"\" x 26\"\"- white nylon flag printed in Black, 6\' x 1/4\"\" 2 piece white fiberglass pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323100','EMES-BNR','\"Economy Message Banner \"\"Antiques\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323101','EMES-BNR','\"Economy Message Banner \"\"Condos\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323102','EMES-BNR','\"Economy Message Banner \"\"Coffee\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323103','EMES-BNR','\"Economy Message Banner \"\"For Sale\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323104','EMES-BNR','\"Economy Message Banner \"\"Grand Opening\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323105','EMES-BNR','\"Economy Message Banner \"\"Model\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323106','EMES-BNR','\"Economy Message Banner \"\"Models\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323107','EMES-BNR','\"Economy Message Banner \"\"New Homes\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323108','EMES-BNR','\"Economy Message Banner \"\"Now Renting\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323109','EMES-BNR','\"Economy Message Banner \"\"Open\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323110','EMES-BNR','\"Economy Message Banner \"\"Open House\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323111','EMES-BNR','\"Economy Message Banner \"\"Welcome\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - banner only with 4 grommets\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323112','EMES-FLP','\"Economy Message Flag & Pole \"\"Antiques\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323113','EMES-FLP','\"Economy Message Flag & Pole \"\"Condos\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323114','EMES-FLP','\"Economy Message Flag & Pole \"\"Coffee\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323115','EMES-FLP','\"Economy Message Flag & Pole \"\"For Sale\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323116','EMES-FLP','\"Economy Message Flag & Pole \"\"Grand Opening\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323117','EMES-FLP','\"Economy Message Flag & Pole \"\"Model\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323118','EMES-FLP','\"Economy Message Flag & Pole \"\"Models\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323119','EMES-FLP','\"Economy Message Flag & Pole \"\"New Homes\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323120','EMES-FLP','\"Economy Message Flag & Pole \"\"Now Renting\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323121','EMES-FLP','\"Economy Message Flag & Pole \"\"Open\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('324122','EMES-FLP','\"Economy Message Flag & Pole \"\"Open House\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('324123','EMES-FLP','\"Economy Message Flag & Pole \"\"Welcome\"\"  19\"\" x 26\"\" red, white, blue nylon with black print - flag (w/ pole hem) and pole\"','15.00','1.000',2,100,1,NULL,20070512102759),
 ('323122','ILH25IH (12 v)','\"ILH25IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Satin Finish\"','2769.00','128.000',0,100,0,NULL,20070512102759),
 ('323123','ILH25IH (12 v)','\"ILH25IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Clear Finish\"','2875.00','128.000',0,100,0,NULL,20070512102759),
 ('323124','ILH25IH (12 v)','\"ILH25IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Bronze Finish\"','2992.00','128.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323125','ILH25IHV (120 v)','\"ILH25IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Satin Finish\"','2489.00','128.000',0,100,0,NULL,20070512102759),
 ('323126','ILH25IHV (120 v)','\"ILH25IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Clear Finish\"','2596.00','128.000',0,100,0,NULL,20070512102759),
 ('323127','ILH25IHV (120 v)','\"ILH25IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Bronze Finish\"','2713.00','128.000',0,100,0,NULL,20070512102759),
 ('323128','ILH30IH (12 v)','\"ILH30IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Satin Finish\"','3152.00','150.000',0,100,0,NULL,20070512102759),
 ('323129','ILH30IH (12 v)','\"ILH30IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Clear Finish\"','3296.00','150.000',0,100,0,NULL,20070512102759),
 ('323130','ILH30IH (12 v)','\"ILH30IH (12 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Bronze Finish\"','3455.00','150.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323131','ILH30IHV (120 v)','\"ILH30IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Satin Finish\"','2872.00','150.000',0,100,0,NULL,20070512102759),
 ('323132','ILH30IHV (120 v)','\"ILH30IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Clear Finish\"','3017.00','150.000',0,100,0,NULL,20070512102759),
 ('323133','ILH30IHV (120 v)','\"ILH30IHV (120 v) 8\"\"revolving-359° 6\"\" base .250 wall -Hurricane Series - Bronze Finish\"','3175.00','150.000',0,100,0,NULL,20070512102759),
 ('323134','ILH35IH (12 v)','\"ILH35IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Satin Finish\"','3328.00','175.000',0,100,0,NULL,20070512102759),
 ('323135','ILH35IH (12 v)','\"ILH35IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Clear Finish\"','3491.00','175.000',0,100,0,NULL,20070512102759),
 ('323136','ILH35IH (12 v)','\"ILH35IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Bronze Finish\"','3669.00','175.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323137','ILH35IHV (120 v)','\"ILH35IHV (120 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Satin Finish\"','3049.00','175.000',0,100,0,NULL,20070512102759),
 ('323138','ILH35IHV (120 v)','\"ILH35IHV (120 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Clear Finish\"','3212.00','175.000',0,100,0,NULL,20070512102759),
 ('323139','ILH35IHV (120 v)','\"ILH35IHV (120 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Bronze Finish\"','3390.00','175.000',0,100,0,NULL,20070512102759),
 ('323140','ILH40IH (12 v)','\"ILH40IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Satin Finish\"','3609.00','200.000',0,100,0,NULL,20070512102759),
 ('323141','ILH40IH (12 v)','\"ILH40IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Clear Finish\"','3799.00','200.000',0,100,0,NULL,20070512102759),
 ('323142','ILH40IH (12 v)','\"ILH40IH (12 v) 8\"\"revolving-359° 8\"\" base .250 wall -Hurricane Series - Bronze Finish\"','4008.00','200.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323143','ILH40IHV (120 v)','\"ILH40IHV (110 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Satin Finish\"','3329.00','200.000',0,100,0,NULL,20070512102759),
 ('323144','ILH40IHV (120 v)','\"ILH40IHV (110 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Clear Finish\"','3519.00','200.000',0,100,0,NULL,20070512102759),
 ('323145','ILH40IHV (120 v)','\"ILH40IHV (110 v) 8\"\"revolving-359°  8\"\" base .250 wall -Hurricane Series - Bronze Finish\"','3728.00','200.000',0,100,0,NULL,20070512102759),
 ('323146','ILH50IH (12 v)','\"ILH50IH (12 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Satin Finish\"','5052.00','300.000',0,100,0,NULL,20070512102759),
 ('323147','ILH50IH (12 v)','\"ILH50IH (12 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Clear Finish\"','5386.00','300.000',0,100,0,NULL,20070512102759),
 ('323148','ILH50IH (12 v)','\"ILH50IH (12 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Bronze Finish\"','5754.00','300.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323149','ILH50IHV (120 v)','\"ILH50IHV (120 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Satin Finish\"','4772.00','300.000',0,100,0,NULL,20070512102759),
 ('323150','ILH50IHV (120 v)','\"ILH50IHV (120 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Clear Finish\"','5107.00','300.000',0,100,0,NULL,20070512102759),
 ('323151','ILH50IHV (120 v)','\"ILH50IHV (120 v) 8\"\"revolving-359° 10\"\" base .312 wall -Hurricane Series - Bronze Finish\"','5474.00','300.000',0,100,0,NULL,20070512102759),
 ('322176','ILIH20-S (12v)','\"ILIH20 (12 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Satin Finish\"','1988.25','128.000',0,100,0,NULL,20070512102759),
 ('322177','ILIH20-C (12v)','\"ILIH20 (12 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Clear Finish\"','2059.50','128.000',0,100,0,NULL,20070512102759),
 ('322178','ILIH20-B (12v)','\"ILIH20 (12 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Bronze Finish\"','2070.00','128.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322179','ILIH20V-S (120v)','\"ILIH20V (120 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Satin Finish\"','1698.65','128.000',0,100,0,NULL,20070512102759),
 ('322180','ILIH20V-C (120v)','\"ILIH20V (120 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Clear Finish\"','1769.90','128.000',0,100,0,NULL,20070512102759),
 ('322181','ILIH20V-B (120v)','\"ILIH20V (120 v) 6.5 inch revolving beacon 360 deg. 5\"\" base .188 wall - Architectural Series - Bronze Finish\"','1780.40','128.000',0,100,0,NULL,20070512102759),
 ('322182','ILIH25-S (12v)','\"ILIH25 (12 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Satin Finish\"','2395.75','160.000',0,100,0,NULL,20070512102759),
 ('322183','ILIH25-C (12v)','\"ILIH25 (12 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Clear Finish\"','2484.25','160.000',0,100,0,NULL,20070512102759),
 ('322184','ILIH25-B (12v)','\"ILIH25 (12 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Bronze Finish\"','2502.00','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322185','ILIH25V-S (120v)','\"ILIH25V (120 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Satin Finish\"','2106.15','160.000',0,100,0,NULL,20070512102759),
 ('322186','ILIH25V-C (120v)','\"ILIH25V (120 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Clear Finish\"','2194.65','160.000',0,100,0,NULL,20070512102759),
 ('322187','ILIH25V-B (120v)','\"ILIH25V (120 v) 6.5 inch revolving beacon 360 deg. 5.5\"\" base .188 wall - Architectural Series - Bronze Finish\"','2212.40','160.000',0,100,0,NULL,20070512102759),
 ('322188','ILIH30-S (12v)','\"ILIH30 (12 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Satin Finish\"','2656.00','205.000',0,100,0,NULL,20070512102759),
 ('322189','ILIH30-C (12v)','\"ILIH30 (12 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Clear Finish\"','2762.25','205.000',0,100,0,NULL,20070512102759),
 ('322190','ILIH30-B (12v)','\"ILIH30 (12 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Bronze Finish\"','2786.00','205.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322191','ILIH30V-S (120v)','\"ILIH30V (120 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Satin Finish\"','2353.20','205.000',0,100,0,NULL,20070512102759),
 ('322192','ILIH30V-C (120v)','\"ILIH30V (120 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Clear Finish\"','2459.45','205.000',0,100,0,NULL,20070512102759),
 ('322193','ILIH30V-B (120v)','\"ILIH30V (120 v) 6.5 inch revolving beacon 360 deg. 6\"\" base .188 wall - Architectural Series - Bronze Finish\"','2483.20','205.000',0,100,0,NULL,20070512102759),
 ('322194','ILIH35-S (12v)','\"ILIH35 (12 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Satin Finish\"','2954.25','265.000',0,100,0,NULL,20070512102759),
 ('322195','ILIH35-C (12v)','\"ILIH35 (12 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Clear Finish\"','3096.00','265.000',0,100,0,NULL,20070512102759),
 ('322196','ILIH35-B (12v)','\"ILIH35 (12 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Bronze Finish\"','3131.00','265.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322197','ILIH35V-S (120v)','\"ILIH35V (120 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Satin Finish\"','2651.45','265.000',0,100,0,NULL,20070512102759),
 ('322198','ILIH35V-C (120v)','\"ILIH35V (120 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Clear Finish\"','2739.20','265.000',0,100,0,NULL,20070512102759),
 ('322199','ILIH35V-B (120v)','\"ILIH35V (120 v) 8 inch revolving beacon 360 deg. 7\"\" base .188 wall - Architectural Series - Bronze Finish\"','2828.20','265.000',0,100,0,NULL,20070512102759),
 ('322200','ILIH40-S (12v)','\"ILIH40 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Satin Finish\"','3408.75','327.000',0,100,0,NULL,20070512102759),
 ('322201','ILIH40-C (12v)','\"ILIH40 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Clear Finish\"','3586.25','327.000',0,100,0,NULL,20070512102759),
 ('322202','ILIH40-B (12v)','\"ILIH40 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','3632.00','327.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322203','ILIH40V-S (120v)','\"ILIH40V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Satin Finish\"','3092.75','327.000',0,100,0,NULL,20070512102759),
 ('322204','ILIH40V-C (120v)','\"ILIH40V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Clear Finish\"','3270.25','327.000',0,100,0,NULL,20070512102759),
 ('322205','ILIH40V-B (120v)','\"ILIH40V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','3316.00','327.000',0,100,0,NULL,20070512102759),
 ('322206','ILIH45-S (12v)','\"ILIH45 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Satin Finish\"','3515.00','352.000',0,100,0,NULL,20070512102759),
 ('322207','ILIH45-C (12v)','\"ILIH45 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Clear Finish\"','3711.25','352.000',0,100,0,NULL,20070512102759),
 ('322208','ILIH45-B (12v)','\"ILIH45 (12 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','3763.00','352.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322209','ILIH45V-S (120v)','\"ILIH45V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Satin Finish\"','3199.00','352.000',0,100,0,NULL,20070512102759),
 ('322210','ILIH45V-C (120v)','\"ILIH45V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Clear Finish\"','3395.25','352.000',0,100,0,NULL,20070512102759),
 ('322211','ILIH45V-B (120v)','\"ILIH45V (120 v) 8 inch revolving beacon 360 deg. 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','3447.00','352.000',0,100,0,NULL,20070512102759),
 ('322212','ILIH50-S (12v)','\"ILIH50 (12 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Satin Finish\"','4239.00','426.000',0,100,0,NULL,20070512102759),
 ('322213','ILIH50-C (12v)','\"ILIH50 (12 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Clear Finish\"','4505.25','426.000',0,100,0,NULL,20070512102759),
 ('322214','ILIH50-B (12v)','\"ILIH50 (12 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Bronze Finish\"','4575.00','426.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322215','ILIH50V-S (120v)','\"ILIH50V (120 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Satin Finish\"','3909.80','426.000',0,100,0,NULL,20070512102759),
 ('322216','ILIH50V-C (120v)','\"ILIH50V (120 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Clear Finish\"','4176.05','426.000',0,100,0,NULL,20070512102759),
 ('322217','ILIH50V-B (120v)','\"ILIH50V (120 v) 10.5 inch revolving beacon 360 deg. 10\"\" base .188 wall  - Architectural Series - Bronze Finish\"','4245.80','426.000',0,100,0,NULL,20070512102759),
 ('322218','ILIH60-S (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot satin (12 volts)\"','6536.75','675.000',0,100,0,NULL,20070512102759),
 ('322219','ILIH60-C (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot clear (12 volts)\"','6914.00','675.000',0,100,0,NULL,20070512102759),
 ('322220','ILIH60-B (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot bronze (12 volts)\"','7009.00','675.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322221','ILIH60V-S (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot satin (120 volts)\"','6212.35','675.000',0,100,0,NULL,20070512102759),
 ('322222','ILIH60V-C (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot clear (120 volts)\"','6571.60','675.000',0,100,0,NULL,20070512102759),
 ('322223','ILIH60V-B (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-60 foot bronze (120 volts)\"','6666.60','675.000',0,100,0,NULL,20070512102759),
 ('322224','ILIH70-S (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot satin (12 volts)\"','7093.25','770.000',0,100,0,NULL,20070512102759),
 ('322225','ILIH70-C (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot clear (12 volts)\"','7529.00','770.000',0,100,0,NULL,20070512102759),
 ('322226','ILIH70-B (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot bronze (12 volts)\"','7653.00','770.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322227','ILIH70V-S (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot satin (120 volts)\"','6737.65','770.000',0,100,0,NULL,20070512102759),
 ('322228','ILIH70V-C (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot clear (120 volts)\"','7173.40','770.000',0,100,0,NULL,20070512102759),
 ('322229','ILIH70V-B (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-70 foot bronze (120 volts)\"','7297.40','770.000',0,100,0,NULL,20070512102759),
 ('322230','ILIH80-S (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot satin (12 volts)\"','8739.75','1030.000',0,100,0,NULL,20070512102759),
 ('322231','ILIH80-C (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot clear (12 volts)\"','9236.00','1030.000',0,100,0,NULL,20070512102759),
 ('322232','ILIH80-B (12v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot bronze (12 volts)\"','9378.00','1030.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322233','ILIH80V-S (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot satin (120 volts)\"','8370.95','1030.000',0,100,0,NULL,20070512102759),
 ('322234','ILIH80V-C (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot clear (120 volts)\"','8867.20','1030.000',0,100,0,NULL,20070512102759),
 ('322235','ILIH80V-B (120v)','\"PLATINUM SERIES- ILLUMINATOR \"\"internal\"\" halyard flagpole w/ 10.5\"\" revolving beacon-80 foot bronze (120 volts)\"','9009.20','1030.000',0,100,0,NULL,20070512102759),
 ('322236','IL20-S (12v)','\"IL20 (12 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Satin Finish\"','1285.00','128.000',0,100,0,NULL,20070512102759),
 ('322237','IL20-C (12v)','\"IL20 (12 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Clear Finish\"','1357.00','128.000',0,100,0,NULL,20070512102759),
 ('322238','IL20-B (12v)','\"IL20 (12 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Bronze Finish\"','1375.00','128.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322239','IL20V-S (120v)','\"IL20 (120 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Satin Finish\"','995.40','128.000',0,100,0,NULL,20070512102759),
 ('322240','IL20V-C (120v)','\"IL20 (120 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Clear Finish\"','1067.40','128.000',0,100,0,NULL,20070512102759),
 ('322241','IL20V-B (120v)','\"IL20 (120 v) 8\"\"revolving-360° 5\"\" base .188 wall - Architectural Series - Bronze Finish\"','1085.40','128.000',0,100,0,NULL,20070512102759),
 ('322242','IL25-S (12v)','\"IL25 (12 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Satin Finish\"','1439.00','160.000',0,100,0,NULL,20070512102759),
 ('322243','IL25-C (12v)','\"IL25 (12 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Clear Finish\"','1530.00','160.000',0,100,0,NULL,20070512102759),
 ('322244','IL25-B (12v)','\"IL25 (12 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Bronze Finish\"','1546.00','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322245','IL25V-S (120v)','\"IL25 (120 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Satin Finish\"','1149.40','160.000',0,100,0,NULL,20070512102759),
 ('322246','IL25V-C (120v)','\"IL25 (120 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Clear Finish\"','1240.40','160.000',0,100,0,NULL,20070512102759),
 ('322247','IL25V-B (120v)','\"IL25 (120 v) 8\"\"revolving-360° 5.5\"\" base .188 wall - Architectural Series - Bronze Finish\"','1256.40','160.000',0,100,0,NULL,20070512102759),
 ('322248','IL30-S (12v)','\"IL30 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Satin Finish\"','1565.00','205.000',0,100,0,NULL,20070512102759),
 ('322249','IL30-C (12v)','\"IL30 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Clear Finish\"','1671.00','205.000',0,100,0,NULL,20070512102759),
 ('322250','IL30-B (12v)','\"IL30 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Bronze Finish\"','1695.00','205.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322251','IL30V-S (120v)','\"IL30 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Satin Finish\"','1262.20','205.000',0,100,0,NULL,20070512102759),
 ('322252','IL30V-C (120v)','\"IL30 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Clear Finish\"','1368.20','205.000',0,100,0,NULL,20070512102759),
 ('322253','IL30V-B (120v)','\"IL30 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall  - Architectural Series - Bronze Finish\"','1392.20','205.000',0,100,0,NULL,20070512102759),
 ('322254','IL35-S (12v)','\"IL35 (12 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Satin Finish\"','1823.00','265.000',0,100,0,NULL,20070512102759),
 ('322255','IL35-C (12v)','\"IL35 (12 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Clear Finish\"','1966.00','265.000',0,100,0,NULL,20070512102759),
 ('322256','IL35-B (12v)','\"IL35 (12 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Bronze Finish\"','2002.00','265.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322257','IL35V-S (120v)','\"IL35 (120 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Satin Finish\"','1520.20','265.000',0,100,0,NULL,20070512102759),
 ('322258','IL35V-C (120v)','\"IL35 (120 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Clear Finish\"','1663.20','265.000',0,100,0,NULL,20070512102759),
 ('322259','IL35V-B (120v)','\"IL35 (120 v) 8\"\"revolving-360° 7\"\" base .188 wall- Architectural Series - Bronze Finish\"','1699.20','265.000',0,100,0,NULL,20070512102759),
 ('322260','IL40-S (12v)','\"IL40 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Satin Finish\"','2226.00','327.000',0,100,0,NULL,20070512102759),
 ('322261','IL40-C (12v)','\"IL40 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Clear Finish\"','2404.00','327.000',0,100,0,NULL,20070512102759),
 ('322262','IL40-B (12v)','\"IL40 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','2451.00','327.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322263','IL40V-S (120v)','\"IL40 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Satin Finish\"','1910.00','327.000',0,100,0,NULL,20070512102759),
 ('322264','IL40V-C (120v)','\"IL40 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Clear Finish\"','2088.00','327.000',0,100,0,NULL,20070512102759),
 ('322265','IL40V-B (120v)','\"IL40 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','2135.00','327.000',0,100,0,NULL,20070512102759),
 ('322266','IL45-S (12v)','\"IL45 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Satin Finish\"','2486.00','352.000',0,100,0,NULL,20070512102759),
 ('322267','IL45-C (12v)','\"IL45 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Clear Finish\"','2580.00','352.000',0,100,0,NULL,20070512102759),
 ('322268','IL45-B (12v)','\"IL45 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','2634.00','352.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322269','IL45V-S (120v)','\"IL45 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Satin Finish\"','2170.00','352.000',0,100,0,NULL,20070512102759),
 ('322270','IL45V-C (120v)','\"IL45 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Clear Finish\"','2264.00','352.000',0,100,0,NULL,20070512102759),
 ('322271','IL45V-B (120v)','\"IL45 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall - Architectural Series - Bronze Finish\"','2318.00','352.000',0,100,0,NULL,20070512102759),
 ('322272','IL50-S (12v)','\"IL50 (12 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Satin Finish\"','3020.00','426.000',0,100,0,NULL,20070512102759),
 ('322273','IL50-C (12v)','\"IL50 (12 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Clear Finish\"','3339.00','426.000',0,100,0,NULL,20070512102759),
 ('322274','IL50-B (12v)','\"IL50 (12 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Bronze Finish\"','3417.00','426.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322275','IL50V-S (120v)','\"IL50 (120 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Satin Finish\"','2690.80','426.000',0,100,0,NULL,20070512102759),
 ('322276','IL50V-C (120v)','\"IL50 (120 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Clear Finish\"','3009.80','426.000',0,100,0,NULL,20070512102759),
 ('322277','IL50V-B (120v)','\"IL50 (120 v) 10\"\"revolving-360° 10\"\" base .188 wall  - Architectural Series - Bronze Finish\"','3087.80','426.000',0,100,0,NULL,20070512102759),
 ('322278','IL60-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 60 foot satin (12 volts)\"','5093.00','675.000',0,100,0,NULL,20070512102759),
 ('322279','IL60-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon-60 foot clear (12 volts)\"','5471.00','675.000',0,100,0,NULL,20070512102759),
 ('322280','IL60-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon-60 foot bronze (12 volts)\"','5577.00','675.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322281','IL60V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon-60 foot satin (120 volts)\"','4750.60','675.000',0,100,0,NULL,20070512102759),
 ('322282','IL60V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon-60 foot clear (120 volts)\"','5128.60','675.000',0,100,0,NULL,20070512102759),
 ('322283','IL60V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 60 foot bronze (120 volts)\"','5234.60','675.000',0,100,0,NULL,20070512102759),
 ('322284','IL70-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot satin (12 volts)\"','5647.00','770.000',0,100,0,NULL,20070512102759),
 ('322285','IL70-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot clear (12 volts)\"','6086.00','770.000',0,100,0,NULL,20070512102759),
 ('322286','IL70-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot bronze (12 volts)\"','6210.00','770.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322287','IL70V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot satin (120 volts)\"','5291.40','770.000',0,100,0,NULL,20070512102759),
 ('322288','IL70V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot clear (120 volts)\"','5730.40','770.000',0,100,0,NULL,20070512102759),
 ('322289','IL70V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 70 foot bronze (120 volts)\"','5854.40','770.000',0,100,0,NULL,20070512102759),
 ('322290','IL80-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot satin (12 volts)\"','7025.00','1030.000',0,100,0,NULL,20070512102759),
 ('322291','IL80-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot clear (12 volts)\"','7521.00','1030.000',0,100,0,NULL,20070512102759),
 ('322292','IL80-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot bronze (12 volts)\"','7662.00','1030.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322293','IL80V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot satin (120 volts)\"','6656.20','1030.000',0,100,0,NULL,20070512102759),
 ('322294','IL80V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot clear (120 volts)\"','7152.20','1030.000',0,100,0,NULL,20070512102759),
 ('322295','IL80V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"external\"\" halyard flagpole w/ 12\"\" revolving beacon- 80 foot bronze (120 volts)\"','7293.20','1030.000',0,100,0,NULL,20070512102759),
 ('322296','ILC20-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot satin(12 volts)\"','1776.00','128.000',0,100,0,NULL,20070512102759),
 ('322297','ILC20-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot clear (12 volts)\"','1852.00','128.000',0,100,0,NULL,20070512102759),
 ('322298','ILC20-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot bronze (12 volts)\"','1865.00','128.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322299','ILC20V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot satin (120 volts)\"','1486.40','128.000',0,100,0,NULL,20070512102759),
 ('322300','ILC20V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot clear (120 volts)\"','1562.40','128.000',0,100,0,NULL,20070512102759),
 ('322301','ILC20V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 20 foot bronze (120 volts)\"','1575.40','128.000',0,100,0,NULL,20070512102759),
 ('322302','ILC25-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot satin(12 volts)\"','2041.00','170.000',0,100,0,NULL,20070512102759),
 ('322303','ILC25-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot clear (12 volts)\"','2101.00','170.000',0,100,0,NULL,20070512102759),
 ('322304','ILC25-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot bronze (12 volts)\"','2117.00','170.000',0,100,0,NULL,20070512102759),
 ('322305','ILC25V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot satin (120 volts)\"','1761.40','170.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322306','ILC25V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot clear (120 volts)\"','1821.40','170.000',0,100,0,NULL,20070512102759),
 ('322307','ILC25V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 25 foot bronze (120 volts)\"','1837.40','170.000',0,100,0,NULL,20070512102759),
 ('322308','ILC30-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot satin(12 volts)\"','2104.00','205.000',0,100,0,NULL,20070512102759),
 ('322309','ILC30-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot clear (12 volts)\"','2211.00','205.000',0,100,0,NULL,20070512102759),
 ('322310','ILC30-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot bronze (12 volts)\"','2235.00','205.000',0,100,0,NULL,20070512102759),
 ('322311','IL30V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot satin (120 volts)\"','1801.20','205.000',0,100,0,NULL,20070512102759),
 ('322312','ILC30V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot clear (120 volts)\"','1908.20','205.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322313','ILC30V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 30 foot bronze (120 volts)\"','1932.20','205.000',0,100,0,NULL,20070512102759),
 ('322314','ILC35-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot satin(12 volts)\"','2371.00','265.000',0,100,0,NULL,20070512102759),
 ('322315','ILC35-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot clear (12 volts)\"','2506.00','265.000',0,100,0,NULL,20070512102759),
 ('322316','ILC35-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot bronze (12 volts)\"','2547.00','265.000',0,100,0,NULL,20070512102759),
 ('322317','ILC35V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot satin (120 volts)\"','2068.20','265.000',0,100,0,NULL,20070512102759),
 ('322318','ILC35V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot clear (120 volts)\"','2203.20','265.000',0,100,0,NULL,20070512102759),
 ('322319','ILC35V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 35 foot bronze (120 volts)\"','2244.20','265.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322320','ILC40-S (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot satin(12 volts)\"','2836.00','327.000',0,100,0,NULL,20070512102759),
 ('322321','ILC40-C (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot clear (12 volts)\"','3015.00','327.000',0,100,0,NULL,20070512102759),
 ('322322','ILC40-B (12v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot bronze (12 volts)\"','3061.00','327.000',0,100,0,NULL,20070512102759),
 ('322323','ILC40V-S (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot satin (120 volts)\"','2520.00','327.000',0,100,0,NULL,20070512102759),
 ('322324','ILC40V-C (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot clear (120 volts)\"','2699.00','327.000',0,100,0,NULL,20070512102759),
 ('322325','ILC40V-B (120v)','\"PLATINUM SERIES - ILLUMINATOR \"\"CAM\"\" halyard flagpole - 40 foot bronze (120 volts)\"','2745.00','327.000',0,100,0,NULL,20070512102759),
 ('322326','ILXC20-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot satin (12 volts)\"','1681.00','102.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322327','ILXC20-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot clear (12 volts)\"','1752.00','102.000',0,100,0,NULL,20070512102759),
 ('322328','ILXC20-B(12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot bronze (12 volts)\"','1770.00','102.000',0,100,0,NULL,20070512102759),
 ('322329','ILXC20V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot satin (120 volts)\"','1391.40','102.000',0,100,0,NULL,20070512102759),
 ('322330','ILXC20V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot clear (120 volts)\"','1462.40','102.000',0,100,0,NULL,20070512102759),
 ('322331','ILXC20V-B(120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-20 foot bronze (120 volts)\"','1480.40','102.000',0,100,0,NULL,20070512102759),
 ('322332','ILXC25-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25foot satin (12 volts)\"','1746.00','123.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322333','ILXC25-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25 foot clear (12 volts)\"','1822.00','123.000',0,100,0,NULL,20070512102759),
 ('322334','ILXC25-B(12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25 foot bronze (12 volts)\"','1846.00','123.000',0,100,0,NULL,20070512102759),
 ('322335','ILXC25V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25 foot satin (120 volts)\"','1456.40','123.000',0,100,0,NULL,20070512102759),
 ('322336','ILXC25V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25 foot clear (120 volts)\"','1532.40','123.000',0,100,0,NULL,20070512102759),
 ('322337','ILXC25V-B(120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-25 foot bronze (120 volts)\"','1556.40','123.000',0,100,0,NULL,20070512102759),
 ('322338','ILXC30-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot satin (12 volts)\"','1829.00','138.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322339','ILXC30-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot clear (12 volts)\"','1917.00','138.000',0,100,0,NULL,20070512102759),
 ('322340','ILXC30-B(12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot bronze (12 volts)\"','1941.00','138.000',0,100,0,NULL,20070512102759),
 ('322341','ILXC30V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot satin (120 volts)\"','1526.20','138.000',0,100,0,NULL,20070512102759),
 ('322342','ILXC30V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot clear (120 volts)\"','1614.20','138.000',0,100,0,NULL,20070512102759),
 ('322343','ILXC30V-B(120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-30 foot bronze (120 volts)\"','1638.20','138.000',0,100,0,NULL,20070512102759),
 ('322344','ILXC35-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot satin (12 volts)\"','2104.00','200.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322345','ILXC35-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot clear (12 volts)\"','2235.00','200.000',0,100,0,NULL,20070512102759),
 ('322346','ILXC35-B(12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot bronze (12 volts)\"','2259.00','200.000',0,100,0,NULL,20070512102759),
 ('322347','ILXC35V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot satin (120 volts)\"','1801.20','200.000',0,100,0,NULL,20070512102759),
 ('322348','ILXC35V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot clear (120 volts)\"','1932.20','200.000',0,100,0,NULL,20070512102759),
 ('322349','ILXC35V-B(120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-35 foot bronze (120 volts)\"','1956.20','200.000',0,100,0,NULL,20070512102759),
 ('322350','ILXC40-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot satin (12 volts)\"','2530.00','277.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322351','ILXC40-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot clear (12 volts)\"','2690.00','277.000',0,100,0,NULL,20070512102759),
 ('322352','ILXC40-B(12v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot bronze (12 volts)\"','2725.00','277.000',0,100,0,NULL,20070512102759),
 ('322353','ILXC40V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot satin (120 volts)\"','2214.00','277.000',0,100,0,NULL,20070512102759),
 ('322354','ILXC40V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot clear (120 volts)\"','2374.00','277.000',0,100,0,NULL,20070512102759),
 ('322355','ILXC40V-B(120v)','\"GOLD SERIES- ILLUMINATOR \"\"cam system\"\" flagpole w/ 8\"\" revolving beacon-40 foot bronze (120 volts)\"','2409.00','277.000',0,100,0,NULL,20070512102759),
 ('322356','ILX20-S (12v)','\"ILX20 (12 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1186.00','102.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322357','ILX20-C (12v)','\"ILX20 (12 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1257.00','102.000',0,100,0,NULL,20070512102759),
 ('322358','ILX20-B (12v)','\"ILX20 (12 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1275.00','102.000',0,100,0,NULL,20070512102759),
 ('322359','ILX20V-S (120v)','\"ILX20 (120 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','896.40','102.000',0,100,0,NULL,20070512102759),
 ('322360','ILX20V-C (120v)','\"ILX20 (120 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','967.40','102.000',0,100,0,NULL,20070512102759),
 ('322361','ILX20V-B (120v)','\"ILX20 (120 v) 8\"\" revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','985.40','102.000',0,100,0,NULL,20070512102759),
 ('322362','ILX25-S (12v)','\"ILX25 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1210.00','123.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322363','ILX25-C (12v)','\"ILX25 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1294.00','123.000',0,100,0,NULL,20070512102759),
 ('322364','ILX25-B (12v)','\"ILX25 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1310.00','123.000',0,100,0,NULL,20070512102759),
 ('322365','ILX25V-S (120v)','\"ILX25 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','920.40','123.000',0,100,0,NULL,20070512102759),
 ('322366','ILX25V-C (120v)','\"ILX25 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1004.40','123.000',0,100,0,NULL,20070512102759),
 ('322367','ILX25V-B (120v)','\"ILX25 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1020.40','123.000',0,100,0,NULL,20070512102759),
 ('322368','ILX30-S (12v)','\"ILX30 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1294.00','138.000',0,100,0,NULL,20070512102759),
 ('322369','ILX30-C (12v)','\"ILX30 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1388.00','138.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322370','ILX30-B (12v)','\"ILX30 (12 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1399.00','138.000',0,100,0,NULL,20070512102759),
 ('322371','ILX30V-S (120v)','\"ILX30 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','991.20','138.000',0,100,0,NULL,20070512102759),
 ('322372','ILX30V-C (120v)','\"ILX30 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1085.20','138.000',0,100,0,NULL,20070512102759),
 ('322373','ILX30V-B (120v)','\"ILX30 (120 v) 8\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1096.20','138.000',0,100,0,NULL,20070512102759),
 ('322374','ILX35-S (12v)','\"ILX35 (12 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Satin Finish\"','1570.00','200.000',0,100,0,NULL,20070512102759),
 ('322375','ILX35-C (12v)','\"ILX35 (12 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Clear Finish\"','1695.00','200.000',0,100,0,NULL,20070512102759),
 ('322376','ILX35-B (12v)','\"ILX35 (12 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Bronze Finish\"','1724.00','200.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322377','ILX35V-S (120v)','\"ILX35 (120 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Satin Finish\"','1267.20','200.000',0,100,0,NULL,20070512102759),
 ('322378','ILX35V-C (120v)','\"ILX35 (120 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Clear Finish\"','1392.20','200.000',0,100,0,NULL,20070512102759),
 ('322379','ILX35V-B (120v)','\"ILX35 (120 v) 8\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Bronze Finish\"','1421.20','200.000',0,100,0,NULL,20070512102759),
 ('322380','ILX40-S (12v)','\"ILX40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Satin Finish\"','1995.00','277.000',0,100,0,NULL,20070512102759),
 ('322381','ILX40-C (12v)','\"ILX40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Clear Finish\"','2155.00','277.000',0,100,0,NULL,20070512102759),
 ('322382','ILX40-B (12v)','\"ILX40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Bronze Finish\"','2197.00','277.000',0,100,0,NULL,20070512102759),
 ('322383','ILX40V-S (120v)','\"ILX40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Satin Finish\"','1679.00','277.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322384','ILX40V-C (120v)','\"ILX40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Clear Finish\"','1839.00','277.000',0,100,0,NULL,20070512102759),
 ('322385','ILX40V-B (120v)','\"ILX40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Bronze Finish\"','1881.00','277.000',0,100,0,NULL,20070512102759),
 ('322386','ILX50-S (12v)','\"ILX50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Satin Finish\"','2528.00','370.000',0,100,0,NULL,20070512102759),
 ('322387','ILX50-C (12v)','\"ILX50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Clear Finish\"','2747.00','370.000',0,100,0,NULL,20070512102759),
 ('322388','ILX50-B (12v)','\"ILX50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Bronze Finish\"','2806.00','370.000',0,100,0,NULL,20070512102759),
 ('322389','ILX50V-S (120v)','\"ILX50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Satin Finish\"','2198.80','370.000',0,100,0,NULL,20070512102759),
 ('322390','ILX50V-C (120v)','\"ILX50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Clear Finish\"','2417.80','370.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322391','ILX50V-B (120v)','\"ILX50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Bronze Finish\"','2476.80','370.000',0,100,0,NULL,20070512102759),
 ('322392','ILX60-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot satin (12 volts)\"','3400.00','530.000',0,100,0,NULL,20070512102759),
 ('322393','ILX60-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot clear (12 volts)\"','3717.00','530.000',0,100,0,NULL,20070512102759),
 ('322394','ILX60-B (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot bronze (12 volts)\"','3806.00','530.000',0,100,0,NULL,20070512102759),
 ('322395','ILX60V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot satin (120 volts)\"','3057.60','530.000',0,100,0,NULL,20070512102759),
 ('322396','ILX60V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot clear (120 volts)\"','3374.60','530.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322397','ILX60V-B (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-60 foot bronze (120 volts)\"','3463.60','530.000',0,100,0,NULL,20070512102759),
 ('322398','ILX70-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot satin (12 volts)\"','4954.00','705.000',0,100,0,NULL,20070512102759),
 ('322399','ILX70-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot clear (12 volts)\"','5319.00','705.000',0,100,0,NULL,20070512102759),
 ('322400','ILX70-B (12v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot bronze (12 volts)\"','5426.00','705.000',0,100,0,NULL,20070512102759),
 ('322401','ILX70V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot satin (120 volts)\"','4598.40','705.000',0,100,0,NULL,20070512102759),
 ('322402','ILX70V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot clear (120 volts)\"','4963.40','705.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322403','ILX70V-B (120v)','\"GOLD SERIES- ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving beacon-70 foot bronze (120 volts)\"','5070.40','705.000',0,100,0,NULL,20070512102759),
 ('322404','ILXIH20-S (12v)','\"ILXIH20 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1893.25','102.000',0,100,0,NULL,20070512102759),
 ('322405','ILXIH20-C (12v)','\"ILXIH20 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1964.50','102.000',0,100,0,NULL,20070512102759),
 ('322406','ILXIH20-B (12v)','\"ILXIH20 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1975.00','102.000',0,100,0,NULL,20070512102759),
 ('322407','ILXIH20V-S (120v)','\"ILXIH20 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1603.65','102.000',0,100,0,NULL,20070512102759),
 ('322408','ILXIH20V-C (120v)','\"ILXIH20 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1674.90','102.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322409','ILXIH20V-B (120v)','\"ILXIH20 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1685.40','102.000',0,100,0,NULL,20070512102759),
 ('322410','ILXIH25-S (12v)','\"ILXIH25 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1959.50','123.000',0,100,0,NULL,20070512102759),
 ('322411','ILXIH25-C (12v)','\"ILXIH25 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','2035.75','123.000',0,100,0,NULL,20070512102759),
 ('322412','ILXIH25-B (12v)','\"ILXIH25 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','2059.00','123.000',0,100,0,NULL,20070512102759),
 ('322413','ILXIH25V-S (120v)','\"ILXIH25 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1669.90','123.000',0,100,0,NULL,20070512102759),
 ('322414','ILXIH25V-C (120v)','\"ILXIH25 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1746.15','123.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322415','ILXIH25V-B (120v)','\"ILXIH25 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1769.40','123.000',0,100,0,NULL,20070512102759),
 ('322416','ILXIH30-S (12v)','\"ILXIH30 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','2041.00','138.000',0,100,0,NULL,20070512102759),
 ('322417','ILXIH30-C (12v)','\"ILXIH30 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','2129.75','138.000',0,100,0,NULL,20070512102759),
 ('322418','ILXIH30-B (12v)','\"ILXIH30 (12 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','2153.00','138.000',0,100,0,NULL,20070512102759),
 ('322419','ILXIH30V-S (120v)','\"ILXIH30 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Satin Finish\"','1738.20','138.000',0,100,0,NULL,20070512102759),
 ('322420','ILXIH30V-C (120v)','\"ILXIH30 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Clear Finish\"','1826.95','138.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322421','ILXIH30V-B (120v)','\"ILXIH30 (120 v) 6.5\"\"revolving-360° 5\"\" base .125 wall -Contractor Series - Bronze Finish\"','1850.00','138.000',0,100,0,NULL,20070512102759),
 ('322422','ILXIH35-S (12v)','\"ILXIH35 (12 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Satin Finish \"','2644.75','200.000',0,100,0,NULL,20070512102759),
 ('322423','ILXIH35-C (12v)','\"ILXIH35 (12 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Clear Finish \"','2762.25','200.000',0,100,0,NULL,20070512102759),
 ('322424','ILXIH35-B (12v)','\"ILXIH35 (12 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Bronze Finish \"','2797.25','200.000',0,100,0,NULL,20070512102759),
 ('322425','ILXIH35V-S (120v)','\"ILXIH35 (120 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Satin Finish \"','2341.95','200.000',0,100,0,NULL,20070512102759),
 ('322426','ILXIH35V-C (120v)','\"ILXIH35 (120 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Clear Finish \"','2459.45','200.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322427','ILXIH35V-B (120v)','\"ILXIH35 (120 v) 6.5\"\"revolving-360° 6\"\" base .156 wall -Contractor Series - Bronze Finish \"','2494.45','200.000',0,100,0,NULL,20070512102759),
 ('322428','ILXIH40-S (12v)','\"ILXIH40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Satin Finish\"','3113.75','277.000',0,100,0,NULL,20070512102759),
 ('322429','ILXIH40-C (12v)','\"ILXIH40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Clear Finish\"','3267.50','277.000',0,100,0,NULL,20070512102759),
 ('322430','ILXIH40-B (12v)','\"ILXIH40 (12 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Bronze Finish\"','3308.00','277.000',0,100,0,NULL,20070512102759),
 ('322431','ILXIH40V-S (120v)','\"ILXIH40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Satin Finish\"','2797.75','277.000',0,100,0,NULL,20070512102759),
 ('322432','ILXIH40V-C (120v)','\"ILXIH40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Clear Finish\"','2951.50','277.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322433','ILXIH40V-B (120v)','\"ILXIH40 (120 v) 8\"\"revolving-360° 7\"\" base .156 wall -Contractor Series - Bronze Finish\"','2992.00','277.000',0,100,0,NULL,20070512102759),
 ('322434','ILXIH50-S (12v)','\"ILXIH50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Satin Finish\"','3656.50','370.000',0,100,0,NULL,20070512102759),
 ('322435','ILXIH50-C (12v)','\"ILXIH50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Clear Finish\"','3876.50','370.000',0,100,0,NULL,20070512102759),
 ('322436','ILXIH50-B (12v)','\"ILXIH50 (12 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Bronze Finish\"','3935.00','370.000',0,100,0,NULL,20070512102759),
 ('322437','ILXIH50V-S (120v)','\"ILXIH50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Satin Finish\"','3327.30','370.000',0,100,0,NULL,20070512102759),
 ('322438','ILXIH50V-C (120v)','\"ILXIH50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Clear Finish\"','3547.30','370.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322439','ILXIH50V-B (120v)','\"ILXIH50 (120 v) 8\"\"revolving-360° 8\"\" base .188 wall -Contractor Series - Bronze Finish\"','3605.80','370.000',0,100,0,NULL,20070512102759),
 ('322440','ILXIH60-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot satin (12 volts)\"','4765.50','530.000',0,100,0,NULL,20070512102759),
 ('322441','ILXIH60-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot clear (12 volts)\"','5084.25','530.000',0,100,0,NULL,20070512102759),
 ('322442','ILXIH60-B (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot bronze (12 volts)\"','5166.00','530.000',0,100,0,NULL,20070512102759),
 ('322443','ILXIH60V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot satin (120 volts)\"','4423.10','530.000',0,100,0,NULL,20070512102759),
 ('322444','ILXIH60V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot clear (120 volts)\"','4741.85','530.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322445','ILXIH60V-B (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-60 foot bronze (120 volts)\"','4823.60','530.000',0,100,0,NULL,20070512102759),
 ('322446','ILXIH70-S (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot satin (12 volts)\"','6117.00','705.000',0,100,0,NULL,20070512102759),
 ('322447','ILXIH70-C (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot clear (12 volts)\"','6484.00','705.000',0,100,0,NULL,20070512102759),
 ('322448','ILXIH70-B (12v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot bronze (12 volts)\"','6589.00','705.000',0,100,0,NULL,20070512102759),
 ('322449','ILXIH70V-S (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot satin (120 volts)\"','5761.40','705.000',0,100,0,NULL,20070512102759),
 ('322450','ILXIH70V-C (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot clear (120 volts)\"','6128.40','705.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322451','ILXIH70V-B (120v)','\"GOLD SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving beacon-70 foot bronze (120 volts)\"','6233.40','705.000',0,100,0,NULL,20070512102759),
 ('322452','ILIHT206D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot satin (12 volts)-6\"\" base, .250 wall, winch\"','2435.60','99.000',0,100,0,NULL,20070512102759),
 ('322453','ILIHT206D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot clear (12 volts)-6\"\" base, .250 wall, winch\"','2556.80','99.000',0,100,0,NULL,20070512102759),
 ('322454','ILIHT206D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot bronze (12 volts)-6\"\" base, .250 wall, winch\"','2621.60','99.000',0,100,0,NULL,20070512102759),
 ('322455','ILIHT206DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot satin (110 volts)-6\"\" base, .250 wall, winch\"','2146.00','99.000',0,100,0,NULL,20070512102759),
 ('322456','ILIHT206DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot clear (110 volts)-6\"\" base, .250 wall, winch\"','2267.20','99.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322457','ILIHT206DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-20 foot bronze (110 volts)-6\"\" base, .250 wall, winch\"','2332.00','99.000',0,100,0,NULL,20070512102759),
 ('322458','ILIHT256D-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot satin (12 volts)-6\"\" base, .250 wall, winch\"','2578.40','156.000',0,100,0,NULL,20070512102759),
 ('322459','ILIHT256D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot clear (12 volts)-6\"\" base, .250 wall, winch\"','2697.20','156.000',0,100,0,NULL,20070512102759),
 ('322460','ILIHT256D-B (12v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot bronze (12 volts)-6\"\" base, .250 wall, winch\"','2736.80','156.000',0,100,0,NULL,20070512102759),
 ('322461','ILIHT256DV-S (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot satin (110 volts)-6\"\" base, .250 wall, winch\"','2288.80','156.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322462','ILIHT256DV-C (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot clear (110 volts)- 6\"\" base, .250 wall, winch\"','2407.60','156.000',0,100,0,NULL,20070512102759),
 ('322463','ILIHT256DV-B (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-25 foot bronze (110 volts)-6\"\" base, .250 wall, winch\"','2447.20','156.000',0,100,0,NULL,20070512102759),
 ('322464','ILIHT306D-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-30 foot satin (12 volts) - 6\"\" base, .250 wall, winch\"','2933.60','185.000',0,100,0,NULL,20070512102759),
 ('322465','ILIHT306D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving- 30 foot clear (12 volts) - 6\"\" base, .250 wall, winch\"','3113.60','185.000',0,100,0,NULL,20070512102759),
 ('322466','ILIHT306D-B (12v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-30 foot bronze (12 volts)-6\"\" base, .250 wall, winch\"','3215.60','185.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322467','ILIHT306DV-S (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving- 30 foot satin (110 volts)-6\"\" base, .250 wall, winch\"','2630.80','185.000',0,100,0,NULL,20070512102759),
 ('322468','ILIHT306DV-C (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving- 30 foot clear (110 volts)-6\"\" base, .250 wall, winch\"','2810.80','185.000',0,100,0,NULL,20070512102759),
 ('322469','ILIHT306DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 6.5\"\" revolving-30 foot bronze (110 volts)-6\"\" base, .250 wall, winch\"','2912.80','185.000',0,100,0,NULL,20070512102759),
 ('322470','ILIHT358D-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot satin (12 volts)- 8\"\" base, .250 wall, winch\"','3174.40','286.000',0,100,0,NULL,20070512102759),
 ('322471','ILIHT358D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot clear (12 volts)- 8\"\" base, .250 wall, winch\"','3458.80','286.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322472','ILIHT358D-B (12v)','\"TITANIUM SERIES -ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot bronze (12 volts)- 8\"\" base, .250 wall, winch\"','3565.60','286.000',0,100,0,NULL,20070512102759),
 ('322473','ILIHT358DV-S (110v)','\"TITANIUM SERIES -ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot satin (110 volts)- 8\"\" base, .250 wall, winch \"','2871.60','286.000',0,100,0,NULL,20070512102759),
 ('322474','ILIHT358DV-C (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot clear (110 volts)- 8\"\" base, .250 wall, winch\"','3156.00','286.000',0,100,0,NULL,20070512102759),
 ('322475','ILIHT358DV-B (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-35 foot bronze (110 volts)- 8\"\" base, .250 wall, winch\"','3262.80','286.000',0,100,0,NULL,20070512102759),
 ('322476','ILIHT408D-S (12v)','\"TITANIUM SERIES -ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot satin (12 volts)- 8\"\" base, .250 wall, winch\"','3398.80','303.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322477','ILIHT408D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot clear (12 volts)- 8\"\" base, .250 wall, winch\"','3712.00','303.000',0,100,0,NULL,20070512102759),
 ('322478','ILIHT408D-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot bronze (12 volts)- 8\"\" base, .250 wall, winch\"','3833.20','303.000',0,100,0,NULL,20070512102759),
 ('322479','ILIHT408DV-S (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot satin (110 volts)- 8\"\" base, .250 wall, winch\"','3082.80','303.000',0,100,0,NULL,20070512102759),
 ('322480','ILIHT408DV-C (110v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot clear (110 volts)- 8\"\" base, .250 wall, winch\"','3396.00','303.000',0,100,0,NULL,20070512102759),
 ('322481','ILIHT408DV-B (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 8\"\" revolving-40 foot bronze (110 volts)- 8\"\" base, .250 wall, winch\"','3517.20','303.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322482','ILIHT4510D-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot satin (12 volts)-10\"\" base, .250 wall, winch\"','4339.20','325.000',0,100,0,NULL,20070512102759),
 ('322483','ILIHT4510D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot clear (12 volts)-10\"\" base, .250 wall, winch\"','4723.20','325.000',0,100,0,NULL,20070512102759),
 ('322484','ILIHT4510D-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot bronze (12 volts)-10\"\" base, .250 wall, winch\"','4850.40','325.000',0,100,0,NULL,20070512102759),
 ('322485','ILIHT4510DV-S (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot satin (110 volts)-10\"\" base, .250 wall, winch\"','4023.20','325.000',0,100,0,NULL,20070512102759),
 ('322486','ILIHT4510DV-C (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot clear (110 volts)-10\"\" base, .250 wall, winch\"','4407.20','325.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322487','ILIHT4510DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-45 foot bronze (110 volts)-10\"\" base, .250 wall, winch\"','4534.40','325.000',0,100,0,NULL,20070512102759),
 ('322488','ILIHT5010D-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot satin (12 volts)-10\"\" base, .250 wall, winch\"','4933.20','447.000',0,100,0,NULL,20070512102759),
 ('322489','ILIHT5010D-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot clear (12 volts)-10\"\" base, .250 wall, winch\"','5510.40','447.000',0,100,0,NULL,20070512102759),
 ('322490','ILIHT5010D-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot bronze (12 volts)-10\"\" base, .250 wall, winch\"','5614.80','447.000',0,100,0,NULL,20070512102759),
 ('322491','ILIHT5010DV-S (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot satin (110 volts)-10\"\" base, .250 wall, winch\"','4604.00','447.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322492','ILIHT5010DV-C (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot clear (110 volts)-10\"\" base, .250 wall, winch\"','5181.20','447.000',0,100,0,NULL,20070512102759),
 ('322493','ILIHT5010DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-50 foot bronze (110 volts)-10\"\" base, .250 wall, winch\"','5285.60','447.000',0,100,0,NULL,20070512102759),
 ('322494','ILIHT6012E-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot satin (12 volts)-12\"\" base, .312 wall, winch\"','7419.60','764.000',0,100,0,NULL,20070512102759),
 ('322495','ILIHT6012E-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot clear (12 volts)-12\"\" base, .312 wall, winch\"','8163.60','764.000',0,100,0,NULL,20070512102759),
 ('322496','ILIHT6012E-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot bronze (12 volts)-12\"\" base, .312 wall, winch\"','8300.40','764.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322497','ILIHT6012EV-S (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot satin (110 volts)-12\"\" base, .312 wall, winch\"','7077.20','764.000',0,100,0,NULL,20070512102759),
 ('322498','ILIHT6012EV-C (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot clear (110 volts)-12\"\" base, .312 wall, winch\"','7821.20','764.000',0,100,0,NULL,20070512102759),
 ('322499','ILIHT6012EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-60 foot bronze (110 volts)-12\"\" base, .312 wall, winch\"','7958.00','764.000',0,100,0,NULL,20070512102759),
 ('322500','ILIHT7012E-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot satin (12 volts)-12\"\" base, .312 wall, winch\"','8080.80','940.000',0,100,0,NULL,20070512102759),
 ('322501','ILIHT7012E-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot clear (12 volts)-12\"\" base, .312 wall, winch\"','9038.40','940.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322502','ILIHT7012E-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot bronze (12 volts)-12\"\" base, .312 wall, winch\"','9195.60','940.000',0,100,0,NULL,20070512102759),
 ('322503','ILIHT7012EV-S (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot satin (110 volts)-12\"\" base, .312 wall, winch\"','7725.20','940.000',0,100,0,NULL,20070512102759),
 ('322504','ILIHT7012EV-C (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot clear (110 volts)-12\"\" base, .312 wall, winch\"','8682.80','940.000',0,100,0,NULL,20070512102759),
 ('322505','ILIHT7012EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-70 foot bronze (110 volts)-12\"\" base, .312 wall, winch\"','8840.00','940.000',0,100,0,NULL,20070512102759),
 ('322506','ILIHT7512E-S (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot satin (12 volts)-12\"\" base, .312 wall, winch\"','8554.80','1020.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322507','ILIHT7512E-C (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot clear (12 volts)-12\"\" base, .312 wall, winch\"','9282.00','1020.000',0,100,0,NULL,20070512102759),
 ('322508','ILIHT7512E-B (12v)','\"TITANIUM SERIES - ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot bronze (12 volts)-12\"\" base, .312 wall, winch\"','9523.20','1020.000',0,100,0,NULL,20070512102759),
 ('322509','ILIHT7512EV-S (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot satin (110 volts)-12\"\" base, .312 wall, winch\"','8199.20','1020.000',0,100,0,NULL,20070512102759),
 ('322510','ILIHT7512EV-C (110v)','\"TITANIUM SERIES- ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot clear (110 volts)-12\"\" base, .312 wall, winch\"','8926.40','1020.000',0,100,0,NULL,20070512102759),
 ('322511','ILIHT7512EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"internal\"\" flagpole w/ 10.5\"\" revolving-75 foot bronze (110 volts)-12\"\" base, .312 wall, winch\"','9167.60','1020.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322512','ILT205D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-20 foot satin (12 volts)-5\"\" base, .250 wall\"','1376.80','107.000',0,100,0,NULL,20070512102759),
 ('322513','ILT205D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot clear (12 volts)-5\"\" base, .250 wall\"','1487.20','107.000',0,100,0,NULL,20070512102759),
 ('322514','ILT205D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot bronze (12 volts)-5\"\" base, .250 wall\"','1524.40','107.000',0,100,0,NULL,20070512102759),
 ('322515','ILT205DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot satin (12 volts)-5\"\" base, .250 wall\"','1087.20','107.000',0,100,0,NULL,20070512102759),
 ('322516','ILT205DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot clear (12 volts)-5\"\" base, .250 wall\"','1197.60','107.000',0,100,0,NULL,20070512102759),
 ('322517','ILT205DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot bronze (12 volts)-5\"\" base, .250 wall\"','1234.80','107.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322518','ILT206D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot satin (12 volts)-6\"\" base, .250 wall\"','1496.80','99.000',0,100,0,NULL,20070512102759),
 ('322519','ILT206D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot clear (12 volts)-6\"\" base, .250 wall\"','1616.80','99.000',0,100,0,NULL,20070512102759),
 ('322520','ILT206D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot bronze (12 volts)-6\"\" base, .250 wall\"','1681.60','99.000',0,100,0,NULL,20070512102759),
 ('322521','ILT206DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot satin (110 volts)-6\"\" base, .250 wall\"','1207.20','99.000',0,100,0,NULL,20070512102759),
 ('322522','ILT206DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 20 foot clear (110 volts)-6\"\" base, .250 wall\"','1327.20','99.000',0,100,0,NULL,20070512102759),
 ('322523','ILT206DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-20 foot bronze (110 volts)-6\"\" base, .250 wall\"','1392.00','99.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322524','ILT256D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 25 foot satin (12 volts)-6\"\" base, .250 wall\"','1632.40','156.000',0,100,0,NULL,20070512102759),
 ('322525','ILT256D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 25 foot clear (12 volts)-6\"\" base, .250 wall\"','1751.20','156.000',0,100,0,NULL,20070512102759),
 ('322526','ILT256D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 25 foot bronze (12 volts)-6\"\" base, .250 wall\"','1792.00','156.000',0,100,0,NULL,20070512102759),
 ('322527','ILT256DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 25 foot satin (110 volts)-6\"\" base, .250 wall\"','1342.80','156.000',0,100,0,NULL,20070512102759),
 ('322528','ILT256DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 25 foot clear (110 volts)-6\"\" base, .250 wall\"','1461.60','156.000',0,100,0,NULL,20070512102759),
 ('322529','ILT256DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-25 foot bronze (110 volts)-6\"\" base, .250 wall\"','1502.40','156.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322530','ILT306D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 30 foot satin (12 volts)-6\"\" base, .250 wall\"','1990.00','185.000',0,100,0,NULL,20070512102759),
 ('322531','ILT306D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 30 foot clear (12 volts)-6\"\" base, .250 wall\"','2170.00','185.000',0,100,0,NULL,20070512102759),
 ('322532','ILT306D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 30 foot bronze (12 volts)-6\"\" base, .250 wall\"','2272.00','185.000',0,100,0,NULL,20070512102759),
 ('322533','ILT306DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 30 foot satin (110 volts)-6\"\" base, .250 wall\"','1687.20','185.000',0,100,0,NULL,20070512102759),
 ('322534','ILT306DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 30 foot clear (110 volts)-6\"\" base, .250 wall\"','1867.20','185.000',0,100,0,NULL,20070512102759),
 ('322535','ILT306DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-30 foot bronze (110 volts)-6\"\" base, .250 wall\"','1969.20','185.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322536','ILT358D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 35 foot satin (12 volts)-8\"\" base, .250 wall\"','2183.20','286.000',0,100,0,NULL,20070512102759),
 ('322537','ILT358D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 35 foot clear (12 volts)-8\"\" base, .250 wall\"','2467.60','286.000',0,100,0,NULL,20070512102759),
 ('322538','ILT358D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 35 foot bronze (12 volts)-8\"\" base, .250 wall\"','2574.40','286.000',0,100,0,NULL,20070512102759),
 ('322539','ILT358DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 35 foot satin (110 volts)-8\"\" base, .250 wall\"','1880.40','286.000',0,100,0,NULL,20070512102759),
 ('322540','ILT358DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving- 35 foot clear (110 volts)-8\"\" base, .250 wall\"','2164.80','286.000',0,100,0,NULL,20070512102759),
 ('322541','ILT358DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-35 foot bronze (110 volts)-8\"\" base, .250 wall\"','2271.60','286.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322542','ILT408D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot satin (12 volts)-8\"\" base, .250 wall\"','2402.80','303.000',0,100,0,NULL,20070512102759),
 ('322543','ILT408D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot clear (12 volts)-8\"\" base, .250 wall\"','2716.00','303.000',0,100,0,NULL,20070512102759),
 ('322544','ILT408D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot bronze (12 volts)-8\"\" base, .250 wall\"','2837.20','303.000',0,100,0,NULL,20070512102759),
 ('322545','ILT408DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot satin (110 volts)-8\"\" base, .250 wall\"','2086.80','303.000',0,100,0,NULL,20070512102759),
 ('322546','ILT408DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot clear (110 volts)-8\"\" base, .250 wall\"','2400.00','303.000',0,100,0,NULL,20070512102759),
 ('322547','ILT408DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving-40 foot bronze (110 volts)-8\"\" base, .250 wall\"','2521.20','303.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322548','ILT4510E-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot satin (12 volts)-10\"\" base, .312 wall\"','2823.60','325.000',0,100,0,NULL,20070512102759),
 ('322549','ILT4510E-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot clear (12 volts)-10\"\" base, .312 wall\"','3207.60','325.000',0,100,0,NULL,20070512102759),
 ('322550','ILT4510E-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot bronze (12 volts)-10\"\" base, .312 wall\"','3334.80','325.000',0,100,0,NULL,20070512102759),
 ('322551','ILT4510EV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot satin (110 volts)-10\"\" base, .312 wall\"','2507.60','325.000',0,100,0,NULL,20070512102759),
 ('322552','ILT4510EV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot clear (110 volts)-10\"\" base, .312 wall\"','2891.60','325.000',0,100,0,NULL,20070512102759),
 ('322553','ILT4510EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-45 foot bronze (110 volts)-10\"\" base, .312 wall\"','3018.80','325.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322554','ILT5010D-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot satin (12 volts)-10\"\" base, .250 wall\"','3415.20','447.000',0,100,0,NULL,20070512102759),
 ('322555','ILT5010D-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot clear (12 volts)-10\"\" base, .250 wall\"','3992.40','447.000',0,100,0,NULL,20070512102759),
 ('322556','ILT5010D-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot bronze (12 volts)-10\"\" base, .250 wall\"','4096.80','447.000',0,100,0,NULL,20070512102759),
 ('322557','ILT5010DV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot satin (110 volts)-10\"\" base, .250 wall\"','3086.00','447.000',0,100,0,NULL,20070512102759),
 ('322558','ILT5010DV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot clear (110 volts)-10\"\" base, .250 wall\"','3663.20','447.000',0,100,0,NULL,20070512102759),
 ('322559','ILT5010DV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 10\"\" revolving-50 foot bronze (110 volts)-10\"\" base, .250 wall\"','3767.60','447.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322560','ILT6012E-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot satin (12 volts)-12\"\" base, .312 wall\"','5947.60','764.000',0,100,0,NULL,20070512102759),
 ('322561','ILT6012E-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot clear (12 volts)-12\"\" base, .312 wall\"','6692.80','764.000',0,100,0,NULL,20070512102759),
 ('322562','ILT6012E-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot bronze (12 volts)-12\"\" base, .312 wall\"','6829.60','764.000',0,100,0,NULL,20070512102759),
 ('322563','ILT6012EV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot satin (110 volts)-12\"\" base, .312 wall\"','5605.20','764.000',0,100,0,NULL,20070512102759),
 ('322564','ILT6012EV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot clear (110 volts)-12\"\" base, .312 wall\"','6350.40','764.000',0,100,0,NULL,20070512102759),
 ('322565','ILT6012EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-60 foot bronze (110 volts)-12\"\" base, .312 wall\"','6487.20','764.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322566','ILT7012E-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot satin (12 volts)-12\"\" base, .312 wall\"','6605.20','940.000',0,100,0,NULL,20070512102759),
 ('322567','ILT7012E-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot clear (12 volts)-12\"\" base, .312 wall\"','7562.80','940.000',0,100,0,NULL,20070512102759),
 ('322568','ILT7012E-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot bronze (12 volts)-12\"\" base, .312 wall\"','7720.00','940.000',0,100,0,NULL,20070512102759),
 ('322569','ILT7012EV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot satin (110 volts)-12\"\" base, .312 wall\"','6249.60','940.000',0,100,0,NULL,20070512102759),
 ('322570','ILT7012EV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot clear (110 volts)-12\"\" base, .312 wall\"','7207.20','940.000',0,100,0,NULL,20070512102759),
 ('322571','ILT7012EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-70 foot bronze (110 volts)-12\"\" base, .312 wall\"','7364.40','940.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322572','ILT7512E-S (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot satin (12 volts)-12\"\" base, .312 wall\"','7078.00','1020.000',0,100,0,NULL,20070512102759),
 ('322573','ILT7512E-C (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot clear (12 volts)-12\"\" base, .312 wall\"','7805.20','1020.000',0,100,0,NULL,20070512102759),
 ('322574','ILT7512E-B (12v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot bronze (12 volts)-12\"\" base, .312 wall\"','8046.40','1020.000',0,100,0,NULL,20070512102759),
 ('322575','ILT7512EV-S (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot satin (110 volts)-12\"\" base, .312 wall\"','6722.40','1020.000',0,100,0,NULL,20070512102759),
 ('322576','ILT7512EV-C (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot clear (110 volts)-12\"\" base, .312 wall\"','7449.60','1020.000',0,100,0,NULL,20070512102759),
 ('322577','ILT7512EV-B (110v)','\"TITANIUM SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 12\"\" revolving-75 foot bronze (110 volts)-12\"\" base, .312 wall\"','7690.80','1020.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322578','ILS20-S (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot satin (12 volts)\"','855.00','65.000',0,100,0,NULL,20070512102759),
 ('322579','ILS20-C (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot clear (12 volts)\"','914.00','65.000',0,100,0,NULL,20070512102759),
 ('322580','ILS20-B (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot bronze (12 volts)\"','926.00','65.000',0,100,0,NULL,20070512102759),
 ('322581','ILS20V-S (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot satin (110 volts)\"','565.40','65.000',0,100,0,NULL,20070512102759),
 ('322582','ILS20V-C (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot clear (110 volts)\"','624.40','65.000',0,100,0,NULL,20070512102759),
 ('322583','ILS20V-B (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 20 foot bronze (110 volts)\"','636.40','65.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322584','ILS25-S (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot satin (12 volts)\"','897.00','70.000',0,100,0,NULL,20070512102759),
 ('322585','ILS25-C (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot clear (12 volts)\"','961.00','70.000',0,100,0,NULL,20070512102759),
 ('322586','ILS25-B (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot bronze (12 volts)\"','974.00','70.000',0,100,0,NULL,20070512102759),
 ('322587','ILS25V-S (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot satin (110 volts)\"','607.40','70.000',0,100,0,NULL,20070512102759),
 ('322588','ILS25V-C (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot clear (110 volts)\"','671.40','70.000',0,100,0,NULL,20070512102759),
 ('322589','ILS25V-B (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 25 foot bronze (110 volts)\"','684.40','70.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322590','ILS30-S (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot satin (12 volts)\"','955.00','114.000',0,100,0,NULL,20070512102759),
 ('322591','ILS30-C (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot clear (12 volts)\"','1033.00','114.000',0,100,0,NULL,20070512102759),
 ('322592','ILS30-B (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot bronze (12 volts)\"','1050.00','114.000',0,100,0,NULL,20070512102759),
 ('322593','ILS30V-S (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot satin (110 volts)\"','652.20','114.000',0,100,0,NULL,20070512102759),
 ('322594','ILS30V-C (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot clear (110 volts)\"','730.20','114.000',0,100,0,NULL,20070512102759),
 ('322595','ILS30V-B (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" stationary beacon- 30 foot bronze (110 volts)\"','747.20','114.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('322596','ILS35-S (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot satin (12 volts)\"','1299.00','160.000',0,100,0,NULL,20070512102759),
 ('322597','ILS35-C (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot clear (12 volts)\"','1405.00','160.000',0,100,0,NULL,20070512102759),
 ('322598','ILS35-B (12volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot bronze (12 volts)\"','1429.00','160.000',0,100,0,NULL,20070512102759),
 ('322599','ILS35V-S (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot satin (110 volts)\"','996.20','160.000',0,100,0,NULL,20070512102759),
 ('322600','ILS35V-C (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot clear (110 volts)\"','1102.20','160.000',0,100,0,NULL,20070512102759),
 ('322601','ILS35V-B (110volt)','\"SILVER SERIES-ILLUMINATOR \"\"external\"\" flagpole w/ 8\"\" revolving beacon- 35 foot bronze (110 volts)\"','1126.20','160.000',0,100,0,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323000','NyFab','Nylon 200 Denier flag fabric - White  price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323001','NyFab','Nylon 200 Denier flag fabric - Buff Pantone 1215U -  price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323002','NyFab','Nylon 200 Denier flag fabric - F.M. Yellow Pantone 102C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323003','NyFab','Nylon 200 Denier flag fabric - Spanish Yellow Pantone 1235C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323004','NyFab','Nylon 200 Denier flag fabric - Orange Pantone 021C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323005','NyFab','Nylon 200 Denier flag fabric - Canada Red Pantone 207C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323006','NyFab','Nylon 200 Denier flag fabric - O.G. Red Pantone 208C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323007','NyFab','Nylon 200 Denier flag fabric - Maroon Pantone 229U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323008','NyFab','Nylon 200 Denier flag fabric - U.N. Blue Pantone 2915U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323009','NyFab','Nylon 200 Denier flag fabric - French Blue Pantone 3005U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323010','NyFab','Nylon 200 Denier flag fabric - Royal Blue Pantone 3015U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323011','NyFab','Nylon 200 Denier flag fabric - O.G. Blue Pantone 289C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323012','NyFab','Nylon 200 Denier flag fabric - Purple Pantone 2755C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323013','NyFab','Nylon 200 Denier flag fabric - Mint Green Pantone 375C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323014','NyFab','Nylon 200 Denier flag fabric - Irish Green Pantone 354U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323015','NyFab','Nylon 200 Denier flag fabric - Emerald Green Pantone 3425C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323016','NyFab','Nylon 200 Denier flag fabric - Dartmouth Green Pantone 350C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323017','NyFab','Nylon 200 Denier flag fabric - Silver Pantone 442U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323018','NyFab','Nylon 200 Denier flag fabric - Charcoal Pantone 445U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323019','NyFab','Nylon 200 Denier flag fabric - Brown Pantone 4625U - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323020','NyFab','Nylon 200 Denier flag fabric - Black Pantone Black C - price per yard','13.40','0.300',2,100,1,NULL,20070512102759),
 ('323200','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Crocus Pantone 231C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323201','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Orchid Pantone 239C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323202','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Magenta Pantone 233C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323203','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Wineberry Pantone 234U - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323204','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Crimson Pantone 234C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323205','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Ruby Pantone 202U - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323206','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Salmon Pantone 178C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323207','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Warm Red Pantone 485C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323208','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Rust Pantone 180C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323209','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Mauve Pantone 250C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323210','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Lilac Pantone 272C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323211','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Lavender Pantone 527C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323212','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Deep Blue Pantone 287C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323213','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Peacock Pantone 294C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323214','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Aqua Pantone 3258U - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323215','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Parrot Blue Pantone 3262C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323216','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Turquoise Pantone 321U - price per yard','14.80','0.300',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323217','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Teal Pantone 3165C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323218','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Flesh Pantone726C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323219','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Peach Pantone 720C - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('323220','NyFabPrem','Nylon 200 Denier flag fabric Premium Colors - Sandlewood Pantone 470U - price per yard','14.80','0.300',2,100,1,NULL,20070512102759),
 ('700000','Mural','\"\"\"Bridge\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700001','Mural','\"\"\"Sunset\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700002','Mural','\"\"\"Fall Trees\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('700003','Mural','\"\"\"Mountains w/fog\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700004','Mural','\"\"\"Sailboats\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700005','Mural','\"\"\"Mountain Lake\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700006','Mural','\"\"\"Boats\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700007','Mural','\"\"\"Snow Capped Mountains\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700008','Mural','\"\"\"WaterFall\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700009','Mural','\"\"\"Mountain with lake\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700010','Mural','\"\"\"City at night\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('700011','Mural','\"\"\"Mountains\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700012','Mural','\"\"\"Mountain Stream\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('700013','Mural','\"\"\"Mountain Sunset\"\" wall mural 5\' x 3\'4\"\" digital print\"','70.00','4.000',1,100,1,NULL,20070512102759),
 ('050504','base','Plastic base for mini-flags 1 flag','1.00','0.020',2,100,1,NULL,20070512102759),
 ('050506','base','Plastic base for mini-flags 3 flags','1.00','0.020',2,100,1,NULL,20070512102759),
 ('700014','SmMural','\"\"\"Alaska Sunset\"\" Photo 16\"\" x 20\"\" High Gloss\"','19.95','1.000',1,100,1,NULL,20070512102759),
 ('700015','SmMural','\"\"\"Alaska Glacier\"\" Photo 16\"\" x 20\"\" High Gloss\"','19.95','1.000',1,100,1,NULL,20070512102759),
 ('700016','SmMural','\"\"\"Alaska Waterfall\"\" Photo 18\"\" x 24\"\" High Gloss\"','19.95','1.000',1,100,1,NULL,20070512102759),
 ('700017','SmMural','\"\"\"Alaska Mountain\"\" Photo 16\"\" x 20\"\" Photo High Gloss\"','19.95','1.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('770000','liteups','\"Ceiling Light \"\"Clouds\"\"  \"\"Lite-Up\"\"  2\' x 4\'  back lite \"','32.00','0.800',1,100,1,NULL,20070512102759),
 ('700018','LgMural','\"Large \"\"Sunset\"\" wall mural 10\' x 6\'  digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700019','LgMural','\"Large \"\"Mountains w/fog\"\" wall mural 10\' x 6\'  digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700020','LgMural','\"Large \"\"Sailboats\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700021','LgMural','\"Large \"\"Mountain Lake\"\" wall mural 10\' x 6\'  digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700022','LgMural','\"Large \"\"Boats\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700023','LgMural','\"Large \"\"Snow Capped Mtns\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700024','LgMural','\"Large \"\"Waterfall\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('700025','LgMural','\"Large \"\"City at night\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700026','LgMural','\"Large \"\"Mountain w/clouds\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700027','LgMural','\"Large \"\"Mountain Stream\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('700028','LgMural','\"Large \"\"Mountain Sunset\"\" wall mural 10\' x 6\' digital print\"','360.00','6.000',1,100,1,NULL,20070512102759),
 ('220000','StateLapelPin','Alabama - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220001','StateLapelPin','Alaska - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220002','StateLapelPin','Arizona - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220003','StateLapelPin','Arkansas - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220004','StateLapelPin','California - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220005','StateLapelPin','Colorado - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220006','StateLapelPin','Connecticut - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220007','StateLapelPin','Delaware - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220051','StateLapelPin','District of Columbia - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220008','StateLapelPin','Florida - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220617','StateLapelPin','Georgia - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220010','StateLapelPin','Hawaii - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220011','StateLapelPin','Idaho - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220012','StateLapelPin','Illinois - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220013','StateLapelPin','Indiana - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220014','StateLapelPin','Iowa - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220015','StateLapelPin','Kansas - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220016','StateLapelPin','Kentucky - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220017','StateLapelPin','Louisiana - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220018','StateLapelPin','Maine - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220019','StateLapelPin','Maryland - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220020','StateLapelPin','Massachusetts - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220021','StateLapelPin','Michigan - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220022','StateLapelPin','Minnesota - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220023','StateLapelPin','Mississippi - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220024','StateLapelPin','Missouri - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220025','StateLapelPin','Montana - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220026','StateLapelPin','Nebraska - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220027','StateLapelPin','Nevada - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220028','StateLapelPin','New Hampshire - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220029','StateLapelPin','New Jersey - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220030','StateLapelPin','New Mexico - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220031','StateLapelPin','New York - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220032','StateLapelPin','North Carolina - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220033','StateLapelPin','North Dakota - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220034','StateLapelPin','Ohio - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220035','StateLapelPin','Oklahoma - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220036','StateLapelPin','Oregon - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220037','StateLapelPin','Pennsylvania - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220038','StateLapelPin','Rhode Island - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220039','StateLapelPin','South Carolina - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220040','StateLapelPin','South Dakota - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220041','StateLapelPin','Tennessee - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220042','StateLapelPin','Texas - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220043','StateLapelPin','Utah - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220044','StateLapelPin','Vermont - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220045','StateLapelPin','Virginia - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220046','StateLapelPin','Washington - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220047','StateLapelPin','West Virginia - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220048','StateLapelPin','Wisconsin - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220049','StateLapelPin','Wyoming - State Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220050','TerritoryLapelPin','American Samoa - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220052','TerritoryLapelPin','Guam - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220054','TerritoryLapelPin','Puerto Rico - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220055','TerritoryLapelPin','Virgin Islands - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220056','StateLapelPinPack','All 50 U.S. State Lapel Pins in Pack','75.00','0.500',2,100,1,NULL,20070512102759),
 ('220064','CountryLapelPin','Argentina - Lapel Pin (w/ Seal)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220066','CountryLapelPin','Aruba - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220067','CountryLapelPin','Australia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220068','CountryLapelPin','Austria - Lapel Pin (w/ Eagle)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220069','CountryLapelPin','Austria - Lapel Pin (no Eagle)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220078','CountryLapelPin','Belgium - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220081','CountryLapelPin','Bermuda - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220083','CountryLapelPin','Bolivia - Lapel Pin (w/ Seal)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220086','CountryLapelPin','Brazil - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220094','CountryLapelPin','Canada - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220099','CountryLapelPin','Chile - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220100','CountryLapelPin','China - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220101','CountryLapelPin','Colombia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220108','CountryLapelPin','Croatia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220109','CountryLapelPin','Cuba - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220111','CountryLapelPin','Czech Rep.- Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220112','CountryLapelPin','Denmark - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220117','CountryLapelPin','Egypt - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220125','CountryLapelPin','Europe - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220127','CountryLapelPin','Finland - Lapel Pin (no Seal)','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220128','CountryLapelPin','France - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220132','CountryLapelPin','Germany - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220134','CountryLapelPin','Greece - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220148','CountryLapelPin','India - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220150','CountryLapelPin','Iran - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220152','CountryLapelPin','Ireland - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220153','CountryLapelPin','Israel - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220155','CountryLapelPin','Italy - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220156','CountryLapelPin','Jamaica - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220157','CountryLapelPin','Japan - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220163','CountryLapelPin','Korea (South) - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220185','CountryLapelPin','Mexico - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220191','CountryLapelPin','Morocco - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220197','CountryLapelPin','Netherlands - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220199','CountryLapelPin','New Zealand - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220202','CountryLapelPin','Nigeria - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220203','CountryLapelPin','Norway - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220208','CountryLapelPin','Panama - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220210','CountryLapelPin','Paraguay - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220214','CountryLapelPin','Poland - Lapel Pin (no Eagle)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220215','CountryLapelPin','Poland - Lapel Pin (w/ Eagle)','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220216','CountryLapelPin','Portugal - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220219','CountryLapelPin','Russian Fed. - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220226','CountryLapelPin','Saudi Arabia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220227','CountryLapelPin','Scotland - Lapel Pin (w/ Lion)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220228','CountryLapelPin','Scotland - Lapel Pin (w/ Cross)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220230','CountryLapelPin','Serbia & Montenegro - Lapel Pin (no Seal)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220235','CountryLapelPin','Slovakia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220236','CountryLapelPin','Slovenia - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220239','CountryLapelPin','South Africa - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220240','CountryLapelPin','Spain - Lapel Pin (w/ Seal)','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220245','CountryLapelPin','Sweden - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220246','CountryLapelPin','Switzerland - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220257','CountryLapelPin','Turkey - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220262','CountryLapelPin','Ukraine - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220264','CountryLapelPin','United Kingdom - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220272','CountryLapelPin','Venezuela - Lapel Pin (w/ Seal)','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220275','CountryLapelPin','Wales - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220280','CountryLapelPin','Zimbabwe - Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220286','Confed LapelPin','Confederate States Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220390','CountryLapelPin','Canada - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220420','CountryLapelPin','Europe - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220423','CountryLapelPin','France - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220427','CountryLapelPin','Germany - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220443','CountryLapelPin','India - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220449','CountryLapelPin','Italy - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220451','CountryLapelPin','Japan - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220533','CountryLapelPin','South Africa - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220558','CountryLapelPin','United Kingdom - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220560','CountryLapelPin','United States - Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220574','MilitaryLapelPin','Air Force Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('220575','MilitaryLapelPin','Army Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220576','MilitaryLapelPin','Coast Guard Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220577','MilitaryLapelPin','Marine Corp Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220578','MilitaryLapelPin','Navy Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('220579','MilitaryLapelPin','POW/MIA Double Lapel Pin','2.00','0.010',2,100,1,NULL,20070512102759),
 ('240001','FlagKeyRing',' Argentina - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240003','FlagKeyRing','Australia -Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240012','FlagKeyRing','Brazil - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240015','FlagKeyRing','Canada - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240018','FlagKeyRing','China - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('240023','FlagKeyRing','Cuba - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240039','FlagKeyRing','France - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240040','FlagKeyRing','Germany - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240041','FlagKeyRing','Greece - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240053','FlagKeyRing','Iraq - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240054','FlagKeyRing','Ireland - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240056','FlagKeyRing','Italy - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240057','FlagKeyRing','Jamica - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240058','FlagKeyRing','Japan - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240061','FlagKeyRing','South Korea - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240070','FlagKeyRing','Mexico - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('240076','FlagKeyRing','Nigeria - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240077','FlagKeyRing','Norway - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240083','FlagKeyRing','Phillipines - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240088','FlagKeyRing','Russia - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240091','FlagKeyRing','Saudi Arabia - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240099','FlagKeyRing','Spain - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240111','FlagKeyRing','United Kingdom - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('240115','FlagKeyRing','U.S.A. - Flag Key Ring','3.00','0.050',2,100,1,NULL,20070512102759),
 ('260000','StateCoffeeCup','\"State Coffee Cup  \"\"Alabama\"\"\"','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260001','StateCoffeeCup','\"State Coffe Cup \"\"Alaska\"\"\"','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260002','StateCoffeeCup','State Coffee Cup Arizona','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260003','StateCoffeeCup','State Coffee Cup Arkansas','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260004','StateCoffeeCup','State Coffee Cup California','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260005','StateCoffeeCup','State Coffee Cup Colorado','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260006','StateCoffeeCup','State Coffee Cup Connecticut','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260007','StateCoffeeCup','State Coffee Cup Delaware','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260008','StateCoffeeCup','State Coffee Cup Florida','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260192','StateCoffeeCup','State Coffee Cup Georgia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260010','StateCoffeeCup','State Coffee Cup Hawaii','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260011','StateCoffeeCup','State Coffee Cup Idaho','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260012','StateCoffeeCup','State Coffee Cup Illinois','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260013','StateCoffeeCup','State Coffee Cup Indiana','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260014','StateCoffeeCup','State Coffee Cup Iowa','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260015','StateCoffeeCup','State Coffee Cup Kansas','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260016','StateCoffeeCup','State Coffee Cup Kentucky','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260017','StateCoffeeCup','State Coffee Cup Louisiana','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260018','StateCoffeeCup','State Coffee Cup Maine','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260019','StateCoffeeCup','State Coffee Cup Maryland','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260020','StateCoffeeCup','State Coffee Cup Massachusetts','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260021','StateCoffeeCup','State Coffee Cup Michigan','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260022','StateCoffeeCup','State Coffee Cup Minnesota','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260023','StateCoffeeCup','State Coffee Cup Mississippi','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260024','StateCoffeeCup','State Coffee Cup Missouri','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260025','StateCoffeeCup','State Coffee Cup Montana','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260026','StateCoffeeCup','State Coffee Cup Nebraska','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260027','StateCoffeeCup','State Coffee Cup Nevada','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260028','StateCoffeeCup','State Coffee Cup New Hampshire','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260029','StateCoffeeCup','State Coffee Cup New Jersey','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260030','StateCoffeeCup','State Coffee Cup New Mexico','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260031','StateCoffeeCup','State Coffee Cup New York','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260032','StateCoffeeCup','State Coffee Cup North Carolina','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260033','StateCoffeeCup','State Coffee Cup North Dakota','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260034','StateCoffeeCup','State Coffee Cup Ohio','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260035','StateCoffeeCup','State Coffee Cup Oklahoma','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260036','StateCoffeeCup','State Coffee Cup Oregon','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260037','StateCoffeeCup','State Coffee Cup Pennsylvania','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260038','StateCoffeeCup','State Coffee Cup Rhode Island','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260039','StateCoffeeCup','State Coffee Cup South Carolina','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260040','StateCoffeeCup','State Coffee Cup South Dakota','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260041','StateCoffeeCup','State Coffee Cup Tennessee','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260042','StateCoffeeCup','State Coffee Cup Texas','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260043','StateCoffeeCup','State Coffee Cup Utah','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260044','StateCoffeeCup','State Coffee Cup Vermont','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260045','StateCoffeeCup','State Coffee Cup Virginia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260046','StateCoffeeCup','State Coffee Cup Washington','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260047','StateCoffeeCup','State Coffee Cup West Virginia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260048','StateCoffeeCup','State Coffee Cup Wisconsin','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260049','StateCoffeeCup','State Coffee Cup Wyoming','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260050','StateCoffeeCup','State Coffee Cup Puerto Rico','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260054','WorldCoffeeCup','World Coffee Cup - Argentina (w/ Seal)','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260056','WorldCoffeeCup','World Coffee Cup - Australia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260057','WorldCoffeeCup','World Coffee Cup - Austria (w/ Eagle)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260059','WorldCoffeeCup','World Coffee Cup - Belgium','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260060','WorldCoffeeCup','World Coffee Cup - Bolivia w/ Seal','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260061','WorldCoffeeCup','World Coffee Cup - Brazil','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260063','WorldCoffeeCup','World Coffee Cup - Canada','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260064','WorldCoffeeCup','World Coffee Cup - Chile','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260065','WorldCoffeeCup','World Coffee Cup - China','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260066','WorldCoffeeCup','World Coffee Cup - Colombia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260069','WorldCoffeeCup','World Coffee Cup - Croatia','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260070','WorldCoffeeCup','World Coffee Cup - Cuba','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260071','WorldCoffeeCup','World Coffee Cup - Czech Republic','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260072','WorldCoffeeCup','World Coffee Cup - Denmark','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260075','WorldCoffeeCup','World Coffee Cup - Egypt','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260078','WorldCoffeeCup','World Coffee Cup - Europe','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260079','WorldCoffeeCup','World Coffee Cup - Finland','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260080','WorldCoffeeCup','World Coffee Cup - France','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260081','WorldCoffeeCup','World Coffee Cup - Germany','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260082','WorldCoffeeCup','World Coffee Cup - Greece','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260088','WorldCoffeeCup','World Coffee Cup - India','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260193','WorldCoffeeCup','World Coffee Cup - Iran','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260091','WorldCoffeeCup','World Coffee Cup - Ireland','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260092','WorldCoffeeCup','World Coffee Cup - Israel','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260093','WorldCoffeeCup','World Coffee Cup - Italy','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260094','WorldCoffeeCup','World Coffee Cup - Jamaica','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260095','WorldCoffeeCup','World Coffee Cup - Japan','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260098','WorldCoffeeCup','World Coffee Cup - Korea (South)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260102','WorldCoffeeCup','World Coffee Cup - Mexico','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260104','WorldCoffeeCup','World Coffee Cup - Netherlands','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260105','WorldCoffeeCup','World Coffee Cup - New Zealand','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260107','WorldCoffeeCup','World Coffee Cup - Norway','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260110','WorldCoffeeCup','World Coffee Cup - Panama','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260111','WorldCoffeeCup','World Coffee Cup - Paraguay','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260114','WorldCoffeeCup','World Coffee Cup - Poland (w/ Eagle)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260115','WorldCoffeeCup','World Coffee Cup - Portugal','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260117','WorldCoffeeCup','World Coffee Cup - Russian Fed.','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260118','WorldCoffeeCup','World Coffee Cup - Saudi Arabia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260120','WorldCoffeeCup','World Coffee Cup - Scotland (w/ Cross)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260119','WorldCoffeeCup','World Coffee Cup - Scotland (w/ Lion)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260121','WorldCoffeeCup','World Coffee Cup - Serbia (w/ Seal)','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260123','WorldCoffeeCup','World Coffee Cup - Slovakia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260124','WorldCoffeeCup','World Coffee Cup - Slovenia','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260125','WorldCoffeeCup','World Coffee Cup - South Africa','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260126','WorldCoffeeCup','World Coffee Cup - Spain (w/ Seal)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260127','WorldCoffeeCup','World Coffee Cup - Sweden','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260128','WorldCoffeeCup','World Coffee Cup - Switzerland','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260132','WorldCoffeeCup','World Coffee Cup - Turkey','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260133','WorldCoffeeCup','World Coffee Cup - Ukraine','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260134','WorldCoffeeCup','World Coffee Cup - United Kingdom','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260136','WorldCoffeeCup','World Coffee Cup - United States','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260138','WorldCoffeeCup','World Coffee Cup - Venezuela (w/ Seal)','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260140','WorldCoffeeCup','World Coffee Cup - Wales','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260142','MilitaryCoffeeCup','Military Coffee Cup - Air Force','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260143','MilitaryCoffeeCup','Military Coffee Cup - Army','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260144','MilitaryCoffeeCup','Military Coffee Cup - Coast Guard','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260145','MilitaryCoffeeCup','Military Coffee Cup - Marine Corp','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260146','MilitaryCoffeeCup','Military Coffee Cup - Navy','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260147','MilitaryCoffeeCup','Military Coffee Cup - POW/MIA','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260149','ConfedCoffeeCup','Confederate  Coffee Cup','8.00','0.500',2,100,1,NULL,20070512102759),
 ('260141','MultiCounrtyCup','\"Multi-Country Coffee Cup - U.S., France, Canada, Austrialia, Spain, Ireland, Italy, Russia\"','8.00','0.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260153','FlagNotePads','Flag Note Pads - Australia','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260154','FlagNotePads','Flag Note Pads - Belgium','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260155','FlagNotePads','Flag Note Pads - Canada','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260156','FlagNotePads','Flag Note Pads - Croatia','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260157','FlagNotePads','Flag Note Pads - Denmark','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260158','FlagNotePads','Flag Note Pads - Finland','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260159','FlagNotePads','Flag Note Pads - France','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260160','FlagNotePads','Flag Note Pads - Germany','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260161','FlagNotePads','Flag Note Pads - Greece','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260162','FlagNotePads','Flag Note Pads - Ireland','5.95','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260163','FlagNotePads','Flag Note Pads - Israel','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260164','FlagNotePads','Flag Note Pads - Italy','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260165','FlagNotePads','Flag Note Pads - Japan','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260166','FlagNotePads','Flag Note Pads - Mexico','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260167','FlagNotePads','Flag Note Pads - Norway','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260168','FlagNotePads','Flag Note Pads - Poland (no Eagle)','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260169','FlagNotePads','Flag Note Pads - Poland (w/ Eagle)','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260170','FlagNotePads','Flag Note Pads - Russian Fed.','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260171','FlagNotePads','Flag Note Pads - Scotland (w/ Cross)','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260172','FlagNotePads','Flag Note Pads - Scotland (w/ Lion)','5.95','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260173','FlagNotePads','Flag Note Pads - Spain (no Seal)','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260174','FlagNotePads','Flag Note Pads - Sweden','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260175','FlagNotePads','Flag Note Pads - United Kingdom','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260177','FlagNotePads','Flag Note Pads - United States','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260178','FlagNotePads','Flag Note Pads - Wales','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260179','MilitaryNotePads','Military Note Pads - Air Force','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260180','MilitaryNotePads','Military Note Pads - Army','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260181','MilitaryNotePads','Military Note Pads - Coast Guard','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260182','MilitaryNotePads','Military Note Pads - Marine Corps','5.95','0.250',2,100,1,NULL,20070512102759),
 ('260183','MilitaryNotePads','Military Note Pads - Navy','5.95','0.250',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('260184','MilitaryNotePads','Military Note Pads - POW/MIA','5.95','0.250',2,100,1,NULL,20070512102759),
 ('220607','PinDisplay','Lapel pin display','8.00','0.500',2,100,1,NULL,20070512102759),
 ('210077','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Alabama','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210078','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Alaska','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210079','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Arizona','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210080','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Arkansas','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210081','StateToothPickFlag','State Tooth Pick Flags Box of 100 - California','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210082','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Colorado','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210083','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Connecticut','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210084','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Delaware','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210085','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Florida','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210086','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Georgia (1956 Design)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210087','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Hawaii','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210088','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Idaho','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210089','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Illinois','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210090','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Indiana','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210091','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Iowa','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210092','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Kansas','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210093','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Kentucky','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210094','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Louisiana','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210095','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Maine','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210096','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Maryland','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210097','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Massachusetts','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210098','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Michigan','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210099','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Minnesota','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210100','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Mississippi','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210101','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Missouri','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210102','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Montana','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210103','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Nebraska','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210104','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Nevada','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210105','StateToothPickFlag','State Tooth Pick Flags Box of 100 - New Hampshire','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210106','StateToothPickFlag','State Tooth Pick Flags Box of 100 - New Jersey','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210107','StateToothPickFlag','State Tooth Pick Flags Box of 100 - New Mexico','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210108','StateToothPickFlag','State Tooth Pick Flags Box of 100 - New York','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210109','StateToothPickFlag','State Tooth Pick Flags Box of 100 - North Carolina','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210110','StateToothPickFlag','State Tooth Pick Flags Box of 100 - North Dakota','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210111','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Ohio','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210112','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Oklahoma','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210113','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Oregon','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210114','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Pennsylvania','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210115','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Rhode Island','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210116','StateToothPickFlag','State Tooth Pick Flags Box of 100 - South Carolina','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210117','StateToothPickFlag','State Tooth Pick Flags Box of 100 - South Dakota','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210118','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Tennessee','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210119','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Texas','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210120','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Utah','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210121','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Vermont','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210122','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Virginia','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210123','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Washington','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210124','StateToothPickFlag','State Tooth Pick Flags Box of 100 - West Virginia','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210125','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Wisconsin','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210126','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Wyoming','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210127','StateToothPickFlag','State Tooth Pick Flags Box of 100 - Puerto Rico','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210128','StateToothPickFlag','State Tooth Pick Flags Combo Box - 1 of each State  - 50 flags total','20.00','0.750',2,100,1,NULL,20070512102759),
 ('210129','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Australia','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210130','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Austria (no Eagle)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210132','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Belgium','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210133','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Brazil','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210134','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Canada','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210135','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - China','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210136','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Columbia','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210137','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Croatia','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210138','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Denmark','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210139','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Finland (no Seal)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210140','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - France','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210141','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Germany','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210142','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Greece','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210143','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Ireland','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210144','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Israel','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210145','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Italy','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210146','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Japan','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210147','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Korea (South)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210149','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Mexico','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210150','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Netherlands','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210151','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Norway','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210152','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Poland (w/ Eagle)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210153','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Russian Fed.','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210154','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Scotland (w/ Lion)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210155','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Scotland (w/ Cross)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210156','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - South Africa','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210157','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Spain (no Seal)','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210158','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Sweden','4.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210159','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - Switzerland','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210160','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - United Kingdom','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210161','WorldToothPickFlag','World Tooth Pick Flags Box of 100 - United States','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210162','ConfedToothPickFlag','Confederate Battle Flag Tooth Pick Flag Box of 100','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210163','MilitaryToothPickFlag','Military Tooth Pick Flags Box of 100 - Marine Corps','4.00','0.750',2,100,1,NULL,20070512102759),
 ('210164','Combo Toothpick flag','\"Combo Toothpick Flag pack - 10 each of U.S.,Can,Mex,Ital,France,Germ,U.K.,Norway,Fin,Gre\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210165','UN Toothpick pack','UN Toothpick Flag pack - 1 each of UN member countries','25.00','1.500',2,100,1,NULL,20070512102759),
 ('210500','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Alabama','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210501','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Alaska','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210502','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Arizona','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210503','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Arkansas','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210504','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - California','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210505','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Colorado','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210506','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Connecticut','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210507','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Delaware','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210508','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Florida','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210509','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Georgia (1956 Design)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210510','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Hawaii','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210511','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Idaho','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210512','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Illinois','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210513','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Indiana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210514','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Iowa','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210515','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Kansas','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210516','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Kentucky','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210517','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Louisiana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210518','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Maine','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210519','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Maryland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210520','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Massachusetts','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210521','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Michigan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210522','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Minnesota','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210523','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Mississippi','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210524','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Missouri','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210525','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Montana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210526','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Nebraska','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210527','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Nevada','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210528','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - New Hampshire','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210529','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - New Jersey','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210530','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - New Mexico','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210531','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - New York','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210532','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - North Carolina','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210533','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - North Dakota','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210534','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Ohio','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210535','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Oklahoma','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210536','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Oregon','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210537','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Pennsylvania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210538','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Rhode Island','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210539','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - South Carolina','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210540','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - South Dakota','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210541','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Tennessee','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210542','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Texas','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210543','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Utah','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210544','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Vermont','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210545','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Virginia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210546','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Washington','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210547','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - West Virginia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210548','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Wisconsin','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210549','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Wyoming','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210550','StateToothPickFlag','Jumbo State Tooth Pick Flags Box of 12 - Puerto Rico','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210551','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Australia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210552','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Austria (no Eagle)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210553','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Belgium','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210554','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Brazil','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210555','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Canada','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210556','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - China','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210557','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Columbia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210558','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Croatia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210559','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Denmark','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210560','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Finland (no Seal)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210561','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - France','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210562','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Germany','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210563','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Greece','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210564','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Ireland','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210565','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Israel','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210566','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Italy','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210567','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Japan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210568','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Korea (South)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210569','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Mexico','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210570','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Netherlands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210571','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Norway','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210572','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Poland (w/ Eagle)','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210573','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Russian Fed.','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210574','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Scotland (w/ Lion)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210575','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Scotland (w/ Cross)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210576','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - South Africa','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210577','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Spain (no Seal)','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210578','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Sweden','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210579','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - Switzerland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210580','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - United Kingdom','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210581','WorldToothPickFlag','Jumbo World Tooth Pick Flags Box of 12 - United States','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210582','MilitaryToothPickFlag','Jumbo Military Tooth Pick Flags Box of 12 - Marine Corps','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210583','ConfedToothPickFlag','Jumbo Confederate Battle Flag Tooth Pick Flag Box of 12','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210584','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Afghanistan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210585','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Albania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210586','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Algeria','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210587','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - American Samoa','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210588','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Andorra','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210589','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Angola','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210590','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Argentina','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210591','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Armenia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210592','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Aruba','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210593','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Azerbaijan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210594','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bahamas','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210595','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bahrain','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210596','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bangladesh','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210597','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Barbados','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210598','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Belarus','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210599','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Belize','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210600','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Benin','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210601','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bosnia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210602','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Botswana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210603','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - British Virgin Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210604','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Brunei','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210605','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bulgaria','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210606','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Burkina Faso','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210607','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Burundi','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210608','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cambodia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210609','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Canary Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210610','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Caymen Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210611','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Chad','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210612','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Chile','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210613','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cocos Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210614','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cook Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210615','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Costa Rica','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210616','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cote D\'Ivoire','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210617','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Crimea','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210618','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cuba','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210619','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Cyprus','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210620','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Czech Republic','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210621','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Djibouti','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210622','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Dominica','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210623','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Dominican Republic','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210624','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Ecuador','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210625','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Egypt','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210626','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - El Salvador','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210627','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - England','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210628','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Equatorial Guinea','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210629','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Estonia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210630','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Ethiopia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210631','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bermuda','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210632','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Bolivia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210633','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Falkland Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210634','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Fiji','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210635','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - French Guiana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210636','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - French Polynesia','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210637','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Gambia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210638','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Georgia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210639','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Ghana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210640','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Gibraltar','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210641','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Greenland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210642','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Grenada','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210643','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Guadeloupe','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210644','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Guam','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210645','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Guatemala','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210646','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Guinea','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210647','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Guyana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210648','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Haiti','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210649','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Honduras','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210650','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Hong Kong','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210651','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Hungary','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210652','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Iceland','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210653','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - India','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210654','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Indonesia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210655','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Iran','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210656','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Iraq','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210657','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Jamaica','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210658','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Jammu & Kashmir','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210659','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Jordan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210660','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Kazakhstan','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210661','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Kenya','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210662','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - North Korea','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210663','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Kuwait','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210664','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Laos','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210665','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Lebanon','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210666','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Lesotho','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210667','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Liberia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210668','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Libya','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210669','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Lithuania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210670','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Luxembourg','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210671','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Macedonia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210672','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Madagascar','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210673','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Malawi','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210674','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Malaysia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210675','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Mali','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210676','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Marshall Islands','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210677','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Mauritania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210678','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Mauritius','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210679','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Micronesia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210680','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Midway Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210681','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Moldova','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210682','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Mongolia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210683','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Montserrat','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210684','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Morocco','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210685','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Mozambique','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210686','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Myanmar','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210687','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Namibia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210688','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Nepal','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210689','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Netherlands Antilles','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210690','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Netherlands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210691','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - New Zealand','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210692','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Nicaraqua','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210693','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Niger','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210694','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Nigeria','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210695','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Norfolk Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210696','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Northern Cyprus','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210697','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Northern Ireland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210698','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Northern Marianas','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210699','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Oman','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210700','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Pakistan','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210701','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Palestine','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210702','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Panama','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210703','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Papau New Guinea','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210704','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Paraguay','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210705','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Peru','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210706','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Philippines','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210707','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Portugal','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210708','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Qatar','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210709','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Romania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210710','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Rwanda','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210711','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Samoa','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210712','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - San Marino','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210713','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Saudi Arabia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210714','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Serbia & Montenegro','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210715','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Seychelles','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210716','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Shetland Islands','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210717','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Sierra Leone','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210718','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Singapore','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210719','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Slovak Republic','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210720','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Slovenia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210721','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Soloman Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210722','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Somalia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210723','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Sri Lanka','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210724','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - St. Christopher','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210725','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - St. Helena','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210726','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - St. Lucia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210727','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Sudan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210728','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Surinam','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210729','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Swaziland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210730','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Syria','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210731','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Tahiti','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210732','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Taiwan','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210733','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Tajikistan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210734','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Tanzania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210735','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Thailand','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210736','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Trinidad & Tobago','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210737','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Tunisia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210738','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Turkey','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210739','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Turkmenistan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210740','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Tuvalu','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210741','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Uganda','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210742','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Ukraine','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210743','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - United Arab Emirates','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210744','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Uruguay','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210745','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - US Virgin Islands','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210746','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Uzbekistan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210747','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Vanuatu','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210748','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Venezuela','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210749','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Vietnam','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210750','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Wake Island','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210751','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Wales','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210752','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Western Sahara','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210753','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Yemen','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210754','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Zambia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210755','WorldToothPickFlag','MADE IN USA World Tooth Pick Flags Box of 100 - Zimbabwe','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210756','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Afghanistan','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210757','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Albania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210758','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Algeria','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210759','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - American Samoa','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210760','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Andorra','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210761','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Angola','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210762','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Argentina','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210763','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Armenia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210764','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Aruba','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210765','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Azerbaijan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210766','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bahamas','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210767','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bahrain','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210768','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bangladesh','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210769','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Barbados','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210770','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Belarus','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210771','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Belize','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210772','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bermuda','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210773','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bolivia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210774','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Benin','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210775','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bosnia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210776','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Botswana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210777','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - British Virgin Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210778','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Brunei','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210779','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Bulgaria','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210780','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Burkina Faso','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210781','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Burundi','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210782','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cambodia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210783','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Canary Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210784','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Caymen Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210785','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Chad','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210786','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Chile','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210787','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cocos Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210788','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cook Islands','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210789','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Costa Rica','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210790','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cote D\'Ivoire','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210791','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Crimea','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210792','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cuba','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210793','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Cyprus','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210794','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Czech Republic','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210795','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Djibouti','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210796','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Dominica','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210797','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Dominican Republic','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210798','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Ecuador','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210799','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Egypt','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210800','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - El Salvador','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210801','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - England','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210802','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Equatorial Guinea','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210803','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Estonia','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210804','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Ethiopia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210805','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Falkland Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210806','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Fiji','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210807','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - French Guiana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210808','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - French Polynesia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210809','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Gambia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210810','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Georgia','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210811','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Ghana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210812','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Gibraltar','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210813','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Greenland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210814','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Grenada','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210815','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Guadeloupe','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210816','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Guam','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210817','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Guatemala','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210818','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Guinea','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210819','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Guyana','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210820','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Haiti','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210821','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Honduras','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210822','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Hong Kong','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210823','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Hungary','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210824','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Iceland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210825','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - India','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210826','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Indonesia','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210827','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Iran','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210828','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Iraq','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210829','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Jamaica','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210830','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Jammu & Kashmir','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210831','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Jordan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210832','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Kazakhstan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210833','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Kenya','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210834','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - North Korea','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210835','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Kuwait','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210836','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Laos','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210837','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Lebanon','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210838','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Lesotho','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210839','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Liberia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210840','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Libya','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210841','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Lithuania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210842','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Luxembourg','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210843','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Macedonia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210844','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Madagascar','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210845','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Malawi','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210846','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Malaysia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210847','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Mali','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210848','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Marshall Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210849','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Mauritania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210850','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Mauritius','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210851','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Micronesia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210852','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Midway Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210853','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Moldova','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210854','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Mongolia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210855','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Montserrat','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210856','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Morocco','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210857','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Mozambique','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210858','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Myanmar','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210859','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Namibia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210860','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Nepal','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210861','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Netherlands Antilles','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210862','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Netherlands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210863','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - New Zealand','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210864','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Nicaragua','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210865','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Niger','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210866','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Nigeria','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210867','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Norfolk Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210868','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Northern Cyprus','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210869','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Northern Ireland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210870','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Northern Marianas','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210871','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Oman','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210872','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Pakistan','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210873','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Palestine','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210874','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Panama','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210875','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Papau New Guinea','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210876','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Paraguay','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210877','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Peru','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210878','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Philippines','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210879','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Portugal','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210880','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Qatar','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210881','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Romania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210882','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Rwanda','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210883','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Samoa','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210884','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - San Marino','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210885','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Saudi Arabia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210886','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Serbia & Montenegro','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210887','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Seychelles','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210888','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Shetland Islands','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210889','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Sierra Leone','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210890','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Singapore','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210891','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Slovak Republic','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210892','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Slovenia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210893','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Solomon Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210894','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Somalia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210895','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Sri Lanka','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210896','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - St. Christopher','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210897','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - St. Helena','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210898','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - St. Lucia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210899','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Sudan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210900','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Surinam','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210901','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Swaziland','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210902','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Syria','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210903','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Tahiti','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210904','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Taiwan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210905','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Tajikistan','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210906','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Tanzania','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210907','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Thailand','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210908','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Trinidad & Tobago','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210909','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Tunisia','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210910','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Turkey','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210911','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Turkmenistan','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210912','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Tuvalu','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210913','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Uganda','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210914','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Ukraine','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210915','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - United Arab Emirates','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210916','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Uruguay','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210917','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - US Virgin Islands','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210918','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Uzbekistan','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210919','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Vanuatu','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210920','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Venezuela','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210921','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Vietnam','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210922','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Wake Island','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210923','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Wales','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210924','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Western Sahara','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210925','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Yemen','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210926','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Zambia','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210927','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Zimbabwe','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210928','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Australia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210929','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Austria','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210930','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Belgium','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210931','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Brazil','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210932','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Canada','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210933','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - China','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210934','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Columbia','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210935','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Croatia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210936','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Denmark','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210937','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Finland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210938','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - France','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210939','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Germany','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210940','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Greece','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210941','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Ireland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210942','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Israel','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210943','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Italy','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210944','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Japan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210945','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - South Korea','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210946','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Mexico','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210947','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Norway','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210948','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Puerto Rico','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210949','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Poland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210950','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Russian Federation','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210951','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Scotland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210952','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - South Africa','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210953','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Spain','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210954','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Sweden','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210955','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Switzerland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210956','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - United Kingdom','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210957','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - United States','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210958','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Alabama','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210959','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Alaska','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210960','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Arizona','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210961','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Arkansas','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210962','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - California','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210963','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Colorado','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210964','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Connecticut','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210965','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Delaware','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210966','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Florida','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210967','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Georgia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210968','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Hawaii','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210969','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Idaho','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210970','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Illinois','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210971','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Indiana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210972','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Iowa','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210973','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Kansas','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210974','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Kentucky','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210975','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Louisiana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210976','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Maine','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210977','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Maryland','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210978','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Massachusetts','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210979','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Michigan','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210980','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Minnesota','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210981','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Mississippi','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210982','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Missouri','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210983','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Montana','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210984','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Nebraska','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210985','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Nevada','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210986','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - New Hampshire','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210987','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - New Jersey','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210988','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - New Mexico','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210989','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - New York','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210990','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - North Carolina','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210991','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - North Dakota','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210992','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Ohio','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210993','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Oklahoma','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210994','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Oregon','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210995','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Pennsylvania','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210996','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Rhode Island','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210997','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - South Carolina','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210998','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - South Dakota','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210999','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Tennessee','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211000','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Texas','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('211001','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Utah','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211002','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Vermont','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211003','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Virginia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211004','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Washington','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211005','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - West Virginia','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211006','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Wisconsin','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211007','StateToothPickFlag','MADE IN USA Standard State Tooth Pick Flags Box of 100 - Wyoming','8.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('211012','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Antiqua & Barbuda','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211008','Military Toothpick Flag','MADE IN USA Standard Military Tooth Pick Flags Box of 100 - Marine Corps','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211009','ConfedToothPickFlag','MADE IN USA Standard Confederate Battle Flag Tooth Pick Flag Box of 100','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211010','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - South Vietnam','8.00','0.750',2,100,1,NULL,20070512102759),
 ('211011','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - South Vietnam','12.00','1.000',2,100,1,NULL,20070512102759),
 ('210200','Stock Toothpick','\"Stock ToothPick Flags - \"\"The Big 50\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210201','Stock Toothpick','\"Stock ToothPick Flags - \"\"Democratic Party Symbol\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210202','Stock Toothpick','\"Stock ToothPick Flags - \"\"Republican Party Symbol\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210203','Stock Toothpick','\"Stock ToothPick Flags - \"\"Get Well Soon\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210204','Stock Toothpick','\"Stock ToothPick Flags - \"\"BirthDay Cake\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210205','Stock Toothpick','\"Stock ToothPick Flags - \"\"It\'s a Boy\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210206','Stock Toothpick','\"Stock ToothPick Flags - \"\"It\'s a Girl\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210207','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Valentines Day\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210208','Stock Toothpick','\"Stock ToothPick Flags - \"\"Smiley Face\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210209','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Mothers Day\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210210','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Easter\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210211','Stock Toothpick','\"Stock ToothPick Flags - \"\"Good Luck\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210212','Stock Toothpick','\"Stock ToothPick Flags - \"\"God Bless America\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210213','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Halloween\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210214','Stock Toothpick','\"Stock ToothPick Flags - \"\"St. Patricks Day\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210215','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy 4th\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210216','Stock Toothpick','\"Stock ToothPick Flags - \"\"Congratulations\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210217','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Anniversary\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210218','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Hanukkah\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210219','Stock Toothpick','\"Stock ToothPick Flags - \"\"25th Anniversary\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210220','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Thanksgiving\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210221','Stock Toothpick','\"Stock ToothPick Flags - \"\"50th Anniversary\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210222','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Father\'s Day\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210223','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy New Year\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210224','Stock Toothpick','\"Stock ToothPick Flags - \"\"Merry Christmas\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210225','Stock Toothpick','\"Stock ToothPick Flags - \"\"Merry Christmas\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210226','Stock Toothpick','\"Stock ToothPick Flags - \"\"Oktoberfest\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210227','Stock Toothpick','\"Stock ToothPick Flags - \"\"Veterans Day\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210228','Stock Toothpick','\"Stock ToothPick Flags - \"\"Support Candidates\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210229','Stock Toothpick','\"Stock ToothPick Flags - \"\"Vote\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210230','Stock Toothpick','\"Stock ToothPick Flags - \"\"$$$\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210231','Stock Toothpick','\"Stock ToothPick Flags - \"\"Celebration\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210232','Stock Toothpick','\"Stock ToothPick Flags - \"\"Cheers\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210233','Stock Toothpick','\"Stock ToothPick Flags - \"\"Grand Opening\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210234','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Hour\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210235','Stock Toothpick','\"Stock ToothPick Flags - \"\"Just Beginning\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210236','Stock Toothpick','\"Stock ToothPick Flags - \"\"Live it up\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210237','Stock Toothpick','\"Stock ToothPick Flags - \"\"Party Time\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210238','Stock Toothpick','\"Stock ToothPick Flags - \"\"Vacation Time\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210239','Stock Toothpick','\"Stock ToothPick Flags - \"\"Way to Go\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210240','Stock Toothpick','\"Stock ToothPick Flags - \"\"We\'re Moving\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210241','Stock Toothpick','\"Stock ToothPick Flags - \"\"25th\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210242','Stock Toothpick','\"Stock ToothPick Flags - \"\"50th\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210243','Stock Toothpick','\"Stock ToothPick Flags - \"\"Cards\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210244','Stock Toothpick','\"Stock ToothPick Flags - \"\"Catering\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210245','Stock Toothpick','\"Stock ToothPick Flags - \"\"Cookout\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210246','Stock Toothpick','\"Stock ToothPick Flags - \"\"Cross/Heart\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210247','Stock Toothpick','\"Stock ToothPick Flags - \"\"Fish\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210248','Stock Toothpick','\"Stock ToothPick Flags - \"\"Mardi Gras\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210249','Stock Toothpick','\"Stock ToothPick Flags - \"\"Jolly Rodger\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210250','Stock Toothpick','\"Stock ToothPick Flags - \"\"United We Stand\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210251','Stock Toothpick','\"Stock ToothPick Flags - \"\"Chick-fil-a\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210252','Stock Toothpick','\"Stock ToothPick Flags - \"\"Remax\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210253','Stock Toothpick','\"Stock ToothPick Flags - \"\"Coldwell Banker\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210254','Stock Toothpick','\"Stock ToothPick Flags - \"\"Pumpkin Flag\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210255','Stock Toothpick','\"Stock ToothPick Flags - \"\"Happy Birthday\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210256','WorldToothPickFlag','MADE IN USA Standard World Tooth Pick Flags Box of 100 - Kyrgyzstan','8.00','0.750',2,100,1,NULL,20070512102759),
 ('210257','Stock Toothpick','\"Stock ToothPick Flags - \"\"Volvo\"\" - Box of 100\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210400','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"The Big 50\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210401','Stk Toothpick Jumbo','\"Stock JumboToothPick Flags - \"\"Democratic Party Symbol\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210402','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Republican Party Symbol\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210403','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Get Well Soon\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210404','Stk Toothpick Jumbo','\"Stock JumboToothPick Flags - \"\"BirthDay Cake\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210405','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"It\'s a Boy\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210406','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"It\'s a Girl\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210407','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Valentines Day\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210408','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Smiley Face\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210409','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Mothers Day\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210410','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Easter\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210411','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Good Luck\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210412','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"God Bless America\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210413','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Halloween\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210414','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"St. Patricks Day\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210415','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy 4th\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210416','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Congratulations\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210417','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Anniversary\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210418','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Hanukkah\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210419','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"25th Anniversary\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210420','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Thanksgiving\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210421','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"50th Anniversary\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210422','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Father\'s Day\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210423','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy New Year\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210424','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Christmas\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210425','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Christmas\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210426','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Oktoberfest\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210427','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Veterans Day\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210428','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Support Candidates\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210429','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Vote\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210430','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"$$$\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210431','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Celebration\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210432','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Cheers\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210433','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Grand Opening\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210434','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Hour\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210435','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Just Beginning\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210436','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Live it up\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210437','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Party Time\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210438','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Vacation Time\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210439','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Way to Go\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210440','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"We\'re Moving\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210441','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"25th\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210442','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"50th\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210443','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Cards\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210444','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Catering\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210445','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Cookout\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210446','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Cross/Heart\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210447','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Fish\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210448','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Mardi Gras\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210449','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Jolly Rodger\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210450','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"United we Stand\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210451','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Chick-fil-a\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210452','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Remax\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210453','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Coldwell Banker\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210454','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Pumpkin Flag\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210455','Stk Toothpick Jumbo','\"Stock Jumbo ToothPick Flags - \"\"Happy Birthday\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('210456','WorldToothPickFlag','MADE IN USA Jumbo World Tooth Pick Flags Box of 12 - Kyrgyzstan','12.00','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('210457','Stk Toothpick Jumbo','\"Stock Jumbo Toothpick Flag - \"\"Volvo\"\" - Box of 12\"','12.00','0.750',2,100,1,NULL,20070512102759),
 ('331984','MSGBanner','\"3\' x 5\' Message Banner, \"\"Antiques\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331845','MSGBanner','\"3\' x 5\' Message Banner, \"\"Car Wash\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331829','MSGBanner','\"3\' x 5\' Message Banner, \"\"Condos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('332146','MSGBanner','\"3\' x 5\' Message Banner, \"\"For Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330032','MSGBanner','\"3\' x 5\' Message Banner, \"\"Grand Opening\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330036','MSGBanner','\"3\' x 5\' Message Banner, \"\"Leasing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330040','MSGBanner','\"3\' x 5\' Message Banner, \"\"Model\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331882','MSGBanner','\"3\' x 5\' Message Banner, \"\"New Homes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331833','MSGBanner','\"3\' x 5\' Message Banner, \"\"Now Renting\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331855','MSGBanner','\"3\' x 5\' Message Banner, \"\"Open\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331880','MSGBanner','\"3\' x 5\' Message Banner, \"\"Open House\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331858','MSGBanner','\"3\' x 5\' Message Banner, \"\"Pizza\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('332050','MSGBanner','\"3\' x 5\' Message Banner, \"\"Real Estate\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330063','MSGBanner','\"3\' x 5\' Message Banner, \"\"Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331854','MSGBanner','\"3\' x 5\' Message Banner, \"\"Welcome\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331985','MSGBanner','\"3\' x 5\' Message Banner, \"\"Abierto\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331856','MSGBanner','\"3\' x 5\' Message Banner, \"\"ATM\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331857','MSGBanner','\"3\' x 5\' Message Banner, \"\"Auction\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331986','MSGBanner','\"3\' x 5\' Message Banner, \"\"Autos Nuevos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331859','MSGBanner','\"3\' x 5\' Message Banner, \"\"Autos Semi-Nuevos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331860','MSGBanner','\"3\' x 5\' Message Banner, \"\"Autos Usados\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331861','MSGBanner','\"3\' x 5\' Message Banner, \"\"Available\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331862','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bagels\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331863','MSGBanner','\"3\' x 5\' Message Banner, \"\"Barber Shop\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331864','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bait\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331865','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bakery\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331866','MSGBanner','\"3\' x 5\' Message Banner, \"\"Barbeque\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331867','MSGBanner','\"3\' x 5\' Message Banner, \"\"BBQ\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331868','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bicycles\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331869','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bienvenidos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331870','MSGBanner','\"3\' x 5\' Message Banner, \"\"Bingo\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331871','MSGBanner','\"3\' x 5\' Message Banner, \"\"Boats\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331872','MSGBanner','\"3\' x 5\' Message Banner, \"\"Boat Rentals\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331873','MSGBanner','\"3\' x 5\' Message Banner, \"\"Books\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331874','MSGBanner','\"3\' x 5\' Message Banner, \"\"Brakes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331875','MSGBanner','\"3\' x 5\' Message Banner, \"\"Buy American\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331876','MSGBanner','\"3\' x 5\' Message Banner, \"\"Buy Here Pay Here\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331877','MSGBanner','\"3\' x 5\' Message Banner, \"\"Cafe\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331878','MSGBanner','\"3\' x 5\' Message Banner, \"\"Campers\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331879','MSGBanner','\"3\' x 5\' Message Banner, \"\"Cappuccino\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331987','MSGBanner','\"3\' x 5\' Message Banner, \"\"Car Cleaning\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331881','MSGBanner','\"3\' x 5\' Message Banner, \"\"Carpets\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331988','MSGBanner','\"3\' x 5\' Message Banner, \"\"Catfish\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331883','MSGBanner','\"3\' x 5\' Message Banner, \"\"Check Cashing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331884','MSGBanner','\"3\' x 5\' Message Banner, \"\"Clearance\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331885','MSGBanner','\"3\' x 5\' Message Banner, \"\"Coffee\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331886','MSGBanner','\"3\' x 5\' Message Banner, \"\"Cold Beer\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331887','MSGBanner','\"3\' x 5\' Message Banner, \"\"Collectibles\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331888','MSGBanner','\"3\' x 5\' Message Banner, \"\"Computers\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331889','MSGBanner','\"3\' x 5\' Message Banner, \"\"Consignments\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331890','MSGBanner','\"3\' x 5\' Message Banner, \"\"Crafts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331891','MSGBanner','\"3\' x 5\' Message Banner, \"\"Cycles\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331892','MSGBanner','\"3\' x 5\' Message Banner, \"\"Commercial\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331893','MSGBanner','\"3\' x 5\' Message Banner, \"\"Deli\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331894','MSGBanner','\"3\' x 5\' Message Banner, \"\"Deli\"\" - green/white/red - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331895','MSGBanner','\"3\' x 5\' Message Banner, \"\"Desserts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331896','MSGBanner','\"3\' x 5\' Message Banner, \"\"Discount\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331897','MSGBanner','\"3\' x 5\' Message Banner, \"\"Discount Prices\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331898','MSGBanner','\"3\' x 5\' Message Banner, \"\"Drinks\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331899','MSGBanner','\"3\' x 5\' Message Banner, \"\"Espresso\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331900','MSGBanner','\"3\' x 5\' Message Banner, \"\"EZ Terms\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331901','MSGBanner','\"3\' x 5\' Message Banner, \"\"Financiamos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331902','MSGBanner','\"3\' x 5\' Message Banner, \"\"Fireworks\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331903','MSGBanner','\"3\' x 5\' Message Banner, \"\"Flags\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331904','MSGBanner','\"3\' x 5\' Message Banner, \"\"Flea Market\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331905','MSGBanner','\"3\' x 5\' Message Banner, \"\"Flowers\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331906','MSGBanner','\"3\' x 5\' Message Banner, \"\"Food\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331907','MSGBanner','\"3\' x 5\' Message Banner, \"\"Furniture\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331908','MSGBanner','\"3\' x 5\' Message Banner, \"\"Gallery\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331909','MSGBanner','\"3\' x 5\' Message Banner, \"\"Garage Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331910','MSGBanner','\"3\' x 5\' Message Banner, \"\"Gifts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331911','MSGBanner','\"3\' x 5\' Message Banner, \"\"Golf Carts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331912','MSGBanner','\"3\' x 5\' Message Banner, \"\"Gone Fishin\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331913','MSGBanner','\"3\' x 5\' Message Banner, \"\"Gran Apertura\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331914','MSGBanner','\"3\' x 5\' Message Banner, \"\"Guns\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331915','MSGBanner','\"3\' x 5\' Message Banner, \"\"Happy Birthday\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331916','MSGBanner','\"3\' x 5\' Message Banner, \"\"Haircut\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331917','MSGBanner','\"3\' x 5\' Message Banner, \"\"Hushpuppies\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331918','MSGBanner','\"3\' x 5\' Message Banner, \"\"Hotel\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331919','MSGBanner','\"3\' x 5\' Message Banner, \"\"Ice\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331920','MSGBanner','\"3\' x 5\' Message Banner, \"\"Ice Cream\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331921','MSGBanner','\"3\' x 5\' Message Banner, \"\"Lake Homes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331922','MSGBanner','\"3\' x 5\' Message Banner, \"\"Lake Lots\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331923','MSGBanner','\"3\' x 5\' Message Banner, \"\"Live Bait\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331924','MSGBanner','\"3\' x 5\' Message Banner, \"\"Live Shrimp\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331925','MSGBanner','\"3\' x 5\' Message Banner, \"\"Lottery Tickets\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331926','MSGBanner','\"3\' x 5\' Message Banner, \"\"Lowest Prices\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331927','MSGBanner','\"3\' x 5\' Message Banner, \"\"Lunch\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331928','MSGBanner','\"3\' x 5\' Message Banner, \"\"Mobile Homes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331929','MSGBanner','\"3\' x 5\' Message Banner, \"\"Models\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331930','MSGBanner','\"3\' x 5\' Message Banner, \"\"Motel\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331931','MSGBanner','\"3\' x 5\' Message Banner, \"\"Mufflers\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331932','MSGBanner','\"3\' x 5\' Message Banner, \"\"Mullet\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331933','MSGBanner','\"3\' x 5\' Message Banner, \"\"Music\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331934','MSGBanner','\"3\' x 5\' Message Banner, \"\"New Cars\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331935','MSGBanner','\"3\' x 5\' Message Banner, \"\"New Home\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331936','MSGBanner','\"3\' x 5\' Message Banner, \"\"Now Leasing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331937','MSGBanner','\"3\' x 5\' Message Banner, \"\"Oil Change\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331938','MSGBanner','\"3\' x 5\' Message Banner, \"\"Open 24 Hours\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331939','MSGBanner','\"3\' x 5\' Message Banner, \"\"Open for Inspection\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331940','MSGBanner','\"3\' x 5\' Message Banner, \"\"Open Late\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331941','MSGBanner','\"3\' x 5\' Message Banner, \"\"Pizza\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331942','MSGBanner','\"3\' x 5\' Message Banner, \"\"Pre-Owned\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331943','MSGBanner','\"3\' x 5\' Message Banner, \"\"Rent a Car\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331944','MSGBanner','\"3\' x 5\' Message Banner, \"\"Rental\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331945','MSGBanner','\"3\' x 5\' Message Banner, \"\"Rentals\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331946','MSGBanner','\"3\' x 5\' Message Banner, \"\"Repair\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331947','MSGBanner','\"3\' x 5\' Message Banner, \"\"Repairs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331948','MSGBanner','\"3\' x 5\' Message Banner, \"\"Residential\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331949','MSGBanner','\"3\' x 5\' Message Banner, \"\"Restaurants\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331950','MSGBanner','\"3\' x 5\' Message Banner, \"\"Rummage Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331951','MSGBanner','\"3\' x 5\' Message Banner, \"\"RV\'s\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331952','MSGBanner','\"3\' x 5\' Message Banner, \"\"Salad Bar\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331953','MSGBanner','\"3\' x 5\' Message Banner, \"\"Sales\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331954','MSGBanner','\"3\' x 5\' Message Banner, \"\"$ave\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331955','MSGBanner','\"3\' x 5\' Message Banner, \"\"Shocks\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331956','MSGBanner','\"3\' x 5\' Message Banner, \"\"Skating\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331957','MSGBanner','\"3\' x 5\' Message Banner, \"\"Souvenirs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331958','MSGBanner','\"3\' x 5\' Message Banner, \"\"Spas\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331959','MSGBanner','\"3\' x 5\' Message Banner, \"\"Studio\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331960','MSGBanner','\"3\' x 5\' Message Banner, \"\"Subs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331961','MSGBanner','\"3\' x 5\' Message Banner, \"\"Subs\"\" - green/white/red - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331962','MSGBanner','\"3\' x 5\' Message Banner, \"\"SUV\'s\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331963','MSGBanner','\"3\' x 5\' Message Banner, \"\"Tackle\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331964','MSGBanner','\"3\' x 5\' Message Banner, \"\"Tanning\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331965','MSGBanner','\"3\' x 5\' Message Banner, \"\"Tiles\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331966','MSGBanner','\"3\' x 5\' Message Banner, \"\"Tires\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331967','MSGBanner','\"3\' x 5\' Message Banner, \"\"Town House\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331968','MSGBanner','\"3\' x 5\' Message Banner, \"\"Town Houses\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331969','MSGBanner','\"3\' x 5\' Message Banner, \"\"Trucks\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331970','MSGBanner','\"3\' x 5\' Message Banner, \"\"Toys\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331971','MSGBanner','\"3\' x 5\' Message Banner, \"\"Used Books\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331972','MSGBanner','\"3\' x 5\' Message Banner, \"\"Used Cars\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331973','MSGBanner','\"3\' x 5\' Message Banner, \"\"Used Trucks\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331974','MSGBanner','\"3\' x 5\' Message Banner, \"\"Vans\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331975','MSGBanner','\"3\' x 5\' Message Banner, \"\"Venta\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331976','MSGBanner','\"3\' x 5\' Message Banner, \"\"Video Games\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331977','MSGBanner','\"3\' x 5\' Message Banner, \"\"Video Rentals\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331978','MSGBanner','\"3\' x 5\' Message Banner, \"\"Vote\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331979','MSGBanner','\"3\' x 5\' Message Banner, \"\"We Finance\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331980','MSGBanner','\"3\' x 5\' Message Banner, \"\"Welcome\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331981','MSGBanner','\"3\' x 5\' Message Banner, \"\"Yard Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331982','MSGBanner','\"3\' x 5\' Message Banner, \"\"Yogurt\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331983','MSGBanner','\"3\' x 5\' Message Banner, - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330953','MSGBanner','\"3\' x 5\' Message Banner, - \"\"Sales\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330981','MSGBanner','\"3\' x 5\' Message Banner - \"\"Yard Sale\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330982','MSGBanner','\"3\' x 5\' Message Banner - \"\"Adult Videos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330983','MSGBanner','\"3\' x 5\' Message Banner - \"\"Beds\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330984','MSGBanner','\"3\' x 5\' Message Banner - \"\"Blue Crabs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330985','MSGBanner','\"3\' x 5\' Message Banner - \"\"Body Shop\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330986','MSGBanner','\"3\' x 5\' Message Banner - \"\"Camping\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330987','MSGBanner','\"3\' x 5\' Message Banner - \"\"Campgrounds\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330988','MSGBanner','\"3\' x 5\' Message Banner - \"\"Candles\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330989','MSGBanner','\"3\' x 5\' Message Banner - \"\"Christmas Trees\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330990','MSGBanner','\"3\' x 5\' Message Banner - \"\"Coming Soon\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330991','MSGBanner','\"3\' x 5\' Message Banner - \"\"Country Cooking\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330992','MSGBanner','\"3\' x 5\' Message Banner - \"\"Crabs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330993','MSGBanner','\"3\' x 5\' Message Banner - \"\"Dance\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330994','MSGBanner','\"3\' x 5\' Message Banner - \"\"Deer Processing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330995','MSGBanner','\"3\' x 5\' Message Banner - \"\"Drugs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330996','MSGBanner','\"3\' x 5\' Message Banner - \"\"Estimates\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('330997','MSGBanner','\"3\' x 5\' Message Banner - \"\"Fishing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330998','MSGBanner','\"3\' x 5\' Message Banner - \"\"Food to Go\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('330999','MSGBanner','\"3\' x 5\' Message Banner - \"\"Free Long Distance\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331000','MSGBanner','\"3\' x 5\' Message Banner - \"\"Fruit\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331001','MSGBanner','\"3\' x 5\' Message Banner - \"\"Fruit Stand\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331002','MSGBanner','\"3\' x 5\' Message Banner - \"\"Gift Shop\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331003','MSGBanner','\"3\' x 5\' Message Banner - \"\"Golf\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331004','MSGBanner','\"3\' x 5\' Message Banner - \"\"Grapefruit\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331005','MSGBanner','\"3\' x 5\' Message Banner - \"\"Happy Hour\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331006','MSGBanner','\"3\' x 5\' Message Banner - \"\"Hot Coffee\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331007','MSGBanner','\"3\' x 5\' Message Banner - \"\"Hot Dogs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331008','MSGBanner','\"3\' x 5\' Message Banner - \"\"Hunting\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331009','MSGBanner','\"3\' x 5\' Message Banner - \"\"Kids Meals\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331010','MSGBanner','\"3\' x 5\' Message Banner - \"\"Lemonade\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331011','MSGBanner','\"3\' x 5\' Message Banner - \"\"Mangos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331012','MSGBanner','\"3\' x 5\' Message Banner - \"\"Massages\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331013','MSGBanner','\"3\' x 5\' Message Banner - \"\"Merry Christmas\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331014','MSGBanner','\"3\' x 5\' Message Banner - \"\"Military Discounts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331015','MSGBanner','\"3\' x 5\' Message Banner - \"\"Movies\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331016','MSGBanner','\"3\' x 5\' Message Banner - \"\"Now Open\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331017','MSGBanner','\"3\' x 5\' Message Banner - \"\"Obedience Training\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331018','MSGBanner','\"3\' x 5\' Message Banner - \"\"1 Hr. Photo\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331019','MSGBanner','\"3\' x 5\' Message Banner - \"\"Oranges\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331020','MSGBanner','\"3\' x 5\' Message Banner - \"\"Organic Foods\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331021','MSGBanner','\"3\' x 5\' Message Banner - \"\"Parking\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331022','MSGBanner','\"3\' x 5\' Message Banner - \"\"Party\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331023','MSGBanner','\"3\' x 5\' Message Banner - \"\"Payday Advance\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331024','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pet Grooming\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331025','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pet Supplies\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331026','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pets\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331027','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pharmacy\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331028','MSGBanner','\"3\' x 5\' Message Banner - \"\"Photography\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331029','MSGBanner','\"3\' x 5\' Message Banner - \"\"Photos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331030','MSGBanner','\"3\' x 5\' Message Banner - \"\"Piercings\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331031','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pineapples\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331032','MSGBanner','\"3\' x 5\' Message Banner - \"\"Seafood\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331033','MSGBanner','\"3\' x 5\' Message Banner - \"\"Shaved Ice\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331034','MSGBanner','\"3\' x 5\' Message Banner - \"\"Showers\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331035','MSGBanner','\"3\' x 5\' Message Banner - \"\"Skate Park\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331036','MSGBanner','\"3\' x 5\' Message Banner - \"\"Smoke Free\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331037','MSGBanner','\"3\' x 5\' Message Banner - \"\"Sno Cones\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331038','MSGBanner','\"3\' x 5\' Message Banner - \"\"Sofas\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331039','MSGBanner','\"3\' x 5\' Message Banner - \"\"Strawberries\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331040','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tacos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331041','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tattoos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331042','MSGBanner','\"3\' x 5\' Message Banner - \"\"Taxes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331043','MSGBanner','\"3\' x 5\' Message Banner - \"\"Taxidermy\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331044','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tea\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331045','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tennis\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331046','MSGBanner','\"3\' x 5\' Message Banner - \"\"Title Loans\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331047','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tobacco\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331048','MSGBanner','\"3\' x 5\' Message Banner - \"\"2 for 1\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331049','MSGBanner','\"3\' x 5\' Message Banner - \"\"Unlimited Minutes\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331050','MSGBanner','\"3\' x 5\' Message Banner - \"\"Used Appliances\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331051','MSGBanner','\"3\' x 5\' Message Banner - \"\"U-Pick\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331052','MSGBanner','\"3\' x 5\' Message Banner - \"\"Vegetables\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331053','MSGBanner','\"3\' x 5\' Message Banner - \"\"Videos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331054','MSGBanner','\"3\' x 5\' Message Banner - \"\"Vitamins\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331055','MSGBanner','\"3\' x 5\' Message Banner - \"\"WIFI\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331056','MSGBanner','\"3\' x 5\' Message Banner - \"\"Self Storage\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331057','MSGBanner','\"3\' x 5\' Message Banner - \"\"Now Selling\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331058','MSGBanner','\"3\' x 5\' Message Banner - \"\"Now Hiring\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331059','MSGBanner','\"3\' x 5\' Message Banner - \"\"Brunch\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331060','MSGBanner','\"3\' x 5\' Message Banner - \"\" Restaurant\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331061','MSGBanner','\"3\' x 5\' Message Banner - \"\" Jewelry\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331062','MSGBanner','\"3\' x 5\' Message Banner - \"\"ASAP\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331063','MSGBanner','\"3\' x 5\' Message Banner - \"\"Lumber\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331064','MSGBanner','\"3\' x 5\' Message Banner - \"\"Classic Cars\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331065','MSGBanner','\"3\' x 5\' Message Banner - \"\"Bail Bonds\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331066','MSGBanner','\"3\' x 5\' Message Banner - \"\"Buffet\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331067','MSGBanner','\"3\' x 5\' Message Banner, \"\"Pasta\"\" - green/white/red - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331068','MSGBanner','\"3\' x 5\' Message Banner - \"\"Wings\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331069','MSGBanner','\"3\' x 5\' Message Banner - \"\"Hard Wood Floors\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331070','MSGBanner','\"3\' x 5\' Message Banner - \"\"Vinyl Floors\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331071','MSGBanner','\"3\' x 5\' Message Banner - \"\"Carpet Cleaning\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331072','MSGBanner','\"3\' x 5\' Message Banner - \"\"Installations\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331073','MSGBanner','\"3\' x 5\' Message Banner - \"\"Boiled Peanuts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331074','MSGBanner','\"3\' x 5\' Message Banner - \"\"Peanuts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331075','MSGBanner','\"3\' x 5\' Message Banner - \"\"Salon\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331076','MSGBanner','\"3\' x 5\' Message Banner - \"\"1 Hr. Photos\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331077','MSGBanner','\"3\' x 5\' Message Banner - \"\"Diner\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331078','MSGBanner','\"3\' x 5\' Message Banner - \"\"Charter Bus\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331079','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tour Bus\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331080','MSGBanner','\"3\' x 5\' Message Banner - \"\"Auto Repairs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331081','MSGBanner','\"3\' x 5\' Message Banner - \"\"Herbs\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331082','MSGBanner','\"3\' x 5\' Message Banner - \"\"Vacancy\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331083','MSGBanner','\"3\' x 5\' Message Banner - \"\"A/C Repair\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331084','MSGBanner','\"3\' x 5\' Message Banner - \"\"In God we Trust\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331085','MSGBanner','\"3\' x 5\' Message Banner - \"\"Cabins\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331086','MSGBanner','\"3\' x 5\' Message Banner - \"\"Smoothie\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331087','MSGBanner','\"3\' x 5\' Message Banner - \"\"Iced Coffee\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331088','MSGBanner','\"3\' x 5\' Message Banner - \"\"Fudge\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331089','MSGBanner','\"3\' x 5\' Message Banner - \"\"Accessories\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331090','MSGBanner','\"3\' x 5\' Message Banner - \"\"Town Homes\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331091','MSGBanner','\"3\' x 5\' Message Banner - \"\"Agent on Duty\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331092','MSGBanner','\"3\' x 5\' Message Banner - \"\"Sweet Corn\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331093','MSGBanner','\"3\' x 5\' Message Banner - \"\"Candy\"\" - red/whte/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331094','MSGBanner','\"3\' x 5\' Message Banner - \"\"Catering\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331095','MSGBanner','\"3\' x 5\' Message Banner - \"\"Wine\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331096','MSGBanner','\"3\' x 5\' Message Banner - \"\"Wine Tasting\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331097','MSGBanner','\"3\' x 5\' Message Banner - \"\"Karate\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331098','MSGBanner','\"3\' x 5\' Message Banner - \"\"Breakfast\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331099','MSGBanner','\"3\' x 5\' Message Banner - \"\"Italian Deli\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331100','MSGBanner','\"3\' x 5\' Message Banner - \"\"Market\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331101','MSGBanner','\"3\' x 5\' Message Banner - \"\"Smoothies\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331102','MSGBanner','\"3\' x 5\' Message Banner - \"\"Tortellini\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331103','MSGBanner','\"3\' x 5\' Message Banner - \"\"Pools\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331104','MSGBanner','\"3\' x 5\' Message Banner - \"\"Blood Drive\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331105','MSGBanner','\"3\' x 5\' Message Banner - \"\"Flu Shots\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331106','MSGBanner','\"3\' x 5\' Message Banner - \"\"Monthly\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331107','MSGBanner','\"3\' x 5\' Message Banner - \"\"Daily\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331108','MSGBanner','\"3\' x 5\' Message Banner - \"\"Weekly\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331109','MSGBanner','\"3\' x 5\' Message Banner - \"\"Climate Controlled\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331110','MSGBanner','\"3\' x 5\' Message Banner - \"\"24 / 7\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331111','MSGBanner','\"3\' x 5\' Message Banner - \"\"Windows\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331112','MSGBanner','\"3\' x 5\' Message Banner - \"\"Doors\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331113','MSGBanner','\"3\' x 5\' Message Banner - \"\"Siding\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331114','MSGBanner','\"3\' x 5\' Message Banner - \"\"Roofing\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331115','MSGBanner','\"3\' x 5\' Message Banner - \"\"Mortgages\"\" red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331116','MSGBanner','\"3\' x 5\' Message Banner - \"\"Go-Karts\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('331117','MSGBanner','\"3\' x 5\' Message Banner - \"\"Quality\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('331118','MSGBanner','\"3\' x 5\' Message Banner - \"\"Sales Office\"\" - red/white/blue - double headers with brass grommets\"','19.95','0.800',2,100,1,NULL,20070512102759),
 ('480888','BannerStand','Classic banner stand - heavy duty steel','130.00','10.000',1,100,1,NULL,20070512102759),
 ('480889','BannerStand','Cantilever Banner Stand - heavy duty steel','150.00','10.000',1,100,1,NULL,20070512102759),
 ('480890','BannerStand','\"Adjustable Banner Stand - 30\"\" to 48\"\" width\"','230.00','11.000',1,100,1,NULL,20070512102759),
 ('480891','BannerStand','\"Adjustable Banner Stand - 48\"\" to 96\"\" width\"','360.00','12.000',1,100,1,NULL,20070512102759),
 ('480892','BannerStand','Banner Travel Bag','89.00','3.000',1,100,1,NULL,20070512102759),
 ('790000','MR1','\"Recognition Rock - 28\"\" wide/34\"\" long/14\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790001','MR1','\"Recognition Rock - 28\"\" wide/34\"\" long/14\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('790002','MR2','\"Recognition Rock - 27\"\" wide/27\"\" long/11\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790003','MR2','\"Recognition Rock - 27\"\" wide/27\"\" long/11\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759),
 ('790004','MR3','\"Recognition Rock - 26\"\" wide/26\"\" long/14\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790005','MR3','\"Recognition Rock - 26\"\" wide/26\"\" long/14\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759),
 ('790006','MF4','\"Recognition Rock - 22\"\" wide/28\"\" long/10\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790007','MR4','\"Recognition Rock - 22\"\" wide/28\"\" long/10\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('790008','MR5','\"Recognition Rock - 21\"\" wide/26\"\" long/12\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790009','MR5','\"Recognition Rock - 21\"\" wide/26\"\" long/12\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759),
 ('790010','MR6','\"Recognition Rock - 23\"\" wide/28\"\" long/11\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790011','MR6','\"Recognition Rock - 23\"\" wide/28\"\" long/11\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759),
 ('790016','MR9','\"Recognition Rock - 29\"\" wide/22\"\" long/11\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790017','MR9','\"Recognition Rock - 29\"\" wide/22\"\" long/11\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('790018','MR10','\"Recognition Rock -30\"\" wide/20\"\" long/10\"\" high - with 7.5\"\" x 5\"\" bronze plaque - shipping included\"','748.00','0.000',1,100,1,NULL,20070512102759),
 ('790019','MR10','\"Recognition Rock - 30\"\" wide/20\"\" long/10\"\" high - with 11\"\" x 8.5\"\" bronze plaque - shipping included\"','928.00','0.000',1,100,1,NULL,20070512102759),
 ('800000','VF35K','\"3\' x 5\' \"\"Koralex\"\" U.S. Outdoor flag - embroidered stars\"','23.50','0.800',2,100,1,NULL,20070512102759),
 ('800001','VF46K','\"4\' x 6\' \"\"Koralex\"\" U.S. Outdoor flag - embroidered stars\"','32.50','1.000',2,100,1,NULL,20070512102759),
 ('800002','VF58K','\"5\' x 8\' \"\"Koralex\"\" U.S. Outdoor Flag - embroidered stars\"','52.50','1.200',2,100,1,NULL,20070512102759),
 ('910005','NF5S','\"3\' x 5\' Nylon U.S. Outdoor flag, embroidered stars - Special Price\"','14.75','1.000',2,100,1,NULL,20070512102759),
 ('910006','NF6S','4\' x 6\' Nylon  U.S. Outdoor flag - embroidered stars - Special Price','21.75','1.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('910008','NF8S','\"5\' x 8\' \"\"Nylon\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','33.68','1.200',2,100,1,NULL,20070512102759),
 ('910009','NF10S','6\' x 10\' Nylon U.S. Outdoor Flag - embroidered stars - Special Price','49.95','2.000',2,100,1,NULL,20070512102759),
 ('910045','PF5S','\"3\' x 5\' \"\"Koralex II\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','18.56','1.000',2,100,1,NULL,20070512102759),
 ('910046','PF6S','\"4\' x 6\' \"\"Koralex II\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','28.15','1.200',2,100,1,NULL,20070512102759),
 ('910047','PF8S','\"5\' x 8\' \"\"Koralex II\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','44.45','1.500',2,100,1,NULL,20070512102759),
 ('910049','PF10S','\"6\' x 10\' \"\"Koralex II\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','66.40','2.000',2,100,1,NULL,20070512102759),
 ('920000','USSTICK','\"4\"\" x 6\"\" No fray cotton U.S. Stick flag, wood stick with spear top\"','0.17','0.025',2,80,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('920001','USSTICK','\"8\"\" x 12\"\" No fray cotton U.S. Stick flag - wood stick with spear top\"','0.45','0.071',2,80,1,NULL,20070512102759),
 ('920002','USSTICK','\"12\"\" x 18\"\" No fray cotton U.S. Stick flag - wood stick with spear top\"','0.55','0.090',2,80,1,NULL,20070512102759),
 ('910050','PF5PM','\"3\' x 5\' \"\"Poly-Max\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','18.56','1.000',2,100,1,NULL,20070512102759),
 ('910051','PF6PM','\"4\' x 6\' \"\"Poly-Max\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','28.15','1.200',2,100,1,NULL,20070512102759),
 ('910052','PF8PM','\"5\' x 8\' \"\"Poly-Max\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','44.45','1.500',2,100,1,NULL,20070512102759),
 ('910053','PF10PM','\"6\' x 10\' \"\"Poly-Max\"\" U.S. Outdoor Flag - embroidered stars - Special Price\"','66.40','2.000',2,100,1,NULL,20070512102759),
 ('323182','HS-20','\"Residential Flagpole Beacon Package including 20\' straight pole and prewired \"\"Beacon\"\" 3\'x5\' U.S. flag included\"','315.00','17.000',1,400,2,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('323183','TH-20','\"Residential Flagpole Beacon Package including 20\'  tapered pole and prewired \"\"Beacon\"\" 3\'x5\' U.S. flag included\"','435.00','22.000',1,400,2,NULL,20070512102759),
 ('323184','SS20TS','\"Residential Flagpole Beacon Package including 20\'  Heavy Duty tapered pole and prewired \"\"Beacon\"\" 4\'x6\' U.S. flag included\"','465.00','47.000',1,400,2,NULL,20070512102759),
 ('323185','RES-BEACON','\"Residential Flagpole Beacon (retrofit) - \"\"Beacon Only\"\" \"','189.00','15.000',1,400,1,NULL,20070512102759),
 ('323186','RES-BEACON','Retro-fit Residential Flagpole Beacon for telescoping flagpoles 350 degree (BEACON ONLY)','189.00','15.000',1,400,1,NULL,20070512102759),
 ('323187','RES-BEACON','\"\"\"Telescoping Flagpole Beacon Package - 20\'- telescoping flagpole , 3\'x5\' Flag Included\"\"\"','360.00','32.000',1,400,2,NULL,20070512102759),
 ('120003','MES-FL','Clearance Message Flag with - BICYCLES - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('120004','MES-FL','Clearance Message Flag with - BINGO - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120007','MES-FL','Clearance Message Flag with - BRAKES - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120008','MES-FL','Clearance Message Flag with - BUY AMERICAN - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120011','MES-FL','Clearance Message Flag with - CAR CLEANING - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120013','MES-FL','Clearance Message Flag with - CARPETS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120014','MES-FL','Clearance Message Flag with - CLEARANCE - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120019','MES-FL','Clearance Message Flag with - CONSIGNMENTS - message - 3 ft. x 5 ft. Red/White/Yellow','7.50','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('120020','MES-FL','Clearance Message Flag with - CRAFTS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120021','MES-FL','Clearance Message Flag with - CYCLES - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120024','MES-FL','Clearance Message Flag with - EZ TERMS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120030','MES-FL','Clearance Message Flag with - GARAGE SALE - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120034','MES-FL','Clearance Message Flag with - GUNS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120039','MES-FL','Clearance Message Flag with - MOBILE HOMES - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120043','MES-FL','Clearance Message Flag with - MUFFLERS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('120057','MES-FL','Clearance Message Flag with - OPEN 24 HOURS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120060','MES-FL','Clearance Message Flag with - RENT A CAR - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120061','MES-FL','Clearance Message Flag with - RUMMAGE SALE - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120062','MES-FL','Clearance Message Flag with - SALAD BAR - message - 3 ft. x 5 ft. Green/White/Green','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120067','MES-FL','Clearance Message Flag with - SHOCKS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120068','MES-FL','Clearance Message Flag with - SKATING - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120069','MES-FL','Clearance Message Flag with - SOUVENIRS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('120072','MES-FL','Clearance Message Flag with - TOWN HOUSE - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120075','MES-FL','Clearance Message Flag with - TRUCKS - message - 3 ft. x 5 ft. Red/White/Yellow','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120076','MES-FL','Clearance Message Flag with - TRUCKS - message - 3 ft. x 5 ft. Teal/White/Teal','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120081','MES-FL','Clearance Message Flag with - VANS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120082','MES-FL','Clearance Message Flag with - VIDEO RENTALS - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120085','MES-FL','Clearance Message Flag with - WE FINANCE - message - 3 ft. x 5 ft. Teal/White/Teal','7.50','0.750',2,100,1,NULL,20070512102759),
 ('120090','MES-FL','Clearance Message Flag with - YOGURT - message - 3 ft. x 5 ft. Red/White/Blue','7.50','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740022','RE-FL','3 ft. x 5 ft. - Exit Realty -  Teal & Black on Burgundy','45.00','0.650',2,100,1,NULL,20070512102759),
 ('740023','RE-FL','3 ft. x 5 ft. - Keller Williams -  White on Red','30.00','0.650',2,100,1,NULL,20070512102759),
 ('740024','RE-FL','3 ft. x 5 ft. - Keller Williams -  Red & Black on White','30.00','0.650',2,100,1,NULL,20070512102759),
 ('740025','MES-BOW','Message Bow Flag Kit - MODEL - 2.5 ft. x 6.6 ft. drop Red/White/Blue','149.00','1.500',2,100,1,NULL,20070512102759),
 ('740026','MES-BOW','Message Bow Flag Kit - NEW HOMES - 2.5 ft. x 6.6 ft. drop Red/White/Blue','149.00','1.500',2,100,1,NULL,20070512102759),
 ('740027','MES-BOW','Message Bow Flag Kit - OPEN - 2.5 ft. x 6.6 ft. drop Red/White/Blue','149.00','1.500',2,100,1,NULL,20070512102759),
 ('740028','MES-BOW','Message Bow Flag Kit - OPEN HOUSE - 2.5 ft. x 6.6 ft. drop Red/White/Blue','149.00','1.500',2,100,1,NULL,20070512102759),
 ('740029','MES-BOW','Message Bow Flag Kit - WELCOME - 2.5 ft. x 6.6 ft. drop Red/White/Blue','149.00','1.500',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740030','MES-BOW','Message Bow Flag Kit - MODEL - 2 ft. x 8.2 ft. angled Red/White/Blue','159.00','1.500',2,100,1,NULL,20070512102759),
 ('740031','MES-BOW','Message Bow Flag Kit - NEW HOMES - 2 ft. x 8.2 ft. angled Red/White/Blue','159.00','1.500',2,100,1,NULL,20070512102759),
 ('740032','MES-BOW','Message Bow Flag Kit - OPEN - 2 ft. x 8.2 ft. angled Red/White/Blue','159.00','1.500',2,100,1,NULL,20070512102759),
 ('740033','MES-BOW','Message Bow Flag Kit - OPEN HOUSE - 2 ft. x 8.2 ft. angled Red/White/Blue','159.00','1.500',2,100,1,NULL,20070512102759),
 ('740034','MES-BOW','Message Bow Flag Kit - WELCOME - 2 ft. x 8.2 ft. angled Red/White/Blue','159.00','1.500',2,100,1,NULL,20070512102759),
 ('740035','MES-BOW-RF','Message Bow Flag - MODEL - 2.5 ft. x 6.6 ft. drop Red/White/Blue','59.00','0.750',2,100,1,NULL,20070512102759),
 ('740036','MES-BOW-RF','Message Bow Flag - NEW HOMES - 2.5 ft. x 6.6 ft. drop Red/White/Blue','59.00','0.750',2,100,1,NULL,20070512102759),
 ('740037','MES-BOW-RF','Message Bow Flag - OPEN - 2.5 ft. x 6.6 ft. drop Red/White/Blue','59.00','0.750',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('740038','MES-BOW-RF','Message Bow Flag - OPEN HOUSE - 2.5 ft. x 6.6 ft. drop Red/White/Blue','59.00','0.750',2,100,1,NULL,20070512102759),
 ('740039','MES-BOW-RF','Message Bow Flag - WELCOME - 2.5 ft. x 6.6 ft. drop Red/White/Blue','59.00','0.750',2,100,1,NULL,20070512102759),
 ('740040','MES-BOW-RF','Message Bow Flag - MODEL - 2 ft. x 8.2 ft. angled Red/White/Blue','64.00','0.750',2,100,1,NULL,20070512102759),
 ('740041','MES-BOW-RF','Message Bow Flag - NEW HOMES - 2 ft. x 8.2 ft. angled Red/White/Blue','64.00','0.750',2,100,1,NULL,20070512102759),
 ('740042','MES-BOW-RF','Message Bow Flag - OPEN - 2 ft. x 8.2 ft. angled Red/White/Blue','64.00','0.750',2,100,1,NULL,20070512102759),
 ('740043','MES-BOW-RF','Message Bow Flag - OPEN HOUSE - 2 ft. x 8.2 ft. angled Red/White/Blue','64.00','0.750',2,100,1,NULL,20070512102759),
 ('740044','MES-BOW-RF','Message Bow Flag - WELCOME - 2 ft. x 8.2 ft. angled Red/White/Blue','64.00','0.750',2,100,1,NULL,20070512102759),
 ('740045','MES-BOW-RH','\"Message Bow Flag Hardware - includes ground sleeve with bearing, polyester case, and fiberglass pole\"','99.95','10.000',2,100,1,NULL,20070512102759);
INSERT INTO `catalog` (`itemno`,`model`,`description`,`price`,`weight`,`shipok`,`shipadd`,`boxes`,`category_cd`,`create_ts`) VALUES 
 ('','','','0.00','0.000',0,0,0,NULL,20070514084342);
INSERT INTO `category` (`category_cd`,`category_desc`,`create_ts`) VALUES 
 (4,'G-Spec Series Flags',20070521153752),
 (2,'USPolyester',20070514104654),
 (1,'USNylon',20070512134301),
 (3,'Hercules US Flags',20070521140208);
INSERT INTO `category_attribute` (`category_cd`,`attribute_cd`,`create_ts`) VALUES 
 (11,6,20070518155251),
 (11,4,20070518155247),
 (1,6,20070514105901),
 (3,6,20070518155314),
 (5,1,20070514101821),
 (5,2,20070514101827),
 (5,4,20070514101832),
 (2,6,20070517104158);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010075',1,'10\'',20070512103728),
 ('010075',2,'20\'',20070512103728),
 ('010075',4,'Nylon',20070512103728),
 ('010076',1,'5\'',20070512103847),
 ('010076',2,'3\'',20070512103847),
 ('010076',4,'Nylon',20070512103847),
 ('010077',1,'10nm',20070512104024),
 ('010077',2,'20nm',20070512104024),
 ('010077',3,'2 tons',20070512104024),
 ('010077',4,'Petrified Wood',20070512104024),
 ('010078',3,'100000 kg',20070512104111),
 ('010079',1,'123312',20070512104126),
 ('010079',2,'12312',20070512104126),
 ('010079',4,'124134',20070512104126),
 ('010000',1,'12\"',20070514102432),
 ('010000',2,'18\"',20070514102432),
 ('010000',4,'Endura Nylon',20070514102432),
 ('010003',1,'2\'',20070514103426),
 ('010003',2,'3\'',20070514103426),
 ('010003',4,'nylon',20070514103426),
 ('010005',1,'3\'',20070514103606),
 ('010005',2,'5\'',20070514103606),
 ('010005',4,'Endura Nylon',20070514103606),
 ('010006',1,'4\'',20070514103630),
 ('010006',2,'6\'',20070514103630);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010006',4,'Endura Nylon',20070514103630),
 ('010007',1,'5\'',20070514103706),
 ('010007',2,'8\'',20070514103706),
 ('010007',4,'Endura Nylon',20070514103706),
 ('010008',1,'5\'',20070514103728),
 ('010008',2,'9.5\'',20070514103728),
 ('010008',4,'Endura Nylon',20070514103728),
 ('010009',1,'6\'',20070514103754),
 ('010009',2,'10\'',20070514103754),
 ('010009',4,'Endura Nylon',20070514103754),
 ('010011',1,'10\'',20070514103917),
 ('010011',2,'15\'',20070514103917),
 ('010011',4,'Endura Nylon',20070514103917),
 ('010012',1,'10\'',20070514103945),
 ('010012',2,'19\'',20070514103945),
 ('010012',4,'Endura Nylon',20070514103945),
 ('010013',1,'12\'',20070514104012),
 ('010013',2,'18\'',20070514104012),
 ('010013',4,'Endura Nylon',20070514104012),
 ('010014',1,'15\'',20070514104303),
 ('010014',2,'25\'',20070514104303),
 ('010014',4,'Endura Nylon',20070514104303),
 ('010015',1,'20\'',20070514104332),
 ('010015',2,'30\'',20070514104332);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010015',4,'Endura Nylon',20070514104332),
 ('010016',1,'20\'',20070514104354),
 ('010016',2,'38\'',20070514104354),
 ('010016',4,'Endura Nylon',20070514104354),
 ('010017',1,'25\'',20070514104417),
 ('010017',2,'40\'',20070514104417),
 ('010017',4,'Endura Nylon',20070514104417),
 ('010018',1,'30\'',20070514104445),
 ('010018',2,'50\'',20070514104445),
 ('010018',4,'Endura Nylon',20070514104445),
 ('010019',1,'30\'',20070514104502),
 ('010019',2,'60\'',20070514104502),
 ('010019',4,'Endura Nylon',20070514104502),
 ('010010',1,'8\'',20070514104535),
 ('010010',2,'12\'',20070514104535),
 ('010010',4,'Endura Nylon',20070514104535),
 ('010004',1,'2.5\'',20070514104558),
 ('010004',2,'4\'',20070514104558),
 ('010004',4,'Endura Nylon',20070514104558),
 ('010000',6,'12\" x 18\"',20070514105948),
 ('010003',6,'2\' x 3\'',20070514110001),
 ('010004',6,'2.5\' x 4\'',20070514110025),
 ('010005',6,'3\' x 5\'',20070514110036),
 ('010006',6,'4\' x 6\'',20070514110059);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010007',6,'5\' x 8\'',20070514110110),
 ('010008',6,'5\' x 9.5\'',20070514110125),
 ('010009',6,'6\' x 10\'',20070514110142),
 ('010010',6,'8\' x 12\'',20070514110155),
 ('010011',6,'10\' x 15\'',20070514110207),
 ('010012',6,'10\' x 19\'',20070514110225),
 ('010013',6,'12\' x 18\'',20070514110236),
 ('010014',6,'15\' x 25\'',20070514110250),
 ('010015',6,'20\' x 30\'',20070514110302),
 ('010016',6,'20\' x 38\'',20070514110314),
 ('010017',6,'25\' x 40\'',20070514110341),
 ('010018',6,'30\' x 50\'',20070514110353),
 ('010019',6,'30\' x 60\'',20070514110406),
 ('010075',6,'',20070514112624),
 ('010076',6,'',20070514112645),
 ('010079',6,'',20070514112718),
 ('010045',1,'',20070517104214),
 ('010045',2,'',20070517104214),
 ('010045',4,'',20070517104214),
 ('010045',6,'3\' x 5\'',20070517104227),
 ('010046',6,'4\' x 6\'',20070517104239),
 ('010047',6,'5\' x 8\'',20070517104250),
 ('010048',6,'5\' x 9.5\'',20070517104313),
 ('010049',6,'6\' x 10\'',20070517104322);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010050',6,'8\' x 12\'',20070517104342),
 ('010051',6,'10\' x 15\'',20070517104411),
 ('010052',6,'10\' x 19\'',20070517104424),
 ('010053',6,'12\' x 18\'',20070517104445),
 ('010054',6,'15\' x 25\'',20070517104500),
 ('010055',6,'20\' x 30\'',20070517104512),
 ('010056',6,'20\' x 38\'',20070517104523),
 ('010057',6,'25\' x 40\'',20070517104540),
 ('010058',6,'30\' x 50\'',20070517104552),
 ('020007',4,'Nylon O/D',20070518155414),
 ('020007',6,'3\' x 5\'',20070518155414),
 ('020009',4,'Nylon O/D',20070518155449),
 ('020009',6,'4\' x 6\'',20070518155449),
 ('020010',4,'Nylon O/D',20070518155516),
 ('020010',6,'12\' x 18\'',20070518155516),
 ('020007',7,'alabama',20070518155818),
 ('020007',8,'alabama.jpg',20070518155818),
 ('020009',7,'alabama',20070518155834),
 ('020009',8,'alabama.jpg',20070518155834),
 ('020010',7,'alabama',20070518155847),
 ('020010',8,'alabama.jpg',20070518155847),
 ('020011',4,'Nylon',20070518155926),
 ('020011',6,'5\' x 8\'',20070518155926);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('020011',7,'alabama',20070518155926),
 ('020011',8,'alabama.jpg',20070518155926),
 ('020013',4,'Nylon O/D',20070518160013),
 ('020013',6,'6\' x 10\'',20070518160013),
 ('020013',7,'alabama',20070518160013),
 ('020013',8,'alabama.jpg',20070518160013),
 ('020014',4,'Nylon O/D',20070518160102),
 ('020014',6,'8\' x 12\'',20070518160102),
 ('020014',7,'alabama',20070518160102),
 ('020014',8,'alabama.jpg',20070518160102),
 ('020030',4,'Nylon indoor w/Ph & Fr.',20070518160224),
 ('020030',6,'3\' x 5\'',20070518160224),
 ('020030',7,'alabama',20070518160224),
 ('020030',8,'alabama.jpg',20070518160224),
 ('020032',4,'Nylon indoor w/Ph & Fr.',20070518160325),
 ('020032',6,'4\' x 6\'',20070518160325),
 ('020032',7,'alabama',20070518160325),
 ('020032',8,'alabama.jpg',20070518160325),
 ('010300',6,'3\' x 5\'',20070521140334),
 ('010301',6,'4\' x 6\'',20070521140414),
 ('010302',6,'5\' x 8\'',20070521140440),
 ('010303',6,'6\' x 10\'',20070521140509);
INSERT INTO `item_attribute` (`itemno`,`attribute_cd`,`attribute_value`,`create_ts`) VALUES 
 ('010304',6,'8\' x 12\'',20070521140539),
 ('010305',6,'10\' x 15\'',20070521140553),
 ('010306',6,'12\' x 18\'',20070521140634),
 ('010307',6,'15\' x 25\'',20070521140657);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
