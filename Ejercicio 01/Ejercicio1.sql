-- create Database Actividad1

-- use Actividad1

Create Table Carreras(
	ID int not null primary key,
	NombreCarrera varchar(50) not null,
	FechaCreacion date check (FechaCreacion < getDate() ),
	Mail varchar(100) not null,
	Nivel varchar(50) not null check (Nivel='Diplomatura' or Nivel='Pregrado' or Nivel='Grado' or Nivel='Posgrado'),
)

Create Table Materias(
	ID smallint not null primary key identity(1,1),
	IDCarrera int not null foreign key references Carreras(ID),
	Nombre varchar(50) not null,
	CargaHoraria int not null check(CargaHoraria > 0 ),
)

Create Table Alumnos(

	Legajo bigint not null primary key identity (1000,1),
	IDCarrera int not null foreign key references Carreras(ID),
	Apellidos varchar(50) not null,
	Nombres varchar(50) not null,
	FechaNac date check (FechaNac > getDate() ),
	Mail varchar(100) not null unique,
	Telefono varchar(20) null,
)
