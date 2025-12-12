
USE TiendaLenceria;
GO

DROP TABLE IF EXISTS Devoluciones;
GO 

--Contiene todos los datos relacionados a los productos (Lenceria)
CREATE TABLE Devoluciones(
	Id					int identity primary key,
	VentaId				int NOT NULL foreign key references Ventas(Id),
	MotivoDevolucion	nvarchar(200) NOT NULL,
	FechaDevolucion		datetime default getdate()
);
GO

INSERT INTO Devoluciones (VentaId, MotivoDevolucion)
VALUES (1, 'Mala Calidad');



