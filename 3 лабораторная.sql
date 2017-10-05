
/*Задание 14*/
SELECT * FROM t_supply;
SELECT * FROM t_employer;
SELECT * FROM t_store;

/*Задание 15*/
SELECT ID_mterial,NAME,ID_group FROM t_material;

/*Задание 16*/
SELECT SURNAME, NAME, FATHERNAME, BIRTHDATE FROM t_employer;

/*Задание 17*/
SELECT * FROM t_employer
	WHERE SEX LIKE 'M';

/*Задание 18*/
SELECT * FROM t_caterer
	WHERE ID_caterer IN 
	(SELECT ID_caterer FROM t_supply WHERE supply_date >= '01.04.2009'
		AND supply_date <= '30.06.2009');

/*Задание 19*/
SELECT * FROM t_section
	WHERE ID_section NOT IN
	(SELECT ID_section FROM t_deliver WHERE deliver_date LIKE '%08.2009');
 
/*Задание 20*/
SELECT NAME FROM t_section 
	WHERE ID_section IN
	(SELECT ID_section FROM t_deliver WHERE deliver_date LIKE SYSDATE);

/*Задание 21*/
SELECT NAME FROM t_material
	WHERE ID_material IN 
	(SELECT ID_material FROM t_supply WHERE supply_date LIKE '%2017');

/*Задание 22*/
SELECT NAME FROM t_Material
	WHERE ID_Material NOT IN
	(SELECT ID_Material FROM t_Supply WHERE Supply_Date LIKE '%2017')
	AND ID_Material IN
		(SELECT ID_Material FROM t_Surplus WHERE VOLUME LIKE 0); 

/*Задание 23*/
SELECT t_section.ID_section,t_section.NAME,t_employer.NAME,
t_employer.SURNAME, t_employer.FATHERNAME
FROM t_section,t_employer
WHERE t_section.ID_employer=ID_section.id_employer;

/*Задание 24*/
SELECT t_section.ID_section.NAME,ID_section.NAME,id_section.SURNAME,
  FROM t_section, ID_section,t_job WHERE 
  t_section.ID_employer= ID_section.ID_employer
  AND ID_section.ID_job=t_job.ID_job;

;/*Задание 25*/
SELECT t_caterer.NAME,t_material.NAME,t_supply.VOLUME,
  t_inprice.PRICE,t_supply.supply_date
  FROM t_caterer,t_material,t_supply,t_inprice
  WHERE t_caterer.ID_caterer IN (SELECT ID_caterer FROM t_supply 
   WHERE supply_date BETWEEN '01.01.2009' AND '31.03.2009')
   AND t_material.ID_material = t_inprice.ID_material
   AND t_material.ID_material = t_supply.ID_material
	 AND t_caterer.ID_caterer = t_supply.ID_caterer;

/*Задание 26*/
SELECT t_caterer.NAME, t_material.NAME, t_supply.VOLUME,
	t_inprice.PRICE, t_Supply.supply_date
	FROM t_caterer, t_material, t_supply, t_inprice
	WHERE t_caterer.ID_caterer IN
	(SELECT ID_caterer FROM t_Supply WHERE Supply_Date 
    BETWEEN '01.01.2016' AND '31.03.2016')
	AND t_material.ID_material = t_inprice.ID_material
	AND t_Material.ID_material = t_Supply.ID_material
	AND t_caterer.ID_caterer = t_Supply.ID_caterer
	AND t_caterer.Ur_Address LIKE 'Пермь%';

/*Задание 27*/
SELECT t_material.ID_material,t_material.NAME,
  t_store.NAME,t_surplus.VOLUME
  FROM t_material,t_store,t_surplus WHERE
  t_store.ID_store=t_surplus.ID_STORE AND
  t_material.ID_material=t_surplus.ID_material
  ORDER BY t_material.ID_material;

/*Задание 28*/
SELECT t_caterer.NAME, t_material.NAME, t_supply.VOLUME,
	t_inprice.PRICE, t_supply.supply_date
	FROM t_caterer JOIN t_material ON t_caterer.ID_caterer IN
	(SELECT ID_caterer FROM t_supply WHERE supply_date 
     BETWEEN '01.01.2009' AND '31.03.2018')
	JOIN t_supply ON t_supply.ID_material = t_material.ID_material
		AND t_supply.ID_caterer = t_caterer.ID_caterer
	JOIN t_inprice ON t_inprice.ID_material = t_material.ID_material;

