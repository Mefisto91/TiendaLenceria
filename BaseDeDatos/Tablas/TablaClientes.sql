
USE TiendaLenceria;
GO

DROP TABLE IF EXISTS DatosClientes;
GO

--Contiene todos los datos relacionados al cliente
CREATE TABLE DatosClientes(
	Id				int identity primary key,
	TipoId			varchar(4) NOT NULL,
	PrimerNombre	varchar(50) NOT NULL,
	SegundoNombre	varchar(50),
	PrimerApellido	varchar(50) NOT NULL,
	SegundoApellido	varchar(50),
	Edad			smallint NOT NULL,
	Sexo			char(1) NOT NULL check(Sexo IN ('H', 'M')),
	FechaRegistro	datetime default getdate()
);
GO

INSERT INTO DatosClientes(TipoId, PrimerNombre, PrimerApellido, Edad, Sexo)
VALUES ('CC', 'Sergio', 'Leonardo', 34, 'H');