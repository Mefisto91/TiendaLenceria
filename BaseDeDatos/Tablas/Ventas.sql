
USE TiendaLenceria;
GO

DROP TABLE IF EXISTS Ventas;
GO 

--Contiene todos los datos relacionados a los productos (Lenceria)
CREATE TABLE Ventas(
	Id						int identity primary key,
	ProductoId				int NOT NULL foreign key references Productos(Id),
	ClienteId				int NOT NULL foreign key references DatosClientes(Id),
	MedioDePago				varchar(10) NOT NULL check(MedioDePago IN ('TC', 'PSE', 'TD')),
	FechaVenta	datetime default getdate()
);
GO

INSERT INTO Ventas (ProductoId, ClienteId, MedioDePago)
VALUES (1, 1, 'TC');


