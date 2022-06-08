CREATE TABLE tbl_cliente (
  IdCliente decimal(18,0) NOT NULL,
  Nombre decimal(18,0),
  Email varchar(20),
  FechaIngreso varchar(20),
  primary key (IdCliente)
)

CREATE TABLE tbl_detallepedido (
  idDetallePedido decimal(38,0) NOT NULL,
  IdPedido decimal(18,0) DEFAULT NULL,
  IdProducto decimal(18,0) DEFAULT NULL,
  IdEmpleado decimal(18,0) DEFAULT NULL,
  IdRestaurante decimal(18,0) DEFAULT NULL,
  NombreRestautante varchar(20) DEFAULT NULL,
  NombreEmpleado varchar(20) DEFAULT NULL,
  PrecioUnidad decimal(20,0) DEFAULT NULL,
  cantidad decimal(20,0) DEFAULT NULL,
  primary key (idDetallePedido),
  FOREIGN KEY (IdPedido) REFERENCES tbl_pedidos(IdPedido),
  FOREIGN KEY (IdEmpleado) REFERENCES tbl_empleado(IdEmpleado),
  FOREIGN KEY (IdRestaurante) REFERENCES tbl_restaurante(IdRestaurante)
)

CREATE TABLE tbl_empleado (
  IdEmpleado decimal(18,0) NOT NULL,
  NombreEmpleado varchar(18) DEFAULT NULL,
  FechaNcimiento decimal(18,0) DEFAULT NULL,
  FechaIngreso decimal(18,0) DEFAULT NULL,
  primary key (IdEmpleado)
)

CREATE TABLE tbl_pedidos (
  IdPedido decimal(18,0) NOT NULL,
  IdCliente decimal(18,0) DEFAULT NULL,
  IdProducto decimal(18,0) DEFAULT NULL,
  Fecha varchar(18) DEFAULT NULL,
  DireccionEntrega varchar(18) DEFAULT NULL,
  IdEmpleado decimal(18,0) DEFAULT NULL,
  Precio decimal(18,0) DEFAULT NULL,
  iva decimal(18,0) NOT NULL,
  Total decimal(18,0) DEFAULT NULL,
  primary key (IdPedido),
  FOREIGN KEY (IdCliente) REFERENCES tbl_cliente(IdCliente),
  FOREIGN KEY (IdProducto) REFERENCES tbl_prodcuto(IdProducto)
)
CREATE TABLE tbl_prodcuto (
  IdProducto decimal(18,0) NOT NULL,
  NombreProducto varchar(18) DEFAULT NULL,
  IdRestaurante decimal(18,0) DEFAULT NULL,
  Precio decimal(18,0) DEFAULT NULL,
  primary key (IdProducto)
)

CREATE TABLE tbl_restaurante (
  IdRestaurante decimal(18,0) NOT NULL,
  NombreRestautante varchar(18) DEFAULT NULL,
  DireccionRestaurante varchar(18) DEFAULT NULL,
  EmailRestaurante varchar(18) DEFAULT NULL,
  primary key (IdRestaurante)
)



