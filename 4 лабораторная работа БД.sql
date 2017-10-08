/*Задание 48*/
CREATE VIEW v_caterer
  (ID_caterer,caterer_NAME,contact_NAME,contact_SURNAME)
AS SELECT t_caterer.ID_caterer.NAME,t_contact.NAME,t_contact.SURNAME
  FROM t_caterer JOIN t_contact ON
  t_caterer.ID_caterer = t_contact.ID_caterer;

SELECT * FROM v_caterer;

INSERT INTO v_caterer (
  ID_caterer,caterer_NAME,contact_NAME,contact_SURNAME)
  VALUES 
  (seq_caterer.NEXTVAL, 'Поставщик 1', 'Иван','Сергеев');

DELETE FROM V_caterer
	WHERE ID_caterer = 3;

/*Задание 49*/
CREATE OR REPLACE VIEW v_surplus (material,store,VOLUME)
  AS SELECT t_material.NAME,t_store.NAME,SUM (t_surplus.VOLUME)
  FROM t_material JOIN t_surplus ON
  t_material.ID_material = t_surplus.ID_materil JOIN t_store
  ON t_surplus.ID_store = t_store.ID.store
  GROUP BY t_material.NAME,t_store.NAME;

/*Задание 50*/
CREATE VIEW v_supply
  (caterer_NAME,material,messure,supply_date,PRISE,VOLUME,SUM)
 AS SELEST t_caterer.NAME,t_materil.NAME,t_mesure.NAME,
  t_supply.supply_DATE,t_inprice.PRICE, t_supply.VOLUME,
  t_supply.VOLUME * t_inprice.PRICE 
  FROM t_supply JOIN t_caterer
  ON t_supply.ID_caterer = t_caterer.ID_caterer JOIN t_messure
  ON t_material.ID_messure = t_messure.ID_messure JOIN t_inprice
  ON t_material.ID_material = t_inprice.ID_material;

/*Задание 51*/
CREATE VIEW v_store
  (store, material, measure, sum)
AS SELECT t_store.NAME, t_material.NAME, t_measure.NAME,sum(t_deliver.VOLUME) 
FROM t_deliver JOIN t_store
  ON t_deliver.ID_store = t_store.ID_store JOIN t_material
  ON t_deliver.ID_material = t_material.ID_material JOIN t_measure
  ON T_material.ID_measure = t_measure.ID_measure
  WHERE deliver_DATE BETWEEN '01.01.2017' AND '31.12.2017'
GROUP BY t_store.NAME,t_material.NAME, T_measure.NAME;

/*задание 52*/
CREATE OR REPLACE VIEW v_supply_price
  (id, material, volume, store, price, summ)
AS SELECT t_supply.id_supply, t_material.name, 
  t_supply.volume,t_t_supply.store.name, t_supply.price, 
  t_supply.volume * t_supply.price 
  FROM t_supply JOIN t_material 
    ON t_supply.id_material = t_material.id_material JOIN T_store 
    ON t_supply.id_store = t_store.id_store
  ORDER BY t_supply.id_supply;

CREATE OR REPLACE VIEW v_inprice
  (id, material, volume, store, price, summ)
AS SELECT t_supply.id_supply, t_material.name, t_supply.volume, 
   t_store.name, t_inprice.price, 
   t_supply.volume * t_inprice.price
  FROM t_supply JOIN t_material 
    ON t_supply.id_material = t_material.id_material JOIN t_inprice 
    ON t_material.id_material = t_inprice.id_material JOIN t_store 
    ON t_supply.id_store = t_store.id_store
  ORDER BY t_supply.id_supply;

CREATE VIEW v_compare
  (material, volume, store, supply_price, inprice, difference)
AS SELECT t_material.name, t_supply.volume, t_store.name,
    v_supply_price.summ, v_inprice.summ, 
    abc(vv_supply_price.summ - v_inprice.summ)
  FROM t_supply JOIN t_material 
    ON t_supply.id_material = t_material.id_material JOIN t_store 
    ON t_supply.id_store = t_store.id_store JOIN v_supply_price 
    ON t_supply.id_supply = v_supply_price.id JOIN v_inprice 
    ON t_supply.id_supply = v_inprice.id;