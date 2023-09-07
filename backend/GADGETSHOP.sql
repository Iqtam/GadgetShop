/*
 Navicat Premium Data Transfer

 Source Server         : localhost_1521_orclpdb
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : GADGETSHOP

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 07/09/2023 21:14:53
*/


-- ----------------------------
-- Table structure for CART
-- ----------------------------
DROP TABLE "GADGETSHOP"."CART";
CREATE TABLE "GADGETSHOP"."CART" (
  "CART_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73392".nextval NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CART
-- ----------------------------

-- ----------------------------
-- Table structure for CATEGORY
-- ----------------------------
DROP TABLE "GADGETSHOP"."CATEGORY";
CREATE TABLE "GADGETSHOP"."CATEGORY" (
  "CATEGORY_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73413".nextval NOT NULL,
  "CATEGORY_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "CHILD_PARENT_CATEGORY_ID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CATEGORY
-- ----------------------------
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('1', 'Computer', NULL);
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('2', 'Laptop', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('11', 'Audio Accessories', NULL);
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('12', 'Head Phone', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('13', 'Bluetooth Speaker', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('14', 'Microphone', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('15', 'Ear Phone', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('16', 'Earbuds', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('17', 'Neckband', '11');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('3', 'Monitor', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('4', 'Processor', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('5', 'Graphics Card', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('6', 'Keyboard', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('7', 'Mouse', '1');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('8', 'Smart Device', NULL);
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('9', 'Smart Watch', '8');
INSERT INTO "GADGETSHOP"."CATEGORY" VALUES ('10', 'Smart Band', '8');

-- ----------------------------
-- Table structure for CUSTOMER
-- ----------------------------
DROP TABLE "GADGETSHOP"."CUSTOMER";
CREATE TABLE "GADGETSHOP"."CUSTOMER" (
  "CUSTOMER_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73382".nextval NOT NULL,
  "FIRST_NAME" VARCHAR2(100 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "AREA" VARCHAR2(100 BYTE) VISIBLE,
  "CITY" VARCHAR2(50 BYTE) VISIBLE,
  "STATE" VARCHAR2(50 BYTE) VISIBLE,
  "HOUSE" VARCHAR2(100 BYTE) VISIBLE,
  "ROAD" VARCHAR2(100 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "PASSWORD" VARCHAR2(1024 BYTE) VISIBLE NOT NULL,
  "DATE_OF_BIRTH" DATE VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CUSTOMER
-- ----------------------------
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('41', 'jhon', 'doe', NULL, NULL, NULL, NULL, NULL, 'a@gmail.com', '$2b$10$hRMicVrtqVQ0YwHNMlh8ROI8DfpSqsYkccXfunTZrxU7j8jatWjzi', NULL);
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('42', 'jhon', 'doe', NULL, NULL, NULL, NULL, NULL, 'b@gmail.com', '$2b$10$tMkpVyIGAuSwvbjdPlhM/OlBUnqby9UkwESyZlL9lGYif/zhWObYa', NULL);
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('43', 'min', 'haj', NULL, NULL, NULL, NULL, NULL, 'mij@gmail.com', '$2b$10$U9EtXPP9EnNhSdli04aX9eV5iJk1xivFF1CyOiFkTgHN5A0gU0.3u', NULL);
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('1', 'tamim', 'iqbal', 'BUET', 'Dhaka', 'Dhaka', 'Titumir Hall', NULL, 'abcd@gmail.com', '$2b$10$Jl9EZiQWy0ZSwMqDaYscm.IhHKuDZz4G.bCkW1tq14AXgrd2LyzmO', TO_DATE('2005-12-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('21', 'Gran', 'Mallison', 'Samphanthawong', 'Kovel’', 'La Concordia', '92', '3113 Florence Point', 'gmallison0@sun.com', '$2b$10$AP2eoMGdIAFV0GBSy2CyO.28iJyIT.tQHEossx0FsYM.7Dyn0Xcf.', TO_DATE('2003-06-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('22', 'Marcus', 'Hasely', 'Babakan', 'Kosh-Agach', 'Stoszowice', '7', '8641 Gulseth Plaza', 'mhasely1@hostgator.com', '$2b$10$U82PRF6WaW/3ZgqXifeAFeML9TRbZ/GWOz64thzr2QdkugMETs1qS', TO_DATE('1994-06-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('23', 'Xenos', 'Hands', 'Alangilanan', 'Cipunglu', 'Tseel', '28579', '2 Garrison Court', 'xhands2@msu.edu', '$2b$10$/n3B5QmzVD9pcjkHlanVU.xs3g5iMZAS3Z222UfpmVJkX3Ju0ANdO', TO_DATE('1999-10-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('24', 'Alanna', 'Bottjer', 'Baddomalhi', 'Bubullimë', 'Bang Len', '4993', '7485 Scoville Point', 'abottjer3@google.co.uk', '$2b$10$FPLQpExpbOb6aT4FeqpDCOYNm.2mDMyMGZsuQWk9reNHAkqmzbRWS', TO_DATE('2000-11-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('25', 'Barbey', 'Mammatt', 'Taquile', 'Axioúpoli', 'Tegalbuleud', '11', '2 Union Place', 'bmammatt4@multiply.com', '$2b$10$PneyHQB7hpjERpsEpi4jU.PjRz1XZIKFJ7ABXO0uUcxq1kMvQZ2RS', TO_DATE('2002-05-19 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('26', 'Tessy', 'Blues', 'Dosso', 'Santana do Paraíso', 'Zebrzydowice', '46', '8011 Dryden Center', 'tblues5@scientificamerican.com', '$2b$10$axsx4s86hOuyGHHT/dbVf.hXF0O3iFEBOGXN5MtVqAuxLyqpED0Vy', TO_DATE('2005-07-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('27', 'Tommie', 'Redler', 'Kurortnyy', 'Numazu', 'Phú Lộc', '39', '42663 Annamark Park', 'tredler6@topsy.com', '$2b$10$AYU95eOkEGZeUOYscYFqLeRVx1HcWfdoxj4ubCqQmMkxTfTMqbu2e', TO_DATE('1995-09-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('28', 'Ada', 'Tellett', 'Las Heras', 'Paraíso', 'Francos', '9068', '801 Dawn Way', 'atellett7@is.gd', '$2b$10$JAOwNvp5.G8DnY8rtOpMP.tF2x020M0axwpDEddCYWKaCTCrB0TmC', TO_DATE('1998-10-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('29', 'Ophelie', 'Szymanzyk', 'Sterlibashevo', 'Thành Phố Nam Định', 'Stepnogorsk', '607', '35958 Victoria Avenue', 'oszymanzyk8@clickbank.net', '$2b$10$bCKt7a2wQkUCCQBEquZkXuhqWlGv7LONNFd2NyppAe7Vq6KjX.lny', TO_DATE('1999-06-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "GADGETSHOP"."CUSTOMER" VALUES ('30', 'Kipp', 'Dignan', 'Matnah', 'Montélimar', 'Kuala Lumpur', '44', '8650 Mosinee Drive', 'kdignan9@friendfeed.com', '$2b$10$oQqTK70CkqMiOk7tVFJWu.nq9wFYTRz7dVbkm1Xyyy4zdAq0.FNGq', TO_DATE('1993-07-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for CUSTOMER_CONTACT_NO
-- ----------------------------
DROP TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO";
CREATE TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO" (
  "CONTACT_NO" NUMBER VISIBLE NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CUSTOMER_CONTACT_NO
-- ----------------------------

-- ----------------------------
-- Table structure for OFFER
-- ----------------------------
DROP TABLE "GADGETSHOP"."OFFER";
CREATE TABLE "GADGETSHOP"."OFFER" (
  "OFFER_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73398".nextval NOT NULL,
  "START_DATE" DATE VISIBLE NOT NULL,
  "END_DATE" DATE VISIBLE NOT NULL,
  "PERCENT_DISCOUNT" NUMBER VISIBLE NOT NULL,
  "MIN_QUANTITY" NUMBER VISIBLE,
  "OFFER_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of OFFER
-- ----------------------------
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('1', TO_DATE('01-01 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('07-01 23:59:59', 'MM-DD HH24:MI:SS'), '15', '10000', 'New Year');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('2', TO_DATE('13-02 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('13-02 23:59:59', 'MM-DD HH24:MI:SS'), '13', '2000', 'Basanta Utsab');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('3', TO_DATE('14-02 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('14-02 23:59:59', 'MM-DD HH24:MI:SS'), '14', '2000', 'Valentines Day');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('4', TO_DATE('21-02 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('21-02 23:59:59', 'MM-DD HH24:MI:SS'), '21', '5000', 'International Language Day');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('5', TO_DATE('26-03 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('26-03 23:59:59', 'MM-DD HH24:MI:SS'), '26', '3000', 'Independence Day');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('6', TO_DATE('14-04 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('14-04 23:59:59', 'MM-DD HH24:MI:SS'), '14', '1000', 'Shuvo Noboborsho');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('7', TO_DATE('05-01 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('05-01 23:59:59', 'MM-DD HH24:MI:SS'), '10', '5000', 'May Day');
INSERT INTO "GADGETSHOP"."OFFER" VALUES ('8', TO_DATE('16-12 00:00:00', 'MM-DD HH24:MI:SS'), TO_DATE('16-12 23:59:59', 'MM-DD HH24:MI:SS'), '16', '10000', 'Victory Day');
-- ----------------------------
-- Table structure for ORDERS
-- ----------------------------
DROP TABLE "GADGETSHOP"."ORDERS";
CREATE TABLE "GADGETSHOP"."ORDERS" (
  "ORDER_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73403".nextval NOT NULL,
  "ORDER_DATE" DATE VISIBLE NOT NULL,
  "HOUSE" NUMBER VISIBLE NOT NULL,
  "ROAD" VARCHAR2(100 BYTE) VISIBLE,
  "AREA" VARCHAR2(100 BYTE) VISIBLE,
  "CITY" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "STATE" VARCHAR2(50 BYTE) VISIBLE NOT NULL,
  "CART_ID" NUMBER VISIBLE NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL,
  "SHIPPING_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDERS
-- ----------------------------

-- ----------------------------
-- Table structure for ORDER_TRACKING
-- ----------------------------
DROP TABLE "GADGETSHOP"."ORDER_TRACKING";
CREATE TABLE "GADGETSHOP"."ORDER_TRACKING" (
  "TRACKING_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73406".nextval NOT NULL,
  "STATUS" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "ORDER_ID" NUMBER VISIBLE NOT NULL,
  "CART_ID" NUMBER VISIBLE NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDER_TRACKING
-- ----------------------------

-- ----------------------------
-- Table structure for PAYMENT
-- ----------------------------
DROP TABLE "GADGETSHOP"."PAYMENT";
CREATE TABLE "GADGETSHOP"."PAYMENT" (
  "PAYMENT_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73409".nextval NOT NULL,
  "METHOD" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "ORDER_ID" NUMBER VISIBLE NOT NULL,
  "CART_ID" NUMBER VISIBLE NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PAYMENT
-- ----------------------------

-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
DROP TABLE "GADGETSHOP"."PRODUCT";
CREATE TABLE "GADGETSHOP"."PRODUCT" (
  "PRODUCT_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73416".nextval NOT NULL,
  "TITLLE" VARCHAR2(2048 BYTE) VISIBLE NOT NULL,
  "PRICE" NUMBER VISIBLE NOT NULL,
  "STOCK" NUMBER VISIBLE,
  "DESCRIPTION" VARCHAR2(2048 BYTE) VISIBLE,
  "IMAGE" VARCHAR2(1024 BYTE) VISIBLE DEFAULT 'https://www.pexels.com/photo/top-view-photo-gadgets-on-hardwood-floor-3178938/',
  "SUPPLIER_ID" NUMBER VISIBLE NOT NULL,
  "CATEGORY_ID" NUMBER VISIBLE NOT NULL,
  "BRAND" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT
-- ----------------------------
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('18', 'MSI Core i5 11th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650 MAX Q/14...', '52990', '5', 'Intel Core i5 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 10 Operating System512 GB SSD39.62 cm (15.6 Inch) Display2 Year Carry-In Warranty Term', 'https://rukminim2.flixcart.com/image/312/312/l2qhjm80/computer/l/t/g/gf63-thin-11uc-867in-gaming-laptop-msi-original-imageyk5hzuthuyf.jpeg?q=70', '3', '2', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('19', 'ASUS TUF Gaming A15 Ryzen 5 Hexa Core AMD R5-4600H - (8 GB/1 TB SSD/Windows 11 Home/4 GB Graphics/NVID...', '65990', '5', 'AMD Ryzen 5 Hexa Core Processor8 GB DDR4 RAM64 bit Windows 11 Operating System1 TB SSD39.62 cm (15.6 inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/i/j/u/-original-imaggzes4pd7ptkx.jpeg?q=70', '2', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('20', 'Lenovo IdeaPad Gaming 3 Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA...', '55430', '8', 'Intel Core i5 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD100.63 cm (39.62 cm) Display1Year Onsite warranty', 'https://rukminim2.flixcart.com/image/312/312/ks99aq80/computer/y/z/7/na-gaming-laptop-lenovo-original-imag5ve3jvhgvsnx.jpeg?q=70', '3', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('21', 'HP Victus Core i5 12th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/14...', '63990', '4', 'Intel Core i5 Processor (12th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/z/r/6/-original-imagrmdyzxxfhnjj.jpeg?q=70', '4', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('22', 'DELL G15 Core i5 12th Gen - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050/12...', '72990', '3', 'Intel Core i5 Processor (12th Gen)16 GB DDR5 RAM64 bit Windows 11 Operating System512 GB SSD96.52 cm (38 cm) Display1 Year Premium Support', 'https://rukminim2.flixcart.com/image/312/312/l26hdow0/computer/d/r/a/g15-5521-se-gaming-laptop-dell-original-imagdktezaswjvsk.jpeg?q=70', '9', '2', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('23', 'Lenovo Ideapad Gaming 3 AMD Ryzen 5 Hexa Core 5600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/N...', '53990', '6', 'AMD Ryzen 5 Hexa Core Processor8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite warranty', 'https://rukminim2.flixcart.com/image/312/312/kynb6vk0/computer/k/j/a/-original-imagaufne7h4hgbz.jpeg?q=70', '7', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('24', 'ASUS TUF Gaming F15 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce G...', '58990', '3', 'Intel Core i5 Processor (10th Gen)8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/l3rmzrk0/computer/s/z/r/-original-imagetgzg4pgszmt.jpeg?q=70', '1', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('25', 'ASUS TUF Gaming F15 (2022) Core i7 12th Gen - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA G...', '100990', '3', 'Intel Core i7 Processor (12th Gen)16 GB DDR5 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/l3rmzrk0/computer/l/7/m/-original-imagetj2awbvdju6.jpeg?q=70', '8', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('26', 'Lenovo IdeaPad Gaming 3 Ryzen 7 Octa Core AMD R7-5800H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphi...', '75990', '6', 'AMD Ryzen 7 Octa Core Processor16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) DisplayOffice Home and Student 20211 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/ks99aq80/computer/y/z/7/na-gaming-laptop-lenovo-original-imag5ve3jvhgvsnx.jpeg?q=70', '4', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('27', 'Lenovo Ideapad Gaming 3 Ryzen 5 Hexa Core AMD R5-5600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphic...', '56200', '5', 'AMD Ryzen 5 Hexa Core Processor8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) Display1 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/kynb6vk0/computer/k/j/a/-original-imagaufne7h4hgbz.jpeg?q=70', '4', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('28', 'Acer Aspire 7 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 165...', '52500', '9', 'Free upgrade to Windows 11 when availableIntel Core i5 Processor (10th Gen)8 GB DDR4 RAM64 bit Windows 10 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayQuick Access, Acer Care Center, Acer Product Registration, Acer Collection1 Year International Travelers Warranty', 'https://rukminim2.flixcart.com/image/312/312/kp1imq80/computer/u/b/z/na-gaming-laptop-acer-original-imag3d63hk3h8nm2.jpeg?q=70', '8', '2', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('29', 'Acer Aspire 7 Core i5 12th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 305...', '65990', '5', 'Intel Core i5 Processor (12th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year International Travelers Warranty (ITW)', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/t/t/m/-original-imaghkcjwpmszxtg.jpeg?q=70', '9', '2', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('30', 'MSI Core i7 13th Gen - (16 GB/1 TB SSD/Windows 11 Home/8 GB Graphics/NVIDIA GeForce RTX 4060) Katana 1...', '139990', '7', 'Intel Core i7 Processor (13th Gen)16 GB DDR5 RAMWindows 11 Operating System1 TB SSD43.94 cm (17.3 Inch) Display2 Year Carry-in Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/s/n/d/katana-17-b13vfk-253in-gaming-laptop-msi-original-imagmmhgf9gjkhzf.jpeg?q=70', '1', '2', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('31', 'ASUS ROG Strix G15 (2022) with 90Whr Battery Ryzen 7 Octa Core AMD R7-6800H - (16 GB/1 TB SSD/Windows ...', '119990', '7', 'AMD Ryzen 7 Octa Core Processor16 GB DDR5 RAMWindows 11 Operating System1 TB SSD39.62 cm (15.6 inch) DisplayMicrosoft Office Home & Student1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/l0vbukw0/computer/z/o/e/-original-imagckcfz6jgjn3z.jpeg?q=70', '6', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('32', 'Lenovo Ideapad Gaming 3 Ryzen 5 Hexa Core AMD R5-5600H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphi...', '65590', '4', 'AMD Ryzen 5 Hexa Core Processor16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayMicrosoft Office Home & Student 20211 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/kynb6vk0/computer/k/j/a/-original-imagaufne7h4hgbz.jpeg?q=70', '9', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('33', 'DELL Ryzen 5 Hexa Core AMD R5-6600H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce R...', '73990', '8', 'Processor: AMDR5-6600H (3.30 GHz Up to 4.50 Ghz 6 cores 16MB L3 Cache)RAM & Storage: 16GB, 2x8GB, DDR5, 4800Mhz & 512GB SSDDisplay & Graphics: 15.6" FHD WVA AG 120Hz 250 nits Narrow Border & NVIDIA GEFORCE RTX 3050 (4GB GDDR6)Software & Keyboard: Win 11 + Office H&S 2021 & Backlit Keyboard OrangePorts: (1) HDMI 2.1, (3) SuperSpeed USB 3.2 Gen 1 Type-A, (1) USB Type C Gen 3.2 Display Port Alt-Mode, Headphone/Mic, (1) RJ45AMD Ryzen 5 Hexa Core Processor16 GB DDR5 RAM64 bit Windows 11 Operating System512 GB SSD96.52 cm (38 cm) Display1 Year Onsite Hardware Service', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/p/f/x/-original-imaghzahmt9zphps.jpeg?q=70', '1', '2', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('34', 'HP Victus Core i7 12th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050/14...', '89990', '8', 'Intel Core i7 Processor (12th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/l5bd5zk0/computer/o/l/w/15-fa0353tx-gaming-laptop-hp-original-imaggytdx6zpv6qg.jpeg?q=70', '2', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('64', 'SAMSUNG 22 inch Full HD LED Backlit VA Panel (54.48 cm) Monitor (LS22A33ANHWXXL)', '6499', '5', 'Panel Type: VA PanelScreen Resolution Type: Full HDHDMIBrightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 60 HzHDMI Ports - 13 Years Warranty on Product From Manufacturer', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/v/i/j/-original-imagn6h2gfmkm774.jpeg?q=70', '39', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('65', 'Acer Nitro 23.8 inch Full HD LED Backlit IPS Panel Gaming Monitor (VG240Y)', '11399', '7', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 250 NitsResponse Time: 0.5 ms | Refresh Rate: 165 HzHDMI Ports - 23 Years Onsite Warranty from Date of Purchase', 'https://rukminim2.flixcart.com/image/312/312/kk76wsw0/monitor/z/j/2/vg240ys-um-qv0ss-s01-acer-original-imafzhrx7chh7cbg.jpeg?q=70', '19', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('66', 'SAMSUNG Odyssey G9 34 inch Curved UWQHD VA Panel with Height Adjustable, Stand, USB Type-C, Gaming Hub...', '127399', '7', 'Panel Type: VA PanelScreen Resolution Type: UWQHDBrightness: 250 nitsResponse Time: 0.1 ms | Refresh Rate: 175 Hz3 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/p/l/z/ls34bg850swxxl-wqhd-34-ls34bg850swxxl-samsung-original-imagz8y6gmvw8v5g.jpeg?q=70', '32', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('67', 'SAMSUNG 49 inch Curved UWQHD VA Panel with USB Type-C, Height Adjustable Stand, 1800R Curvature, HDR 4...', '127399', '6', 'Panel Type: VA PanelScreen Resolution Type: UWQHDBrightness: 350 nitsResponse Time: 4 ms | Refresh Rate: 120 Hz3 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/x/y/o/ls49a950uiwxxl-uwqhd-49-ls49a950uiwxxl-samsung-original-imagz8ydgfwg5en2.jpeg?q=70', '66', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('68', 'GIGABYTE 47.53 inch 4K Ultra HD with DisplayPort 1.4, USB Type-C, Built-in Space Audio, 3840 X 2160 Di...', '112000', '8', 'Screen Resolution Type: 4K Ultra HDResponse Time: 1 ms | Refresh Rate: 120 Hz3 years carry in to service centre', 'https://rukminim2.flixcart.com/image/312/312/l0bbonk0/monitor/k/a/2/-original-imagc4fxmfdhhqbg.jpeg?q=70', '33', '3', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('69', 'CORNEA 55 inch Full HD VA Panel Monitor (55 Inches Ultra Touch Series Interactive Flat Panel - 4GB RAM...', '109999', '8', 'Panel Type: VA PanelScreen Resolution Type: Full HDResponse Time: 2 ms1', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/y/q/j/55-inches-ultra-touch-series-interactive-flat-panel-4gb-ram-32gb-original-imagrxf7yagrazed.jpeg?q=70', '63', '3', 'CORNEA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('70', 'Palas 21.5 inch HD Monitor (215BM3M Industrial Touch Screen PC with 55 cm (21.5 inches) Screen)', '109386', '4', 'Screen Resolution Type: HDResponse Time: 5 msNA', 'https://rukminim2.flixcart.com/image/312/312/kr0ynbk0/monitor/r/c/h/270bm3m-industrial-touch-screen-pc-with-68-cm-27-inches-screen-original-imag4wv6f4wu9dn7.jpeg?q=70', '71', '3', 'Palas');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('71', 'DELL AW-Series 27 inch WQHD LED Backlit IPS Panel with Vesa Certified HDR 600, Height, Tilt, Swivel Ad...', '105799', '6', 'Panel Type: IPS PanelScreen Resolution Type: WQHDBrightness: 450 nitsResponse Time: 1 ms | Refresh Rate: 240 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kvcpn680/monitor/x/q/n/aw2721d-wqhd-27-210-axtq-dell-original-imag89mgkzehp4gq.jpeg?q=70', '50', '3', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('72', 'GIGABYTE Aorus 43 inch 4K Ultra HD VA Panel with HDR, DisplayPort 1.4, HDMI 2.1, USB Type-C, 3840 X 21...', '88592', '5', 'Panel Type: VA PanelScreen Resolution Type: 4K Ultra HDBrightness: 1000 nitsResponse Time: 1 ms | Refresh Rate: 144 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kzygpzk0/monitor/3/h/e/aorus-fv43u-4k-ultra-hd-43-20vm0-afv43uba-1inr-gigabyte-original-imagbuhftjbhzhce.jpeg?q=70', '36', '3', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('73', 'Acer Predator 42.5 inch 4K Ultra HD LED Backlit IPS Panel Gaming Monitor (PREDATOR CG437K)', '86600', '7', 'Panel Type: IPS PanelScreen Resolution Type: 4K Ultra HDBrightness: 1000 nitsAnti-Glare ScreenResponse Time: 1 ms | Refresh Rate: 144 Hz3 years domestic warranty', 'https://rukminim2.flixcart.com/image/312/312/kx9as280/monitor/o/n/a/predator-cg437k-4k-ultra-hd-42-5-um-mc7si-p01-acer-original-imag9r99gdhyazn6.jpeg?q=70', '7', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('74', 'ASUS TUF 28 inch 4K Ultra HD LED Backlit IPS Panel Gaming Monitor (TUF Gaming VG28UQL1A)', '85000', '7', 'Panel Type: IPS PanelScreen Resolution Type: 4K Ultra HDBrightness: 450 nitsResponse Time: 1 ms | Refresh Rate: 144 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kybvo280/monitor/q/v/p/tuf-gaming-vg28uql1a-4k-ultra-hd-28-90lm0780-b01110-asus-original-imagahbtnupkgdfz.jpeg?q=70', '49', '3', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('75', 'ASUS ROG 27 Inch WQHD LED Backlit IPS Panel Gaming Monitor (Rog Strix XG27AQM)', '84999', '9', 'Panel Type: IPS PanelScreen Resolution Type: WQHDBrightness: 400 nitsResponse Time: 0.5 ms | Refresh Rate: 270 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kyxb9u80/monitor/y/h/h/rog-strix-xg27aqm-wqhd-27-90lm06u5-b01310-asus-original-imagbfnfsrm5cf8b.jpeg?q=70', '84', '3', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('76', 'SAMSUNG Odyssey Neo G7 43 inch 4K Ultra HD VA Panel with Smart TV, Gaming Hub, Game Bar, HDR600, Quant...', '84555', '5', 'Panel Type: VA PanelScreen Resolution Type: 4K Ultra HDBrightness: 400 nitsResponse Time: 1 ms | Refresh Rate: 144 Hz3 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/5/s/o/ls43cg700nwxxl-4k-ultra-hd-43-ls43cg700nwxxl-samsung-original-imagz8yea8vh7rdp.jpeg?q=70', '39', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('77', 'SAMSUNG Odyssey Neo G8 32 inch Curved 4K Ultra HD VA Panel with Height Adjustable Stand, Quantum HDR 2...', '82899', '6', 'Panel Type: VA PanelScreen Resolution Type: 4K Ultra HDBrightness: 350 nitsResponse Time: 1 ms | Refresh Rate: 240 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/p/u/c/ls32bg850nwxxl-uhd-32-ls32bg850nwxxl-samsung-original-imaggfy28whhczrp.jpeg?q=70', '51', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('78', 'ASUS ROG 24.5 inch Full HD LED Backlit IPS Panel Gaming Monitor (PG259QNR)', '76299', '3', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 400 nitsResponse Time: 1 ms | Refresh Rate: 360 HzHDMI Ports - 13 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kx7vc7k0/monitor/c/9/2/pg259qnr-full-hd-24-5-90lm05q3-b01310-asus-original-imag9q5g8n4zdf6h.jpeg?q=70', '53', '3', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('79', 'GIGABYTE M Series 31.5 inch 4K Ultra HD IPS Panel with HDR 400, Height Adjustable Stand, Inbuilt Speak...', '73911', '9', 'Panel Type: IPS PanelScreen Resolution Type: 4K Ultra HDBrightness: 350 nitsResponse Time: 1 ms | Refresh Rate: 144 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/l58iaa80/monitor/o/8/d/m32u-uhd-31-5-4719331809997-gigabyte-original-imagfyjwyg9gh6c5.jpeg?q=70', '60', '3', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('80', 'LG 27 inch UHD Monitor (LG27MD5KL)', '73000', '6', 'Screen Resolution Type: UHDResponse Time: 14 ms1 year', 'https://rukminim2.flixcart.com/image/312/312/ko4ni4w0/monitor/t/j/2/lg27md5kl-27-27md5kl-b-lg-original-imag2ngyyd4rbhgz.jpeg?q=70', '96', '3', 'LG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('35', 'Lenovo IdeaPad Gaming 3 Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA...', '57750', '6', 'Intel Core i5 Processor (11th Gen)8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty + 1 Year Premium Care + 1 Year Accidentaly Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/l/d/c/gaming-3-gaming-laptop-lenovo-original-imaghtkrg8rw6jtp.jpeg?q=70', '10', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('36', 'Lenovo IdeaPad Gaming 3 Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA...', '62990', '8', 'Intel Core i5 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayOffice Home and Student 20211 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/kynb6vk0/computer/k/j/a/-original-imagaufne7h4hgbz.jpeg?q=70', '8', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('37', 'DELL Alienware Core i5 12th Gen - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3...', '154990', '10', 'Intel Core i5 Processor (12th Gen)16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD35.56 cm (14 Inch) Display1 Year Onsite Premium Support Plus (Includes ADP)', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/5/i/o/-original-imagz77svkrpzns3.jpeg?q=70', '10', '2', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('38', 'Lenovo IdeaPad Gaming 3 Ryzen 7 Octa Core AMD R7-5800H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphic...', '72990', '9', 'AMD Ryzen 7 Octa Core Processor8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD100.63 cm (39.62 cm) Display1 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/u/h/h/15ach6-gaming-laptop-lenovo-original-imaggmxtjewnjpeq.jpeg?q=70', '2', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('39', 'Lenovo IdeaPad Gaming 3 Ryzen 5 Hexa Core AMD R5-5600H - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphi...', '68990', '3', 'AMD Ryzen 5 Hexa Core Processor16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayNA1 Year Onsite�Warranty�+ 1 Year Premium Care + 1 Year Accidental Damage Protection', 'https://rukminim2.flixcart.com/image/312/312/ks99aq80/computer/y/z/7/na-gaming-laptop-lenovo-original-imag5ve3jvhgvsnx.jpeg?q=70', '10', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('40', 'DELL Core i5 11th Gen - (16 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050) G15-5...', '73990', '8', 'Processor: i5-11260H (Base: 2.60 GHz up to 4.40 GHz) 12MB CacheRAM & Storage: 16GB DDR4 (2 DIMM Slots) 512GB SSDGraphics: NVIDIA GEFORCE RTX 3050 (4GB GDDR6) TGP 90WDisplay: 15.6" FHD WVA AG 250 nits 120Hz Narrow Border, Keyboard & Warranty: Backlit Keyboard Orange & 1 Year Onsite Premium SupportPorts: 1. HiSpeed USB 2.0 | 2. HiSpeed USB 2.0 with PowerShare | 3. USB 3.2 Gen 1 Type-C port with DisplayPort with alt mode | 4. SuperSpeed USB 3.2 | 5. HDMI | 6. Power in | 7. RJ45 | 8. Headphones/micIntel Core i5 Processor (11th Gen)16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayOffice Home and Student 20211 Year Onsite Hardware Service', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/y/9/l/-original-imaghzahumgmsmj5.jpeg?q=70', '5', '2', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('41', 'HP Pavilion Ryzen 5 Hexa Core AMD R5-5600H - (8 GB/512 GB SSD/Windows 10/4 GB Graphics/NVIDIA GeForce ...', '62500', '8', 'AMD Ryzen 5 Hexa Core Processor8 GB DDR4 RAM64 bit Windows 10 Operating System512 GB SSD39.62 cm (15.6 inch) DisplayHP Documentation, HP e-service, HP BIOS Recovery, HP SSRM, HP Smart, HP Jumpstarts1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/kbqu4cw0/computer/q/x/r/hp-original-imaftyzachgrav8f.jpeg?q=70', '1', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('81', 'DELL ULTRASHARP 3223QE 32 inch 4K Ultra HD IPS Panel Monitor (Ultra Sharp U3223QE USB-C HUB)', '72500', '5', 'Panel Type: IPS PanelScreen Resolution Type: 4K Ultra HDHDMIResponse Time: 8 msHDMI Ports - 13', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/w/s/z/ultra-sharp-u3223qe-usb-c-hub-4k-ultra-hd-32-2022-u3223qe-dell-original-imagq73sprhhgefy.jpeg?q=70', '68', '3', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('82', 'SAMSUNG Odyssey Neo G7 32 inch Curved 4K Ultra HD VA Panel with Height Adjustable Stand, Quantum HDR 2...', '71799', '6', 'Panel Type: VA PanelScreen Resolution Type: 4K Ultra HDBrightness: 350 nitsResponse Time: 1 ms | Refresh Rate: 165 HzHDMI Ports - 23 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/2/e/9/ls32bg750nwxxl-uhd-32-ls32bg750nwxxl-samsung-original-imaggfy4pnzbmgz8.jpeg?q=70', '18', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('83', 'DELL 24.8 inch Quad HD IPS Panel Monitor (UltraSharp 25 Inch QHD (2560 x 1440) LED Backlit LCD IPS USB...', '70999', '5', 'Panel Type: IPS PanelScreen Resolution Type: Quad HDResponse Time: 0.5 ms3 YEAR', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/r/c/m/ultrasharp-25-inch-qhd-2560-x-1440-led-backlit-lcd-ips-usb-c-original-imagrcekavzbnuhy.jpeg?q=70', '91', '3', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('84', 'SAMSUNG 34 inch Curved WQHD VA Panel Thunderbolt 3 Port , PBP, PIP, 21:9 Ultrawide Gaming Monitor (LC3...', '67399', '3', 'Panel Type: VA PanelScreen Resolution Type: WQHDResponse Time: 4 ms | Refresh Rate: 100 Hz3 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/klv7ekw0/monitor/r/k/7/lc34j791wtwxxl-34-c34j791wtw-samsung-original-imagyw93yebmhasb.jpeg?q=70', '73', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('85', 'A1Gizmo 13.3 inch Full HD IPS Panel Monitor (P2_Pro)', '61999', '10', 'Panel Type: IPS PanelScreen Resolution Type: Full HDResponse Time: 2000 ms1 Year', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/c/o/r/p2-pro-full-hd-13-3-6973892810009-a1gizmo-original-imagpg4qghku3hcu.jpeg?q=70', '95', '3', 'A1Gizmo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('86', 'ASUS ROG 31.5 inch Curved WQHD LED Backlit VA Panel Gaming Monitor (XG32VC)', '59999', '3', 'Panel Type: VA PanelScreen Resolution Type: WQHDBrightness: 400 nitsResponse Time: 1 msHDMI Ports - 13 Years Domestic Warranty', 'https://rukminim2.flixcart.com/image/312/312/kq8dua80/monitor/d/e/4/xg32vc-31-5-90lm03s0-b04110-asus-original-imag4agpna9zzjhp.jpeg?q=70', '20', '3', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('87', 'BenQ EX 27 inch Quad HD LED Backlit IPS Panel with Smart 16:9 HDRi image optimization , true sound aud...', '59990', '6', 'Panel Type: IPS PanelScreen Resolution Type: Quad HDBrightness: 400 nitsResponse Time: 1 ms | Refresh Rate: 240 HzHDMI Ports - 239 months from the date of manufacturing or 36 months from the date of invoice (POP) whichever is earlier', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/4/h/2/-original-imagmg2ftxmf5wqp.jpeg?q=70', '15', '3', 'BenQ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('88', 'ViewSonic VP Series 27 inch 4K Ultra HD LED Backlit IPS Panel Extensive color palette, Pivot, Swivel, ...', '59990', '9', 'Panel Type: IPS PanelScreen Resolution Type: 4K Ultra HDBrightness: 350 nitsResponse Time: 5 ms | Refresh Rate: 60 HzHDMI Ports - 25 Years Warranty; 3 Years Standard On-site Manufacturer Warranty from the Date of Purchase and 2 Years Extended Warranty upon Registration', 'https://rukminim2.flixcart.com/image/312/312/krz97rk0/monitor/n/n/q/vp2785-4k-27-vs16881-viewsonic-original-imag5n6cxbj4jgcp.jpeg?q=70', '67', '3', 'ViewSonic');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('89', 'DELL S SERIES 32 inch Curved UHD IPS Panel Monitor (S3221QS)', '58990', '10', 'Panel Type: IPS PanelScreen Resolution Type: UHDHDMIResponse Time: 0.5 ms | Refresh Rate: 60 Hz3 YEAR', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/p/b/q/s3221qs-uhd-32-s3221qs-uhd-curved-3840x2160-dell-original-imagpb8fzaz9tnfh.jpeg?q=70', '17', '3', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('3', 'Primebook 4G enabled Android based MediaTek MT8788 - (4 GB/128 GB EMMC Storage/Prime OS) S 4G Thin and...', '14990', '6', 'MediaTek MediaTek MT8788 Processor4 GB LPDDR4 RAMAndroid Operating System27.94 cm (11 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/y/d/u/s-4g-thin-and-light-laptop-primebook-original-imagraab4g5uh39r.jpeg?q=70', '8', '2', 'Primebook');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('4', 'Infinix Y1 Plus Neo Intel Celeron Quad Core 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) XL30 Thin and...', '24490', '9', 'Intel Celeron Quad Core Processor (11th Gen)8 GB LPDDR4X RAMWindows 11 Operating System512 GB SSD39.01 cm (15.36 inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/t/z/o/xl30-thin-and-light-laptop-infinix-original-imagzmncf5snymhu.jpeg?q=70', '1', '2', 'Infinix');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('5', 'ASUS Vivobook 15 Core i3 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) X515EA-EJ322WS | X515EA-EJ328WS ...', '37990', '4', 'Intel Core i3 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/q/e/z/-original-imagpxgqesgrthks.jpeg?q=70', '2', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('6', 'ASUS Chromebook Celeron Dual Core - (4 GB/64 GB EMMC Storage/Chrome OS) CX1101CMA_ID-GJ0002 / CX1101CM...', '14990', '3', 'Intel Celeron Dual Core Processor4 GB LPDDR4 RAM64 bit Chrome Operating System29.46 cm (11.6 Inch) Display1 Year onsite warranty', 'https://rukminim2.flixcart.com/image/312/312/kwnv6a80/computer/9/c/i/-original-imag9aajekwegabt.jpeg?q=70', '7', '2', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('7', 'APPLE 2020 Macbook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A', '81990', '7', 'Apple M1 Processor8 GB DDR4 RAMMac OS Operating System256 GB SSD33.78 cm (13.3 inch) DisplayBuilt-in Apps: iMovie, Siri, GarageBand, Pages, Numbers, Photos, Keynote, Safari, Mail, FaceTime, Messages, Maps, Stocks, Home, Voice Memos, Notes, Calendar, Contacts, Reminders, Photo Booth, Preview, Books, App Store, Time Machine, TV, Music, Podcasts, Find My, QuickTime Player1 Year Limited Warra­nty', 'https://rukminim2.flixcart.com/image/312/312/kp5sya80/screen-guard/tempered-glass/o/v/n/apple-macbook-air-m1-13-3-inch-lightwings-original-imag3gh5xftgbpg3.jpeg?q=70', '9', '2', 'APPLE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('8', 'HP 15s (2023) Intel Core i5 11th Gen - (16 GB/512 GB SSD/Windows 11 Home) 15s-fr4001TU Thin and Light ...', '55990', '4', 'Intel Core i5 Processor (11th Gen)16 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/4/b/h/-original-imagp7pfa6tscqpx.jpeg?q=70', '8', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('9', 'HP 15s (2023) Athlon Dual Core 3050U - (8 GB/512 GB SSD/Windows 11 Home) 15s-ey1509AU Thin and Light L...', '31990', '3', 'AMD Athlon Dual Core Processor8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/5/6/i/-original-imaggshd5zgfe8ev.jpeg?q=70', '4', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('10', 'Lenovo LOQ Ryzen 7 Octa Core 7840HS - (16 GB/512 GB SSD/Windows 11 Home/6 GB Graphics/NVIDIA GeForce R...', '87990', '5', 'AMD Ryzen 7 Octa Core Processor16 GB DDR5 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) DisplayMicrosoft Office Home & Student 20211 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/t/l/u/15aph8-laptop-lenovo-original-imagrzshjqxqqd9a.jpeg?q=70', '7', '2', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('11', 'HP 15s (2023) Intel Core i3 12th Gen - (8 GB/512 GB SSD/Windows 11 Home) 15s-fy5003TU Thin and Light L...', '42990', '6', 'Intel Core i3 Processor (12th Gen)8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/d/l/q/-original-imagphhh4syr7qrg.jpeg?q=70', '5', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('12', 'HP 14s Intel Core i3 11th Gen - (8 GB/256 GB SSD/Windows 11 Home) 14s - dy2507TU Thin and Light Laptop', '35990', '3', 'Intel Core i3 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System256 GB SSD35.56 cm (14 inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/4/v/9/-original-imagp7pfeutcgxrn.jpeg?q=70', '3', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('13', 'HP Chromebook x360 Intel Celeron Quad Core - (4 GB/64 GB EMMC Storage/Chrome OS) 14a-ca0504TU Chromebo...', '20990', '5', 'Intel Celeron Quad Core Processor4 GB LPDDR4 RAM64 bit Chrome Operating System35.56 cm (14 Inch) Touchscreen Display1 Year Onsite warranty', 'https://rukminim2.flixcart.com/image/312/312/kzogn0w0/computer/j/u/m/14a-ca0504tu-thin-and-light-laptop-hp-original-imagbmt6dsjhwwhz.jpeg?q=70', '6', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('14', 'HP 15s (2023) Intel Core i3 12th Gen - (8 GB/512 GB SSD/Windows 11 Home) 15s-fy5003TU Thin and Light L...', '42990', '4', 'Intel Core i3 Processor (12th Gen)8 GB DDR4 RAMWindows 11 Operating System512 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/d/l/q/-original-imagphhh4syr7qrg.jpeg?q=70', '5', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('15', 'HP 14s Intel Core i3 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) 14s - dy2508TU Thin and Light Laptop', '38945', '7', 'Intel Core i3 Processor (11th Gen)8 GB DDR4 RAM64 bit Windows 11 Operating System512 GB SSD35.56 cm (14 inch) DisplayMicrosoft Office Home & Student 20211 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/f/g/c/-original-imagp7pfkztgtg93.jpeg?q=70', '2', '2', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('16', 'Primebook 4G Android Based MediaTek MT8788 - (4 GB/64 GB EMMC Storage/Prime OS) 4G Thin and Light Lapt...', '13990', '9', 'MediaTek MediaTek MT8788 Processor4 GB LPDDR4 RAMPrime OS Operating System29.46 cm (11.6 Inch) Display1 Year Pick and Drop Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/i/j/k/-original-imagzzsh3afavghf.jpeg?q=70', '1', '2', 'Primebook');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('17', 'Infinix Y1 Plus Neo (2023) Celeron Quad Core 11th Gen - (4 GB/128 GB SSD/Windows 11 Home) XL30 Thin an...', '20990', '8', 'Intel Celeron Quad Core Processor (11th Gen)4 GB LPDDR4X RAMWindows 11 Operating System128 GB SSD39.62 cm (15.6 Inch) Display1 Year Onsite Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/computer/b/l/n/xl30-thin-and-light-laptop-infinix-original-imagzmncmw5wukam.jpeg?q=70', '1', '2', 'Infinix');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('42', 'ZEBRONICS Pure Pixel 22 inch HD+ LED Backlit VA Panel with Dual Input HDMI & VGA, 16:10 Aspect ratio, ...', '4699', '7', 'Panel Type: VA PanelScreen Resolution Type: HD+Brightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 60 Hz1 Year carry into services center', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/s/j/h/zeb-ea122-hd-21-2023-zeb-ea122-zebronics-original-imagrxqvwketyhmw.jpeg?q=70', '50', '3', 'ZEBRONICS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('43', 'Frontech 27 inch Full HD IPS Panel Monitor (MON-0053)', '9999', '3', 'Panel Type: IPS PanelScreen Resolution Type: Full HDHDMIResponse Time: 12 ms | Refresh Rate: 75 HzHDMI Ports - 13 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/u/i/h/mon-0053-full-hd-27-2023-mon-0053-frontech-original-imags24vpb8ezfw5.jpeg?q=70', '21', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('44', 'Intex 17 inch HD LED Backlit IPS Panel Monitor (IT-1701)', '2999', '6', 'Panel Type: IPS PanelScreen Resolution Type: HDResponse Time: 5 ms | Refresh Rate: 60 HzHDMI Ports - 11 Year Manufacturer Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/z/h/7/-original-imagnqhmzkhrw2u9.jpeg?q=70', '23', '3', 'Intex');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('45', 'Acer 21.5 inch Full HD VA Panel with VGA, HDMI, Ergonomic Stand, 2X2W Inbuilt Speakers, ZeroFrame Desi...', '6098', '6', 'Panel Type: VA PanelScreen Resolution Type: Full HDBrightness: 250 nitsResponse Time: 1 ms | Refresh Rate: 100 Hz3 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/s/g/u/-original-imagzrf84gyqeste.jpeg?q=70', '44', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('46', 'Intex 19 inch HD LED Backlit IPS Panel Monitor (IT-1902)', '3299', '3', 'Panel Type: IPS PanelScreen Resolution Type: HDResponse Time: 5 ms | Refresh Rate: 60 HzHDMI Ports - 11 Year Manufacturer Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/z/h/7/-original-imagnqhmzkhrw2u9.jpeg?q=70', '12', '3', 'Intex');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('47', 'HP 27 inch Full HD IPS Panel with 99% sRGB, Eyesafe certified Monitor (M27fw)', '13990', '7', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 300 nitsResponse Time: 5 ms | Refresh Rate: 75 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/q/f/v/m27fw-full-hd-27-2023-2h1b1aa-hp-original-imagshte2ktgxtqh.jpeg?q=70', '61', '3', 'HP');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('48', 'Acer 27 inch Full HD LED Backlit IPS Panel White Colour Monitor (HA270)', '10550', '9', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 250 nitsResponse Time: 4 ms | Refresh Rate: 75 HzHDMI Ports - 13 Years on Site', 'https://rukminim2.flixcart.com/image/312/312/ks0onm80/monitor/w/6/6/ha270-um-hw0si-a01-acer-original-imag5zjnk4yad4uz.jpeg?q=70', '18', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('49', 'Frontech 22 inch HD TN Panel Monitor (MON-0060)', '4299', '10', 'Panel Type: TN PanelScreen Resolution Type: HDHDMIResponse Time: 2 msHDMI Ports - 11 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/n/d/s/mon-0060-hd-22-2023-mon-0060-frontech-original-imags24cgdytuztp.jpeg?q=70', '58', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('50', 'DELL S Series 27 inch Full HD IPS Panel with Brightness : 300 nits, Color Gamut, 99% sRGB, 5 Years War...', '12949', '4', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 300 nitsResponse Time: 4 ms | Refresh Rate: 75 HzHDMI Ports - 25 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/kmp7ngw0/monitor/j/z/h/s2721hn-27-py0df-dell-original-imagfjphuywuh2a7.jpeg?q=70', '44', '3', 'DELL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('51', 'Acer NITRO 21.5 inch Full HD LED Backlit VA Panel with Acer Display Widget, Acer VisionCare, Tilt-able...', '6999', '5', 'Panel Type: VA PanelScreen Resolution Type: Full HDBrightness: 250 nitsResponse Time: 1 ms | Refresh Rate: 100 Hz3 Years Manufacturing Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/9/x/a/-original-imagsatb6cbghctx.jpeg?q=70', '57', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('52', 'MarQ by Flipkart 27 inch Full HD IPS Panel Gaming Monitor (27FHDMIQII2G)', '12999', '7', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 300 nitsResponse Time: 1 ms | Refresh Rate: 165 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/x/a/z/-original-imagr73bhwneffva.jpeg?q=70', '54', '3', 'MarQ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('53', 'Frontech 19 inch Full HD LED Backlit TN Panel Monitor (MON-0071)', '3653', '7', 'Panel Type: TN PanelScreen Resolution Type: Full HDHDMIResponse Time: 2 msHDMI Ports - 11 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/f/q/b/mon-0071-full-hd-19-2023-mon-0071-frontech-original-imags24baggzgfuy.jpeg?q=70', '60', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('54', 'ZEBRONICS 32 inch Curved Full HD VA Panel Wall Mountable Monitor (ZEB -AC32FHD LED)', '12999', '8', 'Panel Type: VA PanelScreen Resolution Type: Full HDVGA Support | HDMIBrightness: 250 nitsResponse Time: 8 ms | Refresh Rate: 75 HzThree year carry into service centre', 'https://rukminim2.flixcart.com/image/312/312/l3ahpjk0/monitor/a/v/q/-original-imagefsf8hkyuhdj.jpeg?q=70', '62', '3', 'ZEBRONICS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('55', 'SAMSUNG 24 inch Full HD LED Backlit IPS Panel with 3-Sided Borderless Display, Game & Free Sync Mode, ...', '8999', '10', 'Panel Type: IPS PanelScreen Resolution Type: Full HDBrightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 75 HzHDMI Ports - 13 Years Warranty on Product From Manufacturer', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/k/l/b/-original-imagsgh8zzgbu2tf.jpeg?q=70', '27', '3', 'SAMSUNG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('56', 'MarQ by Flipkart 22 inch Full HD LED Backlit VA Panel with 2 X 3W Inbuilt Speakers Monitor (22FHDMVQII...', '6499', '5', 'Panel Type: VA PanelScreen Resolution Type: Full HDBrightness: 220 nitsResponse Time: 5 ms | Refresh Rate: 75 Hz1 Year Warranty from the Date of Purchase', 'https://rukminim2.flixcart.com/image/312/312/l3t2fm80/monitor/m/e/j/-original-imageudynqghyhxh.jpeg?q=70', '28', '3', 'MarQ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('57', 'LG 24 inch Full HD LED Backlit IPS Panel White Colour Monitor (24MK600M)', '8699', '3', 'Panel Type: IPS PanelScreen Resolution Type: Full HDVGA Support | HDMIBrightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 75 HzHDMI Ports - 23 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/e/i/f/-original-imagpu2tmee2jvds.jpeg?q=70', '44', '3', 'LG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('58', 'Frontech 24 inch Full HD IPS Panel Monitor (MON-0062)', '6995', '7', 'Panel Type: IPS PanelScreen Resolution Type: Full HDHDMIResponse Time: 3 ms | Refresh Rate: 75 HzHDMI Ports - 13 Years Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/q/x/l/mon-0062-full-hd-24-2023-mon-0062-frontech-original-imags258zmfeugwa.jpeg?q=70', '24', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('59', 'Lenovo 23.8 inch Full HD VA Panel 3-Side Near Edgeless with TUV Eye Care Monitor (D24-20)', '8499', '10', 'Panel Type: VA PanelScreen Resolution Type: Full HDResponse Time: 4 ms | Refresh Rate: 75 Hz3 Years Manufacturer Warranty', 'https://rukminim2.flixcart.com/image/312/312/ko8xtow0/monitor/t/a/y/d24-20-66aekac1in-lenovo-original-imag2qwzazcdmqtb.jpeg?q=70', '86', '3', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('60', 'Acer NITRO 27 inch Full HD LED Backlit IPS Panel 165 Gaming Monitor (VG270)', '13899', '6', 'Panel Type: IPS PanelScreen Resolution Type: Full HDHDMIInbuilt SpeakerBrightness: 250 nitsAnti-Glare ScreenResponse Time: 0.5 ms | Refresh Rate: 165 HzHDMI Ports - 13 YEARS', 'https://rukminim2.flixcart.com/image/312/312/kx9as280/monitor/d/o/d/vg270s-full-hd-27-um-hv0si-s01-acer-original-imag9ryu4ujcphzh.jpeg?q=70', '45', '3', 'Acer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('61', 'Elista 19 inch HD LED Backlit VA Panel Monitor (ELS-V19HD Pro LED)', '3249', '4', 'Panel Type: VA PanelScreen Resolution Type: HDVGA Support | HDMIBrightness: 250 nitsAnti-Glare ScreenResponse Time: 8 ms | Refresh Rate: 60 HzHDMI Ports - 11 Year Standard Manufacturer Warranty From Elista', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/e/r/u/els-v19hd-pro-led-hd-19-2023-19-inch-led-monitor-elista-original-imagqy58usfgyy9b.jpeg?q=70', '87', '3', 'Elista');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('62', 'MarQ by Flipkart 22 inch Full HD VA Panel with 2 x 3W Inbuilt Speakers Monitor (22FHDMVQIIHB)', '6799', '9', 'Panel Type: VA PanelScreen Resolution Type: Full HDResponse Time: 5 ms | Refresh Rate: 100 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/l3t2fm80/monitor/m/e/j/-original-imageudynqghyhxh.jpeg?q=70', '97', '3', 'MarQ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('63', 'MarQ by Flipkart 27 inch Full HD VA Panel with 2 x 3W Inbuilt Speakers Monitor (27FHDMVQ11ZB)', '9399', '3', 'Panel Type: VA PanelScreen Resolution Type: Full HDResponse Time: 5 ms | Refresh Rate: 100 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/3/o/q/-original-imagsjg9duumvwwv.jpeg?q=70', '37', '3', 'MarQ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('139', 'Intel 11th Gen Core i5-11400 Rocket Lake Processor', '18000', '5', 'Clock Speed: 2.60 GHz Up to 4.40 GHz
Cache: 12 MB, Socket: LGA 1200
CPU Cores: 6, CPU Threads: 12
GPU name: Intel UHD Graphics 730', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-11400/core-i5-11400-228x228.jpg', '95', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('140', 'Intel 5th Gen Core i7 5930K Processor', '17000', '7', 'Clock Speed: up to 3.70 GHz
Cache: 15MB Intel Smart Cache
Cores: 6, Threads: 12
Socket: LGA2011', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i7-5930k/core-i7-5930k-01-228x228.webp', '70', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('141', 'Intel 12th Gen Core i5-12400F Alder Lake Processor', '18000', '4', 'Base Clock Speed: 2.50 GHz Up to 4.40 GHz
Cache: 18 MB Intel Smart Cache
CPU Cores: 6, CPU Threads: 12
Supported Socket: LGA 1700', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12400/i5-12400-001-228x228.jpg', '66', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('142', 'AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics (Tray)', '11999', '4', 'Speed: 3.7GHz up to 4.2GHz
Cache: L2: 2MB, L3: 4MB
Cores-4 & Threads-8
Memory Speed: Up to 2933MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-3400g-bulk/ryzen-5-3400g-bulk-228x228.jpg', '18', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('143', 'AMD Ryzen Threadripper 1900X 8-core/16 thread Desktop Processor', '20000', '7', 'Base 3.8 GHz to Max Turbo 4GHz
Cache- 768KB L1, 4MB L2, 16MB L3
Cores-8 & Threads-16
AMD Ryzenâ„¢ VR-Ready Premium', 'https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-threadripper-228x228.png', '30', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('144', 'AMD Ryzen 7 3700X Processor', '20000', '7', 'Speed: 3.6GHz up to 4.4GHz
Cache: L2: 4MB, L3: 32MB
Cores-8 & Threads-16
Memory Speed: 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-7-3700x/3700x-228x228.jpg', '61', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('145', 'AMD Ryzen 5 5600X Processor', '20000', '10', 'Speed: 3.7GHz Up to 4.6GHz
L2 Cache: 3MB,  L3 Cache: 32MB
Cores: 6, Threads: 12
Up to 3200MHz DDR4', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/5600x/5600x-001-228x228.jpg', '79', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('146', 'AMD Ryzen 7 5700G Processor with Radeon Graphics', '20000', '6', 'Speed: 3.8GHz up to 4.6GHz
Cache: L2: 4MB, L3: 16MB
Cores-8 & Threads-16
Memory Speed: Up to 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-7-5700ge/ryzen-7-5700g-0010-228x228.jpg', '59', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('147', 'Intel 12th Gen Core i5-12400 Alder Lake Processor', '20000', '9', 'Clock Speed: 2.50 GHz Up to 4.40 GHz
Cache: 18MB, Socket: LGA 1700
CPU Cores: 6, CPU Threads: 12
Graphic: Intel UHD Graphics 730', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12400/i5-12400-01-228x228.webp', '27', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('148', 'AMD Ryzen 7 5700X Processor', '20500', '4', 'Speed: 3.4GHz Up to 4.6GHz
L2 Cache: 4MB, L3 Cache: 32MB
Cores: 8, Threads: 16
Up to 3200MHz DDR4', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/amd-ryzen-7-5700x/amd-ryzen-7-5700x-01-228x228.jpg', '67', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('149', 'Intel 13th Gen Core i5 13400F Raptor Lake Processor', '23999', '10', 'Clock Speed: 2.50 GHz up to 4.60 GHz
Cache: 20 MB, Socket: LGA1700
CPU Cores: 10, CPU Threads: 16
Max RAM Size: 128 GB', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-13600k/Core i5 13600K-01-228x228.webp', '20', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('150', 'Intel Core i5-7640X X-series Kaby Lake Processor', '25500', '3', 'Speed: 4.00 GHz To 4.20 GHz
Cores: 4, Threads: 4
Cache: 6 MB
Max No of PCI Express Lanes 16', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/Intel Core i5-7640X X-series/Intel Core i5-7640X X-series-228x228.jpg', '97', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('151', 'Intel 12th Gen Core i5-12500 Alder Lake Processor', '25500', '3', 'Clock Speed: 3.00 GHz Up to 4.60 GHz
Cache: 18 MB, Socket: LGA 1700
CPU Cores: 6, CPU Threads: 12
Graphics: Intel UHD Graphics 770', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12500/i5-12500-01-228x228.jpg', '66', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('152', 'Intel 13th Gen Core i5 13400 Raptor Lake Processor', '26499', '4', 'Clock Speed: 2.50 GHz up to 4.60 GHz
Cache: 20 MB, Socket: LGA1700
CPU Cores: 10, CPU Threads: 16
Graphics: Intel UHD Graphics 730', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-13600k/Core i5 13600K-01-228x228.webp', '30', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('153', 'AMD Ryzen 7 5800X Processor', '26500', '9', 'Clock Speed: 3.8GHz Up to 4.7GHz
L2 Cache: 4MB, L3 Cache: 32MB
Cores: 8, Threads: 16
Socket: AM4', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-7-5800x/ryzen-7-5800x-01-228x228.jpg', '70', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('154', 'Intel 10th Gen Core i7-10700 Processor', '27000', '9', 'Frequency:  2.90 GHz up to 4.8GHz
16M Cache
8 Core 16 Threads
Intel UHD Graphics 630', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i7-10700/i7-10700-228x228.jpg', '77', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('155', 'Intel 11th Gen Core i7-11700 Rocket Lake Processor', '29500', '4', 'Clockspeed: 2.50 GHz Up to 4.90 GHz
Cache: 16 MB, Socket: LGA 1200
CPU Cores: 8, CPU Threads: 16
GPU name: Intel UHD Graphics 750', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i7-11700/i7-11700-228x228.jpg', '55', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('156', 'Intel 13th Gen Core i5 13500 Raptor Lake Processor', '29500', '9', 'Clock Speed: 2.50 GHz up to 4.80 GHz
Cache: 24 MB, Socket: LGA1700
CPU Cores: 14, CPU Threads: 20
Graphics: Intel UHD Graphics 770', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-13600k/Core i5 13600K-01-228x228.webp', '49', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('157', 'AMD Ryzen 5 7600X Processor', '30500', '5', 'Clock Speed: 4.7GHz Up to 5.3GHz
Cores: 6, Threads: 12
L2 Cache: 6MB, L3 Cache: 32MB
Socket: AM5', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-7600x/ryzen-5-7600x-01-228x228.webp', '90', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('158', 'Intel 10th Gen Core i7-10700K Processor', '31500', '6', 'Frequency:  3.80 GHz up to 5.1GHz
16M Cache
8 Core 16 Threads
Intel UHD Graphics 630', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i7-10700k/i7-10700k-228x228.jpg', '51', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('159', 'Intel 12th Gen Core i5-12600K Alder Lake Processor', '32500', '4', 'Base Clock: P-Core: 3.7 GHz, E-Core: 2.8 GHz
Max. Boost: P-Core: 4.9 GHz, E-Core: 3.6 GHz
Cache: 20MB, Socket: LGA 1700
CPU Cores: 10, CPU Threads: 16', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12600k/i5-12600k-01-228x228.jpg', '86', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('160', 'Intel 13th Gen Core i5 13600KF Raptor Lake Processor', '35000', '4', 'Clock Speed: 3.50 GHz up to 5.10 GHz
Cache: 24 MB Intel Smart Cache
CPU Cores: 14, CPU Threads: 20
Socket: LGA1700', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-13600kf/core-i5-13600kf-01-228x228.webp', '55', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('161', 'Intel 12th Gen Core i7-12700 Alder Lake Processor', '35000', '10', 'Clock Speed: 2.10 GHz Up to 4.80 GHz
Cache: 25MB, Socket: LGA 1700
CPU Cores: 12, CPU Threads: 20
GPU: Intel UHD Graphics 770', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i7-12700/i7-12700-01-228x228.jpg', '27', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('162', 'Colorful GeForce GT710-2GD3-V 2GB Graphics Card', '4500', '4', 'Single Fan
No Power Supply
Powered by GeForce GT710
Integrated with 2GB GDDR5 64-bit', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gt710-2gd3/geforce-gt710-2gd3-1-228x228.jpg', '21', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('163', 'Colorful GeForce GT1030 V3 2GB Graphics Card', '9300', '5', 'Single Fan
No Power Supply
Powered by GeForce GT1030
Integrated with 2GB GDDR5 64-bit', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gt1030/geforce-gt1030-228x228.jpg', '32', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('164', 'GIGABYTE GeForce GT 1030 Low Profile D4 2GB Graphics Card', '9500', '10', 'Memory Clock: 2100 MHz
Resolution: 4096 X 2160
Size: 2GB DDR4
DirectX: 12', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/gt-1030-low-profile-d4-2gb/gt-1030-low-profile-d4-2gb-228x228.jpg', '37', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('165', 'Gigabyte GT 1030 2GB OC Graphics card', '9600', '10', 'Video Memory: 2 GB GDDR5
Clock: Base 1290 MHz in OC Mode
Resolution: 4096x2160
Dual-link DVI-Dx1, HDMI', 'https://www.startech.com.bd/image/cache/catalog/Component/graphics card/Gigabyte/gtx_1030/gtx_1030-228x228.png', '67', '5', 'Gigabyte');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('166', 'Colorful GeForce GT1030 4G-V 4GB Graphics Card', '9700', '7', 'Powered by GeForce GT1030
Integrated with 4GB DDR4 64-bit
CUDA Cores: 384
Single Fan', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gt1030/geforce-gt1030-228x228.jpg', '60', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('167', 'ASUS GeForce GT 1030 2GB GDDR5 low Profile Graphics Card', '9900', '4', 'Silent passive cooling means true 0dB
Resolution: 1920x1200
Video Memory: 2GB GDDR5
Engine Clock: 1506 MHz (OC Mode)', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/geforce-gt-1030/geforce-gt-1030-228x228.jpg', '98', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('168', 'MSI GeForce GT 1030 AERO ITX OC 2GB GDDR4 Graphic Card', '11000', '4', 'HDMI x 1/ SL-DVI-D
Boost Clock: 1518 MHz
Lower temperature and higher efficiency
Wireless control through Android/iOS devices', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/msi/gt-1030-aero-oc/gt-1030-aero-oc-228x228.jpg', '80', '5', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('169', 'BIOSTAR Radeon RX550 4GB GDDR5 Graphics Card', '11499', '10', 'Engine Clock: 1019/1071 MHz
Memory Clock: 6000 MHz
Memory Type: GDDR5
Output: 1 x DVI, 1 x Display Port, 1 x HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/biostar/radeon-rx550/radeon-rx550-01-228x228.webp', '3', '5', 'BIOSTAR');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('170', 'PELADN RX 550 4G Gaming GDDR5 128 Bit Graphics Card', '11900', '6', 'Core Frequency: 1071MHz
Memory Clock Speed: 1500MHz
Video Output: DP+HD+DVI
Two-fan cooling system', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/peladn/rx-550-4g-gaming/rx-550-4g-gaming-01-228x228.webp', '3', '5', 'PELADN');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('171', 'ASUS Phoenix Radeon RX 550 4GB DDR5 Evo Graphics Card', '13800', '7', 'IP5X Dust Resistance
Dual Ball Fan Bearings
AMD Radeon FreeSync
Auto-Extreme Technology', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/phoenix-rx-550-4gb-evo/phoenix-rx-550-4gb-evo-228x228.jpg', '72', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('172', 'NVIDIA Quadro P1000 4GB GDDR5 Graphics Card (No Box)', '15000', '9', 'Memory Interface: 128-bit
NVIDIA CUDA Cores: 640
System Interface: PCI Express 3.0 x16
Output: 4x mDP 1.4', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/nvidia/quadro-p1000/quadro-p1000-02-228x228.webp', '3', '5', 'NVIDIA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('173', 'AFOX Radeon RX 550 4GB GDDR5 Dual Fan Graphics Card', '16200', '6', 'Video Memory: 4GB GDDR5
Engine Clock: 1183 MHz
Resolution: 7680x4320
DVI/ DisplayPort/ HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/afox/radeon-rx-550/radeon-rx-550-01-228x228.jpg', '69', '5', 'AFOX');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('174', 'Colorful GeForce GTX1050Ti 4G-V 4GB GDDR5 Graphics Card', '16500', '5', 'Core Clock: 1290Mhz; Power Connector: 6pin
CUDA Cores: 768, Memory Type: GDDR5
Memory Clock: 7000Mhz
Ports: DVI, HDMI & DP Ports', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gtx1050ti-4g-v/geforce-gtx1050ti-4g-v-01-228x228.jpg', '59', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('175', 'ZOTAC GAMING GeForce GTX 1630 4GB GDDR6 Graphics Card', '17900', '10', 'Engine Clock Boost: 1785 MHz
Memory Clock: 12 Gbps
Memory Bus: 64-bit
Outputs: DP 1.4a, HDMI 2.0b, DVI-D', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/zotac/gaming-geforce-gtx-1630-4gb/gaming-geforce-gtx-1630-4gb-01-228x228.webp', '62', '5', 'ZOTAC');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('176', 'Colorful GeForce GTX 1650 NB 4GD6 V3-V 4GB GDDR6 Graphics Card', '18300', '4', 'Core Clock: Base: 1410Mhz; Boost:1590Mhz
Memory Clock: 12Gbps
Memory Interface: 128bit
Output: DP+HDMI+DVI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gtx-1650-nb-4gd6-v3-v/geforce-gtx-1650-nb-4gd6-v3-v-01-228x228.webp', '6', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('177', 'Asus Phoenix GeForce GTX 1630 4GB GDDR6 Graphics Card', '18500', '9', 'OC mode: 1815MHz (Boost Clock)
Gaming mode: 1785MHz(Boost Clock)/ 1740MHz(Base Clock)
Memory Interface: 64-bit
Output: DVI-D, HDMI 2.0b, DisplayPort 1.4a', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/phoenix-geforce-gtx-1630-4gb/phoenix-geforce-gtx-1630-4gb-01-228x228.webp', '76', '5', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('178', 'PNY GeForce GTX 1650 4G Dual Fan Low Profile 4GB GDDR6 Graphics Card', '18700', '3', 'Core Clock Base:1410 MHz; Boost:1590 MHz
Memory Size: 4GB, Memory Interface: GDDR6
Memory Speed Grade: 12 Gbps
Video Output: DisplayPort 1.4, HDMI 2.0b, DVI-DL', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/pny/geforce-gtx-1650-4g-dual-fan-low-profile/geforce-gtx-1650-4g-dual-fan-low-profile-01-228x228.webp', '28', '5', 'PNY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('179', 'PNY GeForce GTX 1650 4GB GDDR6 Dual Fan GDDR6 Graphics Card', '18399', '3', 'Core Clock: Base: 2310 MHz; Boost: 2535 MHz
Memory Speed: 18 Gbps
Memory Interface: 128-bit
Output: 3x DisplayPort, 1x HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/pny/geforce-gtx-1650-4gb-gddr6-dual-fan/geforce-gtx-1650-4gb-gddr6-dual-fan-01-228x228.webp', '85', '5', 'PNY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('180', 'Asus Phoenix GeForce GTX 1050Ti 4GB GDDR5 Graphics Card', '20000', '9', 'Industry Only Auto-Extreme Technology with Super Alloy Power II
NVIDIA ANSEL
Dual-ball Bearing Fan
Easy plug and play gaming', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/phoenix-gtx-1050ti-4gb/phoenix-gtx-1050ti-4gb-228x228.jpg', '27', '5', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('181', 'Colorful GeForce GTX 1650 NB DDR6 4GB-V Graphics Card', '18999', '5', 'Dual Fans with New Appearance Design
Core Clock: Base 1410Mhz and Boost 1710Mhz
Memory Speed Grade: 12Gbps
Ports: Display Port + HDMI+ DVI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-gtx-1650-nb-4gb-v/geforce-gtx-1650-nb-4gb-v-01-228x228.jpg', '70', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('182', 'ASUS TUF Gaming GeForce GTX 1630 4GB GDDR6 Graphics Card', '20000', '3', 'OC mode: 1815MHz (Boost Clock)
Gaming mode: 1785MHz(Boost Clock)/ 1740MHz(Base Clock)
Memory Speed: 12 Gbps
Output: DVI-D, HDMI 2.0b, DisplayPort 1.4a', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/tuf-gaming-geforce-gtx-1630-4gb/tuf-gaming-geforce-gtx-1630-4gb-01-228x228.webp', '3', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('183', 'GIGABYTE GeForce GTX 1650 D6 4G GDDR6 Graphics Card', '20000', '7', 'Core Clock: 1590 MHz
Memory Clock: 12000 MHz
Memory Bus: 128 bit
Output: DP 1.4a x1, HDMI x1, DVI-D x1', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/geforce-gtx-1650-d6-4g/geforce-gtx-1650-d6-4g-01-228x228.webp', '62', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('184', 'GIGABYTE GeForce GTX 1650 D6 OC Low Profile 4GB GDDR6 Graphics Card', '20500', '8', 'Core Clock: 1620 MHz (Reference Card: 1590 MHz)
Memory Type: GDDR6, Memory Bus: 128-bit,
PCB Form: Low Profile
Output: DisplayPort x1, HDMI x2, Dual-link DVI-D x1', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/gtx-1650-d6-oc-low-profile-4gb/gtx-1650-d6-oc-low-profile-4gb-01-228x228.webp', '94', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('185', 'Gigabyte GeForce GTX 1650 D6 WINDFORCE OC 4G Graphics Card', '20800', '7', 'Powered by GeForce GTX 1650
80 mm unique blade fans
WINDFORCE 2X Cooling System
Integrated with 4GB GDDR6 128-bit', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/1650-windforce-oc-4g/1650-windforce-oc-4g-228x228.jpg', '66', '5', 'Gigabyte');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('186', 'GIGABYTE GeForce GTX 1650 OC Low Profile 4GB GDDR5 Graphics Card', '21499', '5', 'Core Clock: 1695 MHz (Reference Card: 1665 MHz)
Integrated with 4GB GDDR5 128bit memory
Low profile design with 167mm card length
Supports up to 3 displays', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/gtx-1650-oc-low-profile-4g/gtx-1650-oc-low-profile-4g-01-228x228.jpg', '6', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('187', 'ASUS TUF Gaming GeForce GTX 1630 OC Edition 4GB GDDR6 Graphics Card', '21600', '4', 'OC mode: 1845MHz (Boost Clock)
Gaming mode: 1815MHz(Boost Clock)/ 1740MHz(Base Clock)
Memory Interface: 64-bit
Output: DVI-D, HDMI 2.0b, DisplayPort 1.4a', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/tuf-gaming-geforce-gtx-1630-oc-edition/tuf-gaming-geforce-gtx-1630-oc-edition-01-228x228.webp', '54', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('188', 'ASUS Phoenix GeForce GTX 1650 4GB GDDR5 Graphics Card', '21600', '8', 'Video Memory: 4GB GDDR5
Engine Clock: 1680 MHz (OC Mode)
Resolution: 7680x4320
DVI-D, HDMI 2.0b & DisplayPort 1.4', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/phoenix-geforce-gtx-1650-4gb/phoenix-geforce-gtx-1650-4gb-01-228x228.webp', '59', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('189', 'Asus Cerberus GeForce GTX 1050 Ti OC Edition 4GB GDDR5 Graphics Card', '22000', '4', 'Type 4GB  OC GDDR5
Bus Standard PCI Express 3.0
Resolution: 7680x4320', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/cerberus-1050ti-oc-4g/1050ti-oc-4g-228x228.jpg', '72', '5', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('190', 'ASUS Phoenix GeForce GTX 1650 OC Edition 4GB GDDR5 Graphics Card', '26000', '10', 'Video Memory: 4GB GDDR5
Engine Clock: 1680 MHz (OC Mode)
Resolution: 7680x4320
DVI-D, HDMI 2.0b & DisplayPort 1.4', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/asus/phoenix-geforce-gtx-1650-oc/phoenix-geforce-gtx-1650-oc-228x228.jpg', '56', '5', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('191', 'ZOTAC GAMING GeForce RTX 3050 Solo 8GB GDDR6 Graphics Card', '28999', '9', 'Engine Clock: Boost: 1777 MHz
Memory Clock: 14 Gbps
Memory Bus: 128-bit
Output: 3 x DisplayPort, 1 x HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/zotac/geforce-rtx-3050-solo/geforce-rtx-3050-solo-01-228x228.webp', '34', '5', 'ZOTAC');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('192', 'Intel Arc A750 Limited Edition 8GB GDDR6 Graphics Card', '29900', '8', '28 Xe Cores, 448 XMX Engines
Xe HPG Microarchitecture
256-Bit Memory Interface
Interface: HDMI 2.1, DisplayPort 2.0', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/intel/arc-a750/arc-a750-01-228x228.jpg', '24', '5', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('193', 'MSI GeForce RTX 3050 VENTUS 2X XS 8GB OC GDDR6 Graphics Card', '29900', '9', 'Boost Clock: 1807 MHz, Memory Speed: 14 Gbps
Memory Bus: 128-bit, Interface: PCI Express Gen 4
Dual Fan, Zero Frozr, Reinforcing Backplate
Output: DisplayPort 1.4 x1, HDMI x1', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/msi/geforce-rtx-3050-ventus-2x-xs-8g-oc/geforce-rtx-3050-ventus-2x-xs-8g-oc-01-228x228.webp', '33', '5', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('194', 'MSI GeForce GTX 1660 Super Ventus XS OC 6GB GDDR6 Graphics Card', '30500', '6', 'TORX Fan 2.0
Memory 6GB GDDR6
NVIDIA G-SYNC and HDR
Afterburner Overclocking Utility', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/msi/geforce-gtx-1660-super/geforce-gtx-1660-super-228x228.jpg', '51', '5', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('195', 'Colorful iGame GeForce RTX 3050 Ultra W DUO OC V2-V 8GB GDDR6 Graphics Card', '30500', '4', 'Core Clock Base:1552Mhz; Boost:1777Mhz
One-Key OC Base:1552Mhz; Boost:1822Mhz
Memory Speed Grade: 14Gbps
Video Output: HDMI + DP + DL-DVI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/igame-geforce-rtx-3050-ultra-w-duo-oc-v2-v/igame-geforce-rtx-3050-ultra-w-duo-oc-v2-v-01-228x228.webp', '73', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('196', 'PELADN RTX 2060 Super 8G GDDR6 Dual Fan Gaming Graphics Card', '30500', '10', 'Core Frequency: 1470MHz
Memory Clock Speed: 14000MHz
Video Output: 3DP+HDMI
Two-fan cooling system', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/peladn/rtx-2060-super-8g/rtx-2060-super-8g-01-228x228.webp', '66', '5', 'PELADN');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('197', 'Intel Arc A750 Limited Tiger Gold Edition 8GB GDDR6 Graphics Card', '30900', '6', '28 Xe Cores, 448 XMX Engines
Xe HPG Microarchitecture
256-Bit Memory Interface
Interface: HDMI 2.1, DisplayPort 2.0', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/intel/arc-a750-tiger-gold/arc-a750-limited-tiger-gold-edition-01-228x228.webp', '39', '5', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('198', 'Zotac Gaming GeForce RTX 3050 Twin Edge GDDR6 8GB Graphics Card', '31000', '8', '2nd Gen Ray Tracing Cores & 3rd Gen Tensor Cores
Active Fan Control with FREEZE Fan Stop
IceStorm 2.0 Advanced Cooling
Engine Clock Boost: 1777 MHz', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/zotac/gaming-geforce-rtx-3050-twin-edge/gaming-geforce-rtx-3050-twin-edge-01-228x228.jpg', '65', '5', 'Zotac');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('199', 'PNY GeForce RTX 3050 8GB VERTO Dual Fan GDDR6 Graphics Card', '30999', '10', 'Clock Speed: 1552 MHz, Boost Speed: 1777 MHz
Memory Speed: 14 Gbps
Outputs: 3x DisplayPort 1.4, 1x HDMI 2.1
Memory Interface: 128-bit', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/pny/geforce-rtx-3050-8gb-verto-dual-fan/geforce-rtx-3050-8gb-verto-dual-fan-01-228x228.webp', '46', '5', 'PNY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('200', 'PNY GeForce RTX 3050 8GB UPRISING Dual Fan GDDR6 Graphics Card', '31800', '4', 'Clock Speed: 1552 MHz, Boost Speed: 1777 MHz
Memory Speed: 14 Gbps
Outputs: DisplayPort 1.4 (x3), HDMI 2.1
Memory Interface: 128-bit', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/pny/geforce-rtx-3050-8gb-uprising-dual-fan/geforce-rtx-3050-8gb-uprising-dual-fan-01-228x228.jpg', '68', '5', 'PNY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('201', 'GIGABYTE GeForce RTX 3050 WINDFORCE OC 8GB GDDR6 Graphics Card', '31999', '9', 'Core Clock: 1792 MHz (Reference Card: 1777 MHz)
Memory Clock: 14000 MHz
Memory Bus: 128 bit
Output: 1xDP1.4, 1xHDMI 2.1, 1xDual-Link DVI-D', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/geforce-rtx-3050-windforce-oc-8g/geforce-rtx-3050-windforce-oc-8g-01-228x228.webp', '83', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('202', 'GIGABYTE GeForce RTX 3050 EAGLE 8GB GDDR6 Graphics Card', '33300', '8', 'Core Clock: 1777 MHz
2nd Gen RT Cores & 3rd Gen Tensor Cores
WINDFORCE 3X Cooling System
90mm unique blade fans', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/gigabyte/rtx-3050-eagle-8g/rtx-3050-eagle-8g-01-228x228.jpg', '86', '5', 'GIGABYTE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('203', 'PNY GeForce RTX 3060 8GB VERTO Dual Fan GDDR6 Graphics Card', '33999', '10', 'Clock Speed: 1320 MHz, Boost Speed: 1777 MHz
Memory Speed: 15Gbps
Memory Interface: 128-bit
Outputs: 3x DisplayPort 1.4a, HDMI 2.1', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/pny/geforce-rtx-3060-8gb-verto-dual-fan/geforce-rtx-3060-8gb-verto-dual-fan-01-228x228.webp', '67', '5', 'PNY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('204', 'Sapphire Pulse AMD Radeon RX 6600 8GB GDDR6 Graphics Card', '25999', '8', 'GPU: Boost Clock: Up to 2491MHz
Memory: 8GB/128 bit DDR6. 14 Gbps Effective
Stream Processors: 1792
Output: 1x HDMI, 3x DisplayPort', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/sapphire/rx-6600/rx-6600-01-228x228.webp', '85', '5', 'Sapphire');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('205', 'MSI GeForce RTX 3050 VENTUS 2X 8G OCV1 GDDR6 Graphics Card', '34500', '9', 'Boost Clock: 1807 MHz
Memory Speed: 14 Gbps
Dual Fan Thermal Design
Ports: DisplayPort, HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/msi/geforce-rtx-3050-ventus-2x-8g-ocv1/geforce-rtx-3050-ventus-2x-8g-ocv1-01-228x228.webp', '58', '5', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('206', 'Colorful GeForce RTX 3060 NB DUO 8GB-V 8GB GDDR6 Graphics Card', '34500', '3', 'Core Clock: Base:1320Mhz; Boost:1777Mhz
Memory Clock: 15Gbps
Memory Interface: 192bit
Output: 3DP+HDMI', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/colorful/geforce-rtx-3060-nb-duo-8gb-v/geforce-rtx-3060-nb-duo-8gb-v-01-228x228.webp', '59', '5', 'Colorful');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('207', 'Sapphire  PULSE AMD Radeon RX 7600 Gaming OC 8GB GDDR6 Graphics Card', '34500', '8', 'Boost Clock: Up to 2755 MHz, Game Clock: Up to 2355 MHz
Memory:   8GB/128 bit DDR6. 18 Gbps Effective
Stream Processors: 2048
RDNA 3 Architecture', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/sapphire/pulse-amd-radeon-rx-7600/pulse-amd-radeon-rx-7600-01-228x228.webp', '38', '5', 'Sapphire');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('208', 'SAPPHIRE PULSE AMD Radeon RX 6650 XT 8GB GDDR6 Graphics Card', '34900', '8', 'Memory: 8GB/128 bit DDR6. 17.5 Gbps Effective
Stream Processors: 2048
RDNA 2 Architecture
Ray Accelerator: 32', 'https://www.startech.com.bd/image/cache/catalog/graphics-card/sapphire/pulse-radeon-rx-6650-xt/pulse-radeon-rx-6650-xt-06-228x228.jpg', '98', '5', 'SAPPHIRE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('209', 'ThundeRobot K98 Ebony on Cedar Wired Mechanical Keyboard', '2900', '6', '95% 98-Key arrangement
Full-Key Conflict-Free Operation
Double Shot PBT Keycaps
Switch: ThundeRobot Milk Tea', 'https://www.startech.com.bd/image/cache/catalog/keyboard/thunderobot/k98/k98-ebony-on-cedar-01-228x228.webp', '41', '6', 'ThundeRobot');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('210', 'ThundeRobot K98 Cedar Wired Mechanical Keyboard', '2900', '9', '95% 98-Key arrangement
Full-Key Conflict-Free Operation
Double Shot PBT Keycaps
Switch: ThundeRobot Pink', 'https://www.startech.com.bd/image/cache/catalog/keyboard/thunderobot/k98/k98-cedar-01-228x228.webp', '76', '6', 'ThundeRobot');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('211', 'Logitech MK540 Advanced Wireless Keyboard & Mouse Combo', '4600', '10', 'Built-In Multimedia Hotkeys
Wireless Range: 32.8'' / 10 m
Full-Functionality OS Support
Wireless Connectivity: 2.4 GHz RF', 'https://www.startech.com.bd/image/cache/catalog/Accessories/Logitech/Keyboard/mk540/mk540-228x228.webp', '33', '6', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('212', 'iMICE KM-760 RGB Gaming Keyboard and Mouse Combo', '1300', '7', 'Key Number: 104 keys
Keyboard Backlit Multicolor Backlit
Mouse Key: 4 keys
Resolution: 1200/1800/2400/3200 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/imice/km-760/km-760-01-228x228.webp', '93', '6', 'iMICE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('213', 'Meetion MT-K9320 Waterproof Backlit Gaming Keyboard', '800', '5', '19 keys anti-ghosting, multiple keys without conflict
Rainbow backlit with adjustable brightness
Keyboard Layout: 104/105
Waterproof design', 'https://www.startech.com.bd/image/cache/catalog/keyboard/meetion/mt-k9320/mt-k9320-01-228x228.jpg', '41', '6', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('214', 'Havit KB866L Multi-function RGB Backlit Membrane Gaming Keyboard', '950', '3', 'Multi-function backlit keyboard
Interface Type: USB
key number: 112
Cable Length: 1500mm', 'https://www.startech.com.bd/image/cache/catalog/keyboard/havit/kb866l/kb866l-01-228x228.webp', '44', '6', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('215', 'IMICE KM-900 Keyboard Mouse Gaming Combo', '1500', '8', 'Key number: 104 keys
Keyboard Backlit Multicolor Backlit
Mouse Key: 6keys
Resolution: 800/1200/1600/2400 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/imice/km-900/km-900-01-228x228.jpg', '48', '6', 'IMICE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('216', 'Havit KB488L Multi-Function Backlit Gaming Keyboard', '1050', '6', '19 anti-ghosting keys, enable free control
Key number 108
Interface type: USB
4 standard multimedia keys', 'https://www.startech.com.bd/image/cache/catalog/keyboard/havit/kb488l/kb488l-01-228x228.jpg', '65', '6', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('217', 'Havit KB487L Multi-Function USB Backlit Gaming Keyboard', '1250', '4', 'OS Support: Windows 10, 8, 7, XP, VISTA, Mac OS
Anti-Ghosting: N Key Rollover
Number of Buttons: 87
Cable Length	: 1.5 meter', 'https://www.startech.com.bd/image/cache/catalog/keyboard/havit/kb487l/kb487l-01-228x228.jpg', '89', '6', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('218', 'Micropack GK-10 USB Multi Color Lighting Gaming Keyboard', '1375', '7', 'Number of Button: 104
Lighting Type: Multi Color LED
19 Keys Anti Gost, Interface: USB
Spill-Resistant Keyboard', 'https://www.startech.com.bd/image/cache/catalog/keyboard/micropack/gk-10/gk-10-01-228x228.jpg', '77', '6', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('219', 'Meetion MT-K9420 Backlit Custom Macro Pro Membrane Gaming Keyboard', '2050', '10', 'Ergonomic curved key design with armrests
G1~G6 separate macro recording button
P1~P3 three-mode macro recording
Separate multimedia control buttons', 'https://www.startech.com.bd/image/cache/catalog/keyboard/meetion/mt-k9420/mt-k9420-01-228x228.jpg', '26', '6', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('220', 'Fantech KX-302s MAJOR USB Gaming Keyboard & Mouse Combo', '2200', '5', 'Keyboard Button: 104. Mouse Button: 5
Interface: USB, Max DPI: 8000 DPI
8 Million Keystroke Lifetime
45g Trigger Pressure', 'https://www.startech.com.bd/image/cache/catalog/keyboard/fantech/kx-302s-major/kx-302s-01-228x228.jpg', '98', '6', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('221', 'Meetion MT-MK600MX RGB Mechanical Blue Switch Gaming Keyboard', '2250', '5', 'Full keys anti-ghosting
Mechanical Blue switches
Double injection keycaps
LED backlight', 'https://www.startech.com.bd/image/cache/catalog/keyboard/meetion/mt-mk600/mt-mk600-black-01-228x228.jpg', '24', '6', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('222', 'Asus AC02 ROG Gaming Keycap Set', '2400', '9', 'Vital FPS & MOBA Gaming Keys
Compatible with Cherry MX
Metallic ROG-Red Keycap
Stylish Side-Lit Keycaps', 'https://www.startech.com.bd/image/cache/catalog/keyboard/asus/ac02-rog/ac02-rog-228x228.jpg', '71', '6', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('223', 'Redragon K502 Karura 2 RGB Gaming Keyboard', '2500', '4', 'Adjustable breathing speed rate of LED light
104 standard keys, 2 adjusting gear for input speed
19 non-conflict keys & 12 multimedia keys
Unremovable laser engraved chocolate keycaps', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k502-karura-2/k502-karura-2-1-228x228.jpg', '17', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('224', 'Dareu EK87 Mechanical Gaming Keyboard', '2900', '6', 'Optical Switch Up to 50M Clicks
Eleven Backlight light effect modes
Full Waterproof with N-Key Rollover
Approx. 16.8 million colors', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/ek87/ek87-01-228x228.jpg', '50', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('225', 'Redragon K576R DAKSA LED Rainbow Backlit Mechanical Gaming Keyboard', '3400', '9', 'All 87 keys are 100% conflict-free, anti-ghosting
12 Multimedia keys combined with FN keys
LED Rainbow Backlighting
8 pre-set Gaming Modes', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k576r-daksa/k576r-01-228x228.jpg', '28', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('226', 'Meetion MT-MK01 RGB Mechanical Blue Switch Gaming Keyboard', '3500', '4', 'Lucency injection keycap wear-proof and high light transmittance
High-quality macro mechanical Blue switch
64-grade e-sports game chips
RGB chroma backlit customizable', 'https://www.startech.com.bd/image/cache/catalog/keyboard/meetion/mt-mk01/mt-mk01-01-228x228.jpg', '77', '6', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('227', 'Redragon K568 RGB DARK AVENGER Mechanical Gaming Keyboard', '3600', '5', '87 Keys/High-quality mechanical switches
RGB full color LED backlit keys
Full key anti-ghosting
Spill-proof design', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k568-rgb-dark-avenger/k568-rgb-dark-avenger-01-228x228.jpg', '49', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('228', 'Meetion MT-MK20 RGB Mechanical Blue Switch Gaming Keyboard', '3750', '9', 'Game style design with metal surface cover
High-quality macro mechanical Blue switch
Comfortable silicone handrails
RGB chroma backlit customizable', 'https://www.startech.com.bd/image/cache/catalog/keyboard/meetion/mt-mk20/mt-mk20-red-01-228x228.jpg', '65', '6', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('229', 'KWG Draco E1a Multi Color Keyboard, Mouse, Headphone & Mouse Mat Gaming Combo', '3800', '3', 'Advanced Gaming Optical Sensor
Multi-color backlight
Aluminum Texture Bezel
Adjustable DPI: 3200 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/kwg/draco-e1a-combo/draco-e1a-combo-001-228x228.jpg', '34', '6', 'KWG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('230', 'Asus TUF Gaming K1 RA04 RGB Keyboard', '3900', '8', '19-key-rollover (NKRO) technology
300 ml spill-resistant frame
Five individual lighting zones
Dedicated volume Knob', 'https://www.startech.com.bd/image/cache/catalog/keyboard/asus/tuf-gaming-k1/tuf-gaming-k1-1-228x228.jpg', '91', '6', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('231', 'Fantech Max Core MK852 Sakura Edition Mechanical USB Gaming Keyboard', '4250', '9', '104 Total Keys, 50 Million Keys Lifetime
Full Keys Anti-Ghosting
Multi Function Scroll
20 Modes RGB Gradient Illumination', 'https://www.startech.com.bd/image/cache/catalog/keyboard/fantech/mk852/sakura-edition/max-core-mk852-sakura-1-228x228.jpg', '35', '6', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('232', 'Redragon K552RGB-1 KUMARA RGB Backlit Mechanical Gaming Keyboard', '4300', '9', '87 Conflict-free (n-Key Rollover) Keys featuring 12 Multimedia keys
LED RGB Backlit Anti Ghosting
Compact ABS-Metal Design
Splash-resistant design', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k552rgb-1/k552rgb-1-01-228x228.jpg', '51', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('233', 'Redragon K551RGB MITRA RGB Backlit Mechanical Gaming Keyboard', '4500', '4', 'Full-Size Keyboard with 104 standard keys, full numeric keypad
12 Dual-action Multimedia and F keys
Backlit Anti Ghosting
Splash-resistant design', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k551rgb-mitra/k551rgb-mitra-1-228x228.jpg', '86', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('234', 'Redragon K552RGB-1 KUMARA RGB Backlit Mechanical Gaming Keyboard White', '4500', '10', '87 Conflict-free (n-Key Rollover) Keys featuring 12 Multimedia keys
LED RGB Backlit Anti Ghosting
Compact ABS-Metal Design
Splash-resistant design', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k552rgb-1/k552rgb-1-white-01-228x228.jpg', '40', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('235', 'Dareu A87 Alpha Tenkeyless Red Cherry MX Switch Mechanical Keyboard', '5800', '9', 'Red Cherry MX Mechanical Switch
Interface: USB Type-C (Wired)
PBT Material Keycaps & N-Key Rollover
Key Fields: 3 Blocks', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a87-alpha/a87-alpha-01-228x228.jpg', '66', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('236', 'Dareu A87 Alpha Tenkeyless Blue Cherry MX Switch Mechanical Keyboard', '5800', '5', 'Blue Cherry MX Mechanical Switch
PBT Material Keycaps & N-Key Rollover
Interface: USB Type-C (Wired)
Key Fields: 3 Blocks', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a87-alpha/a87-alpha-01-228x228.jpg', '91', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('237', 'Gigabyte KM6300 USB Multimedia Keyboard Mouse Combo Black', '900', '8', 'USB plug and play
10 multimedia keys
Stylish slim-type keyboard
1000 dpi comfortable mouse', 'https://www.startech.com.bd/image/cache/catalog/keyboard/gigabyte/KM6300/km6300-228x228.jpg', '54', '6', 'Gigabyte');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('238', 'Dareu A87 Alpha Tenkeyless Brown Cherry MX Switch Mechanical Keyboard', '5800', '3', 'Brown Cherry MX Mechanical Switch
PBT Material Keycaps & N-Key Rollover
Interface: USB Type-C (Wired)
Key Fields: 3 Blocks', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a87-alpha/a87-alpha-01-228x228.webp', '94', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('239', 'Fantech MK884 Optiluxs RGB Mechanical Keyboard', '5800', '9', 'Total Keys 104 and Media Keys 12
Water & Dust Proof Design
Backlit Mode: RGB 19 Modes
Anti-Ghosting Full Keys', 'https://www.startech.com.bd/image/cache/catalog/keyboard/fantech/mk884-optimax/mk884-optimax-228x228.jpg', '31', '6', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('240', 'Redragon K556 DEVARAJAS RGB Mechanical Gaming Keyboard', '6000', '7', 'All non-conflict keys; 12 multimedia keys; adjustable input speeds
Anti-ghosting with 104 Standard Keys
Fully Anodized Aluminum Frame Brushed
Interchangeable arrow keys and WASD keys', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k556-devarajas/k556-devarajas-01-228x228.jpg', '19', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('241', 'Dareu A87 Sky Edition Hot-Swap Type-C Backlit Mechanical Gaming Keyboard', '6300', '3', 'Keyboard Layout: Standard 2-block 87 keys
Interface: USB port + TYPE-C
Dareu Sky Blue Switch
Magnetic upper cover', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a87-sky/a87-sky-01-228x228.jpg', '35', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('242', 'Dareu A87 KB Edition Hot-Swap Type-C Backlit Mechanical Gaming Keyboard', '6300', '4', 'Keyboard Layout: Standard 2-block 87 keys
Interface: USB port + TYPE-C
Dareu Violet Gold Switch
Magnetic upper cover', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a87-kb/a87-kb-01-228x228.jpg', '31', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('243', 'Dareu A840 Summer Wired Blue Cherry MX Switch Mechanical Keyboard', '6500', '4', 'Interface: USB Type-C (Wired)
Blue Cherry MX Switch
Layout: 87 KEY (US), 104KEY
Key Conflict: N-Key Rollover', 'https://www.startech.com.bd/image/cache/catalog/keyboard/dareu/a840-summer/a840-summer-01-228x228.jpg', '58', '6', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('244', 'Redragon K618 HORUS Wireless RGB Ultra-Thin Mechanical Gaming Keyboard', '7200', '9', 'Tri-Mode: Bluetooth/2.4Ghz/Wired Connection
Low Profile Linear & Red Switches
30% Cutted Ultra-Thin design
Dedicated Media Control', 'https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/k618-horus/k618-horus-01-228x228.jpg', '78', '6', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('245', 'Corsair K60 RGB PRO SE Mechanical Gaming Keyboard', '7400', '8', '104 Keys, Full Key (NKRO) with 100% Anti-Ghosting
CHERRY VIOLA Keyswitches
1,000Hz USB Polling Rate
Magnetic detachable Palm Rest', 'https://www.startech.com.bd/image/cache/catalog/keyboard/corsair/k60-rgb-pro-se/k60-rgb-pro-se-01-228x228.jpg', '33', '6', 'Corsair');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('246', 'Asus RA05 TUF Gaming K3 RGB Mechanical Keyboard', '8000', '10', '19-key-rollover (NKRO) technology
300 ml spill-resistant frame
Five individual lighting zones
Dedicated volume Knob', 'https://www.startech.com.bd/image/cache/catalog/keyboard/asus/tuf-gaming-k3-rgb/tuf-gaming-k3-rgb-228x228.jpg', '24', '6', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('247', 'Capturer KT108 Hot Swappable RGB Mechanical Keyboard', '9100', '8', 'Keycaps: Doubleshot PBT Cherry Profile
Switch: Kailh Box
Lighting Full RGB, Hot Swappable
Full anti ghosting, Noise dampener foam', 'https://www.startech.com.bd/image/cache/catalog/keyboard/capturer/kt108/kt108-001-228x228.jpg', '32', '6', 'Capturer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('248', 'Capturer KT108 RGB Mechanical Keyboard - FLCMMK Switch', '10900', '9', 'Keycaps: Doubleshot PBT Cherry Profile
Switch: FLCMMK Switch
Lighting Full RGB, Hot Swappable
FL.CMMK Nautilus Switch', 'https://www.startech.com.bd/image/cache/catalog/keyboard/capturer/kt108/kt108-fl-cmmk-nautilus-01-228x228.jpg', '54', '6', 'Capturer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('249', 'Razer Huntsman Mini 60% Optical Gaming Keyboard Purple Switch', '14000', '8', 'Doubleshot PBT Keycaps With Side-Printed Secondary Functions
60% Form Factor & Razer Optical Switches
Hybrid onboard storage: up to 5 profiles
Switch: Clicky Optical Switch (Purple)', 'https://www.startech.com.bd/image/cache/catalog/keyboard/razer/huntsman-mini/huntsman-mini-1-228x228.jpg', '97', '6', 'Razer');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('250', 'iMICE AK-600 Wired USB Luminescent Gaming Keyboard', '800', '5', 'Keys: 104 Keys
Connection: USB Wired
Material: Plastic
Backlit Three Color Backlit', 'https://www.startech.com.bd/image/cache/catalog/keyboard/imice/ak-600/ak-600-01-228x228.jpg', '88', '6', 'iMICE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('251', 'Havit HV-KB275L USB Gaming Keyboard with Bangla', '900', '4', 'Streamlined & Ergonomic Design
FN Multimedia Keys
Ultra-slim & Noise-proof Design
Three Lighting Modes', 'https://www.startech.com.bd/image/cache/catalog/keyboard/havit/kb275l/kb275l-1-228x228.png', '2', '6', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('252', 'Fantech G13 Rhasta II Pro Gaming Mouse Black', '475', '9', 'Buttons: 3 buttons + 1 scroll wheel / button
Game optical sensor with 2400 DPI
Cycle buttons durability: 5m keystrokes
RGB lights, Low friction legs', 'https://www.startech.com.bd/image/cache/catalog/mouse/fantech/g13-rhasta-ii-pro/g13-rhasta-ii-pro-001-228x228.jpg', '83', '7', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('253', 'Logitech M240 Silent Bluetooth mouse', '1800', '7', 'DPI range: 400-4000
Number of Buttons: 3 (Left/Right-click, Middle-click)
SilentTouch Technology
Battery life: 18 months', 'https://www.startech.com.bd/image/cache/catalog/mouse/logitech/m240/m240-02-228x228.webp', '13', '7', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('254', 'Logitech M240 Silent Bluetooth Mouse White', '1800', '10', 'DPI range: 400-4000
Number of Buttons: 3 (Left/Right-click, Middle-click)
SilentTouch Technology
Battery life: Up to 18 months', 'https://www.startech.com.bd/image/cache/catalog/mouse/logitech/m240/m240-w-01-228x228.webp', '77', '7', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('255', 'Havit HV-MS1010 RGB Backlit Gaming Mouse', '550', '3', 'Interface: USB (1.5m Cable length)
Number of keys: 7, Sensor: Optical
Four Gears of Speed
DPI Switching Function', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/hv-ms1010/hv-ms1010-20-228x228.jpg', '30', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('256', 'Fantech WG10 Raigor II Wirless Gaming Mouse', '630', '8', 'Type: 2.4Ghz Wireless
Application: Desktop, Laptop
Interface: Nano USB 2.0 Receiver
Battery: AA Battery with Power Saver', 'https://www.startech.com.bd/image/cache/catalog/mouse/fantech/wg10-raigor-ii/wg10-raigor-ii-228x228.jpg', '46', '7', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('257', 'Micropack GM-06 USB Gaming Mouse', '650', '10', 'Number of Button: 6
Tracking Type: Optical
Interface: USB
Max. 3200dpi', 'https://www.startech.com.bd/image/cache/catalog/mouse/micropack/gm-06/gm-06-01-228x228.jpg', '25', '7', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('258', 'iMICE KM-760 RGB Gaming Keyboard and Mouse Combo', '1300', '3', 'Key Number: 104 keys
Keyboard Backlit Multicolor Backlit
Mouse Key: 4 keys
Resolution: 1200/1800/2400/3200 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/imice/km-760/km-760-01-228x228.webp', '88', '7', 'iMICE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('259', 'Havit MS1008 RGB Backlit Optical Gaming Mouse', '650', '6', 'Resolution: 800-1200-2400-3200DPI
Connectivity: Wired USB, Voltage: 5V
Max DPI: 3200 DPI
Number of Buttons: 6', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms1008/ms1008-01-228x228.jpg', '97', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('260', 'AULA S11 Pro Wired Gaming Mouse', '700', '6', 'Number of keys: 6 keys
Resolution: 1200-1800-2400-3600DPI
Type: USB Wired
Cable Length: 1.5m', 'https://www.startech.com.bd/image/cache/catalog/mouse/aula/s11-pro/s11-pro-blue-02-228x228.webp', '3', '7', 'AULA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('261', 'Havit HV-MS1022 RGB LED Honeycomb Design 8 Buttons Gaming Mouse', '800', '7', '4 gear levels of mouse adjustment(800-1200-1600-3200DPI)
Aerodynamically honeycomb for breathability
16 Million colorful RGB backlit with flexible changes
One-click fire button', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/hv-ms1022/hv-ms1022-01-228x228.jpg', '64', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('262', 'Havit MS851 USB Mouse', '230', '9', 'Resolution: 1000DPI & Key Number: 3
3D Gyro Wheel Function
Operating Voltage: 5V
Key Life: 3,000,000 times', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms851/ms851-1-228x228.jpg', '2', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('263', 'Havit MS1019 RGB Gaming Mouse Black', '850', '3', 'Six switches of DPI solutions
Six gears of speed indicator lights
7 buttons programmable and macro editing supported
High precision positioning gaming engine', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms1019/ms1019-228x228.jpg', '93', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('264', 'IMICE KM-900 Keyboard Mouse Gaming Combo', '1500', '3', 'Key number: 104 keys
Keyboard Backlit Multicolor Backlit
Mouse Key: 6keys
Resolution: 800/1200/1600/2400 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/imice/km-900/km-900-01-228x228.jpg', '23', '7', 'IMICE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('265', 'Meetion MT-GM015 Lightweight Honeycomb RGB Backlit Gaming Mouse', '1050', '5', 'Honeycomb hollow and replaceable non-slip mat design
Number of Buttons: 7+1 buttons
Resolution: Max. 6400 cpi
RGB circulation backlit', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-gm015/mt-gm015-01-228x228.jpg', '75', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('266', 'Havit MS953 RGB Backlit USB Gaming Mouse', '1275', '10', 'Max DPI: 10000 DPI, Wheel: Yes
Connectivity: Wired, Interface: USB
Chip: PMW3325, RGB Lighting
Number of Button: 7', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms953/ms953-01-228x228.jpg', '74', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('267', 'Havit HV-MS689 USB Optical Mouse', '270', '7', 'Interface: USB
Cable Length: 1.5m
Resolution: 1200DPI
Key Life: 3 million', 'https://www.startech.com.bd/image/cache/catalog/mouse/havit/hv-ms689/hv-ms689-01-228x228.jpg', '6', '7', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('268', 'Redragon M612 Predator 11 Programmable Buttons RGB Gaming Mouse', '1800', '3', '11 Programmable Buttons & 5 Backlit Modes
Geared with 5 redefinable DPI levels
Interface: USB 2.0 full speed. 3.0
Sensor: Optical Pixart P3104', 'https://www.startech.com.bd/image/cache/catalog/mouse/redragon/m612-predator/m612-predator-1-228x228.jpg', '41', '7', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('269', 'Xtreme M288 USB Wired Optical Mouse', '280', '6', 'Mouse Type: Optical
Number of buttons: 2
Resolution: 1000 DPI
Interface: USB', 'https://www.startech.com.bd/image/cache/catalog/mouse/xtreme/m288/m288-01-228x228.webp', '2', '7', 'Xtreme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('270', 'Gamdias Zeus M4 RGB Gaming Mouse', '1850', '10', 'On the fly DPI adjustments up to 12,800 DPI
Honeycomb design for less weight
Ultra-durable &minimal drag braided cable
Free Mouse mat', 'https://www.startech.com.bd/image/cache/catalog/mouse/gamdias/zeus-m4/zeus-m4-2-228x228.jpg', '63', '7', 'Gamdias');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('271', 'Fantech T533 Wired Premium Office Mouse', '299', '10', 'Durable and Smooth Click up to 3 Million
Premium Grade Sensor 1200 DPI
Responsive cursor control
USB 1.8m cable and Soft scroll', 'https://www.startech.com.bd/image/cache/catalog/mouse/fantech/t533/t533-01-228x228.jpg', '80', '7', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('272', 'A4TECH Bloody P91S RGB Gaming Mouse', '1900', '9', 'Customizable RGB, Infrared Wheel
Adjustable 8000CPI & Key response 1ms
Metal X''Glide Armor Boot
6 Weapon Modes of Left Key', 'https://www.startech.com.bd/image/cache/catalog/mouse/a4tech/bloody-p91/bloody-p91-1-228x228.jpg', '65', '7', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('273', 'A4Tech Bloody A70 Light Strike Gaming Mouse', '2100', '4', 'Extreme Core 4, Gaming Precision (4000 CPI)
Click Response Less 0.2 ms
Intelligent Advanced Quad-Core
6 Sniper Modes, Ambidextrous Fit', 'https://www.startech.com.bd/image/cache/catalog/mouse/a4tech/bloody-a70/bloody-a70-01-228x228.jpg', '83', '7', 'A4Tech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('274', 'MSI CLUTCH GM11 6-Button RGB Gaming Mouse', '2100', '5', 'Stunning RGB lighting with over 7 lighting effects
5-level DPI sensor matches with 5 different colors
Symmetrical mouse design
PMW-3325 Optical Sensor', 'https://www.startech.com.bd/image/cache/catalog/mouse/msi/clutch-gm11/clutch-gm11-01-228x228.jpg', '27', '7', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('275', 'Fantech KX-302s MAJOR USB Gaming Keyboard & Mouse Combo', '2200', '5', 'Keyboard Button: 104. Mouse Button: 5
Interface: USB, Max DPI: 8000 DPI
8 Million Keystroke Lifetime
45g Trigger Pressure', 'https://www.startech.com.bd/image/cache/catalog/keyboard/fantech/kx-302s-major/kx-302s-01-228x228.jpg', '87', '7', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('276', 'Redragon EMPEROR M909 High-Precision Programmable RGB Backlit Gaming Mouse', '2200', '5', '7 optimized programmable buttons (Total 8 buttons)
5 DPI adjustable, Up to 12400 DPI
125/250/500/1000Hz polling rate
Professional Gaming Sensor Pixart 3327', 'https://www.startech.com.bd/image/cache/catalog/mouse/redragon/emperor-m909-rgb/emperor-m909-rgb-1-228x228.jpg', '39', '7', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('90', 'KITECH 17 inch HD TN Panel Monitor (KTM17HV)', '2399', '9', 'Panel Type: TN PanelScreen Resolution Type: HDResponse Time: 10 ms1 Year', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/d/5/1/ktm17hv-hd-17-ktm17hv-kitech-original-imagphwtyxhaqaqz.jpeg?q=70', '9', '3', 'KITECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('91', 'rionix 15 inch foxin 15 inch HD LED Backlit TN Panel Monitor (CONSISTENT 15 INCH HDMI)', '2469', '9', 'Panel Type: TN PanelScreen Resolution Type: HDHDMIResponse Time: 5 msHDMI Ports - 11 Year brand warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/f/c/o/consistent-15-inch-hdmi-hd-15-2022-ctm1505h-rionix-original-imagqsjfpwh6crzh.jpeg?q=70', '59', '3', 'rionix');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('92', 'Enter 15.4 inch HD Monitor (E-M16A)', '2689', '3', 'Screen Resolution Type: HDVGA SupportResponse Time: 4 ms1 YEAR, By BRAND', 'https://rukminim2.flixcart.com/image/312/312/k3670cw0/monitor/v/8/s/e-m16a-e-m16a-enter-original-imafa97fpe6j53vf.jpeg?q=70', '12', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('93', 'Enter 15 inch HD Monitor (15.4 inch HD LED Backlit Monitor)', '2698', '10', 'Screen Resolution Type: HDResponse Time: 4 ms1 Year, by Brand', 'https://rukminim2.flixcart.com/image/312/312/l12h1u80/monitor/e/y/a/vga-led-monitor-sxga-17-1-e-mo-ao2-enter-original-imagcq6a82tskvw2.jpeg?q=70', '61', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('94', 'LAPCARE 15.1 inch HD LED Backlit TN Panel with VGA & HDMI Port, Light Weight, Power Saver, Wall Mounta...', '2699', '7', 'Panel Type: TN PanelScreen Resolution Type: HDBrightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 60 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/d/y/k/lm154-hd-15-1-2023-lkcd6c7084-lapcare-original-imagqp5jvg5hjzjh.jpeg?q=70', '55', '3', 'LAPCARE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('95', 'Enter 15.4 inch Full HD Monitor (E-MO-A05)', '2713', '5', 'Screen Resolution Type: Full HDResponse Time: 3 ms1 year brand warranty', 'https://rukminim2.flixcart.com/image/312/312/kxz0pe80/monitor/u/a/q/e-mo-a05-full-hd-15-4-e-mo-a05-enter-original-imagabhpfg2xbaas.jpeg?q=70', '85', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('96', 'Elista 17.1 inch HD LED Backlit Monitor (ELS-VS18HD LED)', '2749', '9', 'Screen Resolution Type: HDVGA Support | HDMIBrightness: 250 nitsAnti-Glare ScreenResponse Time: 8 msHDMI Ports - 11 Year Standard Manufacturer Warranty From Elista', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/a/q/x/els-vs18hd-led-hd-17-1-2023-els-vs18hd-led-elista-original-imagqjgg2prtramf.jpeg?q=70', '67', '3', 'Elista');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('97', 'Enter 15.4 inch SXGA Monitor (HDMI led Monitor)', '2755', '8', 'Screen Resolution Type: SXGAResponse Time: 5 ms1 year by brand', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/w/p/z/hdmi-led-monitor-sxga-15-4-15-4-inch-monitor-enter-original-imagkbdmhfxkfwq3.jpeg?q=70', '26', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('98', 'Enter 15.1 inch HD Monitor (led monitor)', '2763', '8', 'Screen Resolution Type: HDResponse Time: 3 msHDMI Ports - 11 YEAR BY BRAND', 'https://rukminim2.flixcart.com/image/312/312/l1grgcw0/monitor/8/0/y/led-monitor-hd-15-1-15-1-inch-with-hdmi-vga-enter-original-imagdfyg3s6sezeh.jpeg?q=70', '77', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('99', 'Enter 15.4 inch HD Monitor (E-MO-A08)', '2770', '10', 'Screen Resolution Type: HDResponse Time: 3 ms | Refresh Rate: 75 Hz1 Year', 'https://rukminim2.flixcart.com/image/312/312/ktop5e80/monitor/l/b/x/e-m0-a08-hd-15-4-e-m0-a08-enter-original-imag6z9tjtjeauqq.jpeg?q=70', '96', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('100', 'Enter 15.4 inch HD LED Backlit Monitor (E-M16B)', '2799', '10', 'Screen Resolution Type: HDVGA SupportResponse Time: 3 ms1 YEAR, By BRAND', 'https://rukminim2.flixcart.com/image/312/312/k7usyvk0/monitor/n/e/r/e-m16hb-e-m16hb-enter-original-imafpzjduf9enp8k.jpeg?q=70', '81', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('101', 'Enter 15.4 inch SXGA Monitor (VGA led Monitor)', '2799', '6', 'Screen Resolution Type: SXGAResponse Time: 5 ms1 year by brand', 'https://rukminim2.flixcart.com/image/312/312/ksuowi80/monitor/m/b/s/vga-led-monitor-sxga-15-4-15-4-inch-vga-led-enter-original-imag6bw3fvw48ghj.jpeg?q=70', '6', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('102', 'LAPCARE 15.4 inch HD LED Backlit TN Panel with VGA & HDMI Port, Light Weight, Power Saver, Wall Mounta...', '2799', '3', 'Panel Type: TN PanelScreen Resolution Type: HDBrightness: 250 nitsResponse Time: 5 ms | Refresh Rate: 60 Hz1 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/m/n/l/lm154h-hd-15-1-2023-lklehd6500-lapcare-original-imagqp5kyrvzzzkz.jpeg?q=70', '95', '3', 'LAPCARE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('103', 'Enter LED 15.4 inch Full HD Monitor (E-M16A VGA Monitor)', '2799', '6', 'Screen Resolution Type: Full HDHDMIBrightness: 280 nitsResponse Time: 4 msService Type', 'https://rukminim2.flixcart.com/image/312/312/k3670cw0/monitor/v/8/s/e-m16a-e-m16a-enter-original-imafa97fpe6j53vf.jpeg?q=70', '71', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('104', 'Enter 15.4 inch HD Monitor (Black HD LED Backlit 15.4" inch Monitor with HDMI and VGA)', '2799', '10', 'Screen Resolution Type: HDResponse Time: 3 ms1', 'https://rukminim2.flixcart.com/image/312/312/l12h1u80/monitor/e/y/a/vga-led-monitor-sxga-17-1-e-mo-ao2-enter-original-imagcq6a82tskvw2.jpeg?q=70', '18', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('105', 'Enter 15.4 inch SXGA Monitor (HDMI led monitor 15.4 inch)', '2830', '10', 'Screen Resolution Type: SXGAResponse Time: 5 msHDMI Ports - 11 year by brand', 'https://rukminim2.flixcart.com/image/312/312/ksuowi80/monitor/c/e/u/hdmi-led-monitor-15-4-inch-sxga-15-4-with-hdmi-vga-port-enter-original-imag6bw3p7jjryzz.jpeg?q=70', '41', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('106', 'Frontech M 15.4 inch HD VA Panel Monitor (MON-0068)', '2849', '4', 'Panel Type: VA PanelScreen Resolution Type: HDVGA Support | HDMIBrightness: 2202 nitsAnti-Glare ScreenResponse Time: 5 msHDMI Ports - 1One year Manufacturer Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/t/f/f/mon-0068-hd-15-4-mon0068-frontech-original-imagpuz9qcbgb2am.jpeg?q=70', '74', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('107', 'Enter monitior 15.4 inch SVGA Monitor (e-m16b)', '2850', '5', 'Screen Resolution Type: SVGAVGA SupportResponse Time: 6 ms1', 'https://rukminim2.flixcart.com/image/312/312/k4rcmfk0/monitor/g/7/e/e-m16b-13252-enter-original-imafmby7gghsnkew.jpeg?q=70', '62', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('108', 'Frontech 17 inch HD LED Backlit TN Panel Monitor (MON-0065)', '2863', '8', 'Panel Type: TN PanelScreen Resolution Type: HDHDMIResponse Time: 2 ms | Refresh Rate: 75 HzHDMI Ports - 11 Year Warranty', 'https://rukminim2.flixcart.com/image/312/312/xif0q/monitor/d/x/z/mon-0065-hd-17-2023-mon-0065-frontech-original-imags24cyjdzkygh.jpeg?q=70', '81', '3', 'Frontech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('109', 'Enter 15.4 inch SVGA Monitor (E-MO-A07)', '2870', '9', 'Screen Resolution Type: SVGAResponse Time: 3 ms | Refresh Rate: 75 Hz1', 'https://rukminim2.flixcart.com/image/312/312/kr6oeq80/monitor/8/t/t/e-mo-a06-15-4-is13252-enter-original-imag5f2bkvgx8cqz.jpeg?q=70', '67', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('110', 'Enter 17.1 inch SXGA Monitor (VGA led Monitor)', '2874', '9', 'Screen Resolution Type: SXGABrightness: 220 nitsResponse Time: 5 msHDMI Ports - 11 year by brand', 'https://rukminim2.flixcart.com/image/312/312/l12h1u80/monitor/e/y/a/vga-led-monitor-sxga-17-1-e-mo-ao2-enter-original-imagcq6a82tskvw2.jpeg?q=70', '35', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('111', 'Enter 15.4 inch HD LED Backlit Monitor (E-M16HA)', '2883', '6', 'Screen Resolution Type: HDVGA Support | HDMIResponse Time: 6 ms1 YEAR, By BRAND', 'https://rukminim2.flixcart.com/image/312/312/k34rki80/monitor/f/c/b/e-m16ha-e-m16ha-enter-original-imafmby7pxnjbhhm.jpeg?q=70', '99', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('112', 'Enter 17.1 inch HD Monitor (E-M0-AO2)', '2889', '3', 'Screen Resolution Type: HDBrightness: 250 nitsResponse Time: 5 msHDMI Ports - 11 Year, by Brand', 'https://rukminim2.flixcart.com/image/312/312/kz4gh3k0/monitor/d/4/6/e-m0-ao2-hd-17-1-e-m0-ao2-enter-original-imagb78d7eceqkes.jpeg?q=70', '91', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('113', 'Enter 17.1 inch HD LED Backlit Monitor (E-M0-A02)', '2889', '3', 'Screen Resolution Type: HDVGA Support | HDMIResponse Time: 4 msHDMI Ports - 11 YEAR, By BRAND', 'https://rukminim2.flixcart.com/image/312/312/kulk9zk0/monitor/i/f/k/e-m0-a02-hd-17-1-e-m0-a02-enter-original-imag7zr5ztyarztk.jpeg?q=70', '57', '3', 'Enter');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('114', 'AMD Ryzen 5 2600X Processor', '11999', '6', 'PCIe 3.0 x16
CMOS 12nm FinFET
Total L3 Cache 16MB
Max Temps 95Â°C', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/r5-2600/r5-228x228.jpg', '95', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('115', 'AMD Athlon 200GE AM4 Socket Desktop Processor with Radeon Vega 3 Graphics', '7000', '9', 'Base Clock Speed 3.2GHz
Package AM4
PCI Express PCIe 3.0', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/Athlon/athlon-228x228.jpg', '66', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('116', 'Intel 10th Gen Core i3 10100F Processor', '8200', '6', 'Socket  Supported FCLGA1200
Speed 3.60 up to 4.30 GHz
Cores- 4 & Threads- 8
6M Intel Smart  Cache', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i3-10100/i3-10100-228x228.jpg', '98', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('117', 'AMD Ryzen 3 4100 Processor', '10300', '6', 'Clock Speed: 3.8GHz; Up to 4.0GHz
L1 Cache: 256KB; L2 Cache: 2MB; L3 Cache: 4MB
4 Cores & 8 Threads
CPU Socket: AM4', 'https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-3-4100/amd-ryzen-3-4100-01-228x228.jpg', '61', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('118', 'Intel Core i3-12100F 12th Gen Alder Lake Processor', '11200', '8', 'Clock Speed: 3.30 GHz Up to 4.30 GHz
Cache: 12MB, Socket: LGA 1700
CPU Cores: 4, CPU Threads: 8
Max Memory Size: 128 GB', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i3-12100f/i3-12100f-228x228.jpg', '57', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('119', 'Intel 10th Gen Core i3 10100 Processor', '11800', '9', 'Socket  Supported FCLGA1200
Speed 3.60 up to 4.30 GHz
Cores- 4 & Threads- 8
6M Cache', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i3-10100/i3-10100-228x228.jpg', '59', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('120', 'Intel Core i3 10105 10th Gen Comet Lake Processor', '12000', '3', 'Socket Supported FCLGA1200
Speed 3.70 GHz up to 4.40 GHz
Cores- 4 & Threads- 8, 6M Cache
Intel UHD Graphics 630', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/core-i3-10105/core-i3-10105-001-228x228.jpg', '83', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('121', 'AMD Ryzen 5 5500 Processor', '11500', '7', 'Speed: 3.6GHz; Up to 4.2GHz
L2 Cache: 3MB, L3 Cache: 16MB
Cores: 6, Threads: 12
Up to 3200MHz DDR4', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/amd-ryzen-5-5500/amd-ryzen-5-5500-01-228x228.jpg', '86', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('122', 'AMD Ryzen 3 3200G Processor with Radeon RX Vega 8 Graphics', '11999', '8', 'Speed: 3.6 GHz up to 4.0 GHz
Cores-4 & Threads-4
Memory Speed: Up to 2933MHz
Radeon Vega 8 Graphics', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-3-3200g/ryzen-3-3200g-3-228x228.jpg', '5', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('123', 'AMD Ryzen 5 4600G Processor with Radeon Graphics', '12000', '4', 'Speed: 3.7GHz up to 4.2GHz
Cache: L2: 3MB, L3: 8MB
Cores-6 & Threads-12
Memory Speed: Up to 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-4600g/ryzen-5-4600g-228x228.jpg', '38', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('124', 'AMD RYZEN 5 3500 Processor', '12500', '7', 'Speed: 3.6GHz up to 4.1GHz
Cache (L2+L3): 16 MB
Cores-6 & Threads-6
Memory Speed: 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-3500/ryzen-3500-228x228.jpg', '5', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('125', 'AMD RYZEN 5 3500X Processor', '12500', '3', 'Speed: 3.6GHz up to 4.1GHz
Cache (L2+L3): 35 MB
Cores-6 & Threads-6
Memory Speed: 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-3500/ryzen-3500-228x228.jpg', '60', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('126', 'Intel 10th Gen Core i5-10400F Processor', '12500', '5', 'Clock Speed:2.90 GHz up to 4.30 GHz
Cores-6 & Threads-12
12 MB SmartCache
Memory Types: DDR4-2666', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i5-10400/i5-10400-1-228x228.jpg', '69', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('127', 'AMD Ryzen 5 Pro 4650G Processor with Radeon Graphics', '12800', '8', 'Speed: 3.7GHz up to 4.2GHz
Cache: L2: 3MB, L3: 8MB
Cores-6 & Threads-12
Memory Speed: Up to 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-pro-4650g/ryzen-5-pro-4650g-228x228.jpg', '60', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('128', 'AMD Ryzen 5 4500 Processor', '13200', '6', 'Clock Speed: 3.6GHz; Up to 4.1GHz
L1 Cache: 384KB; L2 Cache: 3MB; L3 Cache: 8MB
6 Cores & 12 Threads
CPU Socket: AM4', 'https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-5-4500/amd-ryzen-5-4500-01-228x228.jpg', '41', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('129', 'AMD Ryzen 5 5600G Processor with Radeon Graphics (Chinese Edition)', '13200', '3', 'Speed: 3.9GHz up to 4.4GHz
Cache: L2: 3MB, L3: 16MB
Cores-6 & Threads-12
Memory Speed: Up to 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-5600g/ryzen-5-5600g-228x228.jpg', '18', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('130', 'Intel Core i3-12100 12th Gen Alder Lake Processor', '13300', '3', 'Clock Speed: 3.30 GHz Up to 4.30 GHz
Cache: 12MB, Socket: LGA 1700
CPU Cores: 4, CPU Threads: 8
Graphic: Intel UHD Graphics 730', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/i3-12100/i3-12100-228x228.jpg', '51', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('131', 'AMD Ryzen 5 3600 Processor', '13500', '5', 'Speed: 3.6GHz up to 4.2GHz
Cache: L2: 3MB, L3: 32MB
Cores-6 & Threads-12
Memory Speed: 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-3600x/ryzen-5-3600-228x228.jpg', '22', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('132', 'Intel 13th Gen Core i3-13100F Raptor Lake Processor', '14000', '7', 'Clock Speed: 3.40 GHz up to 4.50 GHz
Cores: 4, Threads: 8
Cache: 12 MB
Socket: LGA 1700', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/core-i3-13100/core-i3-13100-01-228x228.webp', '38', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('133', 'AMD Ryzen 5 5600G Processor with Radeon Graphics', '14200', '3', 'Speed: 3.9GHz up to 4.4GHz
Cache: L2: 3MB, L3: 16MB
Cores-6 & Threads-12
Memory Speed: Up to 3200MHz', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-5600g/ryzen-5-5600g-228x228.jpg', '12', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('134', 'AMD Ryzen 5 5600 Processor', '14300', '4', 'Speed: 3.5GHz up to 4.4GHz
Cache: L2: 3MB, L3: 32MB; Cores-6 & Threads-12
Memory Speed: DDR4 Up to 3200MHz
AMD ZEN 3 Architecture', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/5600x/5600x-001-228x228.jpg', '70', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('135', 'Intel 11th Gen Core i5-11400F Rocket Lake Processor', '14800', '10', 'Clock Speed: 2.60 GHz Up to 4.40 GHz
Cache: 12 MB, Socket: LGA 1200
CPU Cores: 6, CPU Threads: 12
Max RAM Size: 128 GB', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/core-i5-11400f/core-i5-11400f-228x228.jpg', '86', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('136', 'AMD Ryzen 5 1600X Processor', '10999', '9', 'Speed: 3.6GHz up to 4.0GHz
L1 Cache: 576KB, L2 Cache: 3MB, L3 Cache: 16MB
Cores: 6, Threads: 12
Up to 2667MHz DDR4', 'https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-1600x/amd-ryzen-5-1600x-processor-02-228x228.jpg', '3', '4', 'AMD');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('137', 'Intel 10th Gen Core i5-10400 Processor', '16300', '3', 'Clock Speed:2.90 GHz up to 4.30 GHz
Cores-6 & Threads-12
12 MB SmartCache
Intel UHD Graphics 630', 'https://www.startech.com.bd/image/cache/catalog/processor/Intel/i5-10400/i5-10400-1-228x228.jpg', '87', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('138', 'Intel 13th Gen Core i3-13100 Raptor Lake Processor', '16500', '10', 'Clock Speed: 3.40 GHz up to 4.50 GHz
Cores: 4, Threads: 8
Cache: 12 MB
Socket: LGA 1700', 'https://www.startech.com.bd/image/cache/catalog/processor/intel/core-i3-13100/core-i3-13100-01-228x228.webp', '100', '4', 'Intel');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('277', 'Micropack M101 Optical USB Mouse', '325', '4', 'Button: 3D
Resolution: 1000dpi
Cable Length: OD 3.2mm
Interface type: USB 2.0', 'https://www.startech.com.bd/image/cache/catalog/mouse/micropack/m101/m101-1-228x228.jpg', '84', '7', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('278', 'Meetion MT-M990S Wired RGB Programmable Mechanical Gaming Mouse', '2250', '5', 'Number of Key: 8+1 Buttons
Resolution: 500-4000 dpi
Polling Rate: 125-1000 Hz/ms
RGB LED Back Light', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-m990s/mt-m990s-black-01-228x228.jpg', '39', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('279', 'Micropack M103 Optical USB Mouse', '325', '5', 'Button: 3D
Resolution: 1000dpi
Cable Length: OD 3.2mm
Interface type: USB 2.0', 'https://www.startech.com.bd/image/cache/catalog/mouse/micropack/m103/m103-1-228x228.jpg', '29', '7', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('280', 'Asus P305 TUF M3 Gaming Mouse', '2300', '6', 'Seven Programmable Buttons
200 to 7000 dpi Optical Sensor
Wired USB Connection
1000Hz Polling Rate', 'https://www.startech.com.bd/image/cache/catalog/mouse/asus/p305-tuf-m3/p305-tuf-m3-07-228x228.jpg', '90', '7', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('281', 'Redragon M711 COBRA 7 Programmable Buttons RGB Backlit Gaming Mouse', '2300', '6', 'Buttons: 7 (7 out of 9) are customizable
Polling Rate: Up to 1000 Hz
Interface: USB 2.0 full speed. 3.0
7 RGB Lighting Effects', 'https://www.startech.com.bd/image/cache/catalog/mouse/redragon/m711-cobra/m711-cobra-1-228x228.jpg', '10', '7', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('282', 'Rapoo N200 Wired Optical Mouse', '380', '10', '1600 DPI
USB Interface
Color- Black', 'https://www.startech.com.bd/image/cache/catalog/mouse/rapoo/n200/n200-228x228.jpg', '21', '7', 'Rapoo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('283', 'Meetion MT-M362 USB Optical Mouse', '340', '3', 'Number of buttons: 3+1(scroll wheel)
Resolution: 800-1600dpi
Max. Tracking Speed: 20 ips
Interface: USB', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-m362/mt-m362-01-228x228.jpg', '89', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('284', 'Rapoo N100 Wired Optical Mouse', '350', '9', '1600 DPI
USB Interface
Color- Black', 'https://www.startech.com.bd/image/cache/catalog/mouse/rapoo/n100/n100-228x228.jpg', '86', '7', 'Rapoo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('285', 'Meetion MT-M985 10 buttons Programmable Wired Metal Mechanical Gaming Mouse', '2500', '3', 'Ergonomic symmetric design for Right/Left hand
Number of Keys: 5 + 1 (scroll wheel)
Resolution: 800/1200/1600/2400 DPI
Sensors: Optical A704', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-m985/mt-m985-228x228.jpeg', '26', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('286', 'Astrum MU100 Wired Optical USB Mouse', '350', '8', '3 buttons Wired Optical USB mouse.
Mouse sensitivity: 1000 DPI
Comfort to wrist and Hand
Perfect for laptops & Desktops', 'https://www.startech.com.bd/image/cache/catalog/mouse/astrum/mu100/mu100-01-228x228.jpg', '64', '7', 'Astrum');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('287', 'A4TECH OP-720 Optical USB Wired Mouse', '350', '9', 'Smart horizontal & vertical scrolling
Sensor: Optical
Resolution: 1200 DPI
No. of Buttons.: 3', 'https://www.startech.com.bd/image/cache/catalog/mouse/a4tech/op-720/op-720-01-228x228.jpg', '42', '7', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('288', 'A4TECH OP-330 USB Wired Mouse', '375', '10', '4-Way Smart horizontal & vertical scrolling
5 M Clicks Button Lifetime
Resolution: 1200 DPI
Wider Scroll Wheel', 'https://www.startech.com.bd/image/cache/catalog/mouse/a4tech/op-330/op-330-01-228x228.jpg', '86', '7', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('289', 'Meetion MT-GM80 Transformers Mechanical Gaming Mouse', '2750', '10', '7 programmable buttons for more convenient gaming
8 levels of adjustable DPI, Max 4000 DPI
Built-in removable 4pcs counter weight modules
7D ADNS3050 Optical Navigation Sensor', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-gm80/mt-gm80-01-228x228.jpg', '71', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('290', 'Lenovo Legion Precision Wired Gaming Mouse', '2950', '4', 'Ultra-high DPI, up to 8200 dpi
9 programmable buttons
Ultra-responsive Omron switches
Adjustable weight-tuning cartridges', 'https://www.startech.com.bd/image/cache/catalog/mouse/lenovo/y-gaming/y-gaming-01-228x228.jpg', '44', '7', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('291', 'Xiaomi MIIIW 700G RGB Colorful 6 Buttons Wired Gaming Mouse', '3300', '9', '7200DPI game sensor
6 programmable keys,
8 zinc alloy weights
Thumb wing design', 'https://www.startech.com.bd/image/cache/catalog/mouse/xiaomi/miiiw-700g/miiiw-700g-228x228.jpg', '25', '7', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('292', 'PROLiNK PMC1005 USB Optical Mouse', '375', '9', 'Number of buttons: 3
CPI Resolution: 1000 dpi
Interface: USB
Easier & Faster Scrolling', 'https://www.startech.com.bd/image/cache/catalog/mouse/prolink/pmc1005/pmc1005-tiffany-01-228x228.webp', '4', '7', 'PROLiNK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('293', 'Redragon M686 VAMPIRE ELITE 8 Programmable Buttons Wireless Gaming Mouse', '3450', '9', '8 customizable buttons include 3 side buttons
Advanced 2.4Ghz dongle with 1ms polling report rate
16000 DPI Wired/Wireless
45-Hour Durable Power Capacity', 'https://www.startech.com.bd/image/cache/catalog/mouse/redragon/m686-vampire-elite/m686-vampire-elite-01-228x228.jpg', '4', '7', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('294', 'Astrum MU110 Wired Optical USB Mouse', '375', '4', '3 buttons Wired Optical USB mouse.
Mouse sensitivity: 1000 DPI
Comfort to wrist and Hand
Perfect for laptops & Desktops', 'https://www.startech.com.bd/image/cache/catalog/mouse/astrum/mu110/mu110-01-228x228.jpg', '71', '7', 'Astrum');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('295', 'Meetion MT-G3360 POSEIDON Professional Macro Gaming Mouse', '3500', '10', 'Built-in Professional Gaming Sensor-PMW3360
7 Grade Switchable DPI (200-12000 dpi)
Number of Buttons: 6+1 (Scroll Wheel)
Ultra-durable pure silicone side grips', 'https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-g3360/mt-g3360-01-228x228.jpg', '14', '7', 'Meetion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('296', 'Logitech B100 Optical USB Mouse', '390', '6', 'Number of buttons: 3
Resolution: 800DPI
Cable Length: 180 cm', 'https://www.startech.com.bd/image/cache/data/B100 Optical USB Mouse-228x228.png', '12', '7', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('297', 'KWG Draco E1a Multi Color Keyboard, Mouse, Headphone & Mouse Mat Gaming Combo', '3800', '4', 'Advanced Gaming Optical Sensor
Multi-color backlight
Aluminum Texture Bezel
Adjustable DPI: 3200 DPI', 'https://www.startech.com.bd/image/cache/catalog/keyboard/kwg/draco-e1a-combo/draco-e1a-combo-001-228x228.jpg', '69', '7', 'KWG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('298', 'Logitech M90 USB Contoured Shape MOUSE', '390', '3', 'Number of buttons: 3
Sensor Resolution: 1000
Cable Length: 150 cm', 'https://www.startech.com.bd/image/cache/catalog/Accessories/Mouse/logitech/m90-228x228.png', '29', '7', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('299', 'A4TECH OP-620D 2X Click Optical Mouse', '399', '4', '2X Optical Mouse
DPI:  800DPI
DIM: 4.68L x 2.48W x 1.39H in.', 'https://www.startech.com.bd/image/cache/catalog/mouse/a4tech/620d/620d-228x228.jpg', '66', '7', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('300', 'boAt Storm Pro Call Bluetooth Calling Smart Watch', '5999', '3', '1.78" AMOLED display
700+ active modes
7-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/storm-pro-call/storm-pro-call-228x228.webp', '88', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('301', 'boAt Wave Stride Voice Bluetooth Calling Smart Watch', '3999', '7', '1.83" Square HD display
100+ sports modes
10-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/wave-stride-voice/wave-stride-voice-228x228.webp', '56', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('302', 'boAt Storm Call Bluetooth Calling Smart Watch', '3499', '8', '1.69" Square HD display
10 sports modes
7-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/storm-call/storm-call-228x228.webp', '20', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('303', 'boAt Wave Call Bluetooth Calling Smart Watch', '2999', '6', '1.69" Square HD display
10 sports modes
7-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/wave-call/wave-call-02-228x228.webp', '17', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('304', 'boAt Wave Lite 1.69" HD Display Smart Watch', '2599', '5', '1.69" Square HD display
10 sports modes
7-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/wave-lite/wave-lite-228x228.webp', '59', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('354', 'Xiaomi Amazfit Band 5 Fitness Tracker Orange', '1700', '7', 'Measure blood oxygen saturation with OxygenBeats
1.1" full-color AMOLED Touch screen Display
24/7 Heart Rate monitoring
Amazon Alexa Built-in', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/amazfit-a2005-band-5/amazfit-band-5-orange-01-228x228.jpg', '15', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('355', 'Xiaomi Amazfit Band 5 Fitness Tracker', '1650', '9', 'Measure blood oxygen saturation with OxygenBeats
1.1" full-color AMOLED Touch screen Display
24/7 Heart Rate monitoring
Amazon Alexa Built-in', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/amazfit-a2005-band-5/amazfit-a2005-band-5-228x228.jpg', '72', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('356', 'Huawei Band 4 Health Monitoring Smart Band', '1650', '4', 'Easy Charging, Longer Usage
Life Assistant
Youthful Design
Smart Heart Rate Tracking', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/huawei/band-4/band-4-228x228.jpg', '84', '10', 'Huawei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('357', 'OnePlus W101N Smart Band', '3200', '10', 'Bluetooth 5.0 Supported, Battery: 100 mAh
1.1 inch (126 x 294)AMOLED Display
5ATM/IP68 Sweat and Water Resistance
Continuous Blood Oxygen Saturation Monitoring', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/oneplus/w101n/w101n-01-228x228.jpg', '41', '10', 'OnePlus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('358', 'HONOR Band 6 Sports Fitness Tracker Smart Band', '1550', '3', '1.47-inch AMOLED display
24-Hour Heart-Rate Monitoring
10 Professional Workout Modes
180mAh Battery', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/huawei/honor-smart-band-6/smart-band-6-228x228.jpg', '91', '10', 'HONOR');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('359', 'Xiaomi Mi Smart Band 6 XMSH15HM AMOLED Full-Screen Fitness Tracker', '1300', '6', 'Fullscreen 1.56" AMOLED  display
50m water resistance
Fitness Tracker with SpOâ‚‚
14-day extra-long battery life', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/mi-band-6/mi-smart-band-6-228x228.jpg', '31', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('360', 'Realme Band 2 with 1.4" Large Color Display', '1800', '6', 'Display: 1.4" 167x320 Pixel Large Color Display
Sensor: 3-axis Accelerometer
Battery: 204mAh
Connectivity: Bluetooth 5.1', 'https://www.startech.com.bd/image/cache/catalog/smart-band/realme/band-2-01-228x228.jpg', '59', '10', 'Realme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('361', 'HUAWEI Band 7 AMOLED Display Fitness Tracker Smart Band (CN Edition)', '1400', '3', '1.47 inch AMOLED Touchscreen Display
Automatic SpO2, Heart Rate Monitor
Accelerometer sensor, Gyroscope sensor
5 ATM water-resistant', 'https://www.startech.com.bd/image/cache/catalog/smart-band/Huawei /Huawei Band 7 -01-228x228.webp', '65', '10', 'HUAWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('362', 'HUAWEI TalkBand B3 Lite Smart Band', '1250', '3', 'Smart Band & Bluetooth Headset
Activity Tracking
Reminders & Alerts
Clearer Calling', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/huawei/talkband-b3/talkband-b3-228x228.jpg', '48', '10', 'HUAWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('363', 'Xiaomi Mi Band 7 Pro AMOLED Display Waterproof Fitness Tracker', '2050', '5', '1.64" AMOLED Display with Anti-fingerprint Coating
GPS High Precision 6-axis Sensor and PPG Heart Rate Sensor
235mAh Lithium-ion polymer battery
5 ATM Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-band/xiaomi/mi-band-7-pro/mi-band-7-pro-01-228x228.webp', '31', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('364', 'Xiaomi Amazfit Band 7 Fitness Tracker', '2000', '4', 'Measure blood oxygen saturation with OxygenBeats
1.47" AMOLED, 198x368, 282 PPI, Touch screen
24/7 Heart Rate monitoring
Amazon Alexa Built-in', 'https://www.startech.com.bd/image/cache/catalog/smart-band/xiaomi/amazfit-band-7/amazfit-band-7-black-02-228x228.webp', '21', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('416', 'Hoco HC2 True Wireless Waterproof Bluetooth Speaker', '1450', '3', 'Bluetooth 5.0, chip: JL
Battery Capacity: 2400mAh
Calls/music time: 6 hours
Waterproof Rating: IPX5', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc2/hc2-02-228x228.jpg', '16', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('417', 'Awei Y333 Bluetooth TWS Waterproof Speaker (10W)', '2250', '4', 'Battery Capacity: 1800mA/3.7V
Charging time: 3 hours
Music Play: 6 Hours
Bluetooth Transmission Distance : 10 M', 'https://www.startech.com.bd/image/cache/catalog/speaker/awei/y333/awei-y333-bluetooth-speaker-black-01-228x228.png', '93', '13', 'Awei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('418', 'Hoco HC9 Dazzling Pulse Sports Wireless Waterproof Bluetooth Speaker', '1600', '9', 'Support BT, TF card, USB flash drive, AUX, TWS & other modes
Speaker unit: 52mm x2. Power: 5W x2
Battery capacity: 1800mAh
Built-in colorful ambient light', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc9/hc9-01-228x228.webp', '31', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('419', 'Poly Sync 20+ USB-A BT-600 Bluetooth Smart Speakerphone', '17500', '6', 'Remarkable Sound From Meetings to Music
Included BT600 Bluetooth Adapter
up to 20 Hours of Battery Life
Reduce Echo and Noise', 'https://www.startech.com.bd/image/cache/catalog/speaker/poly/sync-20/sync-20-228x228.jpg', '25', '13', 'Poly');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('420', 'Hoco HC12 True Wireless Bluetooth Speaker', '1700', '9', 'True Wireless Speaker Sound Quality
Bluetooth Version: 5.0
Battery capacity: 1200mAh
Support: FM, TF card, U disk, AUX', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc12/hc12-01-228x228.jpg', '40', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('421', 'Edifier PK305 Portable Multimedia Bluetooth Speaker', '12400', '9', 'Multiple inputs including Bluetooth, USB, AUX, and TF card
DSP digital audio processing
Multiple microphone input forms
Waterproof, sun-proof, cold-resistant, heat-resistant', 'https://www.startech.com.bd/image/cache/catalog/speaker/edifier/pk305/pk305-01-228x228.webp', '47', '13', 'Edifier');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('422', 'F&D W5 Plus Portable Bluetooth Speaker', '2200', '3', 'Directly access TF card, Internal Li-ion battery
2.25" inch driver, Lightning ring
Bluetooth V4.0 audio streaming
Authentic and natural sound', 'https://www.startech.com.bd/image/cache/catalog/speaker/f-and-d/w5-plus/w5-plus-01-228x228.jpg', '46', '13', 'F&D');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('423', 'Megastar Avengers Gaming G002 Wireless Neck Speaker', '2100', '5', 'Output Power: 3W*2
Speaker: 33mm (With Passive Radiator Edge)
Play Time: Up to 10hr (80% Volume)
Built In Microphone', 'https://www.startech.com.bd/image/cache/catalog/neckband/megastar/g002/g002-228x228.webp', '89', '13', 'Megastar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('424', 'RECCI RSK-W27 3in1 TWS Wireless Speaker with Earbuds and Flashlight', '2450', '3', 'Transparent Design
Cool RGB Light Effect
Charging Port: Type-C
Playback Time: Up to 3 Hours', 'https://www.startech.com.bd/image/cache/catalog/accessories/bluetooth-spreaker/recci/rsk-w27/rsk-w27-228x228.webp', '40', '13', 'RECCI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('425', 'Aigo T98 Wireless Bluetooth Speaker', '890', '5', '360° All-round stereo sound quality
Built-in Microphone for HD Calles
Battery capacity: 1200mAh
Compact size and lightweight', 'https://www.startech.com.bd/image/cache/catalog/speaker/aigo/t98/t98-01-228x228.jpg', '59', '13', 'Aigo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('426', 'Lenovo Thinkplus K3 Pro Mini Bluetooth Calling Speaker', '1050', '5', 'Built-in high-sensitivity microphone
Built-in 1200mAh Li-battery
About 6 Hours Usage Time
Domestic Waterproofing', 'https://www.startech.com.bd/image/cache/catalog/speaker/lenovo/thinkplus-k3-pro/thinkplus-k3-pro-01-228x228.webp', '14', '13', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('427', 'Baseus Q E06 Chinese Zodiac Dog Wireless Speaker', '900', '8', 'Battery capacity: 450mAh
Protection: IP55
Connector: Micro USB
Speaker power: 3W', 'https://www.startech.com.bd/image/cache/catalog/speaker/baseus/q-e06/q-228x228.webp', '49', '13', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('428', 'Rapoo A60 Compact Stereo Speaker', '1100', '6', 'Dolby 2.0 multimedia wired stereo speaker
3W high-power playback system
Compact Mini Design, Plug and Play
Low Latency', 'https://www.startech.com.bd/image/cache/catalog/speaker/rapoo/a60/a60-03-228x228.webp', '29', '13', 'Rapoo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('429', 'Lenovo Thinkplus K30 Portable Bluetooth Speaker', '1100', '9', '360º Panoramic View Surround Sound
1200 mAh Powerful Battery
About 6 Hours Usage Time
High Definition Hands-Free Calling', 'https://www.startech.com.bd/image/cache/catalog/speaker/lenovo/k3-mini/lenovo-k3-mini-wireless-speake-01-228x228.webp', '13', '13', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('430', 'ASUS Lyra Voice Wireless AC2200 Tri-Band Whole Home Mesh Router and Smart Speaker', '25700', '4', 'AiMesh Gigabit Router with Smart Speaker
Integrated Alexa Virtual Assistant
Data Transfer Rate(Wifi): 2200Mbps
Data Transfer Rate(Lan): 1000 Mbps', 'https://www.startech.com.bd/image/cache/catalog/router/asus/lyra-voice-ac2200/lyra-voice-ac2200-1-228x228.jpg', '90', '13', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('431', 'Xiaomi XMYX07YM Bluetooth Mini Speaker', '1250', '3', 'Built in Xiaoai AI, wake up quickly
Working distance: â‰¤10 meters
Bluetooth 5.0, better compatibility
Type-C interface, 6-hour battery life', 'https://www.startech.com.bd/image/cache/catalog/speaker/xiaomi/xmyx07ym/xmyx07ym-01-228x228.jpg', '20', '13', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('432', 'Microlab U210 USB 2:1 LED Bluetooth Speaker Black', '2150', '7', 'Frequency response: 45 Hz - 18 kHz
Output power: 3W X 2 + 5W
Signal/Noise Ratio: > 65 dB
3.5mm line in, Bluetooth, TF card, Radio', 'https://www.startech.com.bd/image/cache/catalog/speaker/microlab/u210/u210-01-228x228.webp', '71', '13', 'Microlab');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('433', 'Lenovo Thinkplus K3 Mini Bluetooth Speaker', '1050', '9', 'Battery Capacity: 1200mAh
Shell material: Metal
Bluetooth 5.0
Rated input: 5V/500mA', 'https://www.startech.com.bd/image/cache/catalog/speaker/lenovo/k3-mini/lenovo-k3-mini-wireless-speake-01-228x228.webp', '48', '13', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('434', 'Battle Armor Transparent 5W Wireless Speaker', '999', '3', 'Output Power: 5W
Bluetooth version: V5.0
Battery: 500mAh
Play time: Up to 12 hours', 'https://www.startech.com.bd/image/cache/catalog/speaker/others/transparent/transparent-228x228.webp', '38', '13', 'Battle');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('435', 'Lenovo Thinkplus K3 Plus RGB Portable Bluetooth Speaker', '1200', '6', '52mm Large Moving Coil
360° Surround Sound
7 Colorful Lights
Built-in 500mAh Battery', 'https://www.startech.com.bd/image/cache/catalog/speaker/lenovo/thinkplus-k3-plus/thinkplus-k3-plus-01-228x228.webp', '79', '13', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('436', 'AULA N-169B 360° Surround Sound Bluetooth Speaker', '1050', '8', '2.0 & 3.5mm/Bluetooth
Cooling effect
360° stereo surround sound
Honeycomb cooling grill', 'https://www.startech.com.bd/image/cache/catalog/speaker/aula/n-169b/n-169b-01-228x228.webp', '65', '13', 'AULA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('437', 'AULA BS302 360° Surround Sound Portable Bluetooth Speaker', '1200', '7', 'Transmission method: Bluetooth
7 Colorful Lights
Built-in 500mAh Battery
360° three-dimensional surround', 'https://www.startech.com.bd/image/cache/catalog/speaker/aula/bs302/bs302-01-228x228.webp', '10', '13', 'AULA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('438', 'Xiaomi Mi MDZ-28-DI Compact Mini Bluetooth Speaker 2 Global Version White', '1200', '9', 'Connectivity: Bluetooth 4.0
Wireless Range: 5 meters
Weight: 58 g', 'https://www.startech.com.bd/image/cache/catalog/speaker/mi-speaker/mi-portable-speaker-228x228.jpg', '17', '13', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('439', 'JOYROOM JR-ML03 Transparent RGB Bluetooth Wireless Speaker', '950', '5', 'Drive unit: φ 52mm
Power Output: 5 watts
Communication range: 12 meters
Battery capacity: 600mAh', 'https://www.startech.com.bd/image/cache/catalog/speaker/joyroom/jr-ml03/jr-ml03-01-228x228.jpg', '45', '13', 'JOYROOM');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('440', 'Yison Celebrat SP-3 Portable Bluetooth Speaker', '1150', '8', 'Battery Capacity: 600mAh
Range: 10m
Bluetooth Version: V5.0
Charging Time: 2-3 Hour
Color: Black, Blue, Green, Grey', 'https://www.startech.com.bd/image/cache/catalog/speaker/yison/sp-3/yison-celebrat-sp-3-portable-blutooth-speaker-black-228x228.jpg', '36', '13', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('441', 'Havit SF123BT 2:1 Multi-Function Bluetooth Speaker', '1150', '10', 'Number Of Loudspeaker Enclosure:3
Bluetooth Version: V 5.0
Speaker: 3''6Î© + 2''6Î© x2
Output Power: 3W + 2W x2', 'https://www.startech.com.bd/image/cache/catalog/speaker/havit/sf123bt/sf123bt-01-228x228.jpg', '28', '13', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('442', 'Realme Pocket Bluetooth Speaker', '1150', '5', 'Type-C Port, 6 Hours total playback
Water Resistant: IPX5
Battery Capacity: 600mAh
Charging Time: 2.5 hours for a full charge', 'https://www.startech.com.bd/image/cache/catalog/speaker/realme/realme-pocket/realme-pocket-01-228x228.jpg', '35', '13', 'Realme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('443', 'Orvibo LSP21 Smart ceiling Bluetooth speaker', '16000', '9', 'Size: φ200*105*80mm
Hole size: 185mm
Power Supply: DC19V3A
Slave 2 piece', 'https://www.startech.com.bd/image/cache/catalog/daily-lifestyle/orvibo/lsp20/lsp20-01-228x228.webp', '75', '13', 'Orvibo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('444', 'Hoco HC11 Bora Sports Waterproof True Wireless Bluetooth Speaker with Flashlight', '1250', '3', 'Bluetooth 5.0, chip: JL
Battery Capacity: 1200mAh
Use time: 2 hours
Speaker unit: 45mm*2', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc11/hoco-hc11-bluetooth-speaker-04-228x228.webp', '32', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('445', 'Hoco HC16 True Wireless Bluetooth Speaker', '1375', '4', '10W Powerful Output
1200mAh Large Battery
Built-in USB / TF SLOT / AUX slot
IPX4 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc16/hc16-01-228x228.webp', '52', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('446', 'RECCI RSK-W30 Mars Transparent Wireless Speaker', '1250', '3', 'Transparent Design
Cool RGB Light Effect
Charging Port: Type-C
Playback Time: Up to 3 Hours', 'https://www.startech.com.bd/image/cache/catalog/accessories/bluetooth-spreaker/recci/rsk-w3/rsk-w30-228x228.webp', '10', '13', 'RECCI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('447', 'Orvibo LSP20 Smart ceiling Bluetooth speaker', '20000', '7', 'Size: φ200*105*80mm
Hole size: 185mm
Power Supply:DC19V3A
Master 1 piece, Slave 1 piece', 'https://www.startech.com.bd/image/cache/catalog/daily-lifestyle/orvibo/lsp20/lsp20-01-228x228.webp', '87', '13', 'Orvibo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('448', 'RECCI RSK-W09 MOZART Hi-Fi Portable Bluetooth Speaker', '1399', '6', 'Frequency: 180Hz-20 KHz
Charging Port: Type-C
Playback Time: Up to 5 Hours
Bluetooth: V5 0', 'https://www.startech.com.bd/image/cache/catalog/accessories/bluetooth-spreaker/recci/rsk-w09/rsk-w09-228x228.webp', '2', '13', 'RECCI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('449', 'Micropack Conch Bluetooth Speaker (Black/White) (6W)', '1650', '3', 'Rated power: 2x3W
Bluetooth version: V2.1+EDR
Waterproof level: IPX4
Playing time: about 6 hours', 'https://www.startech.com.bd/image/cache/catalog/speaker/micropack/conch/conch-001-228x228.jpg', '60', '13', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('450', 'Yison Celebrat SP-4 Portable Speaker', '1650', '7', 'Battery Capacity: 1200mah
Bluetooth Version: Bt V5.0
Charging Time: 2 Hours
Color: Grey, Black, Red', 'https://www.startech.com.bd/image/cache/catalog/speaker/yison/sp-4/yison-celebrat-sp-4-portable-speaker-black-228x228.jpg', '25', '13', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('451', 'Orvibo ArtisBox Play Smart Stand Bluetooth Speaker', '45000', '10', 'Size: 520*720*48mm
Power Supply: DC20V/1.5A
Speaker power: 8W*4 speakers
Internet Protocol: Bluetooth', 'https://www.startech.com.bd/image/cache/catalog/daily-lifestyle/orvibo/artisbox-play/artisbox-play-01-228x228.webp', '20', '13', 'Orvibo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('452', 'Fantech GS204 Rumble RGB Dual Mode Gaming Speaker', '8000', '3', 'Dual Connection. Bluetooth and 3.5mm Audio
Aux mode and Bluetooth Mode
Up to 7 Spectrum RGB Mode
Smart RGB Switch Touchpad', 'https://www.startech.com.bd/image/cache/catalog/speaker/fantech/gs204-rumble/gs204-rumble-0001-228x228.jpg', '97', '13', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('365', 'AWEI GM-6 Wired Headset', '1075', '3', 'Drive Unit: φ40mm
Impedance: 32Ω
Channel System: Stereo
Power: 50mW', 'https://www.startech.com.bd/image/cache/catalog/headphone/awei/gm-6/gm-6-01-228x228.webp', '70', '12', 'AWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('366', 'AWEI ES-770i Over-Ear Bluetooth Gaming Headset', '1450', '3', 'Driver Unit: 50mm
Sensitivity:>110dB
Impedance: 20 ohm
3.5mm & USB Connector', 'https://www.startech.com.bd/image/cache/catalog/headphone/awei/es-770i/es-770i-01-228x228.webp', '66', '12', 'AWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('367', 'boAt Rockerz 550 Over-Ear Bluetooth Headphone', '3499', '6', 'Driver: 50mm
Battery life: Up to 180 hrs
Type-C Charging
Built-in Mic', 'https://www.startech.com.bd/image/cache/catalog/headphone/boat/rockerz-550/rockerz-550-01-228x228.webp', '4', '12', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('368', 'boAt Rockerz 450 Pro Over-Ear Bluetooth Headphone', '2999', '7', 'Driver: 40mm
Battery life: Up to 70 hrs
Type-C Charging
Built-in Mic', 'https://www.startech.com.bd/image/cache/catalog/headphone/boat/rockerz-450-pro/rockerz-450-pro-01-228x228.webp', '7', '12', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('369', 'Awei A770BL Bluetooth Wireless Stereo Headphone', '1650', '4', 'Bluetooth Version: 5.0
Noise Reduction technology
Transmission Distance: 10M
Battery Capacity: 250mAh', 'https://www.startech.com.bd/image/cache/catalog/headphone/awei/a770bl/a770bl-01-228x228.jpg', '55', '12', 'Awei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('370', 'Hoco W35 Wireless Headphone', '1370', '8', 'Bluetooth: 5.3
Battery capacity: 400mah
Charging about 2 hours
Use or tempo: 40 hours', 'https://www.startech.com.bd/image/cache/catalog/headphone/hoco/w35/w35-01-228x228.jpg', '60', '12', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('371', 'Logitech H390 Stereo USB Headset White with Microphone', '4200', '3', 'Microphone Type: Bi-directional
30 mm audio drivers
USB-A connector
Cable Length 6.23 feet', 'https://www.startech.com.bd/image/cache/catalog/headphone/logitech/h390/h390-228x228.webp', '45', '12', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('372', 'Awei A780BL Wireless Bluetooth Stereo Headphone', '1650', '8', 'Bluetooth Version: 5.0
Noise Reduction technology
Transmission Distance: 10M
Battery Capacity: 250mAh', 'https://www.startech.com.bd/image/cache/catalog/headphone/awei/a780bl/a780bl-01-228x228.jpg', '70', '12', 'Awei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('373', 'Jabra Evolve2 55 USB-A MS Stereo Wireless Headset', '22700', '5', 'Driver Unit: 28mm
Built-in microphone
Active noise-cancellation (ANC)
Sound Mode: Stereo / Mono', 'https://www.startech.com.bd/image/cache/catalog/headphone/jabra/evolve2-55/evolve2-55-228x228.webp', '43', '12', 'Jabra');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('374', 'Logitech H390 Stereo USB Headset Rose with Microphone', '4200', '10', 'Microphone Type: Bi-directional
30 mm audio drivers
USB-A connector
Cable Length 6.23 feet', 'https://www.startech.com.bd/image/cache/catalog/headphone/logitech/h390/h390-r-228x228.webp', '22', '12', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('375', 'JABRA BIZ 1500 Duo (Dual Ear) USB Headphone Black', '7300', '3', 'Foam ear cushions
Crystal Clear Sound
Jabra Spin Boom-arm
Simple Call Management', 'https://www.startech.com.bd/image/cache/catalog/headphone/jabra/biz-1500-duo/biz-1500-duo-228x228.jpg', '4', '12', 'JABRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('376', 'Havit H206D 3.5mm double plug Stereo with Mic Headset', '650', '4', 'Proportional appearance and texture
High magnetic 50mm speaker
3.5mm plug version
Sensitivity: 118dB±3dB', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h206d/h206d-01-228x228.jpg', '14', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('377', 'Logitech G PRO X USB Gaming Headphone', '14000', '6', 'PRO-G Drivers
PRO-Tuned
Frequency response: 20 Hz-20 KHz
Blue Voice Mic Technology', 'https://www.startech.com.bd/image/cache/catalog/headset/logitech/pro-x/pro-x-gaming-headset-2-228x228.jpg', '59', '12', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('378', 'MeeTion MT-HP010 Scalable Noise-canceling Stereo Leather Wired Gaming Headset', '950', '8', 'Three-dimensional surround sound technology
Long and super clear microphones
Noise reduction Vibration
Interface: 3.5mm stereo jack', 'https://www.startech.com.bd/image/cache/catalog/headphone/meetion/mt-hp010/mt-hp010-0001-228x228.jpg', '38', '12', 'MeeTion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('379', 'Havit Gamenote H2013D 3.5 mm + USB Gaming Headset', '1000', '8', 'High precision & smooth wheel volume control
Metal mesh and RGB cool lighting
50mm large-caliber speakers
Surround stereo in collocation', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/gamenote-h2013d/h2013d-01-228x228.jpg', '97', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('380', 'MeeTion MT-HP021 Stereo Gaming Headset', '1300', '5', 'Black Orange Lightweight Backlit
Audiophile speaker unit
Noise reduction microphone
Precise wire control design', 'https://www.startech.com.bd/image/cache/catalog/headphone/meetion/mt-hp021/mt-hp021-004-228x228.jpg', '1', '12', 'MeeTion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('381', 'MeeTion MT-HP020 Backlit Gaming Headset', '1400', '3', 'Omni-directional Microphone, Speaker: 50mm
Sensitivity: 120 ± 3db
Impedance: 32
Interface: 3.5mm stereo jack & USB', 'https://www.startech.com.bd/image/cache/catalog/headphone/meetion/mt-hp020/mt-hp020-01-228x228.jpg', '33', '12', 'MeeTion');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('382', 'Joyroom JR-HG1 Dual Plug Wired Gaming Headset', '1399', '6', 'Frequency response: 20Hz-20KHz
Speaker Driver: 50mm
Adjustable Mic
3.5mm+USB Connector', 'https://www.startech.com.bd/image/cache/catalog/headset/joyroom/jr-hg1/jr-hg1-01-228x228.jpg', '52', '12', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('383', 'Fantech Chief II HG20 Sakura Edition RGB USB Gaming Headphone', '1549', '6', 'Full Size Around Ear
50mm Driver Unit
Plug type: 3.5mm+USB
Cable Length: 2.0m', 'https://www.startech.com.bd/image/cache/catalog/headphone/fantech/chief-ii-hg20/sakura-edition/chief-ii-hg20-sakura-edition-01-228x228.jpg', '63', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('384', 'Havit H654U Wired USB Stereo Gaming Headphone', '1700', '5', 'Frequency Response: 20Hz - 20KHz
Speaker Sensitivity: 130db +-3db
Microphone Sensitivity: -38 +-3db
Plug Type: 3.5mm (Single port) & USB', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h654u/h654u-01-228x228.jpg', '10', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('385', 'A4TECH Bloody G520S USB Gaming Headphone', '1850', '4', 'Omni-Directional Noise-Canceling Mic.
7-Color Circular Breathing Light
Auto-Adjusting Headband
50mm Speaker Unit', 'https://www.startech.com.bd/image/cache/catalog/headphone/a4tech/bloody-g520s/bloody-g520s-01-228x228.jpg', '46', '12', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('386', 'Ovleng Q10 USB Virtual 7.1 Wired LED Lighting Gaming Headphone Black-Red', '1900', '7', '360 Degree Omnidirectional Mic
50mm Driver Unit
Soft and Skin-Friendly
Virtual 7.1 Surround Channel', 'https://www.startech.com.bd/image/cache/catalog/headphone/ovleng/q10/q10-red-228x228.jpeg', '3', '12', 'Ovleng');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('387', 'Havit H2022U USB RGB Gaming Headphone', '1900', '5', 'Super 50MM large unit speaker
Frequency Response: 20hz - 20khz
Sensitivity: 114dB +-3dB
3D surround stereo sound', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h2022u/h2022u-01-228x228.jpg', '52', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('388', 'KWG Taurus P1 Surround Sound RGB Gaming Headset', '2100', '10', 'Ergonomic comfort Headband
RGB Streaming Lighting
Large 50mm driver
Omnidirectional flexible Microphone', 'https://www.startech.com.bd/image/cache/catalog/headphone/kwg/taurus-p1/taurus-p1-1-228x228.jpg', '4', '12', 'KWG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('389', 'OVLENG Q9 E-sports Stereo Surrounded HiFi Gaming Headphone Army-Yellow', '2100', '3', 'Frequency Range: 20-20000Hz
Super bass, Precise Sound
Multi-Functional Line Controller
180 degree rotatable microphone', 'https://www.startech.com.bd/image/cache/catalog/headphone/ovleng/q09/q9-army-yellow-228x228.jpg', '23', '12', 'OVLENG');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('390', 'Fantech SNIPER II HG16s Virtual 7.1 Surround Sound RGB Gaming Headset', '2350', '4', 'Fit to Ear Shape, 40mm Driver Unit
RGB Lighting, Lightweight Design
Microphone Pattern: Omni-directional
Connector Type: USB', 'https://www.startech.com.bd/image/cache/catalog/headset/fantech/sniper-ii-hg16s/sniper-ii-hg16s-01-228x228.jpg', '24', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('391', 'MSI DS501 Wired Gaming Headset', '2500', '5', 'Two large 40mm drivers for quality audio
Extra lightweight and Self-adjusting headband
High-Quality Speakers
Quick access to volume and microphone', 'https://www.startech.com.bd/image/cache/catalog/headset/msi/ds501/ds501-01-228x228.jpg', '17', '12', 'MSI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('392', 'Fantech Blitz MH87 RGB Multi Platform Gaming Headset Black', '2600', '5', 'Speaker Driver: 50mm
Multi-Platform Compatibility
Comfortable Ear Cups
LED: RGB Illumination', 'https://www.startech.com.bd/image/cache/catalog/headphone/fantech/mh87-blitz/mh87-bk-01-228x228.jpg', '30', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('393', 'Fantech MH87 Blitz RGB Multi-Platform Gaming Headset', '2699', '6', 'Microphone Sensitivity: -42dB
Driver Unit: 50MM
Plug Diameter: 3.5MM + USB
Frequency Response: 20-20KHz', 'https://www.startech.com.bd/image/cache/catalog/headphone/fantech/mh87-blitz/mh87-blitz-1-228x228.jpg', '77', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('394', 'A4Tech Bloody G575 7.1 Surround Sound USB RGB Gaming Headset', '2850', '9', '7.1 Virtual Sound, Detachable Mic. Design
Braided Tangle-Free Cable
Ergonomic 3D Ear Pads
50mm Speaker Unit', 'https://www.startech.com.bd/image/cache/catalog/headphone/a4tech/bloody-g575/bloody-g575-01-228x228.jpg', '52', '12', 'A4Tech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('395', 'Redragon H320 LAMIA-2 7.1 Surround Sound USB Gaming Headset', '3099', '3', 'Frequency range: 20Hz - 20kHz
7.1 Virtual Surround Sound
Built-in microphone
RGB Backlighting', 'https://www.startech.com.bd/image/cache/catalog/headset/redragon/h320-lamia/h320-lamia-1-228x228.jpg', '55', '12', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('396', 'A4TECH Bloody G600I Virtual 7.1 Surround Sound Gaming Headphone', '3300', '4', '3.5 Jack to USB Converter
Detachable Mic.
7.1 Surround Sound
Dual-Chamber Design Speaker', 'https://www.startech.com.bd/image/cache/catalog/headphone/a4tech/bloody-g600i/bloody-g600i-01-228x228.jpg', '39', '12', 'A4TECH');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('397', 'ASUS TUF Gaming H3 7.1 Gaming Headphone - Grey & Gun Metal', '3800', '5', 'Compatible with PC, Mac, PlayStation 4 & Nintendo Switch
Audio: 7.1 Surround
Frequency: 20Hz - 20 kHz
Color: Red and Gun Metal', 'https://www.startech.com.bd/image/cache/catalog/headphone/asus/asus-h3/asus-h3-0001-228x228.jpg', '22', '12', 'ASUS');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('398', 'Fantech WH01 Stereo Bluetooth Wireless Gaming Headphone', '3800', '7', 'Low Latency, 60 Hours Playback
Dual Mode Connection
Swivel Foldable Structure
Omni-directional, Speaker Driver: 40mm', 'https://www.startech.com.bd/image/cache/catalog/headphone/fantech/wh01/wh01-01-228x228.jpg', '55', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('399', 'Dareu A700X Wireless Gaming Headset', '4199', '7', '2.4ghz Wireless Transmission
12h Gaming Time with 2 Hours Charging.
Omni-Directional Detachable Microphone
Skin Friendly Earmuffs', 'https://www.startech.com.bd/image/cache/catalog/headphone/dareu/a700/a700-1-228x228.jpg', '93', '12', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('400', 'Dareu A710 5.8G Wireless RGB Gaming Headset', '5900', '8', 'Compatibility: PC, Laptop, Smartphone, PS, X-Box etc.
5.8G Wireless Transmission
1400mAh rechargeable battery
Working mode:5.8G+Type-c+ 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/headphone/dareu/a710/a710-01-228x228.jpg', '100', '12', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('401', 'Asus ROG Strix Fusion 500 7.1 True Surround Sound Gaming Headset', '13500', '4', 'Hi-fi-grade ESS ES9018 DAC & SABRE9601K AMP
plug-and-play virtual 7.1 surround sound
SUS Essence, RGB light synchronization
Headset touch controls', 'https://www.startech.com.bd/image/cache/catalog/headphone/asus/rog-strix-fusion-500/rog-strix-fusion-500-01-228x228.jpg', '95', '12', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('402', 'Asus TUF Gaming H5 Lite Gaming Headset', '8500', '10', 'Support for PC, Mac, PS4, Nintendo Switch, Mobile & Xbox One
Exclusive 50mm ASUS Essence drivers
Tough stainless-steel headband
Connector: USB 2.0 and 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/headphone/asus/tuf-gaming-h5-lite/tuf-gaming-h5-lite-01-228x228.jpg', '95', '12', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('403', 'Asus ROG Strix Fusion Wireless Gaming Headset', '9000', '3', 'Wide compatibility with PC and PlayStation 4
15+ hours battery life & 20 meter coverage
2.4GHz wireless technology
50mm ASUS Essence drivers', 'https://www.startech.com.bd/image/cache/catalog/headphone/asus/rog-strix-fusion-wireless/rog-strix-fusion-wireless-01-228x228.jpg', '3', '12', 'Asus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('404', 'HAVIT HV-H2105D Headphone with Mic', '480', '9', 'Frequency: 20‎-20‎,‎000Hz
Sensitivity: 102±3dB/mW
Cable Length: 1.2M±0.15M', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h2105d/h2105d-228x228.jpg', '2', '12', 'HAVIT');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('405', 'Havit Gamenote HV-H2032D Gaming Headphone', '800', '3', 'Plug Type: 3.5mm Jack + USB
Speaker: Φ40Mmm
Impedance: 32±15%Ω
Sensitivity: 108Â±3dB', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/hv-h2032d/gamenote-hv-h2032d-01-228x228.png', '74', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('406', 'Micropack MHP-01 3.5mm Headphone Black', '500', '5', 'Double Port, Stereo PC Headset
Volume Control, Flexible Mic Arm
3.5mm to 2x3.5mm Splitter
Adjustable Headband', 'https://www.startech.com.bd/image/cache/catalog/headphone/micropack/mhp-01/mhp-01-01-228x228.jpg', '95', '12', 'Micropack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('407', 'Havit HV-H2031D Wired Gaming Headphone', '880', '5', 'RoHS Certification
2.0M Cable length
Single 3.5mm Audio jack
RED LED gamenote Logo', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/hv-h2031d/havit-hv-h2031d-wired-gaming-headphone-03-228x228.jpg', '18', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('408', 'AULA S605 3.5 mm Wired RGB Gaming Headphone', '900', '4', 'Version: 3.5mm x 2+USB for backlight
Diameter: Φ50mm
Frequency: 20Hz ~ 20kHz
Sensitivity: 118 ± 3dB', 'https://www.startech.com.bd/image/cache/catalog/headphone/aula/s605/s605-01-228x228.webp', '66', '12', 'AULA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('409', 'Havit HV-H2011D Wired Gaming Headphone', '1050', '5', 'RoHS Certification
2.2M Cable length
3.5mm Audio jack
RED LED light Logo', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/hv-h2011d/havit-hv-h2011d-wired-gaming-headphone-01-228x228.jpg', '92', '12', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('410', 'Fantech FLASH HQ53 Lightweight Gaming Headset', '1100', '8', 'Lightweight Design
50mm Driver Unit
Red Accent Lighting
Stereo 3.5mm + USB Connection', 'https://www.startech.com.bd/image/cache/catalog/headset/fantech/flash-hq53/flash-hq53-01-228x228.webp', '1', '12', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('411', 'HAVIT HV-H2178D 3.5mm Wired Headphone', '550', '10', 'Frequency: 20Hz to 20KHz
Sensitivity: 110 dB ± 3 dB
Cable Length: 4ft+-10%', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h2178d/h2178d-black-1-228x228.jpg', '49', '12', 'HAVIT');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('412', 'HAVIT HV-H2198d 3.5mm Headphone Black', '550', '5', 'Frequency: 20 Hz to 20KHz
Sensitivity: 98dB ± 3dB
Cable Length: Approx 1.2mÂ±15%
40mm bass drivers', 'https://www.startech.com.bd/image/cache/catalog/headphone/havit/h2198d/hv-h2198d-black-228x228.jpg', '41', '12', 'HAVIT');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('413', 'Hoco HC1 True Wireless Waterproof Bluetooth Speaker', '1200', '7', 'Support BT, TWS, TF card, USB, AUX, FM & other modes
Speaker unit: 52mm, Power 5W
Battery capacity: 1200mAh
IPX5 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/hc1/hc1-black-228x228.jpg', '6', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('414', 'Honor VNA-00 Portable Bluetooth Speaker', '3290', '5', 'Up to10 Hours Battery Life
One Press for Voice Assistant
Wireless Stereo Mode
IP67 Rated Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/accessories/bluetooth-spreaker/honor/vna-00/vna-00-228x228.webp', '50', '13', 'Honor');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('415', 'Hoco BS45 Portable True Wireless Speaker', '1200', '3', 'True Wireless Speaker Sound Quality
Bluetooth Version: 5.0
Working Range: 10 meters
Support: BT, TF card, TWS, and other Playback Modes', 'https://www.startech.com.bd/image/cache/catalog/speaker/hoco/bs45/bs45-01-228x228.jpg', '7', '13', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('305', 'boAt Wave Beat 1.69" HD Display Smart Watch', '2499', '7', '1.69" Square HD display
10 sports modes
7-day battery-life
IP68 Dust and Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/boat/wave-beat/wave-beat-228x228.webp', '65', '9', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('306', 'Apple Watch SE A2352 (MYDT2LL/A) GPS 44mm Sport Band (Space Gray Aluminum, Black)', '32000', '10', 'Fall Detection + SOS Emergency
LTPO OLED Retina Display
Digital Crown with Haptic Feedback
Heart Rate Monitor with Notifications', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/apple/apple-watch-se/apple-watch-se-101-228x228.jpg', '47', '9', 'Apple');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('307', 'Xingyun X2 Smart Watch for Kids', '1650', '4', 'Display Size: 1.44 Inch
Two-way Clear and Stable Call
Chip: Pda8955
Battery Capacity: 400mah', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/non-brand/x2-smart-watch/x2-smart-watch-02-228x228.webp', '23', '9', 'Xingyun');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('308', 'Xingyun X1 Smart Watch for Kids', '1750', '3', 'Display Size: 1.44 Inch
Two-way Clear and Stable Call
Chip: Pda8955
Battery Capacity: 400mah', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/xingyun/x1-s/x1-228x228.webp', '11', '9', 'Xingyun');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('309', 'Yison Celebrat SW6Pro Bluetooth Calling Smart Watch', '1750', '5', '1.91 inch TFT HD (240x280) Color Touchscreen
Guard health all day 24-hour monitoring
Bluetooth call, NFC Access Control
IP67 water-resistant', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/yison/celebrat-sw6pro/celebrat-sw6pro-04-228x228.webp', '55', '9', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('310', 'Havit M90 Fashion Sports Smart Watch', '1900', '7', '1.14inches screen
IP68 Waterproof Rating
PC+TPU Material
120mAH Battery', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m90/m90-green-01-228x228.jpg', '89', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('311', 'COLMI P28 Plus Calling Smart Watch', '1999', '3', 'Screen: 1.69" TFT Touch Screen, 240x280 Resolution
Processor: Realtek RTL8762CK + JieLi AC6963A
Battery capacity: 235mAh
Waterproof level: IP67', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/colmi/p28-plus/p28-plus-01-228x228.jpg', '78', '9', 'COLMI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('312', 'Xiaomi IMILAB W01 Fitness Smart Watch', '2350', '4', '1.69-inch Full-Touch Square
True Color Display
SpO2 Monitor with 24h Bio Tracker
3ATM Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/imilab-w01/imilab-w01-01-228x228.jpg', '55', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('313', 'COLMI C61 1.9inch Waterproof Bluetooth Calling Smart Watch', '2350', '3', '1.9 inch IPS HD Display with 2.5D curved glass
SpO2 tracking & Heart rate monitoring
Supports Bluetooth Calls
IP67 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/colmi/c61/c61-black-01-228x228.webp', '75', '9', 'COLMI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('314', 'Xiaomi Haylou Solar Lite Smart Watch with Sp02', '2350', '4', 'Display: 1.38" Color Large Display, 240x240px Resolution
Battery capacity: 240mAh
Dustproof and waterproof rating: IP68
20-day Battery Life', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/solar-lite/solar-lite-blue-01-228x228.webp', '75', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('315', 'Havit M9021 HD Screen Smart Watch', '2400', '9', '1.69 inch HD Full-screen display
Smart Split Screen
24H heart rate detection
IP68 waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9021-hd/m9021-hd-01-228x228.jpg', '98', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('316', 'Xiaomi Haylou GS LS09A Smart Watch', '2700', '4', 'Display: 1.28" TFT Full Circle Full Touch
SpO2 Tracking & 24h Heart Rate Monitoring
Battery capacity: 220mAh
Waterproof rating: IP68', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/haylou-gs/haylou-gs-01-228x228.jpg', '14', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('317', '1MORE omthing E-Joy Smart Watch Plus (WOD003)', '2450', '9', 'Display: 1.3" full-color IPS touch panel with 2.5D glass
Sensor: 24/7 heart rate and blood pressure monitor
Battery: 200mAh with Magnetic suction charging
Water Resistance: 5ATM', 'https://www.startech.com.bd/image/cache/catalog/watch/1MORE/1more-omthing-E-Joy-01-228x228.jpg', '59', '9', '1MORE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('318', 'XINJI COBEE C1 Waterproof Smart Watch', '2350', '7', '1.69" HD (240x280) Display
Health Care Monitoring
260 mAh Battery, Magnetic Charging
5ATM Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xinji/cobee-c1/cobee-c1-01-228x228.webp', '8', '9', 'XINJI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('319', 'Havit M9002G GPS Outdoor Sports Smart Watch', '2450', '6', 'Display: 1.3" (240x240) TFT Full Touch
Chip: NRF52840
Battery Capacity: 210mAh
Waterproofing Grade: 5ATM', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9002g/m9002g-01-228x228.webp', '28', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('320', 'COLMI C60 1.9inch Waterproof Bluetooth Calling Smart Watch', '2470', '8', '1.9 inch IPS HD Display with 2.5D curved glass
SpO2 tracking & Heart rate monitoring
Supports Bluetooth Calls
IP67 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/colmi/c60/c60-black-01-228x228.webp', '16', '9', 'COLMI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('321', 'XTRA Active S7 Bluetooth Calling Smartwatch', '2290', '8', 'Display: 1.83" large color Display
Battery: Long Battery life
Game: 4 Built In Game
Bluetooth Calling: Yes', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/xtra/active-s7/active-s7-228x228.webp', '82', '9', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('322', 'Xiaomi Haylou Solar LS05-1 Smart Watch Black', '2600', '6', '1.28 Inch Round TFT Screen
Real-time Heart Rate Monitor
IP68 Waterproof, Metal Body
Multiple Sports Modes', 'https://www.startech.com.bd/image/cache/catalog/watch/xiaomi/haylou-solar-ls05-1/haylou-solar-ls05-1-001-228x228.jpg', '61', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('323', 'Havit M9015 Lady Fitness Smart Watch', '2950', '9', 'Display: 1.22 inch TFT Full Touch Screen
Dynamic UI Effects, IP68 Waterproof Rating
Multiple Call & Information Reminders
Built-in 6 Sports Modes, Physical Health Reminder', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9015/m9015-02-228x228.webp', '73', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('324', 'Mibro C3 Bluetooth Calling Smart Watch', '3499', '6', '1.85" HD Screen with 60Hz Refresh Rate
Wrist Bluetooth calling
Updated 4 PD heart rate monitoring
2ATM waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/mibro/mibro-c3/mibro-c3-01-228x228.webp', '18', '9', 'Mibro');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('325', 'Mibro C2 1.69-inch HD Screen Smart Watch', '2350', '3', 'Display: 1.69" HD Display
Capacity: 270mAh
Waterproof rating: 2 ATM
Sensors: PPG Heart Rate, SpO2, Three-Axis', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/mibro-c2/mibro-c2-01-228x228.webp', '45', '9', 'Mibro');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('326', 'Mibro A2 Bluetooth Calling Smart Watch', '3740', '9', '1.39 inch HD touch screen
Wrist Bluetooth calling
Updated 4 PD heart rate monitoring
2ATM waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/mibro/mibro-a2/mibro-a2-01-228x228.webp', '2', '9', 'Mibro');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('327', 'Havit M9026 Full Circle Sport Smart Watch', '2850', '7', '1.3" TFT HD Full Touch Screen
Dual UI Menu
Breathing Training
IP67 Waterproof Rating', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9026/m9026-01-228x228.webp', '97', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('328', 'Zordai Z8 Ultra Max 49mm Smart Watch', '2690', '5', '2.08inch TFT LCD screen
Bluetooth calling Support
Multifunctional NFC
Battery Capacity 380mAh', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/zordai/z8-02-228x228.webp', '51', '9', 'Zordai');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('329', 'Mibro A1 Smart Watch', '2700', '6', 'Display: 1.28" HD Display
Capacity: 270mAh
Waterproof rating: 5 ATM
Sensors: PPG heart rate, SpO2, Accelerometer', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/mibro-a1/mibro-a1-01-228x228.jpg', '38', '9', 'Mibro');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('330', 'Havit M9024 1.69" HD Screen Bluetooth Calling Smart Watch', '2700', '8', '1.69" (240x280) HD Screen
Bluetooth Call Support
Intelligent Split screen
IP67 Waterproof Rating', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9024/m9024-01-228x228.webp', '77', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('331', 'Noise ColorFit Pulse Go Buzz Calling 1.69" LCD Smart Watch', '2350', '8', '1.85 inches Touch Display
Tru Sync Bluetooth Calling
Capacity: 300mAh, Typical Usage Time: 10 days
IP68 dust & Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/noise/colorfit-pulse-go-buzz/colorfit-pulse-go-buzz-01-228x228.webp', '6', '9', 'Noise');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('332', 'Xiaomi Haylou GST LS09B Smart Watch (Global Version)', '2599', '4', 'Sensor: Motion, Heart Rate , Blood Oxygen Sensor
Compatible OS: Android 6.0, iOS 11.0 or above
Battery Capacity: 220mAh; Waterproof: IP68
APP Name: Haylou Fun, Waterproof: IP68', 'https://www.startech.com.bd/image/cache/catalog/watch/xiaomi/haylou-gst-ls09b/haylou-gst-ls09b-01-228x228.jpg', '8', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('333', 'Havit M9032 1.28" Full Touch Screen Bluetooth Calling Smart Watch', '3000', '3', '1.28" (240x240) TFT Full Touch Screen
Bluetooth Calling
IP67 Waterproof Rating
Battery: 220mAh; standby for 20 days', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9032/m9032-02-228x228.webp', '4', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('334', 'Yison Celebrat SW7Pro Bluetooth Calling Smart Watch', '2650', '4', '1.92 inch TFT HD (390x435) Color Touchscreen
SOS emergency call, AI voice assistant
Bluetooth call, NFC Access Control
IP67 water-resistant', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/yison/celebrat-sw7pro/celebrat-sw7pro-01-228x228.webp', '18', '9', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('335', 'Havit HV-M9016 Pro 1.69" Full Touch Screen Bluetooth Calling Smart Watch', '3100', '10', '1.69" TFT HD Full Touch Screen
Bluetooth Call Support
Heart Rate Monitoring
IP65 Waterproof Rating', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/havit/m9016-pro/m9016-pro-01-228x228.jpg', '99', '9', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('336', 'G-TiDE S1 Lite Bluetooth Calling Smartwatch', '2999', '10', '1.83 Inch IPS Display
Heart Rate Monitor, SpO2 Monitor
Bluetooth Calling
IP68 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/g-tide/s1-lite/s1-lite-01-228x228.webp', '62', '9', 'G-TiDE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('337', 'Zeblaze Btalk Bluetooth Calling Smartwatch', '2999', '9', '1.86" Large Color Display
Voice Calling via Bluetooth
24H Health Measurement
Water Resistance IP68', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/zeblaze/btalk/btalk-02-228x228.webp', '96', '9', 'Zeblaze');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('338', 'Noise ColorFit Pulse 2 Max Calling 1.78" LCD Smart Watch', '2650', '10', '1.85 inches Touch Display
Tru Sync Bluetooth Calling
Capacity: 300mAh, Typical Usage Time: 10 days
IP68 dust & Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/noise/colorfit-pulse-2-max/colorfit-pulse-2-max-01-228x228.webp', '4', '9', 'Noise');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('339', 'Lenovo S2 Pro Smart Watch', '2700', '9', '1.69 inches IPS full touch screen
24h Heart Rate Monitor
IP67 Waterproof
Compatible Os: Android & IOS', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/lenovo/lenovo-s2-pro/s2-pro-01-228x228.jpg', '63', '9', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('340', 'Fire-Boltt Spin SpO2 Smart Watch', '3100', '5', '1.4inch HD TFT Screen With 240 x 240 Pixel Resolution
SpO2 Monitor & Heart Rate Sensor
Scratch Resistant, Dust Proof
IP67 Water-Resistant', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/fireboltt/spin/spin-grey-01-228x228.jpg', '80', '9', 'Fire-Boltt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('341', 'Riversong SW30 Motive 3 Waterproof Smart Watch', '2990', '10', 'Display: 1.69inch IPS Touch Screen
Battery Life: Up to 7days
Waterproof Grade: IP68
Daily Activity Tracking', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/riversong/sw30-motive-3/motive-3-228x228.webp', '51', '9', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('342', 'Xiaomi Haylou RT LS05S Smart Watch', '3090', '4', 'Online dial replacement
Heart rate monitoring
12 sport modes, 20-day battery life
24-hour heart rate monitoring', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/haylou-rt-ls05s/haylou-rt-ls05s-01-228x228.jpeg', '1', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('343', 'Xiaomi IMILAB W12 Smart Watch', '2950', '6', '1.32 inch HD (360 x 360) TFT Touch Panel & 3D Curved Glass
Blood oxygen monitor
24 hours heart rate monitor
IP68 waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/imilab-w12/w12-01-228x228.jpg', '44', '9', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('344', 'Xiaomi Mi Band 8 Smart Bracelet', '4250', '4', '1.62-Inch 2.5-D Curved AMOLED Display
Up to 120 Exercise Modes
24-Hour Heart Rate Monitoring
Smart Home Control', 'https://www.startech.com.bd/image/cache/catalog/smart-band/xiaomi/mi-band-8/mi-band-8-03-228x228.webp', '73', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('345', 'Xiaomi Smart Band 7 AMOLED Display Fitness Tracker', '4080', '8', '1.62'''' AMOLED high-resolution display with always-on mode
VO₂ max professional workout analysis
All-day SpO₂ monitoring
5ATM water resistance', 'https://www.startech.com.bd/image/cache/catalog/smart-band/xiaomi/smart-band-7/xiaomi-smart-band-7-black-01-228x228.jpg', '15', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('346', 'WiWU iVISTA Apple Watch Screen Protector', '550', '5', '6H Tempered glass
Thickness: 0.2mm ultra-thin structure
Compatible Size: 41mm 44mm 45mm 49mm
Transparency: 99% highly clear', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/wiwu/ivista/ivista-02-228x228.webp', '19', '10', 'WiWU');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('347', 'HUAWEI Band 8 AMOLED Display Fitness Tracker Smart Band', '4999', '5', '1.47 inch AMOLED Touchscreen Display
Automatic SpO2, Heart Rate Monitor
Accelerometer sensor, Gyroscope sensor
5 ATM water-resistant', 'https://www.startech.com.bd/image/cache/catalog/smartwatch/huawei/band-8/band-8-228x228.webp', '49', '10', 'HUAWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('348', 'Huawei Band 6 All-Day SpO2 Monitoring with FullView Display', '4999', '6', 'Water Resistance: 5 ATM
Connectivity: 2.4 GHz, BT5.0, BLE
Compatible OS: Android v4.4, iOS
Display: 1.47 Inch AMOLED Display', 'https://www.startech.com.bd/image/cache/catalog/watch/huawei/band-6/band-6-228x228.jpg', '95', '10', 'Huawei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('349', 'Xiaomi Mi Band 7 Pro AMOLED Display Waterproof Fitness Tracker (CN Edition)', '7100', '10', '1.64" AMOLED Display with Anti-fingerprint Coating
GPS High Precision 6-axis Sensor and PPG Heart Rate Sensor
235mAh Lithium-ion polymer battery
5 ATM Waterproof', 'https://www.startech.com.bd/image/cache/catalog/smart-band/xiaomi/mi-band-7-pro/mi-band-7-pro-01-228x228.webp', '32', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('350', 'HUAWEI Band B3e Smart Band', '1500', '3', 'Innovative Footwear Mode
Professional Running Coach
Foot-Strike Placement Monitoring
Intelligent Motion Sensor', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/huawei/band-b3e/band-b3e-228x228.jpg', '39', '10', 'HUAWEI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('351', 'Xiaomi Mi Smart Band 5 XMSH10HM Touch Screen Fitness Tracker', '1200', '5', 'Large 1.1" dynamic color-display
11 professional sports modes
Female health monitor
50 m water resistance', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/mi-band-5/mi-band-5-228x228.jpg', '60', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('352', 'Xiaomi Mi Band 4 XMSH07HM Touch Bluetooth Smart Watch Black (Chinese Version)', '1350', '8', 'Health Tracker
Water Resistance Rating: 5 ATM
Charging time: 2 hours
Standby Time: Up to 20 days', 'https://www.startech.com.bd/image/cache/catalog/smart-watch/xiaomi/mi-4-band/mi-4-band-228x228.jpg', '14', '10', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('353', 'Huawei CRS-B19S Honor Band 5 Smart Watch (Global Version)', '1100', '6', '0.95 Inch (2.41cms) AMOLED Touch Large Color Screen
Scientific Sleep Monitoring
Heart Rate Monitoring
5ATM 50 meters water-resistant', 'https://www.startech.com.bd/image/cache/catalog/watch/huawei/crs-b19s/20190725094826_83373.jpg_500x500-228x228.jpg', '99', '10', 'Huawei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('605', 'Lenovo HE05 Bluetooth Neckband Earphone Black', '425', '5', 'Bluetooth version: 5.0
Transmission distance: 10m
Waterproof: IPX5
Working time: 8 hours', 'https://www.startech.com.bd/image/cache/catalog/earphone/lenovo/HE05/Lenovo-HE05-Neckband-Bluetooth-Headset-1-228x228.jpg', '81', '17', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('606', 'Yison E13 Magnetic Bluetooth Earphone', '650', '6', 'Headphone Driver Units: 14 mm
Microphone: Yes, Wireless Range: 8m
Battery Capacity: 65 mAh
Color: Black and White', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/e13/e13-20-228x228.jpg', '25', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('607', 'Lenovo HE06 Wireless Neckband Earphone', '550', '8', 'Driver Diameter: 14mm
CVC noise-canceling microphone
IPX5 Waterproof, IP6X Dustproof
Silica Gel Neckband', 'https://www.startech.com.bd/image/cache/catalog/neckband/lenovo/he06/he06-01-228x228.webp', '15', '17', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('608', 'XTRA N25 In-Ear Stereo Wireless Neckband', '699', '5', 'Input Interface: Type-C
Dynamic Driver Size: 10mm
Bluetooth Version: 5.2
Battery:	90mAh, Playtime Upto 8hrs', 'https://www.startech.com.bd/image/cache/catalog/neckband/xtra/n25/n25-01-228x228.webp', '82', '17', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('609', 'Lenovo HE05X II (New Edition) Bluetooth Neckband Earphone Black', '650', '10', 'Bluetooth Version: V5.0
Music Time: About 5H, Call Time: 6H
Battery: 105mAh
IPX5 Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/earphone/lenovo/he05x/he05x-01-228x228.jpg', '18', '17', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('610', 'Hoco ES64 Sports Bluetooth Wireless Neckband Earphone', '700', '6', 'Bluetooth 5.3 chip: Jieli AC7003
Battery capacity: 200mAh
Use time: 30h
Standby time: 350h', 'https://www.startech.com.bd/image/cache/catalog/neckband/hoco/es64/es64-01-228x228.webp', '1', '17', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('611', 'ZOOOK BluePods Wireless Bluetooth Stereo Neckband Earphone with Mic', '1100', '10', 'Bluetooth: V5.0
Frequency: 20HZ ～ 20KHZ, Impedance: 32Ω
Charging Time: 1-2hr, Playback Time: 8hr
Operating Distance: up to 33ft', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/bluepods/bluepods-01-228x228.jpg', '74', '17', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('612', 'Riversong EA65 Stream N+ Bluetooth Neckband', '940', '9', 'Rated Power: 5mW
Playback Time: Up to 12h (volume at 70%)
Charging Time: 1.5h
Magnetic Earbuds', 'https://www.startech.com.bd/image/cache/catalog/neckband/riversong/ea65/ea65-228x228.webp', '96', '17', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('613', 'WiWU Ear Zero Pro Bluetooth TF Support Earphone', '849', '6', 'Bluetooth Version: 5.0
300 hours Standby time
160mah Battery capacity
IPX5 Water and Dust proof', 'https://www.startech.com.bd/image/cache/catalog/earphone/wiwu/earzero-one/wiwu-ear-zero-pro-bluetooth-tf-support-earphone-02-228x228.jpg', '16', '17', 'WiWU');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('614', 'ZOOOK Crescendo Bluetooth Neckband Stereo Earphones with Mic', '1050', '4', 'Bluetooth Version: V5.0
Battery Capacity: 90mAh
Working distance: 10m
Charging time: about 2h, Playback time: about 5h', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/crescendo/crescendo-01-228x228.jpg', '28', '17', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('615', 'Yison Celebrat A7 In-Ear Wireless Bluetooth Earphone', '1070', '5', 'Wireless: Bluetooth version 5.0
Transmission distance: 10 meters
Lithium battery 3.7v / 65mAh
Drive unit: 10mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-a7/celebrat-a7-01-228x228.jpg', '43', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('616', 'Yison E17 Waterproof Wireless In Ear Neckband', '1120', '3', 'Drive Unit: 10mm
Impedance: 32Ω±15%
Music Time: Up to 8H
Waterproof: IPX5', 'https://www.startech.com.bd/image/cache/catalog/neckband/yison /e17/e17-228x228.webp', '14', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('617', 'Yison Celebrat A19 In-Ear Wireless Bluetooth Neckband Earphone', '1135', '7', 'Drive Unit: 10mm
Impedance: 32Ω±15%
Talk Time: Approx 8 hours
Charging Input:  Micro USB, DC5V, 500mA', 'https://www.startech.com.bd/image/cache/catalog/neckband/yison /a19/a19-228x228.webp', '35', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('618', 'Yison Celebrat A15 In-Ear Wireless Bluetooth Earphone', '1150', '7', 'Drive unit: 10mm, Sensitive: -25dBm
Battery: 3.7V/160mAh
Input voltage: 5v-500mA
Output Voltage: DC-5V', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/a15/a15-10-228x228.jpg', '45', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('619', 'Riversong EA106 Stream W Bluetooth Neckband', '1199', '6', 'Battery: 165mAh
Charging Time: 2h
Water Resistance: IPX4
Impedance: 16Ω', 'https://www.startech.com.bd/image/cache/catalog/neckband/riversong/ea106/ea106-228x228.webp', '53', '17', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('620', 'XTRA N50 Bluetooth In Ear Neckband Earphone', '1199', '5', 'Dynamic Driver Size: 10mm
Bluetooth Version: 5.2
Battery:	180mAh, Playtime Upto 25hrs
Input Interface: Type-C', 'https://www.startech.com.bd/image/cache/catalog/neckband/xtra/n50/n50-228x228.webp', '73', '17', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('621', 'Yison Celebrat A16 In-Ear Wireless Bluetooth Neckband Earphone', '1200', '7', 'Drive Unit: 14.2mm
Impedance: 32Ω±15%
Talk Time: Approx 8 hours
Charging Input: Micro USB/5V/500mA', 'https://www.startech.com.bd/image/cache/catalog/neckband/yison /a16/a16-228x228.webp', '24', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('622', 'Yison E18 Wireless In Ear Neckband', '1400', '8', 'Drive Unit: 10mm
Impedance: 32Ω±15%
Music Time: Up to 8H
Support AAC codecs', 'https://www.startech.com.bd/image/cache/catalog/neckband/yison /a18/yison-e18-228x228.webp', '92', '17', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('623', 'Wavefun Flex Pro Wireless Bluetooth Neckband Earphone', '1450', '5', 'Bluetooth 5.0 with CVC 6.0 Noise Cancelling Technology
IPX5 Sweat-resistant Nano Coating
Fast Charging Technology
Flexible Neckband', 'https://www.startech.com.bd/image/cache/catalog/earphone/wavefun/flex-pro/flex-pro-01-228x228.jpg', '71', '17', 'Wavefun');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('624', 'Megastar G001 Wireless Gaming Neckband', '1500', '4', 'Driver Unit: 12mm
Microphone: Separate Microphone
Low Latency: 60ms
Charging Port: Type C', 'https://www.startech.com.bd/image/cache/catalog/neckband/megastar/g001/g001-228x228.webp', '98', '17', 'Megastar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('625', 'Riversong EA116 Stream W2 Wireless Sports Neckband', '1550', '8', 'Driver Size: 10mm
Impedance: 16Ω
Battery: 165mAh
Play Time: Up to 15h', 'https://www.startech.com.bd/image/cache/catalog/neckband/riversong/stream-w2/w2-228x228.webp', '24', '17', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('626', 'Motorola MOTO SP105 Sport Wireless In-Ear Headphones', '1599', '9', 'Drivers: 10mm dynamic drivers
Playtime: 8 hours
Design: Tangle-free magnetic
Water-resistant: IPX5', 'https://www.startech.com.bd/image/cache/catalog/neckband/motorola/sp105/sp105-10-228x228.webp', '27', '17', 'Motorola');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('627', 'Rapoo S120 Neckband Bluetooth Earphone Black', '1750', '9', 'Battery Life: 7 hours
Water-proof, sweat-proof
Magnetic aluminium alloy
Bluetooth 5.0', 'https://www.startech.com.bd/image/cache/catalog/earphone/rapoo/s120/s120-228x228.jpg', '15', '17', 'Rapoo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('628', 'Xiaomi Redmi SonicBass Wireless Neckband Earphone', '1750', '5', '9.2mm Dynamic Driver Delivers Superior Sound Quality
Dual-Mic Environmental Noise Cancellation
Dual Pairing Multi-Point Connection
IPX4 Rated Splash & Sweat Proof', 'https://www.startech.com.bd/image/cache/catalog/neckband/xiaomi/redmi-sonicbass/redmi-sonicbass-01-228x228.webp', '88', '17', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('629', 'Baseus Bowie P1 Half-In-ear Neckband Wireless Earphone', '1800', '3', '14mm PET diaphragm coil
0.06s low latency
25 hours battery life
Splashes water resistant', 'https://www.startech.com.bd/image/cache/catalog/neckband/baseus/bowie-p1/bowie-p1-01-228x228.webp', '80', '17', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('630', 'WiWU Marathon Lite Low latency Neckband Earphone', '1549', '7', '0.03S Low latency
High-Quality Stereo sound
Low time-lapse
With LED light', 'https://www.startech.com.bd/image/cache/catalog/neckband/wiwu/marathon-lite/marathon-lite-01-228x228.webp', '26', '17', 'WiWU');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('631', 'Realme DIZO Wireless Active Bluetooth Neckband Earphone', '1900', '10', '11.2mm Bass Boost Driver
ENC Noise Cancellation for Calls
Magnetic Instant Connection
Sweat and Splash Proof', 'https://www.startech.com.bd/image/cache/catalog/neckband/realme/dizo-wireless-active/dizo-wireless-active-01-228x228.webp', '94', '17', 'Realme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('632', 'Motorola MOTO SP106 Sports Wireless IN-EAR Neckband', '1999', '5', 'Drive Diameter: 10mm
Playtime: 11 hours
Charge Type: USB Type-C
Charging Time: 150 min', 'https://www.startech.com.bd/image/cache/catalog/neckband/motorola/sp106/sp106-228x228.webp', '41', '17', 'Motorola');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('633', 'Fastrack Reflex Tunes FB1 Wireless Neckband', '1990', '6', '6 mm Dynamic Driver
Inbuilt Microphone
IPX4 Water Resistant
Voice Assistant: Google & Siri', 'https://www.startech.com.bd/image/cache/catalog/neckband/fastrack/reflex-tunes-fb1/reflex-tunes-fb1-01-228x228.webp', '25', '17', 'Fastrack');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('634', 'Megastar Avengers Gaming G002 Wireless Neck Speaker', '2100', '9', 'Output Power: 3W*2
Speaker: 33mm (With Passive Radiator Edge)
Play Time: Up to 10hr (80% Volume)
Built In Microphone', 'https://www.startech.com.bd/image/cache/catalog/neckband/megastar/g002/g002-228x228.webp', '88', '17', 'Megastar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('635', 'Realme DIZO Wireless Dash Bluetooth Neckband Earphone', '2150', '3', 'Connectivity: Bluetooth 5.2
Battery Life: 30 Hours of Playback
Noise Cancellation
Ambient Sound Mode, IPX4 Water Resistant', 'https://www.startech.com.bd/image/cache/catalog/neckband/realme/wireless-dash/wireless-dash-01-228x228.webp', '23', '17', 'Realme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('636', 'Realme Buds Wireless 2S Neckband Earphone', '2400', '3', 'AI ENC Noise Cancellation for Calls
11.2mm Dynamic Bass Driver
20mins Charge for 7hrs Playback
Dual-device Fast Switching', 'https://www.startech.com.bd/image/cache/catalog/neckband/realme/buds-wireless-2s/buds-wireless-2s-05-228x228.webp', '33', '17', 'Realme');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('637', 'Anker Soundcore R500 Wireless in-ear Neckband Earphone', '1899', '4', 'USB-C Fast Charge | 10 Mins = 3 Hours Playtime
Wireless Range: 10 M, IPX5 Waterproof
Battery Life: 20 Hrs, Charging Time: 1.5 Hrs
Ai-Powered Mics for Crystal Clear Calls', 'https://www.startech.com.bd/image/cache/catalog/earphone/anker/soundcore-r500/soundcore-r500-06-228x228.jpg', '97', '17', 'Anker');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('638', 'HiFuture FutureMate Wireless Open Ear Neckband', '2499', '5', 'Bluetooth Version 5.3
Wireless Range 10 Meters
4 Mic ENC Calling System
IPX5 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/neckband/HiFututre/FutureMate/FutureMate-01-228x228.webp', '48', '17', 'HiFuture');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('639', 'OnePlus Bullets Wireless Z Series Bold Black Bass Edition Neckband Earphone', '2590', '8', 'Drivers: 9.2mm, Re-engineered for Bass
Warp Charge 10 mins for 10 hours
IP55 Sweat and water-resistant
100ms Low Latency Mode', 'https://www.startech.com.bd/image/cache/catalog/neckband/oneplus/bullets-wireless-z-series-bass-edition/bullets-wireless-z-series-bass-edition-01-228x228.webp', '89', '17', 'OnePlus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('640', 'Baseus Bowie U2 Neckband Wireless Earphone', '2700', '9', 'Titanized Composite Diaphragm Speakers
Hybrid ANC, Dual-feed noise cancellation
Transparency Mode
Baseus Dual Channel for Low-Latency', 'https://www.startech.com.bd/image/cache/catalog/neckband/baseus/bowie-u2/bowie-u2-white-01-228x228.webp', '52', '17', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('641', 'JBL Tune 125BT Wireless Neckband in-Ear Earphone', '2790', '6', 'Driver size: 8.6mm
3-button remote with microphone
Magnetic Cable Management
Voice Assistant supported', 'https://www.startech.com.bd/image/cache/catalog/neckband/jbl/tune-125bt/tune-125bt-01-228x228.webp', '48', '17', 'JBL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('642', 'OnePlus Bullets Wireless Z2 Bluetooth Neckband Earphone', '2690', '7', 'Battery Capacity: 220 mAh
Battery Life: Up to 30 Hours (50% volume)
Fast Charge: 10 mins for 20 Hours', 'https://www.startech.com.bd/image/cache/catalog/earphone/oneplus/e305a/bullets-wireless-z2-01-228x228.webp', '52', '17', 'OnePlus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('643', 'HONOR AM61 Pro Choice Bluetooth Neckband', '3149', '10', '13mm Dynamic Driver
Hybrid Active Noise Cancellation
Dual-mic Noise Reduction for Calls
Charging port : USB Type-C', 'https://www.startech.com.bd/image/cache/catalog/neckband/HONOR/am61-pro-228x228.webp', '93', '17', 'HONOR');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('644', 'Edifier W293BT Mobile Bluetooth Earbud Silver', '3900', '6', 'FREQUENCY 20Hzï½ž20kHz
IMPEDANCE : 24 Ohms
(SPL) : 105dB
Bluetooth V4.1', 'https://www.startech.com.bd/image/cache/catalog/earphone/edifier/w293bt/w293bts-228x228.jpg', '38', '17', 'Edifier');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('645', 'Huawei Free Lace Bluetooth Earphone', '4990', '7', 'Wind noise reduction for Crystal Clear Calls
18hr. playtime, 5min Fast Charge
IPX5, Daily Water & Sweat Resistant
Titanium-Plated Dynamic Driver', 'https://www.startech.com.bd/image/cache/catalog/earphone/huawei/cm70-c/cm70-c-01-228x228.jpg', '69', '17', 'Huawei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('646', 'JBL Live 200BT Wireless In-Ear Neckband', '5800', '6', 'Driver size: 8mm
3-button remote with microphone
Magnetic Cable Management
Maximum Play Time : 10 hours', 'https://www.startech.com.bd/image/cache/catalog/neckband/jbl/live-200bt/live-200bt-01-228x228.webp', '74', '17', 'JBL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('453', 'Edifier G1000 Bluetooth 2:0 RGB Gaming Speaker with Remote', '9000', '3', 'Bluetooth, USB, 3mm & 3.5mm AUX connectivity
RGB lights, Game Mode
Bluetooth v5.0, 10W Total Output
EQ effects mode, 2.5 inch drivers', 'https://www.startech.com.bd/image/cache/catalog/speaker/edifier/g1000/g1000-1-228x228.jpg', '14', '13', 'Edifier');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('454', 'Xiaomi Mi XMYX04WM Portable Bluetooth Speaker', '2550', '3', 'Bluetooth protocol: HFP, A2DP, AVR CP
Bluetooth Version 5.0
2000mAh large-Capacity Battery
IP55 dustproof and waterproof', 'https://www.startech.com.bd/image/cache/catalog/speaker/xiaomi/xmyx04wm/xmyx04wm-01-228x228.jpg', '71', '13', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('455', 'F&D W19 Portable Bluetooth Speaker', '3500', '4', 'RMS/Channel (Watt): 6W x 2; Bulit-in microphone
Output Power: 12W; 3000mAh Li-ion battery
Signal to Noise Ratio: >-60dB
2.5 inch neodymium driver', 'https://www.startech.com.bd/image/cache/catalog/speaker/f-and-d/w19/w19-10-228x228.jpg', '29', '13', 'F&D');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('456', 'Wiwu Thunder P24 Portable Waterproof Bluetooth Speaker with Microphone', '3500', '5', 'Battery capacity: 1500mAh
Bluetooth Version: BT 5.0
Playback Time: 4-6 hours
Waterproof level: IPX-6', 'https://www.startech.com.bd/image/cache/catalog/speaker/wiwu/thunder-p24/wiwu-thunder-p24-portable-waterproof-bluetooth-speaker-with-microphone-228x228.jpg', '57', '13', 'Wiwu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('457', 'F&D F210X 2.1 Multimedia Bluetooth Speaker', '3800', '5', 'Connectivity: Bluetooth, USB
Dimensions: 16 x 22 x 21.5 cm
Weight: 3.2 Kg', 'https://www.startech.com.bd/image/cache/catalog/Speaker/FND/f-and-d-f210x-1-228x228.jpg', '7', '13', 'F&D');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('458', 'JBL Go 3 Portable Waterproof Bluetooth Speaker', '4500', '4', 'Frequency response: 110Hz â€“ 20kHz
Transducer: 43 x 47mm/1.5"
IP67 waterproof and dustproof
5 hours of playtime', 'https://www.startech.com.bd/image/cache/catalog/speaker/jbl/go-3/go-3-010-228x228.jpg', '17', '13', 'JBL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('459', 'Edifier M201BT Multimedia 2.1 Bluetooth Speaker', '4800', '10', 'Input Interface: 3.5mm AUX, Bluetooth
DSP digital audio processing
AC97 standard connection
Output Power: 34W', 'https://www.startech.com.bd/image/cache/catalog/speaker/edifier/m201bt/m201bt-1-228x228.jpg', '97', '13', 'Edifier');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('460', 'Wiwu Thunder P40 Portable Waterproof Dazzling LED Bluetooth Speaker with Microphone', '4800', '7', 'Battery capacity: 3000mAh
Bluetooth Version: BT 5.0
Playback Time: 4-6 hours
Waterproof level: IPX-6', 'https://www.startech.com.bd/image/cache/catalog/speaker/wiwu/thunder-p40/wiwu-thunder-p40-portable-waterproof-color-changeable-dazzling-led-bluetooth-speaker-with-microphone-228x228.jpg', '6', '13', 'Wiwu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('461', 'Gamdias PHEME M1 Streaming Microphone', '15000', '10', 'Supercardioid Pickup Pattern
12 Modes Multi-Color RGB
Simple Touch Controls
ENC to Minimize Ambient Noise', 'https://www.startech.com.bd/image/cache/catalog/microphone/gamdias/pheme-m1/pheme-m1-01-228x228.webp', '6', '14', 'Gamdias');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('462', 'Rode Wireless ME Compact Wireless Microphone System', '17000', '6', 'Dual-Channel Receiver with Built-In Mic
Clip-On Transmitter/Mic with 3.5mm Jack
7-Hr Rechargeable Batteries
Easy Setup, Intelligent GainAssist', 'https://www.startech.com.bd/image/cache/catalog/microphone/rode/wireless-me/wireless-me-228x228.webp', '14', '14', 'Rode');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('463', 'Rode Interview GO Handheld Mic Adaptor for Wireless GO', '3300', '7', 'Turn Wireless GO into Handheld Mic
High-density Windshield
Compatible: RODE Wireless GO
Dimensions: 23 x 42.9 x 237mm (Adaptor)', 'https://www.startech.com.bd/image/cache/catalog/microphone/rode/interview-go/interview-go-04-228x228.webp', '39', '14', 'Rode');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('464', 'Logitech Group Expansion Microphones (Pair) for Larger Video & Audio Conferencing', '28500', '3', 'SUPERIOR SOUND
CONFIRM VIDEO STREAMING
MONO,WIDEBAND,NOISE CANCEL
MICROPHONE MUTE BUTTONS', 'https://www.startech.com.bd/image/cache/catalog/Accessories/Logitech/Webcam/Logitech Group Expansion Microphones/Logitech Group Expansion Microphones-1-228x228.jpg', '95', '14', 'Logitech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('465', 'Takstar W-10 Microphone Windscreen', '350', '9', 'Designed for side-address microphones
Minimizes wind noise
Suitable for large size
Good quality material', 'https://www.startech.com.bd/image/cache/catalog/microphone/takstar/w-10/w-10-228x228.jpg', '27', '14', 'Takstar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('466', 'Takstar ST-105 Microphone Tripod', '500', '7', 'Desktop mount tripod
Folding tripod
Strong Stability
Easy to Carry', 'https://www.startech.com.bd/image/cache/catalog/microphone/takstar/st-105/st-105-228x228.jpg', '2', '14', 'Takstar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('467', 'Havit H207d Wired Stand Microphone', '375', '7', 'Mic sensitivity: 54dBÂ±3dB
Cable length: 1.5m
Plug Type: 3.5mm
Multi-angle, flexible', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/h207d/h207d-01-228x228.jpg', '21', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('468', 'HTDZ HT-220 Dual Microphone Set', '9000', '4', 'Audio Dynamic Response: >100dB
Audio Frequency : 80Hz~12 KHz
Transmitter Power: 8.5mW
2 x Hand Microphone/1 x Amplifier', 'https://www.startech.com.bd/image/cache/catalog/conference-system/ht220/ht-220-228x228.jpg', '52', '14', 'HTDZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('469', 'Havit GK57 USB RGB Gaming Microphone', '725', '5', 'USB Computer Microphone
Plug & Play, RGB Light
Omnidirectional Miocrophone
Adjustable Neck', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/gk57/gk57-1-228x228.jpg', '26', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('470', 'Havit HV-M80 Microphone with Stand', '450', '6', 'Microphone for Laptop / Notebook / PC Desktop
Online karaoke And More
Games Online, QQ, MSN, and Skype
Havit HV-M80 Microphone with Stand', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/m-80/m80-228x228.jpg', '50', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('471', 'Fantech MV-01 3.5mm Lavalier Microphone', '550', '8', 'Microphone directivity: Omni directional
Mic sensitivity -42+-3db
Noise reduction: >55db
Frequency Response: 65Hz-18kHz', 'https://www.startech.com.bd/image/cache/catalog/microphone/fantech/mv-01/mv-01-228x228.jpg', '33', '14', 'Fantech');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('472', 'Havit AM100 Handheld Condenser Wired Microphone', '550', '8', 'Directivity: Omnidirectional
Sensitivity : 52dB
Impedance : 150ohm
3.5mm Port', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/am100/am100-1-228x228.jpg', '78', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('473', 'Boya BY-M1 Omnidirectional Lavalier Microphone (Original)', '950', '8', 'Clip-On Mic for Phones, DSLR,
Camcorders, recorders, PC etc.
Superb sound for presentations
High-quality condenser', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-m1/boya-228x228.jpg', '8', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('474', 'Boya BY-UM4 3.5mm Mini Flexible Microphone Black', '675', '8', 'For VoIP Skype/WhatsApp/Viber/Line/ICQ and more
Designed for PC
Plug-in and work
Compatible with Smartphone', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-um4/by-um4-228x228.jpg', '32', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('475', 'Takstar CH-58 Microphone Clamp', '700', '10', 'Suitable for professional condenser microphones
Inner diameter range: 20-25mm
Plastic microphone clip
Good quality', 'https://www.startech.com.bd/image/cache/catalog/microphone/takstar/ch-58/ch-58-228x228.jpg', '80', '14', 'Takstar');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('476', 'Havit GK55 RGB Gaming Microphone', '700', '10', 'Frequency Response: 30Hz-16kHz
Connectivity: Wired USB
Sensitivity: -42dB+-3dB
6mm Omnidirectional Microphone', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/gk55/gk55-01-228x228.jpg', '28', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('477', 'Tev Tm-621 Handheld Wired Microphone', '3500', '4', 'Directivity: Uni-Directional
Output Sensitivity: -72 ± 3db (0db=1v/0.1pa at 1000 Hz)
Output Impedance: 600ω ± 30%
Frequency Response: 80 ~ 12000hz.', 'https://www.startech.com.bd/image/cache/catalog/Conference System/tm-621/tm-621-228x228.webp', '84', '14', 'Tev');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('478', 'HTDZ HT-81A Professional Shotgun Microphone', '4000', '10', 'Polar Pattern: Unidirectional / Ultra Unidirectional
Output Impedance (Ohm): 75 – Balanced
Sensitivity (±2dB): NORMAL -45dB, TELE -38dB
Mic Length (Mm): 360mm', 'https://www.startech.com.bd/image/cache/catalog/conference-system/htdz/ht-81/ht-81a-228x228.webp', '61', '14', 'HTDZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('479', 'TEV TM-700 Handheld Wired Microphone', '4500', '8', 'Type: Dynamic Microphone
Directivity: Uni-Directional
Output Sensitivity: -72 Â± 3dB (0dB=1v/0.1Pa At 1000 Hz)
Output Impedance: 600â„¦ Â± 30%', 'https://www.startech.com.bd/image/cache/catalog/office-equipment/pa-system/tev/tm-700/tm-700-01-228x228.jpg', '3', '14', 'TEV');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('480', 'Maono AU-A03 Professional Condenser Studio Microphone Kit', '4200', '5', 'Supports Camcorders, recorders, PC.
Superb sound for presentations
High-quality condenser
3.5 mm Port supported', 'https://www.startech.com.bd/image/cache/catalog/microphone/maono/au-a03-microphone-kit/maono-au-a04-192khz-24bit-usb-microphone-03-228x228.jpg', '23', '14', 'Maono');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('481', 'Boya BY-CM6A All-in-one USB Microphone With Full HD Conference Camera', '13400', '3', 'Polar Pattern: cardioid
Built-in: 4K UHD camera
Resolution: 3840*2160, wide-angle view 90°
Compatible: Android devices, Windows/Mac computers', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-cm6a/by-cm6a-01-228x228.webp', '21', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('482', 'Havit HV-GK56 RGB USB Gaming Microphone', '1050', '10', 'Frequency Response: 30hz to 16khz
Plug and Play
Impedance: 2.2k Ohms
Directivity: Omnidirectional', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/hv-gk56-rgb/hv-gk56-rgb-228x228.jpg', '30', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('483', 'Havit GK56B RGB USB Gaming Microphone', '1050', '9', 'Microphone: Φ6 x 5mm
Frequency Response: 30hz to 16khz
Impedance: 2.2k Ohms
Directivity: Omnidirectional', 'https://www.startech.com.bd/image/cache/catalog/microphone/havit/gk56b/gk56b-01-228x228.webp', '28', '14', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('484', 'TEV PRO-II Handheld Wired Microphone', '5000', '5', 'Type: Dynamic Microphone
Directivity: Uni-Directional
Output Sensitivity: -74 Â± 3dB (0dB=1v/0.1Pa At 1000 Hz)
Output Impedance: 600â„¦ Â± 30%', 'https://www.startech.com.bd/image/cache/catalog/office-equipment/pa-system/tev/pro-ii/pro-ii-01-228x228.jpg', '22', '14', 'TEV');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('485', 'AULA T1 RGB USB Gaming Microphone', '11000', '4', 'Connector: USB
Frequency Response: 20Hz to 20kHz
Impedance: ≥680Ω
Directivity: Cardioid', 'https://www.startech.com.bd/image/cache/catalog/microphone/aula/t1-rgb/t1-rgb-02-228x228.webp', '95', '14', 'AULA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('486', 'K&F Concept KF 10.010 M1 Lavalier Microphone', '1100', '9', 'Real-Time Monitoring
Extremely lightweight
Built-in Rechargeable Battery
3.5mm Jack Condenser Mic', 'https://www.startech.com.bd/image/cache/catalog/microphone/k and f/kf10-010-m1-mic/k-and-f-concept-kf10-010-m1-microphone-02-228x228.jpg', '16', '14', 'K&F');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('487', 'BOYA BY-AM1 Dual-Channel Audio Mixer', '8850', '3', 'Ideal for dynamic/ condenser, XLR mics, line-level, instrument signals
Compatible with computers, laptops, speakers
6.35mm audio outputs, USB 2.0 connection
6.35mm/XLR combo inputs, 1/4" threaded hole', 'https://www.startech.com.bd/image/cache/catalog/studio-accessories/boya/by-am1/by-am1-01-228x228.jpg', '10', '14', 'BOYA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('488', 'BOYA BY-M1S Universal Lavalier Microphone', '1095', '6', 'Clip-on mic for smartphones, cameras, camcorders, audio recorders, PCs
High-quality condenser ideal for voice/video recording
Omni-directional pick-up pattern
No need battery, powered by devices', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-m1s/by-m1s-01-228x228.webp', '54', '14', 'BOYA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('489', 'Rode PSA1 Professional Studio Arm', '15500', '6', 'Ideal for broadcast, radio, studio & home use
threaded table insert & clamp mountings
Internal springs for quiet operation
For microphones from 700g to 1.1kg', 'https://www.startech.com.bd/image/cache/catalog/studio-accessories/rode/psa1-professional/psa1-professional-01-228x228.jpg', '35', '14', 'Rode');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('490', 'RODE PSA1+ Professional Studio Arm', '15000', '3', 'Includes 3/8 to 5/8" Mic Thread Adapter
37" Horizontal Reach, 34" Vertical Reach
Integrated Management for USB/XLR Cable
Supports Mics up to 2.7 lb', 'https://www.startech.com.bd/image/cache/catalog/microphone/rode/psa1-plus/psa1-plus-01-228x228.webp', '100', '14', 'RODE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('491', 'Rode NT-USB Versatile Studio-Quality USB Microphone', '13000', '5', 'Frequency Range	20Hz - 20kHz
Maximum SPL 110dBSPL
Polar Pattern Cardioid
Resolution 16-bit', 'https://www.startech.com.bd/image/cache/catalog/microphone/rode/nt-usb/nt-usb-228x228.jpg', '8', '14', 'Rode');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('492', 'Boya BY-MM1 Compact On Camera Video Microphone', '1745', '3', 'Compact on-camera microphone
Compatible with smartphones, DSLRs
No battery required
Professional furry windshield included', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/mm1/by-mm1-1-228x228.jpg', '59', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('493', 'HTDZ HT-66B UHF Wireless Microphone System (1 Hand + 1 Tie or 2 Hand)', '21000', '8', 'Working frequency: 610MHz - 790MHz
Modulation:  Broad Band FM
Frequency channel: 200
Signal noise ratio:  > 105dB', 'https://www.startech.com.bd/image/cache/catalog/conference-system/htdz/ht-66b/ht-66b-01-228x228.jpg', '64', '14', 'HTDZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('494', 'HTDZ HT-88B UHF Wireless Microphone', '22000', '4', 'Frequency: 80Hz-18kHz (3dB)
Antenna: Built-in
Signal noise ratio: > 105dB
Battery Life: 10 hours in normal power, 12 hours in low power', 'https://www.startech.com.bd/image/cache/catalog/conference-system/htdz/ht-88b/ht-88b-01-228x228.webp', '53', '14', 'HTDZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('495', 'Redragon GM99 STIX USB Microphone', '1345', '10', 'Smooth Recording and clear voice
Compact size, easy to carry
Suitable for podcasting
RGB backlighting', 'https://www.startech.com.bd/image/cache/catalog/microphone/redragon/gm99-stix/gm99-stix-1-228x228.jpg', '60', '14', 'Redragon');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('496', 'TEV TR-8100TD 1H+1Tie Wireless Microphone', '36000', '3', 'Frequency Response: 40Hz~15000Hz Â±3dB
Audio Output: Balance (XLR)/ On balance (6.3Ã˜jack)
Receiver Mode: Dual Channel, True-Diversity
Battery: 3V (2Ã—1.5V AA Battery)', 'https://www.startech.com.bd/image/cache/catalog/office-equipment/pa-system/tev/tr-8100td/tr-8100td-01-228x228.jpg', '16', '14', 'TEV');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('497', 'Boya BY-M1 Pro 3.5mm Lavalier Microphone', '1650', '10', 'For Smartphones, DSLRs, camcorders, audio recorders, PC
Includes lapel clip, LR44 battery
Play back headphone monitoring
High-quality condenser', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-m1-pro/by-m1-pro-01-228x228.jpg', '11', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('498', 'Neumann U 87 Ai Set Large-Diaphragm Multipattern Condenser Microphone', '370000', '8', 'Studio Standard for Vocals & Instruments
Low-Noise FET Circuit
Switchable Low-Cut Filter
Cardioid, Omni & Figure-8 Polar Patterns', 'https://www.startech.com.bd/image/cache/catalog/microphone/neumann/u-87-ai/u-87-ai-set-01-228x228.jpg', '46', '14', 'Neumann');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('499', 'Neumann TLM 107 Large-Diaphragm Cardioid Condenser Studio Microphone', '150000', '8', 'Dual-Diaphragm Condenser Capsule
Low-Cut Filter at 40 or 100 Hz
Balanced Tone in All Polar Patterns
Switchable Pad at -6 or -12 dB, Low Self-Noise of 10 dBA', 'https://www.startech.com.bd/image/cache/catalog/microphone/neumann/tlm-107/tlm-107-01-228x228.webp', '20', '14', 'Neumann');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('500', 'Neumann TLM 102 Large-Diaphragm Cardioid Condenser Studio Microphone', '95000', '8', 'Large-Diaphragm Condenser Capsule
Handles up to 144 dB SPL Distortion-Free
48V Phantom Powered
Cardioid Pattern Lowers Background Noise', 'https://www.startech.com.bd/image/cache/catalog/microphone/neumann/tlm-102/tlm-102-01-228x228.webp', '86', '14', 'Neumann');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('501', 'Neumann TLM 103 Large-Diaphragm Cardioid Condenser Studio Microphone', '145000', '10', 'Large-Diaphragm Condenser Capsule
138 dB Max SPL, 7 dBA of Self-Noise
48V Phantom Powered
Capsule design derived from the legendary U 87 A', 'https://www.startech.com.bd/image/cache/catalog/microphone/neumann/tlm-103/tlm-103-01-228x228.webp', '45', '14', 'Neumann');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('502', 'Boya BY-MM1+ Super-cardioid Condenser Shotgun Microphone', '2100', '3', 'Compatible with smartphones, tablets, DSLRs, Camcorder, PCs
Improved sensitivity & signal to noise ratio
Durable metal construction
3.5mm headphone output', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-mm1-plus/by-mm1-plus-01-228x228.jpg', '100', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('503', 'SYNCO MMic-U1P Mini Cardioid Condenser Microphone for Smartphone Black', '2250', '5', 'Material: Metal
Frequency Response: 40Hz-20KHz
Sensitivity: -35dB at 1KHz
Impedance: 2200Î©', 'https://www.startech.com.bd/image/cache/catalog/microphone/synco/mmic-u1p/synco-mmic-u1p-microphone-black-228x228.jpg', '66', '14', 'SYNCO');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('504', 'SYNCO Lav-S6D Dual Omnidirectional Condenser Wired Lavalier Microphone', '2200', '8', 'Transducer: Electret Condenser
Frequency Response: 60 Hz to 19 kHz
Sensitivity: -30 dBV/Pa at 1 kHz
Batter Life: 300 hours', 'https://www.startech.com.bd/image/cache/catalog/microphone/synco/lav-s6d/synco-lav-s6d-lavalier-microphone-228x228.jpg', '47', '14', 'SYNCO');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('505', 'Boya BY-LM40 Lavalier Microphone', '2450', '5', 'Frequency Range: 100-10000Hz
Output Connector: USB-A
Polar Pattern: Omnidirectional
Cable Length: 4m (13ft)', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-lm40/by-lm40-02-228x228.jpg', '42', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('506', 'Boya BY-M2 Clip-on Lavalier Microphone For iOS', '2650', '9', 'Omnidirectional clip-on microphone ideal for iOS devices
Intelligent noise reduction
Detachable design for multiple uses
With Apple MFi certified Lightning connector', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-m2/by-m2-01-228x228.jpg', '15', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('507', 'SYNCO Vlogger Kit2 with Microphone and Fill Light for Camera/SmartPhone Black', '3000', '3', 'Mic-M1S Shotgun Mic
W49 Vlogger Light
Smartphone Holder
360Â° Mini Tripod', 'https://www.startech.com.bd/image/cache/catalog/microphone/synco/vlogger-kit2/synco-vlogger-kit2-microphone-black-228x228.jpg', '64', '14', 'SYNCO');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('508', 'Boya BY-HM100 Dynamic Handheld Microphone', '3940', '4', 'Ideal for interviews, ENG, and speech etc
Dynamic handheld microphone
Omnidirectional pickup pattern
No need battery or any phantom power', 'https://www.startech.com.bd/image/cache/catalog/microphone/boya/by-hm100/hm100-02-228x228.jpg', '46', '14', 'Boya');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('509', 'boAt Bassheads 103 Wired Earphone', '599', '10', 'Driver Size: 10 mm
Noise Isolation: Passive
Microphone: Yes
Super Extra Bass', 'https://www.startech.com.bd/image/cache/catalog/earphone/boat/bassheads-103/bassheads-103-228x228.webp', '83', '15', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('510', 'boAt Bassheads 100 Wired Earphone', '499', '3', 'Driver Size: 10 mm
Noise Isolation: Passive
Microphone: Yes
Super Extra Bass', 'https://www.startech.com.bd/image/cache/catalog/earphone/boat/bassheads-100/bassheads-100-01-228x228.webp', '19', '15', 'boAt');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('511', 'Awei T13 Pro TWS Waterproof Touch Sports Earbuds', '1299', '7', 'Charging Box Battery: 300mAh
Charging Time: 1.5 Hours
Waterproof: IPX6
Transmission Distance: 10m', 'https://www.startech.com.bd/image/cache/catalog/earbuds/awei/t13-pro/awei-t13-pro-waterproof-earbuds-black-03-228x228.jpg', '50', '15', 'Awei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('512', 'Yison Celebrat G4 3.5mm Wired Earphone', '160', '8', 'Frequency Response: 20-20000Hz
10mm Dynamic Drive Unit
Built-in HD Microphone
One-button wire control', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-g4/celebrat-g4-01-228x228.jpg', '36', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('513', 'Yison Celebrat G13 3.5mm Wired Earphone', '170', '7', 'Impedance 32±15%, Sensitive 94dB±3dB
High tensile strength nylon woven layer
Suitable for all smart facilities
Plug: 3.5mm type, Cable length: 1.2m', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-g13/celebrat-g13-01-228x228.jpg', '53', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('514', 'Yison Celebrat G3 3.5mm Wired Earphone', '180', '5', 'Frequency range: 20-20000HZ
Compatible With Multi Devices
Microphone included
Sensitivity: 92dB±3dB', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-g3/celebrat-g3-01-228x228.jpg', '23', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('515', 'Yison Celebrat D2 3.5mm Wired Premium Earphone', '195', '10', 'Supports with Portable Media Player, Mobile Phone, PC
Function: Microphone, Noise Cancelling
Drive Unit: 10mm, Sensitivity: 92dBÂ±3dB
Plug Type: 3.5mm, Cable length: 1.2m', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-d2/celebrat-d2-01-228x228.jpg', '20', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('516', 'Riversong SEED+ EA64 Wired Earphone', '235', '8', 'Cable Length: 1.2
Impedance: 32Ω
Connector: 3.5mm Jack
True Stereo Sound', 'https://www.startech.com.bd/image/cache/catalog/earphone/riversong/ea64/ea64-228x228.webp', '82', '15', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('517', 'Yison Celebrat G9 Wired 3.5mm Earphone', '260', '7', 'Drive Unit: 10mm
Impedance: 16Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/yison-g9/yison-g9-wired-228x228.webp', '38', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('518', 'Yison X3 Type-C In-Ear Earphone', '270', '7', 'Drive Unit: 14mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: Type-C', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/x3-type-c/x3-type-c-228x228.webp', '70', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('519', 'Yison Celebrat G2 Wired 3.5mm Earphone', '290', '5', 'Drive Unit: 10mm
Impedance: 16Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/g2-wired-earphone/g2-228x228.webp', '12', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('520', 'Yison Celebrat FLY-1 In-Ear Wired Earphone', '295', '6', 'Frequency response : 20Hz-20KHz
Drive Unit: 10mm, Plug: 3.5mm
Sensitivity: 91dBÂ±3dB
Impedance: 16nÂ±15', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-fly-1/celebrat-fly-1-03-228x228.jpg', '1', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('521', 'Yison CX620 In-Ear Wired Earphone', '295', '4', 'Drive Unit: 10mm
Impedance: 16Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/cx620/cx620-228x228.webp', '25', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('522', 'Riversong EA204 Bass L Wired Earphone', '295', '7', 'Driver Unit: 10mm
Connector: 3.5 MM
Cable Length: 1.2m
Frequency Response: 20Hz~20KHz', 'https://www.startech.com.bd/image/cache/catalog/earphone/riversong/ea204/ea204-01-228x228.webp', '6', '15', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('523', 'Riversong EA207 Spirit L1 Wired Earphone', '299', '4', 'Cable Length: 1.2
Impedance: 32Ω
Connector: 3.5mm Jack
True Stereo Sound', 'https://www.startech.com.bd/image/cache/catalog/earphone/riversong/ea207/ea207-228x228.webp', '71', '15', 'Riversong');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('524', 'Yison G10 Wired In-ear Style 3.5mm Earphone', '300', '4', 'Drive Unit: 10mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/g10-3-5/g10-228x228.webp', '74', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('525', 'Yison Celebrat D5 In-Ear Wired Earphone', '310', '10', 'Drive Unit: 10mm
Impedance: 16Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/d5-earphon/d5-228x228.webp', '60', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('526', 'KZ HD9 HiFi In-Ear Sports Earphone', '350', '10', 'Professional 3D Acoustic Chamber
Customized Microphone
L Bending 3.5mm Connector
In-line Control Button', 'https://www.startech.com.bd/image/cache/catalog/earphone/kz-earphone/hd9/hd9-01-228x228.webp', '15', '15', 'KZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('527', 'XTRA B75 Pro In-Ear Earphone', '350', '7', 'Driver diameter: 10mm
Plug Type: 3.5mm
Cable Length: 1.2m
In-line control', 'https://www.startech.com.bd/image/cache/catalog/earphone/xtra/b75-pro/b75-pro-01-228x228.webp', '21', '15', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('528', 'Yison X5 wired 3.5 mm Earphone', '390', '3', 'Drive Unit: 9mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: 3.5 mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/x5-3-5/x5-228x228.webp', '74', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('529', 'Motorola Pace 145 In Ear Earphone', '399', '7', 'Supports voice commands via Siri, Google Assistant, and Amazon Alexa
Built-in Microphone
iOS and Android Compatible
Lightweight & Durable Cables', 'https://www.startech.com.bd/image/cache/catalog/earphone/motorola/pace-145/pace-145-228x228.jpg', '100', '15', 'Motorola');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('530', 'UiiSii HM12 Wired In-Ear Deep Bass Earphone', '400', '3', 'Deep Bass & Good Treble
Headphone sounding principle
Metal sound chamber and lithe
Dynamic ring earphone connection', 'https://www.startech.com.bd/image/cache/catalog/earphone/uiisii/hm12/uiisii-hm12-228x228.jpg', '84', '15', 'UiiSii');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('531', 'Yison Celebrat G5 Wired Earphone', '400', '4', 'Frequency Response : 20Hz-20KHz
Noise Cancelling, Microphone
Drive Unit: 10mm, Impedance: 16Î©Â±15%
3.5mm type plug with gold metal', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-g5/celebrat-g5-black-04-228x228.webp', '47', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('532', 'JOYROOM JR-EC01 Type-C Wired Earphone', '425', '6', '14.2mm large composite membrane speaker
High sensitivity microphone
Three-button intelligent wired control
Simulated Type-C port', 'https://www.startech.com.bd/image/cache/catalog/earphone/joyroom/jr-ec01/jr-ec01-black-01-228x228.webp', '43', '15', 'JOYROOM');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('533', 'Motorola Pace 115 In Ear Earphone', '249', '4', '1.2 m Cable
10mm Speaker Driver
Connector type: 3.5mm
Rich Base and Clear Sound', 'https://www.startech.com.bd/image/cache/catalog/earphone/motorola/pace-115/pace-115-2-228x228.jpg', '76', '15', 'Motorola');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('534', 'Yison Celebrat G17 In-Ear Lighting Earphone', '550', '8', 'Drive Unit: 14mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: Lighting', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/g17/g17-228x228.webp', '71', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('535', 'Yison Celebrat C8 Super Bass Solid Metal Earphone', '550', '3', 'Drive Unit: 10mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: 3.5mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/c8-3-5/celebrat-c8-228x228.webp', '3', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('536', 'Rapoo EP28 Wired In Ear Phone', '600', '6', 'Comfortable to wear
Realistic and natural sound
Oxygen-Free Copper Cable
Multi-function Control Ergonomic design', 'https://www.startech.com.bd/image/cache/catalog/earphone/rapoo/ep28/ep28-228x228.jpg', '70', '15', 'Rapoo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('537', 'Yison Celebrat A20 In-Ear Magnetic Bluetooth Earphone', '640', '7', 'Battery Capacity: Lithium battery3.7V/ 7OmAh
Bluetooth Chip : JL6936D4, Bluetooth: V 5.0
Transmission Distance: 10m, Drive Unit: 10mm
Noise Cancelling, Waterproof', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/celebrat-a20/a20-01-228x228.jpg', '84', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('538', 'Xiaomi Mi HSEJ03JY 3.5mm Earphone Basic', '650', '3', 'Frequency : 20-20000HZ
Impedance: 32Ω
Plug Pin: 3.5mm
Audio Output Mode: Stereo', 'https://www.startech.com.bd/image/cache/catalog/earphone/mi-in-ear/mi-in-ear-basic-earphone-1-228x228.jpg', '79', '15', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('539', 'Edifier H180 Hi-Fi Stereo In-ear Earphone', '650', '8', 'Max Power Output: 10mW
3.5mm connector
Inline Control
Connect to a variety of devices', 'https://www.startech.com.bd/image/cache/catalog/earphone/edifier/h180/h180-03-228x228.webp', '60', '15', 'Edifier');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('540', 'Motorola EarBuds 3 In Ear Earphone', '699', '5', 'Anti-tangle soft flat cable
In-line mic for clear calls
9.4mm efficient driver
Cable clip for stability', 'https://www.startech.com.bd/image/cache/catalog/earphone/motorola/earbuds-3/earbuds-3-228x228.jpg', '71', '15', 'Motorola');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('541', 'ZOOOK Petal Premium Earphone with Mic', '700', '4', 'Hybrid body: (Aluminum + ABS)
Driver Size: 11 mm neodymium drivers
Frequency: 20HZ~20/KHZ, Impedance: 320
Connection: 3.5mm, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/petal/petal-01-228x228.jpg', '70', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('542', 'ZOOOK Gama Universal HD Earphone with Mic', '700', '5', 'Material: Hybrid body (Aluminum + ABS)
Driver Size: 9mm neodymium drivers
Frequency: 20HZ ～ 20KHZ, Impedance: 16Ω
Connector: Angled Gold-Plated 3.5mm, Cord length: 1.2m', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/gama/gama-01-228x228.jpg', '69', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('543', 'ZOOOK ZM-ONE EAR Single Stereo Earbud Headphone with Mic', '700', '8', 'Ergonomic
Sweat-proof
Hands-Free Calls
Coiled PU Cable', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/zm-one-ear/zm-one-ear-01-228x228.jpg', '94', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('544', 'Baseus Encok H17 3.5mm Lateral in-ear Wired Earphone', '750', '6', '14mm moving coils
Lossless sound quality
High-sensitivity microphones
Comfortable half-in-ear design', 'https://www.startech.com.bd/image/cache/catalog/earphone/baseus/encok-h17/encok-h17-01-228x228.webp', '14', '15', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('545', 'TRN MT1 Professional-grade Dynamic Driver In-Ear Monitor Earphone', '750', '9', '10mm dual magnet dynamic driver
Silicon crystal composite bio-cellulose diaphragm
Imported polycarbonate housing
Upgradeable and replaceable cable', 'https://www.startech.com.bd/image/cache/catalog/earphone/trn/mt1/mt1-01-228x228.webp', '44', '15', 'TRN');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('546', 'Xiaomi DDQ01WM 3.5mm Capsule Earphone Black', '790', '6', 'Wearing Type: In-ear
Plug Type: 3.5mm
Cable Length: 1.25m
Impedance: 32Ω', 'https://www.startech.com.bd/image/cache/catalog/earphone/xiaomi/xiaomi-capsule/xiaomi-capsule-01-228x228.webp', '53', '15', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('547', 'Plextone G25 3.5mm Gaming Earphones', '749', '10', 'Receive Sensitivity: 108dB
Frequency Response: 20-20kHz
Cable Length: (m) 1.6m
Drive unit: 10mm', 'https://www.startech.com.bd/image/cache/catalog/earphone/plextone/g25/g25-01-228x228.jpg', '55', '15', 'Plextone');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('548', 'Xiaomi SDQEJ06WM 3.5mm Magnetic Earphone', '1050', '9', 'Dual drivers, Passive noise cancellation
Braided cables, magnetic earbuds
Button operation, Plug: 3.5mm
Elegant carbon finish', 'https://www.startech.com.bd/image/cache/catalog/earphone/xiaomi/sdqej06wm/sdqej06wm-001-228x228.jpg', '86', '15', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('549', 'ZOOOK Lava Metallic HD Earphones with Xbass & Mic', '800', '9', 'Material: Hybrid body (Aluminum + ABS)
Driver Size: 10mm neodymium drivers
Frequency Range: 20HZ ～ 20KHZ, Impedance: 16Ω
Connector: 3.5mm, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/lava/lava-03-228x228.jpg', '28', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('550', 'ZOOOK Mighty Metallic HD Earphone with Xbass & Mic', '800', '4', 'Material: Hybrid body (Aluminum + ABS)
Driver Size: 14.2mm neodymium drivers
Frequency Range: 20HZ ～ 20KHZ, Impedance: 32Ω
Connector: Gold-Plated 3.5mm, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/mighty/mighty-01-228x228.jpg', '75', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('551', 'ZOOOK Tango Universal HD Earphones with Mic', '800', '10', 'Material: Hybrid body (Aluminum + ABS)
Driver Size: 14.2mm neodymium drivers
Frequency Range: 20HZ ～ 20KHZ, Impedance: 32Ω
Connector: Gold-Plated Angled 3.5mm, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/tango/tango-01-228x228.jpg', '21', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('552', 'ZOOOK AirBuds-C Premium Earphone with Mic', '800', '8', 'Hybrid body: (Aluminum + ABS)
Frequency: 20HZ~ 20KHZ
Driver Size: 14.2mm neodymium drivers
Connector: 3.5mm, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/airbuds-c/airbuds-c-01-228x228.jpg', '10', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('553', 'Yison X6 Type-C In-Ear Earphone', '845', '9', 'Drive Unit: 12mm
Impedance: 32Ω±15%
Cable length: 1.2m
Plug Type: Type-C', 'https://www.startech.com.bd/image/cache/catalog/earphone/yison/x6-in-ear/x6-type-c-02-228x228.webp', '24', '15', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('554', 'KZ EDX Pro Dual Magnetic Dynamic Hi-Fi In-Ear Earphone with Mic', '850', '6', '10mm Dynamic Driver and Double Magnetic Circuit
Rare High-end Inlay Technology
HD Condenser Microphone
3.5mm Audio Plug Detachable Cable', 'https://www.startech.com.bd/image/cache/catalog/earphone/kz-earphone/edx-pro/edx-pro-01-228x228.webp', '36', '15', 'KZ');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('555', 'JBL Tune T110 In-Ear Headphone', '890', '9', 'Type Wired
Jack type 3.5 mm
Bulit-in Microphone Yes', 'https://www.startech.com.bd/image/cache/catalog/earphone/jbl/t110/t110-0010-228x228.jpg', '91', '15', 'JBL');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('556', 'ZOOOK Earpod C Premium In-Ear Type-C Earphone', '900', '9', 'Driver Size: : 15.4mm neodymium drivers
Frequency range: : 20HZ ～ 20KHZ
Impedance: 32Ω, Sensitivity: 118db±3db
Connector: Type C USB, Cord length: 1.2M', 'https://www.startech.com.bd/image/cache/catalog/earphone/zoook/earpod-c/earpod-c-01-228x228.jpg', '2', '15', 'ZOOOK');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('557', 'Awei T13 Pro TWS Waterproof Touch Sports Earbuds', '1299', '3', 'Charging Box Battery: 300mAh
Charging Time: 1.5 Hours
Waterproof: IPX6
Transmission Distance: 10m', 'https://www.startech.com.bd/image/cache/catalog/earbuds/awei/t13-pro/awei-t13-pro-waterproof-earbuds-black-03-228x228.jpg', '90', '16', 'Awei');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('558', 'Jabra Elite 5 Hybrid ANC True Wireless Earbuds', '12900', '9', '6mm Driver Size
6-Microphone Call Technology
Hybrid Active Noise Cancellation
Up To 28 Hours Play Time', 'https://www.startech.com.bd/image/cache/catalog/earbuds/jabra/elite-5/elit-5-01-228x228.webp', '100', '16', 'Jabra');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('559', 'SONY WF-1000XM4 Noise Canceling True Wireless Earbuds', '21800', '3', 'Crystal-clear call quality
IPX4 Water resistance
Wireless charging Qi technology
8 hours long battery', 'https://www.startech.com.bd/image/cache/catalog/earphone/sony/wf-1000xm4/sony-wf-1000xm4-wireless-noise-cancelling-headphones-02-228x228.jpg', '27', '16', 'SONY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('560', 'Joyroom JR-T03S Bilaterial TWS Bluetooth Earbuds', '1650', '6', 'Built-in smart sensor touch IC
Physical Noise Reduction
Master-slave switch
Dual-Core Chipset', 'https://www.startech.com.bd/image/cache/catalog/earphone/joyroom/jr-t03s/jr-t03s-228x228.jpeg', '41', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('561', 'Joyroom Jdots Series JR-DB1 True Wireless Earbuds', '1399', '9', 'Bluetooth version: V5.3
Battery capacity: 50mAh Earbud, 290mAh Case
Music / Calling time: 8h (60% volume), 6.5h (60% volume)
Water Resistance: IPX4', 'https://www.startech.com.bd/image/cache/catalog/earbuds/joyroom/jdots-series-jr-db1/jdots-series-jr-db1-01-228x228.webp', '86', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('562', 'Baseus Bowie E3 TWS Earphones Silicone Protective Case', '534', '8', 'Compatibility: Baseus Bowie E3
Material: silicone
Thickness: 2.8mm
Manufacturing technique: injection molding', 'https://www.startech.com.bd/image/cache/catalog/earbuds/baseus/bowie-e3-tws/bowie-e3-tws-silicone-01-228x228.webp', '12', '16', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('563', 'Havit HV-TW935 True Wireless Earbuds', '950', '3', 'Smart touch control
Master-slave switch
Hands-free calling
Voice assistant', 'https://www.startech.com.bd/image/cache/catalog/earphone/havit/hv-tw935/hv-tw935-true-wireless-earbuds-01-228x228.jpg', '42', '16', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('564', 'Lenovo XT92 True Wireless Bluetooth Gaming Earbuds', '1177', '3', 'BlueTooth 5.1,Built-in Mic on both
Transmitting Distance: up to 10m
Charging Case Battery:3.7V 300mAh
Earbuds Battery: 3.7V 30mAh', 'https://www.startech.com.bd/image/cache/catalog/earphone/lenovo/xt92/xt92-01-228x228.jpg', '14', '16', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('565', 'Baseus Encok A05 Vehicle-mounted Wireless Earphone', '1110', '9', '180Â° rotating magnetic charging base
Double-click to call back
Smart call noise reduction
Battery Capacity: 40mAh', 'https://www.startech.com.bd/image/cache/catalog/earphone/baseus/encok-a05/encok-a05-01-228x228.jpg', '38', '16', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('566', 'Havit HV-TW925 True Wireless Earbuds', '1250', '4', 'Bluetooth 5.0
6 Hours Battery Life
Smart Touch Control
6.1mm Dynamic Unit', 'https://www.startech.com.bd/image/cache/catalog/earphone/havit/hv-tw925/havit-hv-tw925-02-228x228.jpg', '13', '16', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('567', 'Joyroom MG-C05 Mini TWS Waterproof Bluetooth Earbuds', '1100', '9', 'HiFi Sound and HD Voice
Intelligent noise reduction
IPX5 Waterproof & Sweatproof
Touch operation', 'https://www.startech.com.bd/image/cache/catalog/earphone/joyroom/mc-c05/mc-c05-01-228x228.jpg', '48', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('568', 'Lenovo LivePods LP1S TWS Bluetooth Earbuds', '1200', '4', 'Frequency Range: 20Hz-20KHz
Speaker size: 10mm
Bluetooth version 5.0
Waterproof: IPX4', 'https://www.startech.com.bd/image/cache/catalog/earphone/lenovo/lp1s/lp1s-05-228x228.jpg', '15', '16', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('569', 'QCY T1C Bluetooth 5.0 Wireless Earbuds', '1249', '5', 'Deep Noise Cancellation
Support for Binaural Calls
Low Latency Gaming Mode
IPX4 Waterproof Technology', 'https://www.startech.com.bd/image/cache/catalog/earbuds/qcy/t1c/t1c-white-01-228x228.webp', '69', '16', 'QCY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('570', 'G-TiDE Buds 2 True Wireless Earbuds', '1600', '9', 'Crystal-clear vocals
Bluetooth 5.3 Quick Connect
Immersive audio experience
Seamless device compatibility', 'https://www.startech.com.bd/image/cache/catalog/earbuds/g-tide/buds-2/buds-2-01-228x228.webp', '45', '16', 'G-TiDE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('571', 'G-TiDE L1 Half In-Ear TWS Earbuds', '1290', '4', 'Binaural surround sound, Dual mic ENC for Calls
Bluetooth 5.3 Quick Connect
300mAh big battery
IPX4 Water Resistance', 'https://www.startech.com.bd/image/cache/catalog/earbuds/g-tide/l1-tws/l1-tws-01-228x228.webp', '1', '16', 'G-TiDE');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('572', 'Yison Celebrat W16 True Wireless Earbuds', '1325', '4', 'Bluetooth Version: V5.0
Interface: Type-C
Charging time: About 1.5 hours
Battery: Charging case 300 mAh, Earbuds 30mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/yison/w16/w16-228x228.webp', '46', '16', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('573', 'Yison Celebrat W15 True Wireless Earbuds', '1325', '5', 'Bluetooth Version: V5.0
Drive Unit:10mm
Charging time: About 1.5 hours
Battery: Charging case 300 mAh, Earbuds 30mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/yison/w15/w15-228x228.webp', '46', '16', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('574', 'JOYROOM JR-T09 Ture Wireless Waterproof Bluetooth Earbuds', '1350', '7', 'Intelligent noise reduction
Bluetooth version: 5.0
IPX5 Waterproof
Touch control operation', 'https://www.startech.com.bd/image/cache/catalog/earbuds/joyroom/jr-t09-ture-wireless/jr-t09-ture-wireless-01-228x228.jpg', '90', '16', 'JOYROOM');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('575', 'RECCI REP-W58 Mars Series Wireless Earbuds', '1400', '5', 'Wireless version: V5.3
Charging port: Type-C
Earphone charging time: About 2h
Music time: About 4h', 'https://www.startech.com.bd/image/cache/catalog/accessories/bluetooth-spreaker/recci/rep-w58/rep-w58-228x228.webp', '21', '16', 'RECCI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('576', 'Baseus WM01 Enock True Bluetooth Earbuds', '1450', '9', '25 Hours music time with charging case
Bluetooth V.5, 5 Hr constant music time
Touch controls, Voice assistant
LDS antenna upto 15M', 'https://www.startech.com.bd/image/cache/catalog/earphone/baseus/wm01/wm01-black-01-228x228.jpg', '50', '16', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('577', 'QCY T5 Wireless Bluetooth Earbuds', '1450', '5', 'Bluetooth: Version 5.0
CVC 6.0 noise reduction technology
Battery Capacity (mAh): 40mAh
Charging Time: 1 Hour', 'https://www.startech.com.bd/image/cache/catalog/earphone/qcy/t-5/t5-04-228x228.jpg', '27', '16', 'QCY');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('578', 'Haylou X1 Neo True Wireless Earbuds', '1450', '3', '13mm hi-fi dynamic driver
0.06s low latency
Easy touch control
IPX4 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xiaomi/haylou-x1-neo/haylou-x1-neo-white-01-228x228.webp', '34', '16', 'Haylou');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('579', 'XINJI STONE M1 TWS Earbuds', '1550', '5', 'Surging stereo surround sound
Smart Touch control operation
Excellent battery life
One key for voice assistant', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xinji/stone-m1/stone-m1-black-01-228x228.webp', '11', '16', 'XINJI');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('580', 'Xtra Buds T3 True Wireless Bluetooth Earbuds', '1280', '6', 'Dynamic Driver Size: 10mm
Bluetooth Version: 5.3
Charging Interface: Type-C
Battery: Earbuds: 28mAh, Case: 250mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xtra/xtra-t3/t3-228x228.webp', '41', '16', 'Xtra');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('581', 'XTRA Buds T5 True Wireless Bluetooth Earbuds', '1599', '10', 'Dynamic Driver Size: 13mm
ENC(Environmental Noise Cancellation)
Smart Touch Control, Voice Assistant
Battery: Earbuds: 30mAh, Case: 250mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xtra/buds-t5/buds-t5-01-228x228.webp', '35', '16', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('582', 'XTRA T12 True Wireless Bluetooth Earbuds', '1299', '6', 'Dynamic Driver Size: 10mm
Bluetooth Version: 5.3
Charging Interface: Type-C
Battery: Earbuds: 30mAh, Case: 200mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xtra/t12/t12-01-228x228.webp', '43', '16', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('583', 'HOCO EW34 True Wireless Bluetooth Earbuds', '1500', '10', '400mAh, single headset 55mAh
BT V5.3 more steady and reliable
Calls / music time Up to 4 hours
Voice assistant support', 'https://www.startech.com.bd/image/cache/catalog/earbuds/hoco/ew34/hoco-ew34-228x228.webp', '67', '16', 'HOCO');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('584', 'Joyroom JR-T04s TWS Bluetooth Earbuds', '1550', '4', 'Intelligent Noise Reduction
Fully Compatible
Shocking Stereo
Bluetooth 5.0', 'https://www.startech.com.bd/image/cache/catalog/earphone/joyroom/jr-t04s/jr-t04s-228x228.jpg', '100', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('585', 'Hoco ES43 Lucky Sound TWS Mini Wireless Earbuds', '1600', '7', 'Good Sound Quality without Delay
Support leader-follower switching
LED Battery Level Indicator
Battery: case 400mAh, earbud 40mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/hoco/es43/es43-04-228x228.webp', '30', '16', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('586', 'Havit TW960 True Wireless Stereo Earbuds', '1550', '9', 'IPX4 waterproof
Utral light weight
Ergonomics design. Power Bass
Charging case battery: 300mAh', 'https://www.startech.com.bd/image/cache/catalog/earphone/havit/tw960/havit-tw960-wireless-earbuds-01-228x228.webp', '3', '16', 'Havit');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('587', 'Hoco EW46 TWS Bluetooth Earbuds', '1550', '9', 'Bluetooth 5.3, Chip: JL AC6983
Battery: 300mAh for charging case, 30mAh for earpieces
Use time up to 4 hours and standby time 150 hours
Supports master-slave switching', 'https://www.startech.com.bd/image/cache/catalog/earbuds/hoco/ew46/ew46-02-228x228.webp', '18', '16', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('588', 'Joyroom JR-TN1 ENC TWS Bluetooth Earbuds', '1590', '5', '8mm Graphene Speaker
ENC call noise reduction
Shell battery capacity: 600mAh
Material: ABS', 'https://www.startech.com.bd/image/cache/catalog/earbuds/joyroom/jr-tn1/joyroom-jr-tn1-earbuds-black-01-228x228.jpg', '32', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('589', 'WiWU Ghost TWS11 True Wireless Earbuds', '1590', '5', 'Pure bass true wireless stereo
Hands-free stereo calls
Bluetooth version: V5.3+EDR
Voice assistants supported', 'https://www.startech.com.bd/image/cache/catalog/earbuds/wiwu/ghost-tws11/ghost-tws11-03-228x228.webp', '87', '16', 'WiWU');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('590', 'IMILAB IMIKI MT1 TWS Bluetooth Earbuds', '1999', '5', '13mm Dynamic Driver
Wireless Gaming & Low Latency
300mAh big battery
IPX5 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/earbuds/imilab/imiki-mt1/imiki-mt1-01-228x228.webp', '39', '16', 'IMILAB');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('591', 'IMILAB IMIKI T13 TWS Bluetooth Earbuds', '1590', '7', '8mm Dynamic Driver
Voice Assistant
IPX5 Waterproof
480mAh Battery Capacity', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xiaomi/imilab-imiki-t13/imilab-imiki-t13-01-228x228.webp', '60', '16', 'IMILAB');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('592', 'Xiaomi Redmi Buds Essential True Wireless Earbuds', '1650', '9', 'Connectivity: Bluetooth 5.2
Bluetooth Range: 10m
IPX4 Water-resistance
Up to 18 hours Long Battery Life', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xiaomi/redmi-buds-essential-earbuds/redmi-buds-essential-earbuds-01-228x228.webp', '62', '16', 'Xiaomi');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('593', 'Hoco EW05 Plus ANC True Wireless Bluetooth Earbuds', '1650', '3', 'Bluetooth version: 5.1
Active Noise-Cancellation
Waterproof Standard: IPX-5
Built-in microphone', 'https://www.startech.com.bd/image/cache/catalog/earbuds/hoco/ew05-plus/ew05-plus-01-228x228.webp', '83', '16', 'Hoco');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('594', 'Dareu D3 Waterproof RGB Gaming TWS Earbuds', '1575', '4', 'Connection way: Bluetooth V5.0
IPX-4 Waterproof and sweatproof
Charging case capacity: 400 mAh
Open lid pairing', 'https://www.startech.com.bd/image/cache/catalog/earbuds/dareu/dareu-d3/d3-01-228x228.webp', '9', '16', 'Dareu');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('595', 'Joyroom Jpods Series JR-PB1 True Wireless Dual-Mic ENC Earbuds', '1550', '6', '4-mic ENC Calling Noise Cancellation
13mm Graphene Diaphragm, HiFi Super Bass Quality
Up to 32h Play Time with the Charging Case
IPX4 water Water Resistance, Withstands Rain, and Sweat', 'https://www.startech.com.bd/image/cache/catalog/earbuds/joyroom/jpods-series-jr-pb1/jpods-series-jr-pb1-01-228x228.webp', '7', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('596', 'Yison Celebrat W7 True Wireless Earbuds', '1675', '5', 'Bluetooth Version: V5.0
Interface: Type-C
Drivers: 6mm
Battery: Charging case 300 mAh, Earbuds 30mAh', 'https://www.startech.com.bd/image/cache/catalog/earbuds/yison/w7-earbuds/w7-228x228.webp', '64', '16', 'Yison');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('597', 'Baseus Bowie WM02 True Wireless Earbuds', '1695', '8', 'Built-in Hi-fi loudspeaker unit
Dual-channel low latency
Charging Case Indicator Light
Unique capsule-like design', 'https://www.startech.com.bd/image/cache/catalog/earbuds/baseus/bowie-wm02/bowie-wm02-black-228x228.webp', '65', '16', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('598', 'Baseus Encok W3 True Wireless Earphone White', '1699', '5', 'Built-in active noise cancellation
Ambient sound mode
LDS antenna upto 15M
Bluetooth 5.0 Supported', 'https://www.startech.com.bd/image/cache/catalog/earphone/baseus/encok-w3/encok-w3-01-228x228.webp', '14', '16', 'Baseus');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('599', 'Mibro S1 True Wireless Earbuds', '1699', '3', 'Bluetooth: 5.3
Drivers:	13mm
Waterproof Rating: IPX5
Battery:	 35mAh (each earbud)', 'https://www.startech.com.bd/image/cache/catalog/earbuds/mibro/mibro-s1/mibro-s1-02-228x228.webp', '96', '16', 'Mibro');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('600', 'Joyroom JR-TP2 True Wireless Gaming Earbuds', '1675', '3', 'Bluetooth version: V5.0, Speaker: Φ6mm
Battery capacity: Earbuds: 35mAh, Case: 35mAh
Music time: about 4.5H (80% volume)
Talk time: about 2.5H (80% volume)', 'https://www.startech.com.bd/image/cache/catalog/earbuds/joyroom/jr-tp2/jr-tp2-01-228x228.webp', '45', '16', 'Joyroom');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('601', 'IMILAB IMIKI T12 TWS Bluetooth Earbuds', '1650', '7', 'Transducer size: Φ6mm
Audio decoding: SBC, AAC
ENC Intelligent Technology
IPX5 Waterproof', 'https://www.startech.com.bd/image/cache/catalog/earbuds/xiaomi/imilab-imiki-t12/imiki-t12-01-228x228.webp', '45', '16', 'IMILAB');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('602', 'Lenovo Thinkplus Live Pods X20B TWS Earbuds', '1650', '10', 'Driver: 13mm HiFi Dynamic
Battery: 350 MAh
Charging Time: About 1.5 Hours
Interface: Type-C', 'https://www.startech.com.bd/image/cache/catalog/earbuds/lenovo/lenovo-thinkplus-x20b-1-228x228.webp', '75', '16', 'Lenovo');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('603', 'XTRA N20 Neckband Bluetooth Earphone', '490', '7', 'Driver Size: 10mm
Playing Time: Up to 4-5hours
Battery Capacity: 90mAh
Distance Range: 10-15meter', 'https://www.startech.com.bd/image/cache/catalog/gadget/neckband/xtra/n20/n20-228x228.webp', '62', '17', 'XTRA');
INSERT INTO "GADGETSHOP"."PRODUCT" VALUES ('604', 'Lenovo HE05X Bluetooth Neckband Earphone Black', '475', '5', 'Frequency response: 20Hz-20KHz
3D surround sound, 5.0 dual-ear chip
Integrated battery: 3.7V / 110mAh
IPX5 waterproof', 'https://www.startech.com.bd/image/cache/catalog/earphone/lenovo/he05x/he05x-01-228x228.jpg', '7', '17', 'Lenovo');

-- ----------------------------
-- Table structure for PRODUCT_CART
-- ----------------------------
DROP TABLE "GADGETSHOP"."PRODUCT_CART";
CREATE TABLE "GADGETSHOP"."PRODUCT_CART" (
  "QUANTITY" NUMBER VISIBLE NOT NULL,
  "CART_ID" NUMBER VISIBLE NOT NULL,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL,
  "PRODUCT_ID" NUMBER VISIBLE NOT NULL,
  "SUPPLIER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT_CART
-- ----------------------------

-- ----------------------------
-- Table structure for PRODUCT_FEATURES
-- ----------------------------
DROP TABLE "GADGETSHOP"."PRODUCT_FEATURES";
CREATE TABLE "GADGETSHOP"."PRODUCT_FEATURES" (
  "FEATURES" NUMBER VISIBLE NOT NULL,
  "PRODUCT_ID" NUMBER VISIBLE NOT NULL,
  "SUPPLIER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT_FEATURES
-- ----------------------------

-- ----------------------------
-- Table structure for PRODUCT_OFFER
-- ----------------------------
DROP TABLE "GADGETSHOP"."PRODUCT_OFFER";
CREATE TABLE "GADGETSHOP"."PRODUCT_OFFER" (
  "PRODUCT_ID" NUMBER VISIBLE NOT NULL,
  "SUPPLIER_ID" NUMBER VISIBLE NOT NULL,
  "OFFER_ID" NUMBER VISIBLE NOT NULL,
  "START_DATE" DATE VISIBLE NOT NULL,
  "END_DATE" DATE VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT_OFFER
-- ----------------------------

-- ----------------------------
-- Table structure for REVIEWS
-- ----------------------------
DROP TABLE "GADGETSHOP"."REVIEWS";
CREATE TABLE "GADGETSHOP"."REVIEWS" (
  "RATINGS" NUMBER VISIBLE,
  "COMMENTS" VARCHAR2(2048 BYTE) VISIBLE,
  "CUSTOMER_ID" NUMBER VISIBLE NOT NULL,
  "PRODUCT_ID" NUMBER VISIBLE NOT NULL,
  "SUPPLIER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEWS
-- ----------------------------

-- ----------------------------
-- Table structure for SHIPPING_METHOD
-- ----------------------------
DROP TABLE "GADGETSHOP"."SHIPPING_METHOD";
CREATE TABLE "GADGETSHOP"."SHIPPING_METHOD" (
  "SHIPPING_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73395".nextval NOT NULL,
  "SHIPPING_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "CHARGE" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SHIPPING_METHOD
-- ----------------------------

-- ----------------------------
-- Table structure for SUPPLIER
-- ----------------------------
DROP TABLE "GADGETSHOP"."SUPPLIER";
CREATE TABLE "GADGETSHOP"."SUPPLIER" (
  "SUPPLIER_ID" NUMBER VISIBLE DEFAULT "GADGETSHOP"."ISEQ$$_73387".nextval NOT NULL,
  "COMPANY_NAME" VARCHAR2(100 BYTE) VISIBLE,
  "HOUSE" VARCHAR2(100 BYTE) VISIBLE,
  "ROAD" VARCHAR2(100 BYTE) VISIBLE,
  "AREA" VARCHAR2(100 BYTE) VISIBLE,
  "CITY" VARCHAR2(50 BYTE) VISIBLE,
  "STATE" VARCHAR2(50 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "WEBSITE" VARCHAR2(1024 BYTE) VISIBLE,
  "PASSWORD" VARCHAR2(1024 BYTE) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SUPPLIER
-- ----------------------------
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('89', 'Dynabox', '846', '4 Northland Alley', 'San Felipe', 'Huanipaca', 'Potrerillos', 'rchattaway2g@cdbaby.com', 'moonfruit.com', '$2a$04$QARLD3RyeR91Iu8uf/GNvePqbDq7smsVfYOopKn7uVXUp/CJ5Cz1K', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('90', 'Einti', '379', '83 Twin Pines Park', 'Badou', 'Chino', 'Businga', 'pcranney2h@github.com', 'ezinearticles.com', '$2a$04$.vgY8tLyab69tXTdlUVVr.9jD106WvyVpD509xBCctr7uvSthc69K', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('91', 'Tagpad', '773', '97839 Moose Court', 'Bukui', 'Alcains', 'Birobidzhan', 'enussen2i@sbwire.com', 'apple.com', '$2a$04$dpHS8A/eiC5pgnu.DqrIF.uN1Y8lFqoAq31lqmUxLP1ZtDII.Mv2K', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('92', 'Layo', '933', '24 East Street', 'Peoria', 'Shibīn al Kawm', 'Yaroslavskaya', 'aknoble2j@reuters.com', 'google.es', '$2a$04$YGUZXr7y115Qi9TYuqn1mO2oC8xBIlMdCQ8.BrlMl/fVQ0nnanwaG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('93', 'Lazzy', '22288', '094 Sugar Avenue', 'Zhangduangu', 'Poshekhon’ye', 'Kozhanka', 'rclay2k@slate.com', 'histats.com', '$2a$04$SkV3MYLK1gZOsuPD4nZXwOQkJ9r5CBkslSgS1XMypHuG0IavjDPOq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('94', 'Flashspan', '0', '14 Mariners Cove Drive', 'Sembalunbumbung', 'Parse', 'Unecha', 'mfockes2l@whitehouse.gov', 'list-manage.com', '$2a$04$xjsXGfas2O/VmdbRd0H24eBfbDvXSOSBdlb/ELVY3s0mkQnllDYfq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('95', 'Midel', '44468', '00502 Kropf Court', 'Bayan Uula Sumu', 'Sa’erhusong', 'Ấp Tân Ngãi', 'mpollington2m@sakura.ne.jp', 'utexas.edu', '$2a$04$HeYhH8.eVuDrZcsYVUgf1Od0pAW07jVkqgYIKoqW1MnjEmRydZt0a', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('96', 'Edgeblab', '0097', '435 Declaration Parkway', 'Czarne', 'Samayac', 'Jilili', 'jballay2n@theguardian.com', 'springer.com', '$2a$04$vZEarpQYyRw9HhZvi5lmAem4weCMvBwmOKXOS35L6gFPqRMZ4FF8e', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('97', 'Reallinks', '9', '0 Prentice Road', 'Alemanguan', 'Kampong Chhnang', 'Pau', 'jburch2o@xrea.com', 'youtube.com', '$2a$04$UJynVX0mV701o8YQhHoWHOoxyvXoPQMqQZ7So0zrKko80qyCsLjKi', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('98', 'Gabspot', '5', '19 Evergreen Circle', 'Fargo', 'Quimper', 'Tanggeung Kolot', 'jstout2p@ftc.gov', 'whitehouse.gov', '$2a$04$ikEOFq/Gb0bFwb9IDCP0iOe/Mcz7xLB0VKgqGLnVlbbFpCWvP9z/i', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('99', 'Skiba', '75', '62377 Arizona Avenue', 'Huacrapuquio', 'Shiyan', 'Merke', 'bvasyunkin2q@sourceforge.net', 'hubpages.com', '$2a$04$fAvpitrn.1AgH3ALFlq1iOPX5R3HqOoibUugqSiz54LpkjRwC1aGa', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('100', 'Youspan', '413', '170 Truax Circle', 'Windsor', 'Zadvorsko', 'Masaran', 'dfarre2r@intel.com', 'pen.io', '$2a$04$DYo95J1SyOI78uORYXbB7OaYglY47dqBZQfsptlzmvNchK79mRTXm', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('101', NULL, NULL, NULL, NULL, NULL, NULL, 'c@gmail.com', NULL, '$2b$10$3N.VAnb1KOI1QRpMolUs8ezjl3lTlsekkwL004qGGwNsNchmQXymq', 'a', 'b');
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('102', NULL, NULL, NULL, NULL, NULL, NULL, 'ac@gmail.com', NULL, '$2b$10$JfLLDrsFCnh4wCzRfh6a1e2kLe/5oOirgNw84uMZ1XLYYhpX85vMe', 'acd', 'bed');
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('1', 'Oba', '644', '33871 Alpine Way', 'Denver', 'Shawnee Mission', 'Umburarameha', 'eocurneen0@lulu.com', 'buzzfeed.com', '$2a$04$IWWLQ7qCaWqc.ajxvUgOoO8YaOb70en8VOn88tmIi6mszpjzofBT.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('2', 'Lazz', '648', '7 Del Mar Terrace', 'Geji', 'Taxisco', 'Hetai', 'ggetcliff1@51.la', 'sakura.ne.jp', '$2a$04$50/n41mh0HiE63BmdmDeyugO8CqiCR55ASPjFZFugUe4bOq8itLfC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('3', 'Quinu', '63423', '9 Valley Edge Alley', 'Yaozhou', 'Makuyuni', 'Xiaohe', 'ddobbyn2@google.com', 'cargocollective.com', '$2a$04$/2ktJe4w.RKwtnIRwZY9RebBeKZ/3aMG5HcEMNo0sDWRZjd3vq5Vi', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('4', 'Browsecat', '5795', '046 Melby Center', 'Newton', 'Jinping', 'Batanghari', 'rbrimacombe3@com.com', 'indiegogo.com', '$2a$04$qYFWKDrUaWw2nJi2kb0wpO8CHjMqEBTx3HiJ6n7jefphmliNOyx6m', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('5', 'Yabox', '26', '62 Carberry Parkway', 'Sumilao', 'Bila Tserkva', 'Shuihu', 'abankhurst4@typepad.com', 'independent.co.uk', '$2a$04$WoatY0lxLIYQQLNbcBmKG.WhaDk3.D1lldimvtKmtflq.D1K6aNsu', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('6', 'Devcast', '1467', '288 Florence Pass', 'Seredeyskiy', 'Roissy Charles-de-Gaulle', 'West End', 'mpedrocco5@yale.edu', 'unc.edu', '$2a$04$fAXzn9ns2N9OcfOjoK5HyusHJWx/UOBCTpjyxKWh3AI.R4ZDM4eYW', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('7', 'Mymm', '6026', '80 Sloan Lane', 'Chadian', 'Gwaram', 'Xinmin', 'ascandrick6@ucoz.ru', 'naver.com', '$2a$04$7DfgDXN2z0UELHCim4MrVOcznJ/Ljm7nBE.qMCbVr7kIRe0uvcMJG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('8', 'Rhyloo', '94', '85 Mcbride Alley', 'Longwu', 'Bieto', 'Khinjān', 'sdetoc7@microsoft.com', 'webnode.com', '$2a$04$laihnG5oMOKza6aUTvHf/OVm4Wvcs43N6.8sBGnkTbpBtPsAMcYYi', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('9', 'Fliptune', '060', '2 Forster Park', 'Montpellier', 'Evinayong', 'Tukbur', 'kgoaks8@digg.com', 'aol.com', '$2a$04$2XztG2280My5Nd2TsejMJ.WBkPrL4xQWmg56.spgriPcwZpYINwTG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('10', 'Skippad', '77', '0173 Daystar Center', 'Yuekou', 'Huangcai', 'Mojosari', 'ejouhandeau9@mtv.com', 'businessinsider.com', '$2a$04$0btPMpkfcWVHkic1ipLu.OhtjOp.5AftRStyls9osUP8KurVhEEGa', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('11', 'Dynazzy', '7', '94 Butterfield Point', 'Chivhu', 'Katrineholm', 'Cela', 'fsmallacombea@prlog.org', 'examiner.com', '$2a$04$wMnEJfCDpEGCD9NkEq2fTe.TGPDRxjkmPX3igQuZ/5ZnrSCwoSV3a', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('12', 'Kwimbee', '59', '8165 Oakridge Plaza', 'Chamni', 'Cirangkong', 'Xinji', 'wflukesb@g.co', 'istockphoto.com', '$2a$04$aR0NGISNZFGMatu/jyJT6e4q7TsrbfEhUtOl5yquGJLUHL70bQJeC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('13', 'Flashset', '5844', '7 Garrison Court', 'Luoshe', 'Oganlima', 'Hedong', 'jpinec@mail.ru', 'blinklist.com', '$2a$04$0OjiA88YvMgrSNxCudO2Q.hv0fm6u.LkO.3nEgFUldZXfTBoyfQ1i', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('14', 'Pixope', '19684', '7 Portage Way', 'Rixi', 'Wanghu', 'Sedayulawas', 'pdomsallad@g.co', 'psu.edu', '$2a$04$.hjXiW8.2i/G9oF.ixkLw.70LqlRyF0rnPFV7a9eIRiS6vGl31nXG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('15', 'LiveZ', '26', '836 Holy Cross Court', 'Real', 'Banyubang', 'Shanghuang', 'cbucklese@live.com', 'statcounter.com', '$2a$04$FK23wU73D6UNzrdcy5ixg.1VwCsJLz4B/6UiCnrLlNu54qoefAQNS', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('16', 'Divanoodle', '06', '0794 Chive Court', 'Tawali', 'Pingtang', 'Itaparica', 'rcallumf@about.com', 'oracle.com', '$2a$04$Befxj5qENrm0i5w393tHEOeu/F3x07BhFDv5GGJ6kw8d4oo543DoS', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('17', 'Gigaclub', '4257', '7832 Morningstar Point', 'Bù Đốp', 'Forestville', 'Tuanjie', 'mbruckentalg@reuters.com', 'tripadvisor.com', '$2a$04$ZKqk.CHhhQ9qnso0Dsq5jeTOvhKcxueQxdTidyPsxd6l2Ic0KlcGO', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('18', 'Devshare', '6756', '408 Swallow Hill', 'Belén Gualcho', 'Sijunjung', 'Nestório', 'pwesternh@netscape.com', '123-reg.co.uk', '$2a$04$gI.ueJ/1QSY/UACbBFzgGeqLAhPpr8nCXoVXOI2nVVx6BmBicK4BO', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('19', 'Miboo', '97448', '388 Debs Trail', 'Profítis Ilías', 'Gazojak', 'Galamares', 'raxfordi@comcast.net', 'disqus.com', '$2a$04$Xk2F6AACMR4k/lOKLiwqte1KBWIaWEc.yJCgFqhayDaErV0sQMsl6', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('20', 'Kazio', '55', '6 Del Mar Way', 'Bentar Girang', 'Mogapinyana', 'Chantal', 'thenrysj@icio.us', 'utexas.edu', '$2a$04$MC3mbeeIPvhg/RM2mHTVhu9/FyHW/P8.JWx3nbe6tS9B1LSNlfQKe', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('21', 'Twitterwire', '78033', '34311 Southridge Road', 'Ubaitaba', 'Xiaojing', 'Igrim', 'glingerk@weibo.com', 'nytimes.com', '$2a$04$4dolOH2WyWylRgVQhzQkVeXJIxng3syLoFQAlh/RLhG947TBsN582', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('22', 'Zazio', '31063', '5630 Burrows Point', 'Plužine', 'Třemošnice', 'Petushki', 'gmacallenl@theguardian.com', 'oracle.com', '$2a$04$x/pnalGmiuGGcmUCdqXDpeu8enTRm0FY9yGlWr7OTE7jsThqeyD/2', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('23', 'Skinder', '1', '0652 Rigney Street', 'Aix-les-Bains', 'Guangdu', 'Oslo', 'mfeathersm@nature.com', 'seesaa.net', '$2a$04$l7dAEyTRpUSXfI4yQrsOwuv26paxjCXXsli6shfVf11a2mAS1FLcS', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('24', 'Brightbean', '7', '0 Bayside Place', 'Xuancheng', 'Cagnes-sur-Mer', 'Gastello', 'ldowreyn@flickr.com', 'nsw.gov.au', '$2a$04$OZiOdTjPC.vTmuf3xa4UtO1HEs939C1QQp.UlrON2wY6hxARMCQ9.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('25', 'Wikibox', '6', '91 Ilene Road', 'Sokol', 'Kaset Sombun', 'Dal’nerechensk', 'scrichleyo@amazon.com', 'arstechnica.com', '$2a$04$yWge2GhBChK3qatVrKQFf.PjG4LYLSDvVcUN1ReK59.NkLzhLBDo.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('26', 'Zazio', '9900', '7693 Corben Drive', 'Kishiwada', 'Shuya', 'Andongwei', 'hcroanp@imageshack.us', 'mediafire.com', '$2a$04$DPUeDff0yN38jgXoLhlAj.0Vv.6Ws3t9eACR76WlbYavuttbmisf2', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('27', 'Browsetype', '688', '9525 Iowa Parkway', 'Sainte-Marthe-sur-le-Lac', 'Kolomak', 'Nam Đàn', 'tarmsbyq@instagram.com', '163.com', '$2a$04$hTFfU201..yjhBgjuZrJ0O/GfQ2bR9Oyn1y6aeYezSaRmYu3k2AXq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('28', 'Cogidoo', '658', '2 Ryan Pass', 'Yinjiacheng', 'Huili', 'El Peñón', 'wwynrehamer@soup.io', 'wsj.com', '$2a$04$iwj/V67zpsxBlkYLVBTqcuQY1n7psbuLTCTI8L8B7VO4ZCHSFPXTK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('29', 'Fanoodle', '03358', '46 Anzinger Center', 'Solna', 'Córdoba', 'Hurghada', 'jmulvins@wunderground.com', 'i2i.jp', '$2a$04$2VW30crebPasgEO24J495uX0.LwWtKKwzs3vqmPnnCxQ2.c57xQla', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('30', 'Eamia', '0', '18374 Ryan Terrace', 'Täby', 'Kalutara', 'Daja', 'fdonisthorpet@geocities.jp', 'a8.net', '$2a$04$Pu2Rtz/RwZy8ZWt8xADTxupWELeeSzPjJqLaIn5geMAeSdSWU5IkG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('31', 'Vitz', '90', '14 Buell Place', 'Novosin’kovo', 'Trakan Phut Phon', 'Carrières-sur-Seine', 'cscarrisbricku@dedecms.com', 'sfgate.com', '$2a$04$GTpJ98tlrZXw0Q/xHuUsde5mFDpziISFjL1wQEtUlIXDTWJ.zWUCu', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('32', 'Trupe', '5832', '398 Anthes Pass', 'Murom', 'Auxerre', 'Guyancourt', 'vfoxallv@networksolutions.com', 'diigo.com', '$2a$04$UDjqL.uLMq7ZEas2tnUN9OQqFHkXIFerTjO4qhGOyOQ4hWR1LqfJS', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('33', 'Agimba', '49728', '76248 South Parkway', 'Bressuire', 'Chīchāwatni', 'Lawesigalagala Timur', 'icrowestw@stumbleupon.com', 'netlog.com', '$2a$04$wgLvUxa1Q2ZitsFzPuYISueogc5HjcqU0Udc4jJf0jjtzhUqx7bDC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('34', 'Kayveo', '3063', '6795 Corben Crossing', 'Naga', 'Huantuo', 'Sindou', 'msorrox@blogtalkradio.com', 'posterous.com', '$2a$04$j3xAN5wunxp5mhgyzIajBeDSnzB/rITEhxRWiJFj118c0xxU7hDHe', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('35', 'Wikibox', '4585', '357 Rusk Circle', 'Yatsuomachi-higashikumisaka', 'Hongtang', 'El Tejocote', 'ikeamy@bloglovin.com', 'ovh.net', '$2a$04$aAJM8zybCWdVQ9I6JYr7V.FnpIGE0gBFe2bsW35mmqIUwshwoMbjy', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('36', 'Wordpedia', '98', '3 Mendota Circle', 'Fushan', 'Kanaya', 'Vigo', 'pmacclayz@facebook.com', 'cdbaby.com', '$2a$04$iFRq5T1vGLyKMwG4WqMASe4agDoXtWLyXfhz0holQcvVAw2JygBOa', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('37', 'Skipstorm', '914', '976 Dahle Center', 'Bang Rak', 'Fudian', 'Orlová', 'kjaquest10@ning.com', 'yelp.com', '$2a$04$U2TQXUmHyPaBCP1TOBaILOj9xRThlDtF7VhieLvwrcyUDNYjTkKzq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('38', 'Innojam', '8', '33480 International Parkway', 'Asahi', 'N’dalatando', 'Suishan', 'nbraley11@ft.com', 'privacy.gov.au', '$2a$04$FxIeeRi3XymkCiXlgLnNIuigw8SnS7m5fQ5Fv4Lzk0tNSFkHrkpTq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('39', 'Yoveo', '574', '34 Fallview Terrace', 'Don Chedi', 'Obsza', 'Zaytā', 'jdumelow12@chicagotribune.com', 'jugem.jp', '$2a$04$oFSy8xgRES3kvPJleeLlbesSkNSFOLAEEDlCtLwWx.pmVAwRIwWCC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('40', 'Brainsphere', '19458', '02 Comanche Pass', 'Mandeni', 'Yangzhou', 'Yamoussoukro', 'tgilhool13@storify.com', 'shop-pro.jp', '$2a$04$iKbisfBND9hTg8XgmYrDeeZqQ6dDMCa0DiwTtUnPbJ/w05d1WJugK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('41', 'Roombo', '4', '6713 Armistice Road', 'Cumaná', 'Pombal', 'Maochen', 'doattes14@columbia.edu', 'china.com.cn', '$2a$04$RKs2fu6aH59pRN2q0AGuke1GM0Uobfpo4cbXRW1CXjzhghjwiFKvK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('42', 'Yata', '225', '62033 Fairview Point', 'Dampit Satu', 'St. Anton an der Jeßnitz', 'La Rochelle', 'cduham15@sourceforge.net', 'rakuten.co.jp', '$2a$04$TmnVRABOU1sWisI28MKsiO32fdTPOXQG/qJDALK5g9KuEF5138Y36', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('43', 'Trupe', '4837', '030 Springview Avenue', 'Oenaik', 'Carregado', 'Јегуновце', 'debbetts16@reverbnation.com', 'bloglines.com', '$2a$04$w0ektk3kaDffzzbeBINu6.wDztA5.xTjS6G6uzzKl6/22pPp0.Cp6', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('44', 'Thoughtsphere', '3', '850 Briar Crest Court', 'Yaojiagou', 'Makanya', 'Lordegān', 'scholwell17@mit.edu', 'cnn.com', '$2a$04$GDlNf2u1qqHGlih7rA1O5OUjLHGZcU2IyTK5WkmxaoH2wmbRpc1Oa', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('45', 'Zava', '257', '891 Moland Hill', 'Aqtöbe', 'San Pedro', 'Huangpu', 'mverne18@sfgate.com', 'a8.net', '$2a$04$5cAzm67rfsykzRUPP5UL4ulk8zu7ff64/dqg28RRer7NmnOKbmMNW', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('46', 'Devpoint', '2', '36783 Sunfield Trail', 'Nansheng', 'Tabuk', 'Pljevlja', 'ggarrard19@upenn.edu', 'gmpg.org', '$2a$04$0zhlLrcMQrwoTWNsjh7gE.CBpePYMGGSZI8WjnfsuDWR7sn5LJGKC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('47', 'Divanoodle', '94624', '96 Mayer Hill', 'Xiage', 'Turbo', 'Pining', 'cback1a@usgs.gov', 'springer.com', '$2a$04$B.5DJkntRTqxvP7tq9RyQuqatAegD/4ZmA8zGerx9A.Rtnh.ls/mG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('48', 'Quimm', '941', '3 Melrose Parkway', 'Ishigaki', 'Qaţanah', 'Landskrona', 'bledwith1b@tripod.com', 'yellowbook.com', '$2a$04$LfOsNe1TmMAfU/ES4DSJYeArts1/7/e2Ccy9XIuJEB5B6jjZ9ILIm', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('49', 'Zoozzy', '3', '790 Cottonwood Lane', 'Ampera', 'Sasar', 'Khokhryaki', 'pparade1c@weebly.com', 'microsoft.com', '$2a$04$xry/ktMXsCG/hYE6mbmi6.I/7LyC16bWpKfvULLetnowVMkB6jgeq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('50', 'Vinder', '39', '7 Barby Crossing', 'Terney', 'Hyrynsalmi', 'Aso', 'srochford1d@alexa.com', 'weibo.com', '$2a$04$6PelLu15RSqpDmB9en5pIujOf.Il.uNoCTr9ziyeblGbk.H5pZqGe', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('51', 'Linklinks', '5099', '0613 Huxley Point', 'Houmt Souk', 'Jand', 'Qingzhou', 'bast1e@cbc.ca', 'php.net', '$2a$04$9b4MkTPN18//0KSk84MCjue6llIsS9ZYXGisjZBpx9.IBLPAqnooG', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('52', 'Vinder', '59', '8118 Warrior Crossing', 'Biryulëvo', 'Guanambi', 'Naawan', 'hbrauner1f@icio.us', 'vkontakte.ru', '$2a$04$M25dgXNEaN9ZrR37dmI2c.EdaxvI/flYPZNmx4k9ozTw1zkWjnGwe', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('53', 'Wikizz', '13909', '65019 Washington Court', 'Bayang', 'Miechów Charsznica', 'Jieting', 'lpillington1g@jalbum.net', 'tmall.com', '$2a$04$Cyj.rXc.w7.xUG1TIfahUO.3JpTPV5TDEKruYnCU6ik2qOehAFXcC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('54', 'Dynazzy', '600', '7 Northview Pass', 'Hartford', 'Iogach', 'Tadianjie', 'kmustill1h@unicef.org', 'ifeng.com', '$2a$04$zRGyJtoxsagVl2WhBOMoP.n8z4kgQC20RFHNhRDGHetUQCYdN3dy.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('55', 'Dabjam', '13437', '30 Rowland Plaza', 'Bayan Qagan', 'Lahān', 'Starobaltachevo', 'aoakton1i@ocn.ne.jp', 'soundcloud.com', '$2a$04$XD8k/mAaOFUqnsylsAHY0eSfQojPlMKg/MdoTtRqFuvv/DXjf.zmm', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('56', 'Thoughtbridge', '45', '15 Packers Plaza', 'Umbuldamar', 'Brive-la-Gaillarde', 'Dambarta', 'divoshin1j@github.com', 'jalbum.net', '$2a$04$CK0oFggUEzj4jWqOoRzOcObIg7kgFIf0dgNhMqnr3n./Fpzi0K8My', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('57', 'Feedfish', '0', '073 Arkansas Road', 'Vittoriosa', 'Puente Nacional', 'Idenao', 'agoudard1k@marketwatch.com', 'answers.com', '$2a$04$Tgy19I6kwNh9nANzkzPsJucNl/2u7Loq3zXnG/izK3mKXgsu4LGtm', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('58', 'Gigaclub', '32', '16478 Walton Circle', 'Issy-les-Moulineaux', 'Lubukalung', 'Tucson', 'pstorkes1l@xinhuanet.com', 'npr.org', '$2a$04$4zkb32mUyVQGrwfxzx9LIetM8a9Qnf3OLnJdr/2s0PC94SQdqAKMi', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('59', 'Demivee', '6', '5064 Anthes Crossing', 'Paya Dapur', 'Siqiao', 'Jieshipu', 'phalfhead1m@about.me', 'istockphoto.com', '$2a$04$GUhyPFLztZkiYErZjG4pqekiPknY9gUi4yENcCxRdwc9jfybWZblK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('60', 'Skimia', '4', '0171 Northview Alley', 'Waldbillig', 'Zabrze', 'Belverde', 'skenworthy1n@blog.com', 'yale.edu', '$2a$04$pwHJQXj2WK.NbS2sznAnWuQe6WQIIrbzCgBYGBWLk2LqkKrB1YIF6', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('61', 'Devbug', '43860', '82805 Montana Park', 'Menzel Bourguiba', 'Matmata', 'Oelaba', 'famy1o@sogou.com', 'shutterfly.com', '$2a$04$ofGr0jc8jRCBBEYR1mqkz.Cg8GZeFl.oVqVuGnq3utwhzQoqYXMu.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('62', 'Brainlounge', '495', '3 Meadow Ridge Park', 'Vítkov', 'Pendolo', 'Taroudant', 'omoores1p@etsy.com', 'pbs.org', '$2a$04$qOHrCEoyM/8/Jpv4h2RbkOjC4ay0/NUyPGGQmKT7nUeDNAwu6Aa6K', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('63', 'Twinder', '33', '722 Duke Crossing', 'Sumiainen', 'Colorado Springs', 'Moriguchi', 'pconant1q@goo.ne.jp', 'apple.com', '$2a$04$MlXPgQLweAq9Ptdbfmf5A.sN3uuXLAUc4WhTKVMQ4bszEd9Winw7a', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('64', 'Pixoboo', '312', '82 Green Center', 'Empedrado', 'Ficksburg', 'Nynäshamn', 'hbulpitt1r@ustream.tv', 'purevolume.com', '$2a$04$OA93GpJLdikP6nT9FTrS9.5A/MChIGn19QHJILmiuxRsxjrO/NAxq', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('65', 'Jabbersphere', '2877', '18846 Sullivan Way', 'Tours', 'Moyamba', 'Pangai', 'kcatlow1s@list-manage.com', 'unc.edu', '$2a$04$ym8dgqPjhsXFgBGu2yz8RObh5bEMaLiW9AIwjX.m2Nzh9zmgB.Ae6', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('66', 'Eidel', '991', '8678 Grayhawk Drive', 'Huangtukuang', 'Jinhaihu', 'Kazuno', 'lmaliphant1t@dailymail.co.uk', 'barnesandnoble.com', '$2a$04$Nr/bVduxAZIr6rbk/M/g0uag/Oy7IoIQz.lyWmi12SyaqoJP4NAm6', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('67', 'Twitterbridge', '9562', '5677 Stoughton Parkway', 'Livramento do Brumado', 'Tarqūmyā', 'Cinunjang', 'gbaglan1u@adobe.com', 'forbes.com', '$2a$04$58QMk5ai87dbrwUP2VOdF./seBraS7iAt7Abxi79RebWqyIDefax2', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('68', 'Oyonder', '79', '7238 Eagle Crest Pass', 'Bambang', 'Pudasjärvi', 'Ojos de Agua', 'efarnworth1v@ted.com', 'zdnet.com', '$2a$04$Iqc50f6LwQLGfY9J22HxI.mGPaLyKjI7.jF07moAHrsqFEauKX9pi', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('69', 'Quaxo', '15', '47 Carpenter Avenue', 'Yuexi', 'Kota Bharu', 'Sanlanbahai', 'tantonetti1w@eventbrite.com', 'delicious.com', '$2a$04$o4O5TM8dCA.WwcM.xFLXL.lAWuNTz6GE8spC7URJ.xQhGdLwFbJJK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('70', 'Dynabox', '30929', '24542 Manley Pass', 'Kungshamn', 'Faranah', 'Ning’an', 'tnickless1x@theglobeandmail.com', 'deliciousdays.com', '$2a$04$Hchlo0ZtOSTxwSRESXoDPOu3LJJJfTCS1NomW5s85Dgrs.22KI9fu', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('71', 'Eabox', '14', '6409 Pennsylvania Place', 'Carquefou', 'Basail', 'Rāwandūz', 'tmajury1y@wikia.com', 'buzzfeed.com', '$2a$04$F.FnVmXvUruCj9SRV4IAa.0Q1pBioPWXf8gger4evKC0PhXpE5dLe', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('72', 'Chatterbridge', '304', '42852 Doe Crossing Hill', 'Sōja', 'Vlasenica', 'Anseong', 'achomley1z@slideshare.net', 'xing.com', '$2a$04$tkxMDSYxgRlI0RiVGSnX4OagQCepP1gufR66fxklolNJE2ZXuXjb.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('73', 'Trilia', '83907', '3992 Pepper Wood Street', 'IJmuiden', 'Aripuanã', 'Yingta', 'qdeavall20@cnbc.com', 'phoca.cz', '$2a$04$RpaP2f.ZyTh8cVclnSSbl.0mqAZhmhysjlbD7RBWveUP0Nye2lV8G', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('74', 'Eayo', '52', '028 Grover Lane', 'Zhongxian', 'Batuan', 'Lishu', 'wdudek21@forbes.com', 'msn.com', '$2a$04$akXzdIokSj33BQH9g45CJ.YKF3XwIkiQfmAVRTd/Kp.BuZxLOWWd2', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('75', 'Shuffletag', '6107', '3083 Blue Bill Park Circle', 'Daszewice', 'Zengji', 'Orzech', 'dferreli22@cnet.com', 'npr.org', '$2a$04$GB1h/x0Hrh2w4SEaNo73UeJs7zBE1xty5.J770Wkd/QKbXYGjx/3O', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('76', 'Zooveo', '777', '039 Troy Terrace', 'Itagibá', 'Kosów Lacki', 'San Pedro', 'dshirrell23@tamu.edu', 'npr.org', '$2a$04$akypJ01OPf0d8avJpG78oOaKVBrjWjc1fRLmsy3BS4SsIqWrm2qbW', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('77', 'Rhycero', '307', '7668 Donald Hill', 'Pedraza La Vieja', 'Naagas', 'Pidigan', 'rjouannisson24@fema.gov', 'imgur.com', '$2a$04$4LAyzyBKD4W/H/cYhYyZjOHYDwtHMMCaHDvqrRREH0uH2NE..jUr.', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('78', 'Livepath', '72', '62 Karstens Street', 'Bošovice', 'Chōfugaoka', 'Lukou', 'yscriver25@mozilla.org', 'merriam-webster.com', '$2a$04$yy.s48GnM4A6rjexxNJ24uSy81yLXiEqWFcVMiwFQWHxwPzQLj5ZK', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('79', 'Reallinks', '711', '50 Pierstorff Park', 'Železniki', 'Tiehe', 'Kisela Voda', 'ldikles26@intel.com', 'nih.gov', '$2a$04$W9aiea3kyKGmKyAVk0Xq6eD9Am9.AUWy7.Wcx6NT7sdBEdsw5AJ6i', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('80', 'Podcat', '8', '17689 Division Crossing', 'Druju', 'Chunyang', 'Netolice', 'mstachini27@blogtalkradio.com', 'state.gov', '$2a$04$V4PRA5xBETTqrKju0rvh2unQX94wEx.IbtD4cWZRl7//K2gD79APC', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('81', 'Rhyloo', '95', '791 Ludington Alley', 'Jiuhua', 'Jianxin', 'Mādārīpur', 'pingleton28@networkadvertising.org', 't-online.de', '$2a$04$BOJ.yv6Dh/WygCoHVIFyIelCZK8r5scVN0BnV15ybFAV6TWaqSLpm', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('82', 'Teklist', '67', '621 David Pass', 'Shanlian', 'Shufeng', 'Sīnah', 'hczyz29@mapquest.com', 'wordpress.org', '$2a$04$VvzjhXErJ.lJ1YlWNyYB.e8h7YFiYLPMRzRgN1WaMYlA4rrKD.hha', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('83', 'Quinu', '37492', '840 Cascade Place', 'Yushan', 'Orange Walk', 'Štore', 'rdemogeot2a@tiny.cc', 'hubpages.com', '$2a$04$iLGa0jaZZyqSG69fK/ZBvO70lnt9frxHAlSZu3c2T9E3xNoCx9Dma', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('84', 'Ailane', '80', '29553 Atwood Drive', 'Beauvais', 'Kungälv', 'Miyako', 'cbrayne2b@geocities.jp', 'berkeley.edu', '$2a$04$J0dpPsbqp6a1qTPMST4QFe52K.m48PI5CpDtr7j15pY8FYc2YVNnO', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('85', 'Tagchat', '7', '2 Jana Circle', 'Varpaisjärvi', 'Solotcha', 'Kristiansand S', 'hdooher2c@imgur.com', 'nymag.com', '$2a$04$9M01/q/2iDlVTNgv8uf9Buu4TlmJ9Env0RcruricM1GNZyBoHOHCW', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('86', 'Brainlounge', '868', '32843 Hayes Center', 'Kalemie', 'Nürnberg', 'Araranguá', 'aribbon2d@google.ru', 'europa.eu', '$2a$04$eMd18mf7S8UY/SP8c7uEuO2ToX6gyNA1Kwh3.f3ZuZsiK2T1dAW6i', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('87', 'Voonyx', '17', '84060 Cherokee Junction', 'Batulayang', 'Palmeira', 'Cibuah', 'pmaud2e@youku.com', 'sogou.com', '$2a$04$l7.j1YWWG1VD20M0gOImMOf6.WiyBNjoUxQ1OMRVkHktCW2CKvNUS', NULL, NULL);
INSERT INTO "GADGETSHOP"."SUPPLIER" VALUES ('88', 'Blogpad', '67181', '28 Veith Trail', 'Bendo', 'Jundiaí', 'Huangbei', 'dwestwell2f@slashdot.org', 'wikispaces.com', '$2a$04$Z6ta2zF25OBNFYa4FdTDPuZ3XeBBbEd.AXXbmMZ3T1t2qjDv7zce6', NULL, NULL);

-- ----------------------------
-- Function structure for CUSTOMER_EMAIL_VALIDATION
-- ----------------------------
CREATE OR REPLACE
FUNCTION "GADGETSHOP"."CUSTOMER_EMAIL_VALIDATION" AS
BEGIN 
 SELECT DISTINCT CUSTOMER_ID INTO CID 
 FROM CUSTOMER C
 WHERE C.EMAIL=CUSTOMER_EMAIL;
 IF CID IS NOT NULL THEN 
 MSG:='TRUE';
 ELSIF CID IS NULL THEN 
 MSG:='FALSE';
 END IF;
 RETURN MSG;
EXCEPTION 

WHEN NO_DATA_FOUND THEN 
	MSG:='FALSE';
	RETURN MSG;
WHEN OTHERS THEN 
MSG:='DATABASE ERROR';
RETURN MSG;

END;
/

-- ----------------------------
-- Function structure for SUPPLIER_EMAIL_VALIDATION
-- ----------------------------
CREATE OR REPLACE
FUNCTION "GADGETSHOP"."SUPPLIER_EMAIL_VALIDATION" AS
BEGIN 
 SELECT DISTINCT SUPPLIER_ID INTO SID 
 FROM SUPPLIER S
 WHERE S.EMAIL=SUPPLIER_EMAIL;
 IF SID IS NOT NULL THEN 
 MSG:='TRUE';
 ELSIF SID IS NULL THEN 
 MSG:='FALSE';
 END IF;
 RETURN MSG;
EXCEPTION 

WHEN NO_DATA_FOUND THEN 
	MSG:='FALSE';
	RETURN MSG;
WHEN OTHERS THEN 
MSG:='DATABASE ERROR';
RETURN MSG;

END;
/

-- ----------------------------
-- Sequence structure for ISEQ$$_73382
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73382";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73382" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73387
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73387";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73387" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73392
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73392";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73392" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73395
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73395";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73395" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73398
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73398";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73398" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73403
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73403";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73403" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73406
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73406";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73406" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73409
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73409";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73409" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73413
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73413";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73413" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_73416
-- ----------------------------
DROP SEQUENCE "GADGETSHOP"."ISEQ$$_73416";
CREATE SEQUENCE "GADGETSHOP"."ISEQ$$_73416" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CART" ADD CONSTRAINT "SYS_C007758" PRIMARY KEY ("CART_ID", "CUSTOMER_ID");

-- ----------------------------
-- Checks structure for table CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CART" ADD CONSTRAINT "SYS_C007756" CHECK ("CART_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CART" ADD CONSTRAINT "SYS_C007757" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CATEGORY
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CATEGORY" ADD CONSTRAINT "SYS_C007801" PRIMARY KEY ("CATEGORY_ID");

-- ----------------------------
-- Checks structure for table CATEGORY
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CATEGORY" ADD CONSTRAINT "SYS_C007799" CHECK ("CATEGORY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CATEGORY" ADD CONSTRAINT "SYS_C007800" CHECK ("CATEGORY_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CUSTOMER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007743" PRIMARY KEY ("CUSTOMER_ID");

-- ----------------------------
-- Uniques structure for table CUSTOMER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007744" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007745" UNIQUE ("PASSWORD") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table CUSTOMER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007736" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007737" CHECK ("LAST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007740" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CUSTOMER" ADD CONSTRAINT "SYS_C007741" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CUSTOMER_CONTACT_NO
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO" ADD CONSTRAINT "SYS_C007772" PRIMARY KEY ("CONTACT_NO", "CUSTOMER_ID");

-- ----------------------------
-- Checks structure for table CUSTOMER_CONTACT_NO
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO" ADD CONSTRAINT "SYS_C007770" CHECK ("CONTACT_NO" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO" ADD CONSTRAINT "SYS_C007771" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table OFFER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007769" PRIMARY KEY ("OFFER_ID", "START_DATE", "END_DATE");

-- ----------------------------
-- Checks structure for table OFFER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007764" CHECK ("OFFER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007765" CHECK ("START_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007766" CHECK ("END_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007767" CHECK ("PERCENT_DISCOUNT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."OFFER" ADD CONSTRAINT "SYS_C007768" CHECK ("OFFER_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ORDERS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007782" PRIMARY KEY ("ORDER_ID", "CART_ID", "CUSTOMER_ID");

-- ----------------------------
-- Checks structure for table ORDERS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007774" CHECK ("ORDER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007775" CHECK ("ORDER_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007776" CHECK ("HOUSE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007777" CHECK ("CITY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007778" CHECK ("STATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007779" CHECK ("CART_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007780" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007781" CHECK ("SHIPPING_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ORDER_TRACKING
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007790" PRIMARY KEY ("TRACKING_ID", "ORDER_ID", "CART_ID", "CUSTOMER_ID");

-- ----------------------------
-- Checks structure for table ORDER_TRACKING
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007785" CHECK ("TRACKING_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007786" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007787" CHECK ("ORDER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007788" CHECK ("CART_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007789" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PAYMENT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007797" PRIMARY KEY ("PAYMENT_ID", "ORDER_ID", "CART_ID", "CUSTOMER_ID");

-- ----------------------------
-- Checks structure for table PAYMENT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007792" CHECK ("PAYMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007793" CHECK ("METHOD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007794" CHECK ("ORDER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007795" CHECK ("CART_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007796" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007808" PRIMARY KEY ("PRODUCT_ID", "SUPPLIER_ID");

-- ----------------------------
-- Checks structure for table PRODUCT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007803" CHECK ("PRODUCT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007804" CHECK ("TITLLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007805" CHECK ("PRICE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007806" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007807" CHECK ("CATEGORY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCT_CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007824" PRIMARY KEY ("CART_ID", "CUSTOMER_ID", "PRODUCT_ID", "SUPPLIER_ID");

-- ----------------------------
-- Checks structure for table PRODUCT_CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007819" CHECK ("QUANTITY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007820" CHECK ("CART_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007821" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007822" CHECK ("PRODUCT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007823" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCT_FEATURES
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_FEATURES" ADD CONSTRAINT "SYS_C007836" PRIMARY KEY ("FEATURES", "PRODUCT_ID", "SUPPLIER_ID");

-- ----------------------------
-- Checks structure for table PRODUCT_FEATURES
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_FEATURES" ADD CONSTRAINT "SYS_C007833" CHECK ("FEATURES" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_FEATURES" ADD CONSTRAINT "SYS_C007834" CHECK ("PRODUCT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_FEATURES" ADD CONSTRAINT "SYS_C007835" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCT_OFFER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007816" PRIMARY KEY ("PRODUCT_ID", "SUPPLIER_ID", "OFFER_ID");

-- ----------------------------
-- Checks structure for table PRODUCT_OFFER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007811" CHECK ("PRODUCT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007812" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007813" CHECK ("OFFER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007814" CHECK ("START_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007815" CHECK ("END_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEWS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007830" PRIMARY KEY ("CUSTOMER_ID", "PRODUCT_ID", "SUPPLIER_ID");

-- ----------------------------
-- Checks structure for table REVIEWS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007827" CHECK ("CUSTOMER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007828" CHECK ("PRODUCT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007829" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table SHIPPING_METHOD
-- ----------------------------
ALTER TABLE "GADGETSHOP"."SHIPPING_METHOD" ADD CONSTRAINT "SYS_C007763" PRIMARY KEY ("SHIPPING_ID");

-- ----------------------------
-- Checks structure for table SHIPPING_METHOD
-- ----------------------------
ALTER TABLE "GADGETSHOP"."SHIPPING_METHOD" ADD CONSTRAINT "SYS_C007760" CHECK ("SHIPPING_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."SHIPPING_METHOD" ADD CONSTRAINT "SYS_C007761" CHECK ("SHIPPING_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."SHIPPING_METHOD" ADD CONSTRAINT "SYS_C007762" CHECK ("CHARGE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table SUPPLIER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007753" PRIMARY KEY ("SUPPLIER_ID");

-- ----------------------------
-- Uniques structure for table SUPPLIER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007754" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007755" UNIQUE ("PASSWORD") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table SUPPLIER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007746" CHECK ("SUPPLIER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007750" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."SUPPLIER" ADD CONSTRAINT "SYS_C007752" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CART" ADD CONSTRAINT "SYS_C007759" FOREIGN KEY ("CUSTOMER_ID") REFERENCES "GADGETSHOP"."CUSTOMER" ("CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CATEGORY
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CATEGORY" ADD CONSTRAINT "SYS_C007802" FOREIGN KEY ("CHILD_PARENT_CATEGORY_ID") REFERENCES "GADGETSHOP"."CATEGORY" ("CATEGORY_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CUSTOMER_CONTACT_NO
-- ----------------------------
ALTER TABLE "GADGETSHOP"."CUSTOMER_CONTACT_NO" ADD CONSTRAINT "SYS_C007773" FOREIGN KEY ("CUSTOMER_ID") REFERENCES "GADGETSHOP"."CUSTOMER" ("CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ORDERS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007783" FOREIGN KEY ("CART_ID", "CUSTOMER_ID") REFERENCES "GADGETSHOP"."CART" ("CART_ID", "CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."ORDERS" ADD CONSTRAINT "SYS_C007784" FOREIGN KEY ("SHIPPING_ID") REFERENCES "GADGETSHOP"."SHIPPING_METHOD" ("SHIPPING_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ORDER_TRACKING
-- ----------------------------
ALTER TABLE "GADGETSHOP"."ORDER_TRACKING" ADD CONSTRAINT "SYS_C007791" FOREIGN KEY ("ORDER_ID", "CART_ID", "CUSTOMER_ID") REFERENCES "GADGETSHOP"."ORDERS" ("ORDER_ID", "CART_ID", "CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PAYMENT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PAYMENT" ADD CONSTRAINT "SYS_C007798" FOREIGN KEY ("ORDER_ID", "CART_ID", "CUSTOMER_ID") REFERENCES "GADGETSHOP"."ORDERS" ("ORDER_ID", "CART_ID", "CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PRODUCT
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007809" FOREIGN KEY ("SUPPLIER_ID") REFERENCES "GADGETSHOP"."SUPPLIER" ("SUPPLIER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT" ADD CONSTRAINT "SYS_C007810" FOREIGN KEY ("CATEGORY_ID") REFERENCES "GADGETSHOP"."CATEGORY" ("CATEGORY_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PRODUCT_CART
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007825" FOREIGN KEY ("CART_ID", "CUSTOMER_ID") REFERENCES "GADGETSHOP"."CART" ("CART_ID", "CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_CART" ADD CONSTRAINT "SYS_C007826" FOREIGN KEY ("PRODUCT_ID", "SUPPLIER_ID") REFERENCES "GADGETSHOP"."PRODUCT" ("PRODUCT_ID", "SUPPLIER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PRODUCT_FEATURES
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_FEATURES" ADD CONSTRAINT "SYS_C007837" FOREIGN KEY ("PRODUCT_ID", "SUPPLIER_ID") REFERENCES "GADGETSHOP"."PRODUCT" ("PRODUCT_ID", "SUPPLIER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table PRODUCT_OFFER
-- ----------------------------
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007817" FOREIGN KEY ("PRODUCT_ID", "SUPPLIER_ID") REFERENCES "GADGETSHOP"."PRODUCT" ("PRODUCT_ID", "SUPPLIER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."PRODUCT_OFFER" ADD CONSTRAINT "SYS_C007818" FOREIGN KEY ("OFFER_ID", "START_DATE", "END_DATE") REFERENCES "GADGETSHOP"."OFFER" ("OFFER_ID", "START_DATE", "END_DATE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEWS
-- ----------------------------
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007831" FOREIGN KEY ("CUSTOMER_ID") REFERENCES "GADGETSHOP"."CUSTOMER" ("CUSTOMER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "GADGETSHOP"."REVIEWS" ADD CONSTRAINT "SYS_C007832" FOREIGN KEY ("PRODUCT_ID", "SUPPLIER_ID") REFERENCES "GADGETSHOP"."PRODUCT" ("PRODUCT_ID", "SUPPLIER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
