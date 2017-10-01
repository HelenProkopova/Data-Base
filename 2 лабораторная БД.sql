/*Задание 6*/

CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_store
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_material
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_messure
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_supply
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_surplus
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_deliver
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_inprice
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_section
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_eployer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_emplover
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_group
  START WITH 1
  INCREMENT BY 1;

/*Задание 7*/

  INSERT INTO t_caterer (ID_caterer, NAME, Ur_Address, Fakt_Address, E_Mail, PHONE, FAX)
	VALUES (seq_caterer.NEXTVAL, 'Поставщик 1', 'Город, улица, дом', 'Город, улица, дом', 'caterer1@mail.ru', 89922339999, NULL);
INSERT INTO t_caterer (ID_caterer, NAME, Ur_Address, Fakt_Address, E_Mail, PHONE, FAX)
	VALUES (seq_csterer.NEXTVAL, 'Поставщик 2', 'Город, улица, дом', 'Город, улица, дом', 'caterer2@mail.ru', 89922467441, NULL);
INSERT INTO t_caterer (ID_caterer, NAME, Ur_Address, Fakt_Address, E_Mail, PHONE, FAX)
	VALUES (seq_csterer.NEXTVAL, 'Поставщик 3', 'Город, улица, дом', 'Город, улица, дом', 'caterer3@mail.ru', 89226421647, NULL);
INSERT INTO t_caterer (ID_caterer, NAME, Ur_Address, Fakt_Address, E_Mail, PHONE, FAX)
	VALUES (seq_csterer.NEXTVAL, 'Поставщик 4', 'Город, улица, дом', 'Город, улица, дом', 'caterer4@mail.ru', 89225879822, NULL);
INSERT INTO t_caterer (ID_caterer, NAME,Ur_Address, Fakt_Address, E_Mail, PHONE, FAX)
	VALUES (seq_caterer.NEXTVAL, 'Поставщик 5', 'Город, улица, дом', 'Город, улица, дом', 'caterer5@mail.ru', 89637677439, NULL);	

INSERT INTO t_store (ID_store, NAME)
	VALUES (seq_store.NEXTVAL, 'Склад 1');
INSERT INTO t_store (ID_store, NAME)
	VALUES (seq_store.NEXTVAL, 'Склад 2');
INSERT INTO t_store (ID_store, NAME)
	VALUES (seq_store.NEXTVAL, 'Склад 3');
INSERT INTO t_store (ID_store, NAME)
	VALUES (seq_store.NEXTVAL, 'Склад 4');
INSERT INTO t_store (ID_store, NAME)
	VALUES (seq_store.NEXTVAL, 'Склад 5');

INSERT INTO t_material (ID_material, NAME, ID_messure, ID_group)
	VALUES (seq_material.NEXTVAL, 'Материал 1', 1, 1);
INSERT INTO t_material (ID_material, NAME, ID_messure, ID_group)
	VALUES (seq_material.NEXTVAL, 'Материал 2', 2, 2);
INSERT INTO t_material (ID_material, NAME, ID_messure, ID_group)
	VALUES (seq_material.NEXTVAL, 'Материал 3', 3, 3);
INSERT INTO t_material (ID_material, NAME, ID_messure, ID_group)
	VALUES (seq_material.NEXTVAL, 'Материал 4', 4, 4);
INSERT INTO t_material (ID_material, NAME, ID_messure, ID_group)
	VALUES (seq_material.NEXTVAL, 'Материал 5', 5, 5);

INSERT INTO t_messure (ID_messure, NAME)
	VALUES (seq_messure.NEXTVAL, 'ШТ');
INSERT INTO t_messure (ID_messure, NAME)
	VALUES (seq_messure.NEXTVAL, 'М');
INSERT INTO t_messure (ID_messure, NAME)
	VALUES (seq_messure.NEXTVAL, 'КГ');
INSERT INTO t_messure (ID_messure, NAME)
	VALUES (seq_messure.NEXTVAL, 'Т');
INSERT INTO t_messure (ID_messure, NAME)
	VALUES (seq_messure.NEXTVAL, 'СМ');

INSERT INTO t_supply (ID_Supply, ID_caterer, ID_material, ID_store, supply_Date, VOLUME)
	VALUES (seq_supply.NEXTVAL, 1, 1, 1, '11.03.2017', 1);
INSERT INTO t_supply (ID_Supply, ID_caterer, ID_material, ID_store, supply_Date, VOLUME)
	VALUES (seq_supply.NEXTVAL, 2, 2, 2, '12.04.2017', 2);
INSERT INTO t_supply (ID_Supply, ID_caterer, ID_material, ID_store, supply_Date, VOLUME)
	VALUES (seq_supply.NEXTVAL, 3, 3, 3, '13.05.2017', 3);
INSERT INTO t_supply (ID_Supply, ID_caterer, ID_material, ID_store, supply_Date, VOLUME)
	VALUES (seq_supply.NEXTVAL, 4, 4, 4, '14.04.2017', 4);
INSERT INTO t_supply (ID_Supply, ID_caterer, ID_material, ID_store, supply_Date, VOLUME)
	VALUES (seq_supply.NEXTVAL, 5, 5, 5, '15.06.2017', 5);

INSERT INTO t_surplus (ID_surplus, ID_material, ID_store, VOLUME)
	VALUES (seq_surplus.NEXTVAL, 1, 1, 1);
INSERT INTO t_surplus (ID_surplus, ID_material, ID_store, VOLUME)
	VALUES (seq_surplus.NEXTVAL, 2, 2, 2);
