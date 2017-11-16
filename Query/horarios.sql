USE PrologLenguajes;
GO
CREATE TABLE Profesores
(
	ID			INT IDENTITY,
	Carnet		CHAR(9)			NOT NULL, 
	Nombre		VARCHAR(50)		NOT NULL,
	CONSTRAINT PK_cedula_Profesores	PRIMARY KEY (ID)
);
GO

USE PrologLenguajes;
GO
CREATE TABLE Horas
(
	ID		INT		NOT NULL,
	Hora	TIME	NOT NULL, 
	CONSTRAINT PK_ID_Horas		PRIMARY KEY (ID)
);
GO

USE PrologLenguajes;
GO
CREATE TABLE Dias
(
	ID		INT				NOT NULL, -- ID de la hora y dia no disponible
	Dia		VARCHAR(10)		NOT NULL,
	CONSTRAINT PK_ID_Dias	PRIMARY KEY (ID)
);
GO

USE PrologLenguajes;
GO
CREATE TABLE Cursos
(
	ID			INT IDENTITY,
	Nombre		VARCHAR(50)		NOT NULL, -- nombre del curso
	Tipo		CHAR			NOT NULL, -- tipo de aula en donde se imparte (n aula l lab)
	Creditos	INT				NOT NULL, -- cantidad de creditos
	Semestre	INT				NOT NULL, -- semestre al que pertenece
	CONSTRAINT  PK_ID_Cursos	PRIMARY KEY (ID)
);
GO

USE PrologLenguajes;
GO
CREATE TABLE Aulas
(
	NumAula			INT	IDENTITY		NOT NULL,
	Codigo			VARCHAR(10)			NOT NULL,
	Capacidad		INT					NOT NULL,
	Tipo			INT					NOT NULL,
	CONSTRAINT PK_ID_Aulas	PRIMARY KEY (NumAula)
);
GO