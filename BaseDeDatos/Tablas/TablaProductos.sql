
USE TiendaLenceria;
GO

DROP TABLE IF EXISTS Productos;
GO 

--Contiene todos los datos relacionados a los productos (Lenceria)
CREATE TABLE Productos(
	Id						int identity primary key,
	Producto				varchar(50) NOT NULL,
	Color					varchar(20) NOT NULL,
	Talla					smallint NOT NULL,
	Referencia				varchar(50) NOT NULL,
	CantidadDisponible		smallint NOT NULL,
	PrecioUnidad			money NOT NULL,
	FechaCreacionProducto	datetime default getdate()
);
GO

INSERT INTO Productos (Producto, Color, Talla, Referencia, CantidadDisponible, PrecioUnidad)
VALUES ('Tanga', 'Rojo', 32, 'Valeria', 2, 32000)