INSERT INTO t_surplus (ID_surplus, ID_material, ID_store, VOLUME)
	VALUES (seq_surplus.NEXTVAL, 3, 3, 3);
INSERT INTO t_surplus (ID_surplus, ID_material, ID_store, VOLUME)
	VALUES (seq_surplus.NEXTVAL, 4, 4, 4);
INSERT INTO t_surplus (ID_surplus, ID_material, ID_store, VOLUME)
	VALUES (seq_surplus.NEXTVAL, 5, 5, 5);

INSERT INTO t_deliver (ID_deliver, ID_section, ID_material, ID_store, deliver_date)
	VALUES (seq_surplus.NEXTVAL, 1, 1, 1, '11.11.2017');
INSERT INTO t_deliver (ID_deliver, ID_section, ID_Material, ID_store, deliver_date)
	VALUES (seq_surplus.NEXTVAL, 2, 2, 2, '12.02.2017');
INSERT INTO t_deliver (ID_deliver, ID_section, ID_material, ID_store, deliver_date)
	VALUES (seq_surplus.NEXTVAL, 3, 3, 3, '13.03.2017');
INSERT INTO t_deliver (ID_deliver, ID_section, ID_material, ID_store, deliver_date)
	VALUES (seq_surplus.NEXTVAL, 4, 4, 4, '14.04.2017');
INSERT INTO t_deliver (ID_deliver, ID_section, ID_material, ID_store, deliver_date)
	VALUES (seq_surplus.NEXTVAL, 5, 5, 5, '15.12.2017');

INSERT INTO t_inprice (ID_inprice, ID_Material, PRICE_DATE, PRICE)
	VALUES (seq_inprice.NEXTVAL, '11.01.2017', 1);
INSERT INTO t_inprice (ID_inprice, ID_Material, PRICE_DATE, PRICE)
	VALUES (seq_inprice.NEXTVAL, '12.03.2017', 2);
INSERT INTO t_inprice (ID_inprice, ID_Material, PRICE_DATE, PRICE)
	VALUES (seq_inprice.NEXTVAL, '13.07.2017', 3);
INSERT INTO t_inprice (ID_inprice, ID_Material, PRICE_DATE, PRICE)
	VALUES (seq_inprice.NEXTVAL, '14.05.2017', 4);
INSERT INTO t_inprice (ID_inprice, ID_Material, PRICE_DATE, PRICE)
	VALUES (seq_inprice.NEXTVAL, '15.12.2017', 5);

INSERT INTO t_section (ID_section, NAME, ID_employer)
	VALUES (seq_section.NEXTVAL, 'Цех 1', 1);
INSERT INTO t_section (ID_section, NAME, ID_employer)
	VALUES (seq_section.NEXTVAL, 'Цех 2', 2);
INSERT INTO t_section (ID_section, NAME, ID_employer)
	VALUES (seq_section.NEXTVAL, 'Цех 3', 3);
INSERT INTO t_section (ID_section, NAME, ID_employer)
	VALUES (seq_section.NEXTVAL, 'Цех 4', 4);
INSERT INTO t_section (ID_section, NAME, ID_employer)
	VALUES (seq_section.NEXTVAL, 'Цех 5', 5);

INSERT INTO tу_employer (ID_employer, SURNAME, NAME, FATHERNAME, SEX, BIRTHDATE, MARRIAGE)
	VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество', 'Пол', 'Дата рождения', 'Семейное положение');
INSERT INTO t_employer (ID_employer, SURNAME, NAME, FATHERNAME)
	VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество', 'Пол', 'Дата рождения', 'Семейное положение');
INSERT INTO t_employer (ID_employer, SURNAME, NAME, FATHERNAME)
	VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество', 'Пол', 'Дата рождения', 'Семейное положение');
INSERT INTO t_employer (ID_employer, SURNAME, NAME, FATHERNAME)
	VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество', 'Пол', 'Дата рождения', 'Семейное положение');
INSERT INTO t_employer (ID_employer, SURNAME, NAME, FATHERNAME)
	VALUES (seq_employer.NEXTVAL, 'Фамилия', 'Имя', 'Отчество', 'Пол', 'Дата рождения', 'Семейное положение');

INSERT INTO t_group (ID_group, NAME)
	VALUES (seq_group.NEXTVAL, 'Группа № 1');
INSERT INTO t_group (ID_group, NAME)
	VALUES (seq_group.NEXTVAL, 'Группа № 2');
INSERT INTO t_group (ID_group, NAME)
	VALUES (seq_group.NEXTVAL, 'Группа № 3');
INSERT INTO t_group (ID_group, NAME)
	VALUES (seq_group.NEXTVAL, 'Группа № 4');
INSERT INTO t_group (ID_group, NAME)
	VALUES (seq_group.NEXTVAL, 'Группа № 5');


/*Задание 8*/
DELETE FROM t_inprice 
	WHERE PRICE_DATE < '31.12.2000';

/*Задание 9*/
DELETE FROM t_messure
	WHERE NAME LIKE '_';

/*Задание 10*/
UPDATE t_surplus
	SET VOLUME = 0 WHERE ID_Store LIKE 1;

/*Задание 11*/
UPDATE t_employer
	SET BIRTHDATE = '05.07.1974', MARRIAGE = 'Замужем'
	WHERE ID_employer LIKE 1;

/*Задание 12*/
UPDATE t_caterer
	SET PHONE = 89227540921
	WHERE NAME = 'Поставщик 5';

/*Задание 13*/
UPDATE t_inprice 
	SET PRICE = 0.85 * PRICE
	WHERE PRICE_DATE LIKE '%2017'.
