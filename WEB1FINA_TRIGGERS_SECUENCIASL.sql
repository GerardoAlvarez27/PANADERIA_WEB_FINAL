----SECUENCIAS----
CREATE SEQUENCE pedido_seq
  START WITH 502
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE sucursal_seq
  START WITH 114
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE ingrediente_seq
  START WITH 11
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
  
  -----TRIGGERS-----
  CREATE OR REPLACE TRIGGER ActualizarDispo
AFTER UPDATE ON "pedido_producto"
FOR EACH ROW
BEGIN
    UPDATE "Producto"
    SET "disponibilidad" = "disponibilidad" - (:new."cantidad" - :old."cantidad")
    WHERE "id_producto" = :new."id_producto";
END;

  
  
  
  
  
   INSERT INTO "pedido" ("id_pedido", "id_sucursal", "fecha", "entrega", "estado") 
   VALUES (pedido_seq.NEXTVAL, 110, TO_DATE('05/05/2023 16:00:00', 'DD/MM/YYYY HH24:MI:SS'), 'Bien Bien TU', 'Produccion2');
   

   commit;
   
   SELECT p."id_producto", pr."nombre_producto",  p."cantidad"
   FROM "pedido_producto" p 
   JOIN "Producto" pr ON p."id_producto" = pr."id_producto"
   WHERE p."id_pedido" = id_pedido;
   

