/*Задание 1*/
CREATE TABLE t_caterer
(ID_caterer INT NOT NULL ENABLE,
 NAME VARCHAR(50) NOT NULL ENABLE,
 ADRESS VARCHAR2(50) NOT NULL ENABLE,
 PHONE NUMBER (11,0) NOT NULL ENABLE,
 FAX NUMBER (20) NOT NULL ENABLE,
 CONSTRAINT pk_caterer PRIMARY KEY(ID_CATERER) ENABLE);

CREATE TABLE t_store 
(ID_store INT NOT NULL ENABLE,
 NAME VARCHAR (20) NOT NULL ENABLE,
 CONSTRAINT pk_store PRIMARY KEY(ID_STORE) ENABLE);
  
CREATE TABLE t_material
 (ID_material INT NOT NULL ENABLE,
  NAME VARCHAR(50) NOT NULL ENABLE,
  ID_messure INT NOT NULL ENABLE,
  CONSTRAINT pk_material PRIMARY KEY (ID_material) ENABLE,
  CONSTRAINT fk_material_messure FOREIGN KEY (ID_MESSURE) REFERENCES
  t_messuure(ID_messure) ENABLE);

CREATE TABLE t_messure
 (ID_messure INT NOT NULL ENABLE,
  NAME VARCHAR2(10) NOT NULL ENABLE,
  CONSTRAINT pk_messure PRIMARY KEY (ID_messure) ENABLE;

CREATE TABLE t_supply
 (ID_supply INT NOT NULL ENABLE,
  ID_caterer INT NOT NULL ENABLE,
  ID_material INT NOT NULL ENABLE,
  ID_store INT NOT NULL ENABLE,
  supply_date DATE NOT NULL ENABLE,
  volume NUMBER INT NOT NULL ENABLE,
  CONSTRAINT pk_supply PRIMARY KEY (ID_supply) ENABLE,
  CONSTRAINT fk_supply_caterer FOREIGN KEY (ID_caterer) REFERENCES
  T_CATERER (ID_caterer) ENABLE,
  CONSTRAINT fk_supply_material FOREIGN KEY (ID_material) REFERENCES
  t_material (ID_material) ENABLE,
  CONSTRAINT fk_supply_store FOREIGN KEY (ID_store) REFERENCES
  t_store (ID_store) ENABLE);

CREATE TABLE t_surplus
  (ID_ t_surplus INT NOT NULL ENABLE,
   ID_material INT NOT NULL ENABLE,
   ID_store INT NOT NULL ENABLE,
   volume NUMBER INT NOT NULL ENABLE,
   CONSTRAINT pk_surplus PRIMARY KEY (ID_surplus) ENABLE,
   CONSTRAINT fk_surplus_material FOREIGN KEY (ID_material) REFERENCES
   t_material (ID_material) ON DELETE CASCADE,
   CONSTRAINT fk_surplus_store FOREIGN KEY (ID_store) REFERENCES
   t_store (ID_store) ON DELETE CASCADE);

CREATE TABLE t_deliver
  (ID_deliver INT NOT NULL ENABLE,
   ID_section INT NOT NULL ENABLE,
   ID_material INT NOT NULL ENABLE,
   ID_store INT NOT NULL ENABLE,
   deliver_date DATE INT NOT NULL ENABLE,
   CONSTRAINT pk_deliver PRIMARY KEY (ID_deliver) ENABLE,
   CONSTRAINT FK_Deliver_Section
   CONSTRAINT fk_deliver_section FOREIGN KEY (ID_section) REFERENCES
   t_section (ID_section) ON DELETE CASCADE,
   CONSTRAINT fk_deliver_material FOREIGN KEY (ID_material) REFERENCES
   t_material (ID_material) ON DELETE CASCADE,
   CONSTRAINT FK_deliver_Srore FOREIGN KEY (ID_store) REFERENCES
   t_store (ID_store) ON DELETE CASCADE);
   
CREATE TABLE t_inprice 
 (ID_inprice INT NOT NULL ENABLE,
  ID_material INT NOT NULL ENABLE,
  PRICE_DATE DATE NOT NULL ENABLE,
  PRICE NUMBER(10,2) ENABLE,
  CONSTRAINT fk_inprice_material FOREIGN KEY (ID_material) REFERENCES
  t_material (ID_material) ON DELETE CASCADE);
    
CREATE TABLE t_Section
  (ID_section INT NOT NULL ENABLE,
  NAME VARCHAR(20) NOT NULL ENABLE,
  ID_employer INT NOT NULL ENABLE,
  CONSTRAINT pk_Section PRIMARY KEY (ID_section) ENABLE,
  CONSTRAINT fk_section_employer FOREIGN KEY (ID_employer) REFERENCES
  t_employer (ID_employer) ON DELETE CASCADE);

CREATE TABLE t_employer
  (ID_employer INT NOT NULL ENABLE,
  SURNAME VARCHAR(20) NOT NULL ENABLE,
  NAME VARCHAR(15) NOT NULL ENABLE,
  FATHERNAME VARCHAR(20) NOT NULL ENABLE,
  CONSTRAINT pk_employer PRIMARY KEY (ID_employer) ENABLE);

/*Задание 2*/

 ALTER TABLE t_emlover
  ADD SEX CHAR(1) DEFAULT 'M' CHECK(SEX IN 'M','W'))
  ADD BIRTHDATE DATE
  ADD MARRIAGE VARCHAR2(10);
   
ALTER TABLE t_caterer DROP COLUMN ADDRES;
ALTER TABLE t_caterer 
 ADD(Ur_Addres VARCHAR(100) NOT NULL,
 Fakt_Addres VARCHAR(50) NOT NULL,
 E_Mail NVARCHAR2(30));

/*Задание 3*/

ALTER TABLE t_inprice
 ADD CONSTRAINT pk_inprice PRIMARY KEY (ID_Material, PRICE_DATE));

/*Задание 4*/

CREATE TABLE t_group
 (ID_group INT NOT NULL ENABLE,
 NAME VARCHAR (50) NOT NULL ENABLE,
 CONSTRAINT pk_group PRIMARY KEY (ID_group));

ALTER TABLE t_material 
  ADD ID_group INT
  ADD CONSTRAINT fk_material+GROUP FOREIGN KEY (ID_group) REFERENCES
  t_group (ID_group) ON DELETE SET NULL;

/*Задание 5*/

ALTER TABLE t_caterer
  MODIFY (fax VARCHAR2(40));
ALTER TABLE t_supply
  MODIFY (VOLUME INT CHECK (volume>= 0))
