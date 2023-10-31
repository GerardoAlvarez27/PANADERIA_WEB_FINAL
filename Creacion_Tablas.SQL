CREATE TABLE "Ingredientes" (
  "id_ingrediente" int,
  "nombre_ingre" varchar2(50),
  "precio" int,
  "disponibilidad" int,
  "medida" varchar2(20),
  PRIMARY KEY ("id_ingrediente")
);

CREATE TABLE "sucursal" (
  "id_sucursal" int,
  "nombre_sucursal" varchar2(20),
  "direccion" varchar2(20),
  "telefono" int,
  PRIMARY KEY ("id_sucursal")
);

CREATE TABLE "pedido" (
  "id_pedido" int,
  "id_sucursal" int,
  "fecha" date,
  "entrega" varchar2(50),
  "estado" varchar2(30),
  PRIMARY KEY ("id_pedido"),
  CONSTRAINT "FK_pedido.id_sucursal"
    FOREIGN KEY ("id_sucursal")
      REFERENCES "sucursal"("id_sucursal")
);

CREATE TABLE "Producto" (
  "id_producto" int,
  "nombre_producto" varchar2(50),
  "precio" float,
  "disponibilidad" int,
  PRIMARY KEY ("id_producto")
);

CREATE TABLE "producto_ingrediente" (
  "id_ingrediente" int,
  "id_producto" int,
  "cantidad" int,
  CONSTRAINT "FK_producto_ingrediente.id_producto"
    FOREIGN KEY ("id_producto")
      REFERENCES "Producto"("id_producto"),
  CONSTRAINT "FK_producto_ingrediente.id_ingrediente"
    FOREIGN KEY ("id_ingrediente")
      REFERENCES "Ingredientes"("id_ingrediente")
);

CREATE TABLE "pedido_producto" (
  "id_pedido" int,
  "id_producto" int,
  "cantidad" int,
  CONSTRAINT "FK_pedido_producto.id_pedido"
    FOREIGN KEY ("id_pedido")
      REFERENCES "pedido"("id_pedido"),
  CONSTRAINT "FK_pedido_producto.id_producto"
    FOREIGN KEY ("id_producto")
      REFERENCES "Producto"("id_producto")
);