/*Задание 29*/
SELECT t_caterer.NAME, t_material.NAME, t_supply.VOLUME,
	t_inprice.PRICE, t_supply.supply_date
	FROM t_caterer LEFT JOIN t_supply
	ON t_supply.ID_caterer = t_caterer.ID_caterer
	LEFT JOIN t_material ON 
  t_supply.ID_material = t_material.ID_material
	LEFT JOIN t_inprice ON 
  t_inprice.ID_material = t_material.ID_material;

/*Задание 30*/
SELECT t_store.ID_store, t_store.NAME,
	t_material.NAME, t_surplus.VOLUME
	FROM t_store LEFT JOIN t_surplus ON 
  t_store.ID_store = t_surplus.ID_store
	LEFT JOIN t_material ON 
  t_material.ID_material = t_surplus.ID_material
	ORDER BY t_store.ID_store;

/*Задание 31*/
SELECT t_material.ID_material, t_material.NAME,t_messure.NAME,
  t_inprice.PRICE FROM t_material JOIN t_messure ON
 t_material.ID_messure = t_messure.ID_messure JOIN t_inprice
 ON t_inprice.ID_material=t_material.ID_material AND
  t_inprice.PRICE_DATE IN (SELEST PRICE_DATE FROM t_inprice WHERE
  PRICE_DATE BERWEEN '01.07.2009' AND '30.09.2009');

/*Задание 32*/
SELECT t_material.ID_material,t_mataterial.NAME,
  t_messure.NAME,t_inprice.PRICE FROM
  t_mataterial LEFT JOIN t_messure ON
  t_material.ID_messure = t_messure.ID_messure LEFT
  JOIN t_inprice ON t_inprice.ID_material = t_material.ID_material;

/*Задание 33*/
ALTER TABLE t_employer ADD id_manager INT;
  UPDATE t_employer 
    SET ID_manager = 1 
    WHERE ID_emloter BETWEEN 2 AND 4
  UPDATE t_empoyer
    SET ID_manager = 3
    WHERE ID_employer LIKE 5;

/*Задание 34*/
ALTER TABLE t_group
	ADD pod_group INT; 
  UPDATE t_group SET pod_group = 1
	WHERE ID_group BETWEEN 1 AND 3;
  UPDATE t_group SET pod_group = 2 WHERE ID_group > 3;
  SELECT * FROM t_group WHERE pod_group = 1;
  SELECT * FROM t_group WHERE pod_group = 2;

/*Задание 35*/
CREATE TABLE t_Exemp(
	ID_Employer INT NOT NULL,
	SURNAME VARCHAR2(20) NOT NULL,
	NAME VARCHAR2(15) NOT NULL,
	FATHERNAME VARCHAR2(30),
	BIRTHDATE DATE,
  POL INT,
  ID_Manager INT,
	CONSTRAINT PK_Exemp PRIMARY KEY (ID_Employer));
INSERT INTO t_Exemp (ID_Employer, SURNAME, NAME, FATHERNAME, BIRTHDATE, POL, ID_Manager)
	VALUES (1, 'Фамилия', 'Имя', 'Отчество', '13.03.1970','М', 1);  

/*Задание 36*/
ALTER TABLE t_Exemp
	ADD DISMISSED DATE;
UPDATE t_Exemp
	SET DISMISSED = '02.30.2006';

/*Задание 37*/
CREATE TABLE t_contact
  (ID_contact INT NOT NULL ENABLE,
	ID_caterer INT,
	SURNAME VARCHAR2(20) NOT NULL ENABLE,
	NAME VARCHAR2(15) NOT NULL ENABLE,
	FATHERNAME VARCHAR2(20),
	PHONE NUMBER (11) NOT NULL ENABLE,
	CONSTRAINT pk_contact PRIMARY KEY (ID_Contact), 
  CONSTRAINT FK_Contact_caterer FOREIGN KEY (ID_caterer) 
  REFERENCES t_caterer (ID_caterer) ON DELETE CASCADE);

INSERT INTO t_contact (ID_Contact, ID_caterer, SURNAME, NAME, FATHERNAME, PHONE)
	VALUES (1, 1, 'Фамилия 1', 'Имя 1', 'Отчество 1', '89195789202');
INSERT INTO t_contact (ID_contact, ID_caterer, SURNAME, NAME, FATHERNAME, PHONE)
	VALUES (2, 2, 'Фамилия 2', 'Имя 2', 'Отчество 2', '89229854880');
