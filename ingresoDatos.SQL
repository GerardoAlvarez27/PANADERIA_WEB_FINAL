
INSERT INTO "FINALWEB"."pedido" ("id_pedido", "id_sucursal", "fecha", "entrega", "estado") VALUES ('501', '110', TO_DATE('2023-10-13 09:31:57', 'YYYY-MM-DD HH24:MI:SS'), 'Traer guantes para cargar el pan', 'Enviado')
ORA-12899: el valor es demasiado grande para la columna "FINALWEB"."pedido"."entrega" (real: 32, máximo: 30)
ORA-06512: en línea 1


Se ha producido un error al guardar los cambios en la tabla "FINALWEB"."pedido":
Fila 2: ORA-12899: el valor es demasiado grande para la columna "FINALWEB"."pedido"."entrega" (real: 32, máximo: 30)
ORA-06512: en línea 1

INSERT INTO "FINALWEB"."pedido" ("id_pedido", "id_sucursal", "fecha", "entrega", "estado") VALUES ('501', '110', TO_DATE('2023-10-13 09:31:57', 'YYYY-MM-DD HH24:MI:SS'), 'Traer guantes para cargar', 'Enviado')

Confirmación Correcta


INSERT INTO "FINALWEB"."pedido" ("id_pedido", "id_sucursal", "fecha", "entrega", "estado") VALUES ('499', '110', TO_DATE('2023-10-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bien Bien', 'Produccion')

Confirmación Correcta


DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHNAAA' AND ORA_ROWSCN = '20727169' and ( "id_pedido" is null or "id_pedido" is not null )
DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHNAAC' AND ORA_ROWSCN = '20727169' and ( "id_pedido" is null or "id_pedido" is not null )
DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHOAAB' AND ORA_ROWSCN = '20728828' and ( "id_pedido" is null or "id_pedido" is not null )

Confirmación Correcta


UPDATE "FINALWEB"."pedido" SET "entrega" = 'Traer bolsas extras' WHERE ROWID = 'AAATn/AAHAAAAHNAAB' AND ORA_ROWSCN = '20730237'

Confirmación Correcta


UPDATE "FINALWEB"."pedido" SET "fecha" = TO_DATE('2023-10-21 07:30:00', 'YYYY-MM-DD HH24:MI:SS') WHERE ROWID = 'AAATn/AAHAAAAHOAAA' AND ORA_ROWSCN = '20730237'

Confirmación Correcta


DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHOAAC' AND ORA_ROWSCN = '20730317' and ( "id_pedido" is null or "id_pedido" is not null )
DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHOAAB' AND ORA_ROWSCN = '20730317' and ( "id_pedido" is null or "id_pedido" is not null )
DELETE FROM "FINALWEB"."pedido" WHERE ROWID = 'AAATn/AAHAAAAHOAAD' AND ORA_ROWSCN = '20730317' and ( "id_pedido" is null or "id_pedido" is not null )

Confirmación Correcta


UPDATE "FINALWEB"."pedido" SET "fecha" = TO_DATE('2023-10-13 14:00:00', 'YYYY-MM-DD HH24:MI:SS') WHERE ROWID = 'AAATn/AAHAAAAHMAAA' AND ORA_ROWSCN = '20731668'
UPDATE "FINALWEB"."pedido" SET "fecha" = TO_DATE('2023-10-19 01:30:00', 'YYYY-MM-DD HH24:MI:SS') WHERE ROWID = 'AAATn/AAHAAAAHMAAB' AND ORA_ROWSCN = '20731668'

Confirmación Correcta


UPDATE "FINALWEB"."pedido" SET "fecha" = TO_DATE('2023-10-19 13:30:00', 'YYYY-MM-DD HH24:MI:SS') WHERE ROWID = 'AAATn/AAHAAAAHMAAB' AND ORA_ROWSCN = '20734245'

Confirmación Correcta


INSERT INTO "FINALWEB"."sucursal" ("id_sucursal", "nombre_sucursal", "direccion", "telefono") VALUES ('111', 'BUEN PAN ', 'Zona 15, Calle 14-11', '36493134')
INSERT INTO "FINALWEB"."sucursal" ("id_sucursal", "nombre_sucursal", "direccion", "telefono") VALUES ('112', 'SAN MARTIN', 'Zona 1, Calle 13-75', '44332112')

Confirmación Correcta


INSERT INTO "FINALWEB"."sucursal" ("id_sucursal", "nombre_sucursal", "direccion", "telefono") VALUES ('113', 'MILANO', 'Zona 15, Calle 66-11', '54645128')

Confirmación Correcta


UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '111' WHERE ROWID = 'AAATn/AAHAAAAHOAAA' AND ORA_ROWSCN = '20730349'
UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '112' WHERE ROWID = 'AAATn/AAHAAAAHMAAA' AND ORA_ROWSCN = '20744222'
UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '114' WHERE ROWID = 'AAATn/AAHAAAAHMAAB' AND ORA_ROWSCN = '20744222'
ORA-02291: restricción de integridad (FINALWEB.FK_pedido.id_sucursal) violada - clave principal no encontrada


Se ha producido un error al guardar los cambios en la tabla "FINALWEB"."pedido":
Fila 4: ORA-02291: restricción de integridad (FINALWEB.FK_pedido.id_sucursal) violada - clave principal no encontrada

UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '111' WHERE ROWID = 'AAATn/AAHAAAAHOAAA' AND ORA_ROWSCN = '20730349'
UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '112' WHERE ROWID = 'AAATn/AAHAAAAHMAAA' AND ORA_ROWSCN = '20744222'
UPDATE "FINALWEB"."pedido" SET "id_sucursal" = '111' WHERE ROWID = 'AAATn/AAHAAAAHMAAB' AND ORA_ROWSCN = '20744222'

Confirmación Correcta


INSERT INTO "FINALWEB"."Ingredientes" ("id_ingrediente", "nombre_ingre", "precio", "diponibilidad") VALUES ('9', 'Jugo de fruta', '16', '90 lts')

Confirmación Correcta


INSERT INTO "FINALWEB"."Ingredientes" ("id_ingrediente", "nombre_ingre", "precio", "diponibilidad") VALUES ('10', 'Levadura seca', '15', '200 lbs')

Confirmación Correcta


UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '90' WHERE ROWID = 'AAATn4AAHAAAAH9AAA' AND ORA_ROWSCN = '20745237'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '200' WHERE ROWID = 'AAATn4AAHAAAAH9AAB' AND ORA_ROWSCN = '20745237'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '100' WHERE ROWID = 'AAATn4AAHAAAAH+AAA' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '120' WHERE ROWID = 'AAATn4AAHAAAAH+AAB' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '50' WHERE ROWID = 'AAATn4AAHAAAAH+AAC' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '15' WHERE ROWID = 'AAATn4AAHAAAAH+AAD' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '110' WHERE ROWID = 'AAATn4AAHAAAAH+AAE' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '75' WHERE ROWID = 'AAATn4AAHAAAAH+AAF' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '67' WHERE ROWID = 'AAATn4AAHAAAAH+AAG' AND ORA_ROWSCN = '19631068'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '560' WHERE ROWID = 'AAATn4AAHAAAAH+AAH' AND ORA_ROWSCN = '19631068'

Confirmación Correcta


UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH9AAA' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH9AAB' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAA' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAB' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAC' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAD' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAE' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAF' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAG' AND ORA_ROWSCN = '20745343'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '' WHERE ROWID = 'AAATn4AAHAAAAH+AAH' AND ORA_ROWSCN = '20745343'

Confirmación Correcta


UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '150', "medida" = 'lts' WHERE ROWID = 'AAATn4AAHAAAAH9AAA' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '210', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH9AAB' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '200', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH+AAA' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '259', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH+AAB' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '10', "medida" = 'lts' WHERE ROWID = 'AAATn4AAHAAAAH+AAC' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '20', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH+AAD' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '50', "medida" = 'lts' WHERE ROWID = 'AAATn4AAHAAAAH+AAE' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '90', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH+AAF' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '100', "medida" = 'lbs' WHERE ROWID = 'AAATn4AAHAAAAH+AAG' AND ORA_ROWSCN = '20745433'
UPDATE "FINALWEB"."Ingredientes" SET "diponibilidad" = '99', "medida" = 'unidades' WHERE ROWID = 'AAATn4AAHAAAAH+AAH' AND ORA_ROWSCN = '20745433'

Confirmación Correcta


DELETE FROM "FINALWEB"."sucursal" WHERE ROWID = 'AAATn7AAHAAAAIMAAB' AND ORA_ROWSCN = '20764928' and ( "id_sucursal" is null or "id_sucursal" is not null )

Confirmación Correcta

2023-10-30 23:40:50 - Guardar Diseño como: Cancelado
Compilado 