INSERT INTO t_contact (ID_contact, ID_caterer, SURNAME, NAME, FATHERNAME, PHONE)
	VALUES (3, 3, 'Фамилия 3', 'Имя 3', 'Отчество 3', '89659082344');
INSERT INTO t_contact (ID_contact, ID_caterer, SURNAME, NAME, FATHERNAME, PHONE)
	VALUES (4, 4, 'Фамилия 4', 'Имя 4', 'Отчество 4', '89345666329');
INSERT INTO t_contact (ID_contact, ID_caterer, SURNAME, NAME, FATHERNAME, PHONE)
	VALUES (5, 5, 'Фамилия 5', 'Имя 5', 'Отчество 5', '89197843378');
SELECT SURNAME, NAME, FATHERNAME, PHONE FROM t_Contact;

/*Задание 38*/
SELECT * FROM t_caterer
	ORDER BY NAME;

/*Задание 39*/
SELECT * FROM t_caterer JOIN t_Contact
	ON t_caterer.ID_caterer = t_Contact.ID_caterer
	ORDER BY t_caterer.NAME, t_Contact.SURNAME, 
            t_Contact.NAME, t_Contact.FATHERNAME;

/*Задание 40*/
SELECT t_store.NAME,t_material.NAME,t_surplus.VOLUME
  FROM t_store LEFT JOIN t_surplus ON
  t_store.ID_store = t_surplus.ID_store LEFT JOIN t_material
  ON t_material.ID_material = t_surplus.ID_material
  ORDER BY t_store.ID_store, t_surplus.VOLUME DESC;

/*Задание 41*/
SELECT t_material.NAME AS "material", t_caterer.NAME 
   AS "caterer", SUM (t_supply.VOLUME) AS "VOLUME"
	FROM t_caterer JOIN t_supply ON 
  t_caterer.ID_caterer = t_supply.ID_caterer JOIN t_material
	ON t_material.ID_material = t_supply.ID_caterer
	WHERE t_supply.supply_date >= '01.01.2017' AND t_supply.supply_date <= '31.12.2017' 
  GROUP BY t_material.NAME, t_caterer.NAME ORDER BY 
    t_caterer.NAME, t_material.NAME;

/*Задание 42*/
SELECT tm_material.NAME AS "material", AVG (t_supply.VOLUME * t_inprice.PRICE) AS "Sred"
	FROM t_material LEFT JOIN t_supply
	ON t_material.ID_material = t_supply.ID_material
	LEFT JOIN t_inprice ON 
  t_material.ID_material = t_inprice.ID_material WHERE 
  t_supply.supply_date >= '01.01.2017' AND t_supply.supply_date <= '31.12.2017'
	GROUP BY t_material.NAME ORDER BY t_material.NAME;

/*Задание 43*/
SELECT t_material.NAME AS "material", SUM (t_Supply.VOLUME) AS "Summ"
	FROM t_material LEFT JOIN t_supply
	ON t_material.ID_material = t_supply.ID_material
	WHERE t_Supply.supply_date >= '01.01.2017'AND t_supply.supply_date <= '31.12.2017'
  GROUP BY t_material.NAME ORDER BY t_material.NAME;

/*Задание 44*/
SELECT t_material.name AS "material", AVG(t_supply.volume * t_inprice.price), 
  SUM(AVG(t_supply.volume * t_inprice.price)*t_inprice.price)
  ON t_material.id_material = t_supply.id_material LEFT JOIN t_inprice
  ON t_surplus.id_store = t_store.id_store
  GROUP BY t_material.name ORDER BY t_material.name;

/*Задание 45*/
SELECT NAME FROM t_store INNER JOIN t_surplus
	ON t_store.ID_store = t_surplus.ID_store
	GROUP BY NAME HAVING SUM (VOLUME) = 0;

/*Задание 46*/
SELECT NAME FROM t_caterer INNER JOIN t_supply
	ON t_caterer.ID_caterer = t_Supply.ID_caterer
	WHERE supply_date >= '01.01.2017' AND t_supply.supply_date <= '31.12.2017'
	GROUP BY NAME HAVING SUM (VOLUME) < 1000;

/*Задание 47*/
SELECT NAME FROM t_caterer JOIN t_supply
	ON t_caterer.ID_caterer = t_supply.ID_caterer 
	WHERE supply_date >= '01.01.2017' AND t_supply.supply_sate <= '31.12.2017'
	GROUP BY NAME HAVING SUM (VOLUME) = MAX (VOLUME);